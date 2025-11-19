uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *(v6 + 24);
  v9 = *(*a1 + 24);
  if (v8 != v9)
  {
    if (v8 <= v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = *a3;
    v14 = *(*a3 + 24);
    if (v14 == v8)
    {
      v15 = *(v6 + 34);
      if (((*(result + 34) ^ v15) & 0x200) != 0)
      {
        if ((v15 & 0x200) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v26 = *(result + 37);
        v27 = *(v6 + 37);
        if (v26 == v27)
        {
          if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v6))
          {
            v6 = *a2;
            goto LABEL_41;
          }

          result = *a3;
        }

        else if (v26 >= v27)
        {
LABEL_41:
          v30 = *a1;
          *a1 = v6;
          *a2 = v30;
          result = *a3;
          v31 = *(*a3 + 24);
          v32 = *(v30 + 24);
          if (v31 == v32)
          {
            v33 = *(v30 + 34);
            if (((*(result + 34) ^ v33) & 0x200) != 0)
            {
              if ((v33 & 0x200) == 0)
              {
                return result;
              }
            }

            else
            {
              v34 = *(result + 37);
              v35 = *(v30 + 37);
              if (v34 == v35)
              {
                result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v30);
                if (!result)
                {
                  return result;
                }

                v30 = *a2;
                result = *a3;
              }

              else if (v34 >= v35)
              {
                return result;
              }
            }
          }

          else if (v31 <= v32)
          {
            return result;
          }

          *a2 = result;
          *a3 = v30;
          return result;
        }
      }
    }

    else if (v14 <= v8)
    {
      goto LABEL_41;
    }

    v23 = *a1;
    *a1 = result;
    *a3 = v23;
    return result;
  }

  v10 = *(v7 + 34);
  if (((*(v6 + 34) ^ v10) & 0x200) == 0)
  {
    v16 = *(v6 + 37);
    v17 = *(v7 + 37);
    if (v16 == v17)
    {
      v18 = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v6, v7);
      v6 = *a2;
      v8 = *(*a2 + 24);
      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v16 >= v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if ((v10 & 0x200) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  result = *a3;
  v12 = *(*a3 + 24);
  if (v12 == v8)
  {
    v13 = *(v6 + 34);
    if (((*(result + 34) ^ v13) & 0x200) != 0)
    {
      if ((v13 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v24 = *(result + 37);
      v25 = *(v6 + 37);
      if (v24 == v25)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v6);
        if (!result)
        {
          return result;
        }

        v6 = *a2;
        result = *a3;
      }

      else if (v24 >= v25)
      {
        return result;
      }
    }
  }

  else if (v12 <= v8)
  {
    return result;
  }

  *a2 = result;
  *a3 = v6;
  result = *a2;
  v19 = *a1;
  v20 = *(*a2 + 24);
  v21 = *(*a1 + 24);
  if (v20 == v21)
  {
    v22 = *(v19 + 34);
    if (((*(result + 34) ^ v22) & 0x200) != 0)
    {
      if ((v22 & 0x200) == 0)
      {
        return result;
      }

LABEL_32:
      *a1 = result;
      *a2 = v19;
      return result;
    }

    v28 = *(result + 37);
    v29 = *(v19 + 37);
    if (v28 == v29)
    {
      result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v19);
      if (result)
      {
        v19 = *a1;
        result = *a2;
        goto LABEL_32;
      }
    }

    else if (v28 < v29)
    {
      goto LABEL_32;
    }
  }

  else if (v20 > v21)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a2, a3);
  result = *a4;
  v9 = *a3;
  v10 = *(*a4 + 24);
  v11 = *(*a3 + 24);
  if (v10 == v11)
  {
    v12 = *(v9 + 34);
    if (((*(result + 34) ^ v12) & 0x200) != 0)
    {
      if ((v12 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v17 = *(result + 37);
      v18 = *(v9 + 37);
      if (v17 == v18)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v9);
        if (!result)
        {
          return result;
        }

        v9 = *a3;
        result = *a4;
      }

      else if (v17 >= v18)
      {
        return result;
      }
    }
  }

  else if (v10 <= v11)
  {
    return result;
  }

  *a3 = result;
  *a4 = v9;
  result = *a3;
  v13 = *a2;
  v14 = *(*a3 + 24);
  v15 = *(*a2 + 24);
  if (v14 == v15)
  {
    v16 = *(v13 + 34);
    if (((*(result + 34) ^ v16) & 0x200) != 0)
    {
      if ((v16 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v23 = *(result + 37);
      v24 = *(v13 + 37);
      if (v23 == v24)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v13);
        if (!result)
        {
          return result;
        }

        v13 = *a2;
        result = *a3;
      }

      else if (v23 >= v24)
      {
        return result;
      }
    }
  }

  else if (v14 <= v15)
  {
    return result;
  }

  *a2 = result;
  *a3 = v13;
  result = *a2;
  v19 = *a1;
  v20 = *(*a2 + 24);
  v21 = *(*a1 + 24);
  if (v20 != v21)
  {
    if (v20 <= v21)
    {
      return result;
    }

    goto LABEL_24;
  }

  v22 = *(v19 + 34);
  if (((*(result + 34) ^ v22) & 0x200) != 0)
  {
    if ((v22 & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_24;
  }

  v25 = *(result + 37);
  v26 = *(v19 + 37);
  if (v25 != v26)
  {
    if (v25 >= v26)
    {
      return result;
    }

    goto LABEL_24;
  }

  result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v19);
  if (result)
  {
    v19 = *a1;
    result = *a2;
LABEL_24:
    *a1 = result;
    *a2 = v19;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a2, a3, a4);
  result = *a5;
  v11 = *a4;
  v12 = *(*a5 + 24);
  v13 = *(*a4 + 24);
  if (v12 == v13)
  {
    v14 = *(v11 + 34);
    if (((*(result + 34) ^ v14) & 0x200) != 0)
    {
      if ((v14 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v19 = *(result + 37);
      v20 = *(v11 + 37);
      if (v19 == v20)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v11);
        if (!result)
        {
          return result;
        }

        v11 = *a4;
        result = *a5;
      }

      else if (v19 >= v20)
      {
        return result;
      }
    }
  }

  else if (v12 <= v13)
  {
    return result;
  }

  *a4 = result;
  *a5 = v11;
  result = *a4;
  v15 = *a3;
  v16 = *(*a4 + 24);
  v17 = *(*a3 + 24);
  if (v16 == v17)
  {
    v18 = *(v15 + 34);
    if (((*(result + 34) ^ v18) & 0x200) != 0)
    {
      if ((v18 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v25 = *(result + 37);
      v26 = *(v15 + 37);
      if (v25 == v26)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v15);
        if (!result)
        {
          return result;
        }

        v15 = *a3;
        result = *a4;
      }

      else if (v25 >= v26)
      {
        return result;
      }
    }
  }

  else if (v16 <= v17)
  {
    return result;
  }

  *a3 = result;
  *a4 = v15;
  result = *a3;
  v21 = *a2;
  v22 = *(*a3 + 24);
  v23 = *(*a2 + 24);
  if (v22 == v23)
  {
    v24 = *(v21 + 34);
    if (((*(result + 34) ^ v24) & 0x200) != 0)
    {
      if ((v24 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v31 = *(result + 37);
      v32 = *(v21 + 37);
      if (v31 == v32)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v21);
        if (!result)
        {
          return result;
        }

        v21 = *a2;
        result = *a3;
      }

      else if (v31 >= v32)
      {
        return result;
      }
    }
  }

  else if (v22 <= v23)
  {
    return result;
  }

  *a2 = result;
  *a3 = v21;
  result = *a2;
  v27 = *a1;
  v28 = *(*a2 + 24);
  v29 = *(*a1 + 24);
  if (v28 != v29)
  {
    if (v28 <= v29)
    {
      return result;
    }

    goto LABEL_34;
  }

  v30 = *(v27 + 34);
  if (((*(result + 34) ^ v30) & 0x200) != 0)
  {
    if ((v30 & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

  v33 = *(result + 37);
  v34 = *(v27 + 37);
  if (v33 != v34)
  {
    if (v33 >= v34)
    {
      return result;
    }

    goto LABEL_34;
  }

  result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v27);
  if (result)
  {
    v27 = *a1;
    result = *a2;
LABEL_34:
    *a1 = result;
    *a2 = v27;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 24);
      v8 = *(*a1 + 24);
      if (v7 == v8)
      {
        v9 = *(v6 + 34);
        if (((*(v5 + 34) ^ v9) & 0x200) != 0)
        {
          if ((v9 & 0x200) == 0)
          {
            return 1;
          }
        }

        else
        {
          v30 = *(v5 + 37);
          v31 = *(v6 + 37);
          if (v30 == v31)
          {
            if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v5, v6))
            {
              return 1;
            }

            v6 = *a1;
            v5 = *(a2 - 1);
          }

          else if (v30 >= v31)
          {
            return 1;
          }
        }
      }

      else if (v7 <= v8)
      {
        return 1;
      }

      *a1 = v5;
      *(a2 - 1) = v6;
      return 1;
    }
  }

  v10 = (a1 + 2);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2);
  v11 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    v16 = *(*v11 + 3);
    v17 = *(*v10 + 24);
    if (v16 == v17)
    {
      v18 = *(v15 + 34);
      if (((*(v14 + 17) ^ v18) & 0x200) != 0)
      {
        if ((v18 & 0x200) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v27 = *(v14 + 37);
        v28 = *(v15 + 37);
        if (v27 == v28)
        {
          if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(*v11, v15))
          {
            goto LABEL_37;
          }

          v14 = *v11;
          v15 = *v10;
        }

        else if (v27 >= v28)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v16 <= v17)
    {
      goto LABEL_37;
    }

    *v11 = v15;
    v19 = v12;
    while (1)
    {
      v20 = a1 + v19;
      v21 = *(a1 + v19 + 8);
      v22 = *(v14 + 3);
      v23 = *(v21 + 24);
      if (v22 != v23)
      {
        if (v22 <= v23)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

      v24 = *(v21 + 34);
      if (((*(v14 + 17) ^ v24) & 0x200) != 0)
      {
        if ((v24 & 0x200) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

      v25 = *(v14 + 37);
      v26 = *(v21 + 37);
      if (v25 != v26)
      {
        if (v25 >= v26)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

      if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v14, v21))
      {
        break;
      }

      v21 = *(v20 + 1);
LABEL_26:
      v10 -= 8;
      *(v20 + 2) = v21;
      v19 -= 8;
      if (v19 == -16)
      {
        v10 = a1;
        goto LABEL_36;
      }
    }

    v10 = a1 + v19 + 16;
LABEL_36:
    *v10 = v14;
    if (++v13 != 8)
    {
LABEL_37:
      v10 = v11;
      v12 += 8;
      if (++v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 1 == a2;
  }
}

uint64_t std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *a1;
  return llvm::StringRef::compare(&v7, v5, v4) >> 31;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v306 = a2 - 3;
  v307 = a2 - 2;
  i = v7;
  v308 = a2;
  while (1)
  {
    v7 = i;
    v10 = a2 - i;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(i, i + 1, v8);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(i, i + 1, i + 2, v8);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(i, i + 1, i + 2, i + 3, v8);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v146 = *(a2 - 1);
        v147 = *i;
        v148 = *(v146 + 24);
        v149 = *(*i + 24);
        v150 = v148 > v149;
        if (v148 == v149 && (v151 = *(v146 + 36), v152 = *(v147 + 36), v150 = v151 > v152, v151 == v152) && (v153 = *(v146 + 37), v154 = *(v147 + 37), v150 = v153 > v154, v153 == v154))
        {
          if (*(v147 + 16) != 1)
          {
            return result;
          }

          if (*(v146 + 16) == 1)
          {
            v155 = *v147;
            v156 = *(v147 + 8);
            v309 = *v146;
            result = llvm::StringRef::compare(&v309, v155, v156);
            if (result < 1)
            {
              return result;
            }

            v147 = *i;
            v146 = *(a2 - 1);
          }
        }

        else if (!v150)
        {
          return result;
        }

        *i = v146;
        *(a2 - 1) = v147;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v187 = v11 >> 1;
      v188 = v11 >> 1;
      while (1)
      {
        v189 = v188;
        if (v187 < v188)
        {
          goto LABEL_251;
        }

        v190 = (2 * v188) | 1;
        v191 = &v7[v190];
        if (2 * v188 + 2 < v10)
        {
          v192 = *v191;
          v193 = v191[1];
          v194 = *(*v191 + 24);
          v195 = *(v193 + 24);
          v196 = v194 > v195;
          if (v194 == v195 && (v197 = *(v192 + 36), v198 = *(v193 + 36), v196 = v197 > v198, v197 == v198) && (v199 = *(v192 + 37), v200 = *(v193 + 37), v196 = v199 > v200, v199 == v200))
          {
            if (*(v193 + 16) == 1)
            {
              if (*(v192 + 16) != 1 || (v201 = *v193, v202 = *(v193 + 8), v309 = *v192, result = llvm::StringRef::compare(&v309, v201, v202), result >= 1))
              {
LABEL_217:
                ++v191;
                v190 = 2 * v189 + 2;
              }
            }
          }

          else if (v196)
          {
            goto LABEL_217;
          }
        }

        v203 = *v191;
        v204 = v7[v189];
        v205 = *(*v191 + 24);
        v206 = *(v204 + 24);
        v207 = v205 > v206;
        if (v205 == v206)
        {
          v208 = *(v203 + 36);
          v209 = *(v204 + 36);
          v207 = v208 > v209;
          a2 = v308;
          if (v208 == v209)
          {
            v210 = *(v203 + 37);
            v211 = *(v204 + 37);
            v207 = v210 > v211;
            if (v210 == v211)
            {
              if (*(v204 + 16) == 1)
              {
                if (*(v203 + 16) != 1)
                {
                  goto LABEL_251;
                }

                v212 = *v204;
                v213 = *(v204 + 8);
                v309 = *v203;
                result = llvm::StringRef::compare(&v309, v212, v213);
                if (result > 0)
                {
                  goto LABEL_251;
                }

                v204 = v7[v189];
                v203 = *v191;
              }

              goto LABEL_227;
            }
          }
        }

        else
        {
          a2 = v308;
        }

        if (v207)
        {
          goto LABEL_251;
        }

LABEL_227:
        v7[v189] = v203;
        while (1)
        {
          if (v187 < v190)
          {
            goto LABEL_250;
          }

          v214 = v191;
          v215 = 2 * v190;
          v190 = (2 * v190) | 1;
          v191 = &v7[v190];
          v216 = v215 + 2;
          if (v215 + 2 < v10)
          {
            v217 = *v191;
            v218 = v191[1];
            v219 = *(*v191 + 24);
            v220 = *(v218 + 24);
            v221 = v219 > v220;
            if (v219 != v220 || (v222 = *(v217 + 36), v223 = *(v218 + 36), v221 = v222 > v223, v222 != v223) || (v224 = *(v217 + 37), v225 = *(v218 + 37), v221 = v224 > v225, v224 != v225))
            {
              if (!v221)
              {
                goto LABEL_240;
              }

LABEL_239:
              ++v191;
              v190 = v216;
              goto LABEL_240;
            }

            if (*(v218 + 16) == 1)
            {
              if (*(v217 + 16) != 1)
              {
                goto LABEL_239;
              }

              v226 = *v218;
              v227 = *(v218 + 8);
              v309 = *v217;
              result = llvm::StringRef::compare(&v309, v226, v227);
              if (result >= 1)
              {
                goto LABEL_239;
              }
            }
          }

LABEL_240:
          v228 = *v191;
          v229 = *(*v191 + 24);
          v230 = *(v204 + 24);
          v231 = v229 > v230;
          if (v229 == v230)
          {
            v232 = *(v228 + 36);
            v233 = *(v204 + 36);
            v231 = v232 > v233;
            if (v232 == v233)
            {
              v234 = *(v228 + 37);
              v235 = *(v204 + 37);
              v231 = v234 > v235;
              if (v234 == v235)
              {
                break;
              }
            }
          }

          if (v231)
          {
            goto LABEL_249;
          }

LABEL_248:
          *v214 = v228;
        }

        if (*(v204 + 16) != 1)
        {
          goto LABEL_248;
        }

        if (*(v228 + 16) == 1)
        {
          v236 = *v204;
          v237 = *(v204 + 8);
          v309 = *v228;
          result = llvm::StringRef::compare(&v309, v236, v237);
          if (result <= 0)
          {
            v228 = *v191;
            goto LABEL_248;
          }
        }

LABEL_249:
        v191 = v214;
LABEL_250:
        *v191 = v204;
        a2 = v308;
LABEL_251:
        v188 = v189 - 1;
        if (!v189)
        {
LABEL_255:
          v240 = 0;
          v241 = *v7;
          v242 = v7;
          while (1)
          {
            v243 = v242;
            v244 = &v242[v240];
            v242 = v244 + 1;
            v245 = 2 * v240;
            v240 = (2 * v240) | 1;
            v246 = v245 + 2;
            if (v245 + 2 < v10)
            {
              v249 = v244[2];
              v248 = v244 + 2;
              v247 = v249;
              v250 = *(v248 - 1);
              v251 = *(v250 + 3);
              v252 = *(v249 + 24);
              v253 = v251 > v252;
              if (v251 == v252 && (v254 = *(v250 + 36), v255 = *(v247 + 36), v253 = v254 > v255, v254 == v255) && (v256 = *(v250 + 37), v257 = *(v247 + 37), v253 = v256 > v257, v256 == v257))
              {
                if (*(v247 + 16) != 1)
                {
                  goto LABEL_267;
                }

                if (*(v250 + 16) == 1)
                {
                  v258 = *v247;
                  v259 = *(v247 + 8);
                  v309 = *v250;
                  result = llvm::StringRef::compare(&v309, v258, v259);
                  if (result < 1)
                  {
                    goto LABEL_267;
                  }
                }
              }

              else if (!v253)
              {
                goto LABEL_267;
              }

              v242 = v248;
              v240 = v246;
            }

LABEL_267:
            *v243 = *v242;
            if (v240 > ((v10 - 2) >> 1))
            {
              if (v242 == --a2)
              {
                *v242 = v241;
              }

              else
              {
                *v242 = *a2;
                *a2 = v241;
                v260 = (v242 - v7 + 8) >> 3;
                v261 = v260 - 2;
                if (v260 >= 2)
                {
                  v262 = v261 >> 1;
                  v263 = &v7[v261 >> 1];
                  v264 = *v263;
                  v265 = *v242;
                  v266 = *(*v263 + 24);
                  v267 = *(*v242 + 24);
                  v268 = v266 > v267;
                  if (v266 == v267 && (v269 = *(v264 + 36), v270 = *(v265 + 36), v268 = v269 > v270, v269 == v270) && (v271 = *(v264 + 37), v272 = *(v265 + 37), v268 = v271 > v272, v271 == v272))
                  {
                    if (*(v265 + 16) == 1)
                    {
                      if (*(v264 + 16) != 1)
                      {
                        goto LABEL_281;
                      }

                      v273 = *v265;
                      v274 = *(v265 + 8);
                      v309 = *v264;
                      result = llvm::StringRef::compare(&v309, v273, v274);
                      if (result >= 1)
                      {
                        v265 = *v242;
LABEL_280:
                        v264 = *v263;
LABEL_281:
                        while (1)
                        {
                          *v242 = v264;
                          if (v261 < 2)
                          {
                            break;
                          }

                          v242 = v263;
                          v261 = v262 - 1;
                          v262 = (v262 - 1) >> 1;
                          v263 = &v7[v262];
                          v264 = *v263;
                          v275 = *(*v263 + 24);
                          v276 = *(v265 + 24);
                          v277 = v275 > v276;
                          if (v275 == v276 && (v278 = *(v264 + 36), v279 = *(v265 + 36), v277 = v278 > v279, v278 == v279) && (v280 = *(v264 + 37), v281 = *(v265 + 37), v277 = v280 > v281, v280 == v281))
                          {
                            if (*(v265 + 16) != 1)
                            {
                              goto LABEL_289;
                            }

                            if (*(v264 + 16) == 1)
                            {
                              v238 = *v265;
                              v239 = *(v265 + 8);
                              v309 = *v264;
                              result = llvm::StringRef::compare(&v309, v238, v239);
                              if (result >= 1)
                              {
                                goto LABEL_280;
                              }

LABEL_289:
                              v263 = v242;
                              break;
                            }
                          }

                          else if (!v277)
                          {
                            goto LABEL_289;
                          }
                        }

                        *v263 = v265;
                      }
                    }
                  }

                  else if (v268)
                  {
                    goto LABEL_281;
                  }
                }
              }

              v21 = v10-- <= 2;
              if (v21)
              {
                return result;
              }

              goto LABEL_255;
            }
          }
        }
      }
    }

    v12 = v10 >> 1;
    v13 = &i[v10 >> 1];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(&v7[v10 >> 1], v7, v8);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7, &v7[v10 >> 1], v8);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>((v7 + 1), v13 - 1, v307);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>((v7 + 2), &v7[v12 + 1], v306);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>((v13 - 1), &v7[v10 >> 1], &v7[v12 + 1]);
      v14 = *v7;
      *v7 = *v13;
      *v13 = v14;
    }

    --a3;
    v15 = *v7;
    a2 = v308;
    if (a4)
    {
      goto LABEL_27;
    }

    v16 = *(v7 - 1);
    v17 = *(v16 + 3);
    v18 = *(v15 + 24);
    if (v17 == v18)
    {
      v19 = *(v16 + 36);
      v20 = *(v15 + 36);
      v21 = v19 > v20;
      if (v19 == v20)
      {
        v22 = *(v16 + 37);
        v23 = *(v15 + 37);
        v21 = v22 > v23;
        if (v22 == v23)
        {
          if (*(v15 + 16) != 1)
          {
            goto LABEL_93;
          }

          if (*(v16 + 16) == 1)
          {
            v24 = *v15;
            v25 = *(v15 + 8);
            v309 = *v16;
            result = llvm::StringRef::compare(&v309, v24, v25);
            v15 = *v7;
            if (result <= 0)
            {
              v17 = *(v15 + 24);
              goto LABEL_93;
            }
          }

          goto LABEL_27;
        }
      }

      if (v21)
      {
        goto LABEL_27;
      }

LABEL_93:
      v83 = *v8;
      v84 = *(*v8 + 24);
      v85 = v17 > v84;
      if (v17 == v84 && (v86 = *(v15 + 36), v87 = *(v83 + 36), v85 = v86 > v87, v86 == v87) && (v88 = *(v15 + 37), v89 = *(v83 + 37), v85 = v88 > v89, v88 == v89))
      {
        if (*(v83 + 16))
        {
          if (*(v15 + 16) != 1 || (v90 = *v83, v91 = *(v83 + 8), v309 = *v15, result = llvm::StringRef::compare(&v309, v90, v91), result >= 1))
          {
LABEL_99:
            for (i = v7 + 1; ; ++i)
            {
              v92 = *i;
              v93 = *(v15 + 24);
              v94 = *(*i + 24);
              v95 = v93 > v94;
              if (v93 == v94 && (v96 = *(v15 + 36), v97 = *(v92 + 36), v95 = v96 > v97, v96 == v97) && (v98 = *(v15 + 37), v99 = *(v92 + 37), v95 = v98 > v99, v98 == v99))
              {
                if (*(v92 + 16) == 1)
                {
                  if (*(v15 + 16) != 1)
                  {
                    goto LABEL_121;
                  }

                  v100 = *v92;
                  v101 = *(v92 + 8);
                  v309 = *v15;
                  result = llvm::StringRef::compare(&v309, v100, v101);
                  if (result > 0)
                  {
                    goto LABEL_121;
                  }
                }
              }

              else if (v95)
              {
                goto LABEL_121;
              }
            }
          }
        }
      }

      else if (v85)
      {
        goto LABEL_99;
      }

      for (i = v7 + 1; i < v308; ++i)
      {
        v102 = *i;
        v103 = *(v15 + 24);
        v104 = *(*i + 24);
        v105 = v103 > v104;
        if (v103 == v104 && (v106 = *(v15 + 36), v107 = *(v102 + 36), v105 = v106 > v107, v106 == v107) && (v108 = *(v15 + 37), v109 = *(v102 + 37), v105 = v108 > v109, v108 == v109))
        {
          if (*(v102 + 16) == 1)
          {
            if (*(v15 + 16) != 1)
            {
              break;
            }

            v110 = *v102;
            v111 = *(v102 + 8);
            v309 = *v15;
            result = llvm::StringRef::compare(&v309, v110, v111);
            if (result >= 1)
            {
              break;
            }
          }
        }

        else if (v105)
        {
          break;
        }
      }

LABEL_121:
      j = v308;
      if (i >= v308)
      {
        goto LABEL_151;
      }

      for (j = v8; ; --j)
      {
        v113 = *j;
        v114 = *(v15 + 24);
        v115 = *(*j + 24);
        v116 = v114 > v115;
        if (v114 == v115)
        {
          v117 = *(v15 + 36);
          v118 = *(v113 + 36);
          v116 = v117 > v118;
          if (v117 == v118)
          {
            v119 = *(v15 + 37);
            v120 = *(v113 + 37);
            v116 = v119 > v120;
            if (v119 == v120)
            {
              break;
            }
          }
        }

        if (!v116)
        {
          goto LABEL_151;
        }

LABEL_132:
        ;
      }

      if (*(v113 + 16) == 1)
      {
        if (*(v15 + 16) != 1)
        {
          goto LABEL_132;
        }

        v121 = *v113;
        v122 = *(v113 + 8);
        v309 = *v15;
        result = llvm::StringRef::compare(&v309, v121, v122);
        if (result >= 1)
        {
          goto LABEL_132;
        }
      }

LABEL_151:
      while (i < j)
      {
        v123 = *i;
        *i++ = *j;
        *j = v123;
        while (1)
        {
          v124 = *i;
          v125 = *(v15 + 24);
          v126 = *(*i + 24);
          v127 = v125 > v126;
          if (v125 == v126)
          {
            v128 = *(v15 + 36);
            v129 = *(v124 + 36);
            v127 = v128 > v129;
            if (v128 == v129)
            {
              v130 = *(v15 + 37);
              v131 = *(v124 + 37);
              v127 = v130 > v131;
              if (v130 == v131)
              {
                break;
              }
            }
          }

          if (v127)
          {
            goto LABEL_145;
          }

LABEL_142:
          ++i;
        }

        if (*(v124 + 16) != 1)
        {
          goto LABEL_142;
        }

        if (*(v15 + 16) == 1)
        {
          v132 = *v124;
          v133 = *(v124 + 8);
          v309 = *v15;
          result = llvm::StringRef::compare(&v309, v132, v133);
          if (result <= 0)
          {
            goto LABEL_142;
          }
        }

        while (1)
        {
LABEL_145:
          while (1)
          {
            v135 = *--j;
            v134 = v135;
            v136 = *(v15 + 24);
            v137 = *(v135 + 24);
            v138 = v136 > v137;
            if (v136 == v137)
            {
              v139 = *(v15 + 36);
              v140 = *(v134 + 36);
              v138 = v139 > v140;
              if (v139 == v140)
              {
                v141 = *(v15 + 37);
                v142 = *(v134 + 37);
                v138 = v141 > v142;
                if (v141 == v142)
                {
                  break;
                }
              }
            }

            if (!v138)
            {
              goto LABEL_151;
            }
          }

          if (*(v134 + 16) != 1)
          {
            break;
          }

          if (*(v15 + 16) == 1)
          {
            v143 = *v134;
            v144 = *(v134 + 8);
            v309 = *v15;
            result = llvm::StringRef::compare(&v309, v143, v144);
            if (result < 1)
            {
              break;
            }
          }
        }
      }

      v145 = i - 1;
      if (i - 1 != v7)
      {
        *v7 = *v145;
      }

      a4 = 0;
      *v145 = v15;
    }

    else
    {
      if (v17 <= v18)
      {
        v17 = *(v15 + 24);
        goto LABEL_93;
      }

LABEL_27:
      for (k = 0; ; ++k)
      {
        v27 = v7[k + 1];
        v28 = *(v27 + 24);
        v29 = *(v15 + 24);
        v30 = v28 > v29;
        if (v28 == v29)
        {
          v31 = *(v27 + 36);
          v32 = *(v15 + 36);
          v30 = v31 > v32;
          if (v31 == v32)
          {
            v33 = *(v27 + 37);
            v34 = *(v15 + 37);
            v30 = v33 > v34;
            if (v33 == v34)
            {
              break;
            }
          }
        }

        if (!v30)
        {
          goto LABEL_38;
        }

LABEL_37:
        ;
      }

      if (*(v15 + 16) == 1)
      {
        if (*(v27 + 16) != 1)
        {
          goto LABEL_37;
        }

        v35 = *v15;
        v36 = *(v15 + 8);
        v309 = *v27;
        if (llvm::StringRef::compare(&v309, v35, v36) >= 1)
        {
          goto LABEL_37;
        }
      }

LABEL_38:
      v37 = &v7[k];
      v38 = &v7[k + 1];
      m = v8;
      if (k * 8)
      {
        while (1)
        {
          v40 = *m;
          v41 = *(*m + 24);
          v42 = *(v15 + 24);
          v43 = v41 > v42;
          if (v41 == v42 && (v44 = *(v40 + 36), v45 = *(v15 + 36), v43 = v44 > v45, v44 == v45) && (v46 = *(v40 + 37), v47 = *(v15 + 37), v43 = v46 > v47, v46 == v47))
          {
            if (*(v15 + 16) == 1)
            {
              if (*(v40 + 16) != 1)
              {
                goto LABEL_65;
              }

              v48 = *v15;
              v49 = *(v15 + 8);
              v309 = *v40;
              if (llvm::StringRef::compare(&v309, v48, v49) > 0)
              {
                goto LABEL_65;
              }
            }
          }

          else if (v43)
          {
            goto LABEL_65;
          }

          --m;
        }
      }

      m = v308;
      if (v38 < v308)
      {
        for (m = v8; ; --m)
        {
          v50 = *m;
          v51 = *(*m + 24);
          v52 = *(v15 + 24);
          if (v51 == v52)
          {
            v53 = *(v50 + 36);
            v54 = *(v15 + 36);
            if (v53 == v54 && (v53 = *(v50 + 37), v54 = *(v15 + 37), v53 == v54))
            {
              if (*(v15 + 16) == 1)
              {
                if (*(v50 + 16) != 1)
                {
                  break;
                }

                v55 = *v15;
                v56 = *(v15 + 8);
                v309 = *v50;
                v57 = llvm::StringRef::compare(&v309, v55, v56);
                if (v38 >= m || v57 > 0)
                {
                  break;
                }
              }

              else if (v38 >= m)
              {
                break;
              }
            }

            else if (v38 >= m || v53 > v54)
            {
              break;
            }
          }

          else if (v38 >= m || v51 > v52)
          {
            break;
          }
        }
      }

LABEL_65:
      if (v38 >= m)
      {
        goto LABEL_87;
      }

      v58 = &v7[k + 1];
      v59 = m;
      while (2)
      {
        v60 = *v58;
        *v58 = *v59;
        v58 += 8;
        *v59 = v60;
        while (2)
        {
          v61 = *v58;
          v62 = *(*v58 + 24);
          v63 = *(v15 + 24);
          v64 = v62 > v63;
          if (v62 != v63 || (v65 = *(v61 + 36), v66 = *(v15 + 36), v64 = v65 > v66, v65 != v66) || (v67 = *(v61 + 37), v68 = *(v15 + 37), v64 = v67 > v68, v67 != v68))
          {
            if (!v64)
            {
              goto LABEL_79;
            }

LABEL_77:
            v58 += 8;
            continue;
          }

          break;
        }

        if (*(v15 + 16) == 1)
        {
          if (*(v61 + 16) != 1)
          {
            goto LABEL_77;
          }

          v69 = *v15;
          v70 = *(v15 + 8);
          v309 = *v61;
          if (llvm::StringRef::compare(&v309, v69, v70) >= 1)
          {
            goto LABEL_77;
          }
        }

        while (1)
        {
LABEL_79:
          while (1)
          {
            v72 = *--v59;
            v71 = v72;
            v73 = *(v72 + 3);
            v74 = *(v15 + 24);
            v75 = v73 > v74;
            if (v73 == v74)
            {
              v76 = *(v71 + 36);
              v77 = *(v15 + 36);
              v75 = v76 > v77;
              if (v76 == v77)
              {
                v78 = *(v71 + 37);
                v79 = *(v15 + 37);
                v75 = v78 > v79;
                if (v78 == v79)
                {
                  break;
                }
              }
            }

            if (v75)
            {
              goto LABEL_85;
            }
          }

          if (*(v15 + 16) == 1)
          {
            if (*(v71 + 16) != 1)
            {
              break;
            }

            v80 = *v15;
            v81 = *(v15 + 8);
            v309 = *v71;
            if (llvm::StringRef::compare(&v309, v80, v81) > 0)
            {
              break;
            }
          }
        }

LABEL_85:
        if (v58 < v59)
        {
          continue;
        }

        break;
      }

      v37 = (v58 - 8);
LABEL_87:
      if (v37 != v7)
      {
        *v7 = *v37;
      }

      *v37 = v15;
      if (v38 < m)
      {
LABEL_92:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,false>(v7, v37, a3, a4 & 1);
        a4 = 0;
        i = v37 + 1;
      }

      else
      {
        v82 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(v7, v37);
        i = v37 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(v37 + 1, v308);
        if (result)
        {
          a2 = v37;
          if (v82)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v82)
        {
          goto LABEL_92;
        }
      }
    }
  }

  v157 = i + 1;
  v159 = i == a2 || v157 == a2;
  if ((a4 & 1) == 0)
  {
    if (v159)
    {
      return result;
    }

    while (1)
    {
      v282 = v7;
      v7 = v157;
      v283 = *v282;
      v284 = v282[1];
      v285 = *(v284 + 24);
      v286 = *(*v282 + 24);
      v287 = v285 > v286;
      if (v285 == v286 && (v288 = *(v284 + 36), v289 = *(v283 + 36), v287 = v288 > v289, v288 == v289) && (v290 = *(v284 + 37), v291 = *(v283 + 37), v287 = v290 > v291, v290 == v291))
      {
        if (*(v283 + 16) == 1)
        {
          if (*(v284 + 16) == 1)
          {
            v292 = *v283;
            v293 = *(v283 + 8);
            v309 = *v284;
            result = llvm::StringRef::compare(&v309, v292, v293);
            if (result >= 1)
            {
              v284 = *v7;
              goto LABEL_307;
            }
          }

          else
          {
            while (1)
            {
LABEL_307:
              while (1)
              {
                v294 = v282;
                v282[1] = *v282;
                v296 = *--v282;
                v295 = v296;
                v297 = *(v284 + 24);
                v298 = *(v296 + 24);
                v299 = v297 > v298;
                if (v297 == v298)
                {
                  v300 = *(v284 + 36);
                  v301 = *(v295 + 36);
                  v299 = v300 > v301;
                  if (v300 == v301)
                  {
                    v302 = *(v284 + 37);
                    v303 = *(v295 + 37);
                    v299 = v302 > v303;
                    if (v302 == v303)
                    {
                      break;
                    }
                  }
                }

                if (!v299)
                {
                  goto LABEL_315;
                }
              }

              if (*(v295 + 16) != 1)
              {
                break;
              }

              if (*(v284 + 16) == 1)
              {
                v304 = *v295;
                v305 = *(v295 + 8);
                v309 = *v284;
                result = llvm::StringRef::compare(&v309, v304, v305);
                if (result <= 0)
                {
                  break;
                }
              }
            }

LABEL_315:
            *v294 = v284;
            a2 = v308;
          }
        }
      }

      else if (v287)
      {
        goto LABEL_307;
      }

      v157 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v159)
  {
    return result;
  }

  v160 = 0;
  v161 = i;
  while (2)
  {
    v162 = v161;
    v161 = v157;
    v163 = *v162;
    v164 = v162[1];
    v165 = *(v164 + 24);
    v166 = *(*v162 + 24);
    v167 = v165 > v166;
    if (v165 == v166 && (v168 = *(v164 + 36), v169 = *(v163 + 36), v167 = v168 > v169, v168 == v169) && (v170 = *(v164 + 37), v171 = *(v163 + 37), v167 = v170 > v171, v170 == v171))
    {
      if (*(v163 + 16) != 1)
      {
        goto LABEL_202;
      }

      if (*(v164 + 16) == 1)
      {
        v172 = *v163;
        v173 = *(v163 + 8);
        v309 = *v164;
        result = llvm::StringRef::compare(&v309, v172, v173);
        if (result < 1)
        {
          goto LABEL_202;
        }

        v164 = *v161;
        v163 = *v162;
      }
    }

    else if (!v167)
    {
      goto LABEL_202;
    }

    v162[1] = v163;
    v174 = v7;
    if (v162 == v7)
    {
      goto LABEL_201;
    }

    v175 = v160;
    while (2)
    {
      v176 = (v7 + v175);
      v177 = *(v7 + v175 - 8);
      v178 = *(v164 + 24);
      v179 = *(v177 + 24);
      if (v178 != v179)
      {
        if (v178 <= v179)
        {
          v174 = (v7 + v175);
          goto LABEL_201;
        }

        goto LABEL_198;
      }

      v180 = *(v164 + 36);
      v181 = *(v177 + 36);
      v182 = v180 > v181;
      if (v180 == v181)
      {
        v183 = *(v164 + 37);
        v184 = *(v177 + 37);
        v182 = v183 > v184;
        if (v183 == v184)
        {
          if (*(v177 + 16) != 1)
          {
            break;
          }

          if (*(v164 + 16) == 1)
          {
            v185 = *v177;
            v186 = *(v177 + 8);
            v309 = *v164;
            result = llvm::StringRef::compare(&v309, v185, v186);
            if (result < 1)
            {
              break;
            }

            v177 = *(v176 - 1);
          }

          goto LABEL_198;
        }
      }

      if (v182)
      {
LABEL_198:
        --v162;
        *v176 = v177;
        v175 -= 8;
        if (!v175)
        {
          v174 = v7;
          goto LABEL_201;
        }

        continue;
      }

      break;
    }

    v174 = v162;
LABEL_201:
    *v174 = v164;
LABEL_202:
    v157 = v161 + 1;
    v160 += 8;
    if (v161 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a2 + 24);
  v9 = *(*result + 24);
  v10 = v8 > v9;
  if (v8 == v9)
  {
    v11 = *(v6 + 36);
    v12 = *(v7 + 36);
    v10 = v11 > v12;
    if (v11 == v12)
    {
      v13 = *(v6 + 37);
      v14 = *(v7 + 37);
      v10 = v13 > v14;
      if (v13 == v14)
      {
        if (*(v7 + 16) == 1)
        {
          if (*(v6 + 16) != 1)
          {
            goto LABEL_7;
          }

          v15 = *v7;
          v16 = *(v7 + 8);
          v58 = *v6;
          result = llvm::StringRef::compare(&v58, v15, v16);
          v6 = *a2;
          v8 = *(*a2 + 24);
          if (result > 0)
          {
            goto LABEL_7;
          }
        }

LABEL_15:
        v26 = *a3;
        v27 = *(*a3 + 24);
        v28 = v27 > v8;
        if (v27 == v8 && (v29 = *(v26 + 36), v30 = *(v6 + 36), v28 = v29 > v30, v29 == v30) && (v31 = *(v26 + 37), v32 = *(v6 + 37), v28 = v31 > v32, v31 == v32))
        {
          if (*(v6 + 16) != 1)
          {
            return result;
          }

          if (*(v26 + 16) == 1)
          {
            v33 = *v6;
            v34 = *(v6 + 1);
            v58 = *v26;
            result = llvm::StringRef::compare(&v58, v33, v34);
            if (result < 1)
            {
              return result;
            }

            v6 = *a2;
            v26 = *a3;
          }
        }

        else if (!v28)
        {
          return result;
        }

        *a2 = v26;
        *a3 = v6;
        v35 = *a2;
        v36 = *v5;
        v37 = *(*a2 + 24);
        v38 = *(*v5 + 24);
        v39 = v37 > v38;
        if (v37 == v38 && (v40 = *(v35 + 36), v41 = *(v36 + 36), v39 = v40 > v41, v40 == v41) && (v42 = *(v35 + 37), v43 = *(v36 + 37), v39 = v42 > v43, v42 == v43))
        {
          if (*(v36 + 16) != 1)
          {
            return result;
          }

          if (*(v35 + 16) == 1)
          {
            v44 = *v36;
            v45 = *(v36 + 1);
            v58 = *v35;
            result = llvm::StringRef::compare(&v58, v44, v45);
            if (result < 1)
            {
              return result;
            }

            v36 = *v5;
            v35 = *a2;
          }
        }

        else if (!v39)
        {
          return result;
        }

        *v5 = v35;
        *a2 = v36;
        return result;
      }
    }
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  v17 = *a3;
  v18 = *(*a3 + 24);
  v19 = v18 > v8;
  if (v18 == v8 && (v20 = *(v17 + 36), v21 = *(v6 + 36), v19 = v20 > v21, v20 == v21) && (v22 = *(v17 + 37), v23 = *(v6 + 37), v19 = v22 > v23, v22 == v23))
  {
    if (*(v6 + 16) == 1)
    {
      if (*(v17 + 16) != 1)
      {
LABEL_33:
        v46 = *v5;
        *v5 = v17;
        *a3 = v46;
        return result;
      }

      v24 = *v6;
      v25 = *(v6 + 1);
      v58 = *v17;
      result = llvm::StringRef::compare(&v58, v24, v25);
      if (result >= 1)
      {
        v17 = *a3;
        goto LABEL_33;
      }

      v6 = *a2;
    }
  }

  else if (v19)
  {
    goto LABEL_33;
  }

  v47 = *v5;
  *v5 = v6;
  *a2 = v47;
  v48 = *a3;
  v49 = *(*a3 + 24);
  v50 = *(v47 + 3);
  v51 = v49 > v50;
  if (v49 == v50)
  {
    v52 = *(v48 + 36);
    v53 = *(v47 + 36);
    v51 = v52 > v53;
    if (v52 == v53)
    {
      v54 = *(v48 + 37);
      v55 = *(v47 + 37);
      v51 = v54 > v55;
      if (v54 == v55)
      {
        if (*(v47 + 16) != 1)
        {
          return result;
        }

        if (*(v48 + 16) == 1)
        {
          v56 = *v47;
          v57 = *(v47 + 1);
          v58 = *v48;
          result = llvm::StringRef::compare(&v58, v56, v57);
          if (result < 1)
          {
            return result;
          }

          v47 = *a2;
          v48 = *a3;
        }

        goto LABEL_47;
      }
    }
  }

  if (v51)
  {
LABEL_47:
    *a2 = v48;
    *a3 = v47;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  v11 = *(*a4 + 24);
  v12 = *(*a3 + 24);
  v13 = v11 > v12;
  if (v11 == v12 && (v14 = *(v9 + 36), v15 = *(v10 + 36), v13 = v14 > v15, v14 == v15) && (v16 = *(v9 + 37), v17 = *(v10 + 37), v13 = v16 > v17, v16 == v17))
  {
    if (*(v10 + 16) != 1)
    {
      return result;
    }

    if (*(v9 + 16) == 1)
    {
      v18 = *v10;
      v19 = *(v10 + 8);
      v42 = *v9;
      result = llvm::StringRef::compare(&v42, v18, v19);
      if (result < 1)
      {
        return result;
      }

      v10 = *a3;
      v9 = *a4;
    }
  }

  else if (!v13)
  {
    return result;
  }

  *a3 = v9;
  *a4 = v10;
  v20 = *a3;
  v21 = *a2;
  v22 = *(*a3 + 24);
  v23 = *(*a2 + 24);
  v24 = v22 > v23;
  if (v22 == v23 && (v25 = *(v20 + 36), v26 = *(v21 + 36), v24 = v25 > v26, v25 == v26) && (v27 = *(v20 + 37), v28 = *(v21 + 37), v24 = v27 > v28, v27 == v28))
  {
    if (*(v21 + 16) != 1)
    {
      return result;
    }

    if (*(v20 + 16) == 1)
    {
      v29 = *v21;
      v30 = *(v21 + 8);
      v42 = *v20;
      result = llvm::StringRef::compare(&v42, v29, v30);
      if (result < 1)
      {
        return result;
      }

      v21 = *a2;
      v20 = *a3;
    }
  }

  else if (!v24)
  {
    return result;
  }

  *a2 = v20;
  *a3 = v21;
  v31 = *a2;
  v32 = *a1;
  v33 = *(*a2 + 24);
  v34 = *(*a1 + 24);
  v35 = v33 > v34;
  if (v33 == v34)
  {
    v36 = *(v31 + 36);
    v37 = *(v32 + 36);
    v35 = v36 > v37;
    if (v36 == v37)
    {
      v38 = *(v31 + 37);
      v39 = *(v32 + 37);
      v35 = v38 > v39;
      if (v38 == v39)
      {
        if (*(v32 + 16) != 1)
        {
          return result;
        }

        if (*(v31 + 16) == 1)
        {
          v40 = *v32;
          v41 = *(v32 + 8);
          v42 = *v31;
          result = llvm::StringRef::compare(&v42, v40, v41);
          if (result < 1)
          {
            return result;
          }

          v32 = *a1;
          v31 = *a2;
        }

        goto LABEL_28;
      }
    }
  }

  if (v35)
  {
LABEL_28:
    *a1 = v31;
    *a2 = v32;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a5 + 24);
  v14 = *(*a4 + 24);
  v15 = v13 > v14;
  if (v13 == v14 && (v16 = *(v11 + 36), v17 = *(v12 + 36), v15 = v16 > v17, v16 == v17) && (v18 = *(v11 + 37), v19 = *(v12 + 37), v15 = v18 > v19, v18 == v19))
  {
    if (*(v12 + 16) != 1)
    {
      return result;
    }

    if (*(v11 + 16) == 1)
    {
      v20 = *v12;
      v21 = *(v12 + 8);
      v55 = *v11;
      result = llvm::StringRef::compare(&v55, v20, v21);
      if (result < 1)
      {
        return result;
      }

      v12 = *a4;
      v11 = *a5;
    }
  }

  else if (!v15)
  {
    return result;
  }

  *a4 = v11;
  *a5 = v12;
  v22 = *a4;
  v23 = *a3;
  v24 = *(*a4 + 24);
  v25 = *(*a3 + 24);
  v26 = v24 > v25;
  if (v24 == v25 && (v27 = *(v22 + 36), v28 = *(v23 + 36), v26 = v27 > v28, v27 == v28) && (v29 = *(v22 + 37), v30 = *(v23 + 37), v26 = v29 > v30, v29 == v30))
  {
    if (*(v23 + 16) != 1)
    {
      return result;
    }

    if (*(v22 + 16) == 1)
    {
      v31 = *v23;
      v32 = *(v23 + 8);
      v55 = *v22;
      result = llvm::StringRef::compare(&v55, v31, v32);
      if (result < 1)
      {
        return result;
      }

      v23 = *a3;
      v22 = *a4;
    }
  }

  else if (!v26)
  {
    return result;
  }

  *a3 = v22;
  *a4 = v23;
  v33 = *a3;
  v34 = *a2;
  v35 = *(*a3 + 24);
  v36 = *(*a2 + 24);
  v37 = v35 > v36;
  if (v35 == v36 && (v38 = *(v33 + 36), v39 = *(v34 + 36), v37 = v38 > v39, v38 == v39) && (v40 = *(v33 + 37), v41 = *(v34 + 37), v37 = v40 > v41, v40 == v41))
  {
    if (*(v34 + 16) != 1)
    {
      return result;
    }

    if (*(v33 + 16) == 1)
    {
      v42 = *v34;
      v43 = *(v34 + 8);
      v55 = *v33;
      result = llvm::StringRef::compare(&v55, v42, v43);
      if (result < 1)
      {
        return result;
      }

      v34 = *a2;
      v33 = *a3;
    }
  }

  else if (!v37)
  {
    return result;
  }

  *a2 = v33;
  *a3 = v34;
  v44 = *a2;
  v45 = *a1;
  v46 = *(*a2 + 24);
  v47 = *(*a1 + 24);
  v48 = v46 > v47;
  if (v46 == v47)
  {
    v49 = *(v44 + 36);
    v50 = *(v45 + 36);
    v48 = v49 > v50;
    if (v49 == v50)
    {
      v51 = *(v44 + 37);
      v52 = *(v45 + 37);
      v48 = v51 > v52;
      if (v51 == v52)
      {
        if (*(v45 + 16) != 1)
        {
          return result;
        }

        if (*(v44 + 16) == 1)
        {
          v53 = *v45;
          v54 = *(v45 + 8);
          v55 = *v44;
          result = llvm::StringRef::compare(&v55, v53, v54);
          if (result < 1)
          {
            return result;
          }

          v45 = *a1;
          v44 = *a2;
        }

        goto LABEL_37;
      }
    }
  }

  if (v48)
  {
LABEL_37:
    *a1 = v44;
    *a2 = v45;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 24);
      v8 = *(*a1 + 24);
      v9 = v7 > v8;
      if (v7 == v8 && (v10 = *(v5 + 36), v11 = *(v6 + 36), v9 = v10 > v11, v10 == v11) && (v12 = *(v5 + 37), v13 = *(v6 + 37), v9 = v12 > v13, v12 == v13))
      {
        if (*(v6 + 16) != 1)
        {
          return 1;
        }

        if (*(v5 + 16) == 1)
        {
          v14 = *v6;
          v15 = *(v6 + 8);
          v44 = *v5;
          if (llvm::StringRef::compare(&v44, v14, v15) < 1)
          {
            return 1;
          }

          v6 = *a1;
          v5 = *(a2 - 1);
        }
      }

      else if (!v9)
      {
        return 1;
      }

      *a1 = v5;
      *(a2 - 1) = v6;
      return 1;
    }
  }

  v16 = (a1 + 2);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyCStringSection(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &,std::vector<llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(a1, a1 + 1, a1 + 2);
  v17 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (2)
  {
    v20 = *v17;
    v21 = *v16;
    v22 = *(*v17 + 24);
    v23 = *(*v16 + 24);
    v24 = v22 > v23;
    if (v22 == v23 && (v25 = *(v20 + 36), v26 = *(v21 + 36), v24 = v25 > v26, v25 == v26) && (v27 = *(v20 + 37), v28 = *(v21 + 37), v24 = v27 > v28, v27 == v28))
    {
      if (*(v21 + 16) != 1)
      {
        goto LABEL_40;
      }

      if (*(v20 + 16) == 1)
      {
        v29 = *v21;
        v30 = *(v21 + 8);
        v44 = *v20;
        if (llvm::StringRef::compare(&v44, v29, v30) < 1)
        {
          goto LABEL_40;
        }

        v20 = *v17;
        v21 = *v16;
      }
    }

    else if (!v24)
    {
      goto LABEL_40;
    }

    *v17 = v21;
    v31 = v18;
    while (1)
    {
      v32 = a1 + v31;
      v33 = *(a1 + v31 + 8);
      v34 = *(v20 + 24);
      v35 = *(v33 + 24);
      v36 = v34 > v35;
      if (v34 != v35 || (v37 = *(v20 + 36), v38 = *(v33 + 36), v36 = v37 > v38, v37 != v38) || (v39 = *(v20 + 37), v40 = *(v33 + 37), v36 = v39 > v40, v39 != v40))
      {
        if (!v36)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      if (*(v33 + 16) != 1)
      {
        break;
      }

      if (*(v20 + 16) == 1)
      {
        v41 = *v33;
        v42 = *(v33 + 8);
        v44 = *v20;
        if (llvm::StringRef::compare(&v44, v41, v42) < 1)
        {
          goto LABEL_39;
        }

        v33 = *(v32 + 1);
      }

LABEL_37:
      v16 -= 8;
      *(v32 + 2) = v33;
      v31 -= 8;
      if (v31 == -16)
      {
        v16 = a1;
        goto LABEL_39;
      }
    }

    v16 = a1 + v31 + 16;
LABEL_39:
    *v16 = v20;
    if (++v19 != 8)
    {
LABEL_40:
      v16 = v17;
      v18 += 8;
      if (++v17 == a2)
      {
        return 1;
      }

      continue;
    }

    return v17 + 1 == a2;
  }
}

uint64_t llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0x3F)
  {
    v4 = a2;
    v5[0] = "invalid buffer: the size (";
    v5[2] = &v4;
    v6 = 2563;
    v7[0] = v5;
    v7[2] = ") is smaller than an ELF header (";
    v8 = 770;
    v3 = 64;
    v9[0] = v7;
    v9[2] = &v3;
    v10 = 2562;
    v11 = v9;
    v12 = ")";
    v13 = 770;
    v14 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 64) &= ~1u;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = a3 + 64;
  *a3 = result;
  return result;
}

uint64_t llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0x33)
  {
    v4 = a2;
    v5[0] = "invalid buffer: the size (";
    v5[2] = &v4;
    v6 = 2563;
    v7[0] = v5;
    v7[2] = ") is smaller than an ELF header (";
    v8 = 770;
    v3 = 52;
    v9[0] = v7;
    v9[2] = &v3;
    v10 = 2562;
    v11 = v9;
    v12 = ")";
    v13 = 770;
    v14 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 64) &= ~1u;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = a3 + 64;
  *a3 = result;
  return result;
}

void llvm::jitlink::createLinkGraphFromELFObject(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  v7 = *a1;
  if (*v7 != 1179403647)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  if (*(v7 + 5) != 1)
  {
    goto LABEL_11;
  }

  v9 = *(v7 + 4);
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create(v7, v5, &v27);
      v10 = v27;
      if (v30)
      {
        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(v7, v5, &v27);
  v10 = v27;
  if ((v30 & 1) == 0)
  {
LABEL_34:
    v11 = *(v27 + 18);
    llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v27);
LABEL_12:
    if (v11 > 182)
    {
      switch(v11)
      {
        case 258:
          v16 = *(a1 + 16);
          v27 = *a1;
          v28 = v16;
          v24 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_loongarch(&v27, &v24, a3);
          v13 = *(&v24 + 1);
          if (!*(&v24 + 1))
          {
            goto LABEL_5;
          }

          break;
        case 243:
          v20 = *(a1 + 16);
          v27 = *a1;
          v28 = v20;
          v23 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_riscv(&v27, &v23, a3);
          v13 = *(&v23 + 1);
          if (!*(&v23 + 1))
          {
            goto LABEL_5;
          }

          break;
        case 183:
          v14 = *(a1 + 16);
          v27 = *a1;
          v28 = v14;
          v26 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_aarch64(&v27, &v26, a3);
          v13 = *(&v26 + 1);
          if (!*(&v26 + 1))
          {
            goto LABEL_5;
          }

          break;
        default:
          goto LABEL_29;
      }
    }

    else
    {
      switch(v11)
      {
        case 3:
          v15 = *(a1 + 16);
          v27 = *a1;
          v28 = v15;
          v21 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_i386(&v27, &v21, a3);
          v13 = *(&v21 + 1);
          if (!*(&v21 + 1))
          {
            goto LABEL_5;
          }

          break;
        case 40:
          v19 = *(a1 + 16);
          v27 = *a1;
          v28 = v19;
          v25 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_aarch32(&v27, &v25, a3);
          v13 = *(&v25 + 1);
          if (!*(&v25 + 1))
          {
            goto LABEL_5;
          }

          break;
        case 62:
          v12 = *(a1 + 16);
          v27 = *a1;
          v28 = v12;
          v22 = *a2;
          *a2 = 0;
          *(a2 + 8) = 0;
          llvm::jitlink::createLinkGraphFromELFObject_x86_64(&v27, &v22, a3);
          v13 = *(&v22 + 1);
          if (!*(&v22 + 1))
          {
            goto LABEL_5;
          }

          break;
        default:
LABEL_29:
          v17 = *(a1 + 16);
          v18 = *(a1 + 24);
          v29 = 1283;
          *&v27 = "Unsupported target machine architecture in ELF object ";
          *&v28 = v17;
          *(&v28 + 1) = v18;
          llvm::make_error<llvm::jitlink::JITLinkError,llvm::Twine>();
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    goto LABEL_5;
  }

LABEL_24:
  *&v27 = 0;
  llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v27);
  *(a3 + 8) |= 1u;
  *a3 = v10;
LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

llvm::jitlink::LinkGraph **llvm::jitlink::link_ELF(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (v3 <= 26)
  {
    if ((v3 - 1) < 2)
    {
LABEL_11:
      *a1 = 0;
      v7 = *a2;
      *a2 = 0;
      v27 = v7;
      v28 = v2;
      llvm::jitlink::link_ELF_aarch32(&v28, &v27);
      v8 = v27;
      v27 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v6 = &v28;
      return std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](v6);
    }

    if ((v3 - 13) >= 2)
    {
      if (v3 != 3)
      {
        goto LABEL_30;
      }

      *a1 = 0;
      v13 = *a2;
      *a2 = 0;
      v29 = v13;
      v30 = v2;
      llvm::jitlink::link_ELF_aarch64(&v30, &v29);
      v14 = v29;
      v29 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v6 = &v30;
    }

    else
    {
      *a1 = 0;
      v4 = *a2;
      *a2 = 0;
      v25 = v4;
      v26 = v2;
      llvm::jitlink::link_ELF_loongarch(&v26, &v25);
      v5 = v25;
      v25 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = &v26;
    }
  }

  else if (v3 > 36)
  {
    if (v3 == 37)
    {
      *a1 = 0;
      v15 = *a2;
      *a2 = 0;
      v19 = v15;
      v20 = v2;
      llvm::jitlink::link_ELF_i386(&v20, &v19);
      v16 = v19;
      v19 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v6 = &v20;
    }

    else
    {
      if (v3 != 38)
      {
        goto LABEL_30;
      }

      *a1 = 0;
      v9 = *a2;
      *a2 = 0;
      v21 = v9;
      v22 = v2;
      llvm::jitlink::link_ELF_x86_64(&v22, &v21);
      v10 = v21;
      v21 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v6 = &v22;
    }
  }

  else
  {
    if ((v3 - 27) >= 2)
    {
      if ((v3 - 35) >= 2)
      {
LABEL_30:
        v18 = *a2;
        std::operator+<char>();
        llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
      }

      goto LABEL_11;
    }

    *a1 = 0;
    v11 = *a2;
    *a2 = 0;
    v23 = v11;
    v24 = v2;
    llvm::jitlink::link_ELF_riscv(&v24, &v23);
    v12 = v23;
    v23 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v6 = &v24;
  }

  return std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](v6);
}

uint64_t *llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(uint64_t *a1)
{
  v2 = a1 + 8;
  if (a1[8])
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    v4 = a1[5];
    if (v4 != v2)
    {
      free(v4);
    }

    v5 = a1[2];
    if (v5)
    {
      a1[3] = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(llvm::jitlink::ELFLinkGraphBuilderBase *this)
{
  v2 = *(this + 1);
  *this = &unk_2883ED050;
  *(this + 1) = 0;
  if (v2)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v2);
    MEMORY[0x277C69E40]();
  }
}

{
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(this);

  JUMPOUT(0x277C69E40);
}

char *llvm::jitlink::getJITLinkEdgeKind(char *this, signed int a2)
{
  v7 = a2;
  if (a2 <= 27)
  {
    switch(a2)
    {
      case 2:
        this[8] &= ~1u;
        v2 = 3;
        goto LABEL_18;
      case 3:
        this[8] &= ~1u;
        v2 = 2;
        goto LABEL_18;
      case 10:
        this[8] &= ~1u;
        v2 = 5;
        goto LABEL_18;
    }

LABEL_14:
    v3[0] = "{0:d}: ";
    v3[1] = 7;
    v3[2] = v5;
    v3[3] = 1;
    v4[0] = &unk_2883ECF20;
    v4[1] = &v7;
    v5[0] = v4;
    v5[1] = "Unsupported aarch32 relocation ";
    v5[3] = v3;
    v6 = 1539;
    llvm::object::getELFRelocationTypeName(0x28, a2);
    operator new();
  }

  if (a2 > 46)
  {
    if (a2 == 47)
    {
      this[8] &= ~1u;
      v2 = 7;
      goto LABEL_18;
    }

    if (a2 == 48)
    {
      this[8] &= ~1u;
      v2 = 8;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a2 == 28)
  {
    this[8] &= ~1u;
    v2 = 4;
    goto LABEL_18;
  }

  if (a2 != 30)
  {
    goto LABEL_14;
  }

  this[8] &= ~1u;
  v2 = 6;
LABEL_18:
  *this = v2;
  return this;
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_aarch32@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  *__p = *a1;
  v32 = v5;
  llvm::object::ObjectFile::createELFObjectFile(__p, 1, &v39);
  if ((v40 & 1) == 0)
  {
    llvm::object::ObjectFile::makeTriple(v39, &v33);
    ArchName = llvm::Triple::getArchName(&v33);
    v9 = llvm::ARM::parseArch(ArchName, v8);
    if (!v9)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v10 = *(&llvm::ARM::ARMArchNames + 18 * v9 + 17);
    if ((v10 | 4) != 0xE)
    {
      CPUArchName = llvm::jitlink::aarch32::getCPUArchName(v10);
      strlen(CPUArchName);
      operator new();
    }

    if (v34 > 34)
    {
      if (v34 != 35)
      {
        if (v34 != 36)
        {
LABEL_8:
          std::operator+<char>();
          llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
        }

LABEL_13:
        v12 = *(v39 + 2);
        v23 = *a2;
        *a2 = 0;
        *(a2 + 1) = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v12;
          std::string::__init_copy_ctor_external(&v25, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          v12 = v22;
        }

        else
        {
          v25 = v33;
        }

        v26 = v34;
        v27 = v35;
        v44[0] = v25.__r_.__value_.__l.__size_;
        v17 = v25.__r_.__value_.__r.__words[0];
        *(v44 + 7) = *(&v25.__r_.__value_.__r.__words[1] + 7);
        v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
        memset(&v25, 0, sizeof(v25));
        v37 = v34;
        v38 = v35;
        v36 = v12;
        llvm::StringRef::str(&v36, &v45);
        *v41 = v17;
        *&v41[8] = v44[0];
        *&v41[15] = *(v44 + 7);
        v41[23] = v18;
        v42 = v37;
        v43 = v38;
        operator new();
      }
    }

    else if (v34 != 1)
    {
      if (v34 != 2)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    v13 = v39;
    v14 = *(v39 + 4);
    v15 = *(v39 + 5);
    v16 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v16;
      std::string::__init_copy_ctor_external(&v28, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      v16 = v24;
    }

    else
    {
      v28 = v33;
    }

    v29 = v34;
    v30 = v35;
    v45 = v16;
    *v41 = *&v28.__r_.__value_.__l.__data_;
    v19 = v28.__r_.__value_.__r.__words[2];
    memset(&v28, 0, sizeof(v28));
    v42 = v34;
    *&v41[16] = v19;
    v43 = v35;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(__p, v13 + 56, &v45, v41, v14, v15);
  }

  v6 = v39;
  v39 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v39);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::buildGraph(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(**(a1 + 24) + 16) != 1)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::prepare(a1, &v5);
  v4 = v5;
  if (v5 || (llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::graphifySections(a1, &v5), (v4 = v5) != 0) || (llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::graphifySymbols(a1, &v5), (v4 = v5) != 0) || ((*(*a1 + 16))(&v5, a1), (v4 = v5) != 0))
  {
    *(a2 + 8) |= 1u;
  }

  else
  {
    *(a2 + 8) &= ~1u;
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  *a2 = v4;
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)1>::~ELFLinkGraphBuilder_aarch32(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)0>::~ELFLinkGraphBuilder_aarch32(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED0B0;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED0B0;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_aarch32(uint64_t *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  ArchName = llvm::Triple::getArchName((*a1 + 136));
  v7 = (*(&llvm::ARM::ARMArchNames + 18 * llvm::ARM::parseArch(ArchName, v6) + 17) - 10) & 0xFFFFFFFB;
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  if ((*(**a2 + 56))(*a2, v4 + 136))
  {
    (*(**a2 + 64))(&v18);
    if (v19 < 8)
    {
      *&v16 = llvm::jitlink::markAllSymbolsLive;
      v17 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v12, &v16);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v12, &v18);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v18);
    if (!v7)
    {
      *&v18 = llvm::jitlink::buildTables_ELF_aarch32<(llvm::jitlink::aarch32::StubsFlavor)1>;
      v19 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v12[1] + 8, &v18);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v18);
    }
  }

  v8 = *a1;
  (*(**a2 + 72))(&v18);
  if (!v18)
  {
    operator new();
  }

  v9 = *a2;
  v11 = v18;
  *&v18 = 0;
  (*(*v9 + 24))(v9, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  *&v18 = &v14;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v18);
  *&v18 = &v13[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v18);
  *&v18 = v13;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v18);
  *&v18 = &v12[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v18);
  *&v18 = v12;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v18);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::jitlink::buildTables_ELF_aarch32<(llvm::jitlink::aarch32::StubsFlavor)1>@<X0>(llvm::jitlink::LinkGraph *a1@<X0>, void *a2@<X8>)
{
  v15 = 0;
  v16 = 0;
  llvm::jitlink::LinkGraph::blocks(a1, v19);
  v20[0] = v19[0];
  v20[1] = v19[1];
  v20[2] = v19[2];
  v20[3] = v19[3];
  llvm::jitlink::LinkGraph::blocks(a1, v17);
  v18[0] = v17[4];
  v18[1] = v17[5];
  v18[2] = v17[6];
  v18[3] = v17[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v21, v20, v18);
  v4 = v21;
  v5 = v22;
  if (v21 != v22)
  {
    do
    {
      v6 = *(*v4 + 40);
      v7 = *(*v4 + 48);
      while (v6 != v7)
      {
        v8 = *v6;
        if ((*(*(*v6 + 8) + 8) & 1) == 0 && v6[24] - 5 <= 1)
        {
          *&v19[0] = 0;
          v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v14, v8, v19);
          v10 = *&v19[0];
          if (!v9)
          {
            v10 = v14 + 16 * v15;
          }

          if (v10 == v14 + 16 * v15)
          {
            Entry = llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::createEntry(&v14, a1, v8);
            v12 = *v8;
            *&v17[0] = v12;
            if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v12 + 8), 1uLL);
            }

            *(&v17[0] + 1) = Entry;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(&v14, v17, v17 + 1, v19);
            v10 = *&v19[0];
            if ((*&v17[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v17[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          *v6 = *(v10 + 8);
        }

        v6 += 32;
      }

      v4 += 8;
    }

    while (v4 != v5);
    v4 = v21;
  }

  if (v4)
  {
    v22 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v14);
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6)
{
  v12[0] = a5;
  v12[1] = a6;
  llvm::StringRef::str(v12, v11);
  *__p = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v9 = *(a4 + 24);
  v10 = *(a4 + 40);
  operator new();
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)1>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (v5[1] != 9)
    {
      *a2 = 0;
LABEL_35:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(a1 + 24), v5[7], &v25);
    if (v26)
    {
      v8 = v25;
      *a2 = v25;
      goto LABEL_34;
    }

    v9 = *(a1 + 24);
    *&v20 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v9, v25, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v20, &v23);
    if (v24)
    {
      v10 = v23;
      *&v23 = 0;
      *a2 = v10;
      goto LABEL_27;
    }

    if ((*(a1 + 72) & 1) == 0 && (v20 = v23, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v20) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v25))
    {
      *a2 = 0;
LABEL_27:
      if (v24)
      {
        v17 = v23;
        *&v23 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      if (v26)
      {
        v18 = v25;
        v25 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v8 = *a2;
LABEL_34:
      if (v8)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
    if (!GraphBlock)
    {
      v22 = 1283;
      *&v20 = v7;
      v21 = v23;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    v13 = v7;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(*(a1 + 24), v5, &v20);
    v14 = v20;
    if (v21)
    {
      *&v20 = 0;
    }

    else
    {
      if (*(&v20 + 1))
      {
        v15 = 8 * *(&v20 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)1>::addSingleRelRelocation(a1, v14, v25, v12, a2);
          if (*a2)
          {
            goto LABEL_23;
          }

          v14 += 2;
          v15 -= 8;
        }

        while (v15);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_23:
    if (v21)
    {
      v16 = v20;
      *&v20 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    v7 = v13;
    goto LABEL_27;
  }

LABEL_36:
  *a2 = 0;
LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)1>::addSingleRelRelocation(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a2[1];
  v11 = v10 >> 8;
  v30 = v10 >> 8;
  if (v10 > 0xFF)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 24), *(a1 + 48), v11, &v35);
    if (v36)
    {
      v12 = v35;
      v35 = 0;
LABEL_16:
      *a5 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v11);
  if (!GraphSymbol)
  {
    v15 = *(a1 + 112);
    *&v22 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
    *(&v22 + 1) = 113;
    v23 = v29;
    v24 = 3;
    v25[0] = &unk_2883ECF20;
    v25[1] = &v30;
    v26[0] = &unk_2883ED130;
    v26[1] = v35 + 14;
    v27 = &unk_2883ECC68;
    v28 = v15;
    v29[0] = v25;
    v29[1] = v26;
    v29[2] = &v27;
    getErrorErrorCat();
    v33 = 3;
    v34 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
  }

  v14 = GraphSymbol;
  llvm::jitlink::getJITLinkEdgeKind(&v33, *(a2 + 4));
  if (v34)
  {
    v12 = v33;
    goto LABEL_16;
  }

  v16 = *a2 + *(a3 + 12) - *a4;
  *&v22 = v14;
  DWORD2(v22) = v16;
  v23 = 0;
  LOBYTE(v24) = v33;
  v17 = *(a1 + 8);
  if (v33 > 3u)
  {
    if (v33 == 4)
    {
      llvm::jitlink::aarch32::readAddendArm(v17, a4, &v22);
    }

    llvm::jitlink::aarch32::readAddendThumb(v17, a4, &v22, (a1 + 152), &v31);
  }

  else
  {
    llvm::jitlink::aarch32::readAddendData(v17, a4, &v22, &v31);
  }

  if (v32)
  {
    v12 = v31;
    goto LABEL_16;
  }

  v23 = v31;
  llvm::jitlink::Block::addEdge(a4, &v22);
  v20 = v32;
  *a5 = 0;
  if (v20)
  {
    v21 = v31;
    v31 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

LABEL_17:
  if (v36)
  {
    v18 = v35;
    v35 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections(a1, v9);
  if (v10)
  {
    v6 = v9[0];
    v7 = *(a3 + 8) | 1;
  }

  else
  {
    if (v9[1] <= a2)
    {
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = v9[0] + 40 * a2;
    v7 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v7;
  *a3 = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections(a1, v17);
  if (v18)
  {
    v10 = v17[0];
    *(a5 + 16) |= 1u;
    *a5 = v10;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionStringTable(a1, v17[0], v17[1], a3, a4, v15);
    if (v16)
    {
      v11 = v15[0];
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(a1, a2, v15[0], v15[1], a5);
      if (v16)
      {
        v12 = v15[0];
        v15[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }
    }

    if (v18)
    {
      v13 = v17[0];
      v17[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void llvm::object::defaultWarningHandler(llvm::object *this, const llvm::Twine *a2)
{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

{
  llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
}

uint64_t llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(uint64_t a1, int a2)
{
  v5 = a2;
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>((a1 + 80), &v5, &v6);
  result = 0;
  if (v3)
  {
    if (v6 != *(a1 + 80) + 16 * *(a1 + 96))
    {
      return *(v6 + 8);
    }
  }

  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 32);
  if (v4)
  {
    v5 = *(v3 + 46);
    if (v5 != 40)
    {
      v13 = "invalid e_shentsize in ELF header: ";
      v14 = v5;
      v15 = 2307;
      LODWORD(v12) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = result[1];
    if (v4 > 0xFFFFFFD7 || v4 + 40 > v6)
    {
      v12 = *(*result + 32);
      v13 = "section header table goes past the end of the file: e_shoff = 0x";
      v14 = &v12;
      v15 = 3587;
      v16 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v10 = v3 + v4;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v11 = *(v10 + 20);
    }

    if (v4 + 40 * v11 > v6)
    {
      v13 = "section table goes past the end of file";
      v15 = 259;
      LODWORD(v12) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a2 + 16) &= ~1u;
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  else
  {
    v8 = result[2];
    v9 = result[3];
    if (v8 == v9)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) &= ~1u;
    }

    else
    {
      *(a2 + 16) &= ~1u;
      *a2 = v8;
      *(a2 + 8) = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3);
    }
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionStringTable(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(std::string *__return_ptr, uint64_t, void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 50);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v12 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v14 = 259;
      LODWORD(v10[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    v9 = a1[6];
    *a6 = a1[5];
    *(a6 + 8) = v9;
    return;
  }

  if (!*(*a1 + 50))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v7)
  {
    v10[0] = "section header string table index ";
    v10[2] = v7;
    v11 = 2051;
    v12 = v10;
    v13 = " does not exist";
    v14 = 770;
    v15 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = a2 + 40 * v7;

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTable(a1, v8, a4, a5, a6);
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  if (v6)
  {
    if (a4 <= v6)
    {
      llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = v10->__r_.__value_.__r.__words[2];
      *__p = *&v10->__r_.__value_.__l.__data_;
      v16 = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTable(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 3)
  {
    goto LABEL_10;
  }

  llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v30);
  v10 = std::string::insert(&v30, 0, "invalid sh_type for string table section ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, ": expected SHT_STRTAB, but got ");
  v13 = v12->__r_.__value_.__r.__words[2];
  v35 = *&v12->__r_.__value_.__l.__data_;
  v36 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ELFSectionTypeName = llvm::object::getELFSectionTypeName(*(*a1 + 18), *(a2 + 4));
  v32[0] = &v35;
  v32[2] = ELFSectionTypeName;
  v32[3] = v15;
  v33 = 1284;
  a3(&v29, a4, v32);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v16 = v29.__r_.__value_.__r.__words[0];
  if (!v29.__r_.__value_.__r.__words[0])
  {
LABEL_10:
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<char>(a1, a2, &v35);
    v17 = v35;
    if (v36)
    {
      *&v35 = 0;
      *(a5 + 16) |= 1u;
      *a5 = v17;
    }

    else
    {
      v18 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v29);
        v23 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v30, " is empty");
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      if (*(v35 + *(&v35 + 1) - 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v29);
        v19 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v20 = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v30, " is non-null terminated");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      *(a5 + 16) &= ~1u;
      *a5 = v17;
      *(a5 + 8) = v18;
    }

    if (v36)
    {
      v27 = v35;
      *&v35 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else
  {
    *(a5 + 16) |= 1u;
    *a5 = v16;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections(a1, v14);
  if (v15)
  {
    v5 = v14[0];
    v14[0] = 0;
    v13.__r_.__value_.__r.__words[0] = v5;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13);
    if (v13.__r_.__value_.__r.__words[0])
    {
      (*(*v13.__r_.__value_.__l.__data_ + 8))(v13.__r_.__value_.__r.__words[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(a3, "[unknown index]");
  }

  else
  {
    std::to_string(&v12, 0xCCCCCCCCCCCCCCCDLL * ((a2 - v14[0]) >> 3));
    v6 = std::string::insert(&v12, 0, "[index ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, "]");
    v9 = v8->__r_.__value_.__r.__words[2];
    *a3 = *&v8->__r_.__value_.__l.__data_;
    *(a3 + 16) = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (v15)
  {
    v10 = v14[0];
    v14[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<char>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v6 = *(a2 + 16);
  v5 = *(a2 + 20);
  if (__CFADD__(v6, v5))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v26);
    v7 = std::string::insert(&v26, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v21, " has a sh_offset (0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v24 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v6;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v5;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    LODWORD(v18) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v5 + v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v5;
    v18 = v6;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v3[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v15 = *result + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v5;
  return result;
}

const char **std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(const char **a1, const char **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *a3;
    v6 = *(a3 + 8);
    do
    {
      if (*v3)
      {
        if (strlen(*v3) == v6 && (!v6 || !memcmp(*v3, v5, v6)))
        {
          return v3;
        }
      }

      else if (!v6)
      {
        return v3;
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return v3;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 8)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 8;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = a2[9];
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[5];
  if ((v6 & 7) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = a2[9];
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = a2[4];
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 3;
  return result;
}

uint64_t llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(uint64_t a1, int a2)
{
  v5 = a2;
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>((a1 + 104), &v5, &v6);
  result = 0;
  if (v3)
  {
    if (v6 != *(a1 + 104) + 16 * *(a1 + 120))
    {
      return *(v6 + 8);
    }
  }

  return result;
}

void llvm::jitlink::Block::addEdge(void *a1, _OWORD *a2)
{
  v4 = a1[6];
  v5 = a1[7];
  if (v4 >= v5)
  {
    v8 = a1[5];
    v9 = (v4 - v8) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((a1 + 5), v12);
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v7 = 32 * v9 + 32;
    v15 = a1[5];
    v16 = a1[6] - v15;
    v17 = v13 - v16;
    memcpy(v13 - v16, v15, v16);
    v18 = a1[5];
    a1[5] = v17;
    a1[6] = v7;
    a1[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  a1[6] = v7;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 16 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = a2[5];
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 16 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 16)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 16;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = a2[9];
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[5];
  if ((v6 & 0xF) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = a2[9];
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = a2[4];
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 4;
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::prepare(uint64_t a1@<X0>, void **a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections(*(a1 + 24), __p);
  if (v20 & 1) != 0 || (*(a1 + 32) = *__p, v4 = *(a1 + 24), v5 = *(a1 + 32), v6 = *(a1 + 40), v17 = llvm::object::defaultWarningHandler, llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionStringTable(v4, v5, v6, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v17, __p), (v20))
  {
LABEL_3:
    *a2 = __p[0];
  }

  else
  {
    *(a1 + 56) = *__p;
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = 40 * v8;
      v10 = (*(a1 + 32) + 24);
      do
      {
        v11 = v10 - 6;
        v12 = *(v10 - 5);
        if (v12 == 2)
        {
          if (*(a1 + 48))
          {
            v15 = *(a1 + 8) + 96;
            std::operator+<char>();
            llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
          }

          *(a1 + 48) = v11;
          v12 = *(v10 - 5);
        }

        if (v12 == 18)
        {
          v13 = *v10;
          if (*(a1 + 40) <= v13)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
          }

          llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable(*(a1 + 24), v11, __p);
          if (v20)
          {
            goto LABEL_3;
          }

          v17 = (*(a1 + 32) + 40 * v13);
          v18 = *__p;
          llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(a1 + 128, &v17, &v18, &v16);
          if (v20)
          {
            v14 = __p[0];
            __p[0] = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        v10 += 10;
        v9 -= 40;
      }

      while (v9);
    }

    *a2 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::graphifySections@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v3 = result;
    v4 = 0;
    v5 = *a2;
    v6 = 1;
    do
    {
      v7 = (*(v3 + 32) + 40 * v4);
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(*(v3 + 24), v7, *(v3 + 56), *(v3 + 64), &v29);
      if (v30)
      {
        v5 = v29;
        *&v29 = 0;
      }

      else
      {
        result = (*(*v3 + 40))(v3, v7);
        if ((result & 1) != 0 || !v7[1] || (*(v3 + 72) & 1) == 0 && (v27 = v29, result = std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v27), result != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]))
        {
          v8 = 6;
          goto LABEL_11;
        }

        v11 = v7[2];
        SectionByName = llvm::jitlink::LinkGraph::findSectionByName(*(v3 + 8), v29, *(&v29 + 1), v9);
        if (!SectionByName)
        {
          v13 = *(v3 + 8);
          llvm::jitlink::LinkGraph::createSection();
        }

        if (v7[1] == 8)
        {
          v14 = *(v3 + 8);
          v15 = v7[5];
          v16 = v7[3];
          v26 = v7[8];
          *&v27 = v16;
          *&v24 = v15;
          v25 = 0;
          v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v14, SectionByName, &v24, &v27, &v26, &v25);
LABEL_23:
          LODWORD(v27) = v6 - 1;
          result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((v3 + 80), &v27);
          v8 = 0;
          *(result + 8) = v17;
          goto LABEL_11;
        }

        result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<char>(*(v3 + 24), v7, &v27);
        if ((v28 & 1) == 0)
        {
          v18 = *(v3 + 8);
          v19 = v7[3];
          v20 = v7[8];
          v24 = v27;
          v25 = v20;
          v26 = v19;
          v23 = 0;
          v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v18, SectionByName, &v24, &v26, &v25, &v23);
          if (v28)
          {
            v21 = v27;
            *&v27 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }

          goto LABEL_23;
        }

        v5 = v27;
      }

      v8 = 1;
LABEL_11:
      if (v30)
      {
        result = v29;
        *&v29 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      if (v8 != 6 && v8)
      {
        goto LABEL_30;
      }

      v4 = v6;
    }

    while (*(v3 + 40) != v6++);
  }

  v5 = 0;
LABEL_30:
  *a2 = v5;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::graphifySymbols(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    *a2 = 0;
    goto LABEL_55;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 24), v3, &v57);
  if (v59)
  {
    *a2 = v57;
    goto LABEL_55;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTableForSymtab(*(a1 + 24), *(a1 + 48), *(a1 + 32), *(a1 + 40), v55);
  if (v56)
  {
    v5 = v55[0];
    v55[0] = 0;
    goto LABEL_48;
  }

  v5 = v58;
  if (v58)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v57 + 16 * v6;
      if ((*(v8 + 12) & 0xF) != 4)
      {
        break;
      }

LABEL_20:
      v6 = v7;
      v20 = v58 == v7++;
      if (v20)
      {
        v5 = 0;
        goto LABEL_48;
      }
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getName(v8, v55[0], v55[1], &v52);
    if (v54)
    {
      v9 = v52;
      v52 = 0;
LABEL_12:
      *a2 = v9;
      v10 = 1;
      goto LABEL_16;
    }

    v11 = *(v8 + 12);
    v12 = v11 & 0xF;
    if (v12 == 5 || *(v8 + 14) == 65522)
    {
      v13 = *(a1 + 8);
      CommonSection = llvm::jitlink::ELFLinkGraphBuilderBase::getCommonSection(a1);
      v16 = *(v8 + 4);
      v15 = *(v8 + 8);
      v48 = 0;
      v46 = v15;
      v45[0] = v16;
      v43[0] = 0;
      v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v13, CommonSection, &v46, &v48, v45, v43);
      v18 = llvm::jitlink::LinkGraph::addDefinedSymbol(v13, v17, 0, v52, v53, *(v8 + 8), 1, 0, 0, 0);
      LODWORD(v48) = v7 - 1;
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v48) + 1) = v18;
      v10 = 8;
      goto LABEL_16;
    }

    if (*(v8 + 14))
    {
      v20 = v12 < 4 || v12 == 6;
      if (!v20)
      {
        goto LABEL_34;
      }

      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolLinkageAndScope(v8, v52, v53, &v48);
      if (v49)
      {
        v9 = v48;
        goto LABEL_12;
      }

      v23 = v48;
      v24 = BYTE1(v48);
      v25 = *(v8 + 14);
      if (v25 == 0xFFFF)
      {
        v46 = *(a1 + 48);
        v48 = 0;
        v10 = 8;
        if (!llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>((a1 + 128), &v46, &v48) || v48 == (*(a1 + 128) + 24 * *(a1 + 144)))
        {
          goto LABEL_16;
        }

        v32 = v48[2];
        v48 = v48[1];
        v49 = v32;
        v50 = 1;
        v51 = 0;
        llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,false>>(v7 - 1, &v48, &v46);
        if (v47)
        {
          v9 = v46;
          goto LABEL_12;
        }

        v25 = v46;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v25);
      if (GraphBlock)
      {
        v27 = GraphBlock;
        v28 = (*(*a1 + 24))(a1, v8);
        v29 = (*(*a1 + 32))(a1, v8, v28);
        v30 = *(a1 + 8);
        if (v53)
        {
          v31 = llvm::jitlink::LinkGraph::addDefinedSymbol(v30, v27, v29, v52, v53, *(v8 + 8), v23, v24, (*(v8 + 12) & 0xF) == 2, 0);
        }

        else
        {
          v31 = llvm::jitlink::LinkGraph::addAnonymousSymbol(v30, v27, v29, *(v8 + 8), 0, 0);
        }

        v31[2] = v31[2] & 0x7FFFFFFFFFFFFFFFLL | (v28 << 63);
        LODWORD(v48) = v7 - 1;
        v10 = 0;
        *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v48) + 1) = v31;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      if (v11 < 0x10)
      {
LABEL_34:
        v10 = 0;
        goto LABEL_16;
      }

      v21 = v11 >> 4;
      if (v21 - 1 >= 2)
      {
        v43[0] = "Invalid symbol binding ";
        v44 = 259;
        v33 = *(v8 + 12) >> 4;
        v42 = 265;
        LODWORD(v41[0]) = v33;
        llvm::operator+(v43, v41, v45);
        v39 = " for external symbol ";
        v40 = 259;
        llvm::operator+(v45, &v39, &v46);
        v38 = 261;
        v37[0] = v52;
        v37[1] = v53;
        llvm::operator+(&v46, v37, &v48);
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v22 = llvm::jitlink::LinkGraph::addExternalSymbol(*(a1 + 8), v52, v53, *(v8 + 8), v21 == 2);
      LODWORD(v48) = v7 - 1;
      v10 = 0;
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v48) + 1) = v22;
    }

LABEL_16:
    if (v54)
    {
      v19 = v52;
      v52 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    if ((v10 | 8) != 8)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

LABEL_48:
  *a2 = v5;
LABEL_49:
  if (v56)
  {
    v34 = v55[0];
    v55[0] = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  if (v59)
  {
    v35 = v57;
    v57 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }
  }

LABEL_55:
  v36 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections(a1, v9);
  if (v10)
  {
    v7 = v9[0];
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable(a1, a2, v9[0], v9[1], a3);
    if (v10)
    {
      result = v9[0];
      v9[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>(a1, a2, &v32);
  v11 = v32;
  if (v34)
  {
    v32 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v12 = a2[6];
    if (a4 <= v12)
    {
      v28 = "invalid section index: ";
      v29 = v12;
      v30 = 2051;
      LODWORD(v24[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v13 = a3 + 40 * v12;
    v14 = *(v13 + 4);
    if (v14 != 2 && v14 != 11)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName(*(*a1 + 18), v14);
      v27 = 1283;
      v24[0] = "SHT_SYMTAB_SHNDX section is linked with ";
      v25 = ELFSectionTypeName;
      v26 = v19;
      v28 = v24;
      v29 = " section (expected SHT_SYMTAB/SHT_DYNSYM)";
      v30 = 770;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v16 = v33;
    v23 = *(v13 + 20) >> 4;
    if (v33 != v23)
    {
      v20 = v33;
      v21[0] = "SHT_SYMTAB_SHNDX has ";
      v21[2] = &v20;
      v22 = 2563;
      v24[0] = v21;
      v25 = " entries, but the symbol table associated has ";
      v27 = 770;
      v28 = v24;
      v29 = &v23;
      v30 = 3074;
      v31 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a5 + 16) &= ~1u;
    *(a5 + 8) = v16;
  }

  *a5 = v11;
  if (v34)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 4)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 4;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = a2[9];
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[5];
  if ((v6 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = a2[9];
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = a2[4];
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 2;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::InsertIntoBucketImpl<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, a2, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 24 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::InsertIntoBucketImpl<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::moveFromOldBuckets(a1, v4, v4 + 24 * v3);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10 - 24;
    v13 = vdupq_n_s64(v12 / 0x18);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *result = -4096;
      }

      if (v14.i8[4])
      {
        result[3] = -4096;
      }

      v11 += 2;
      result += 6;
    }

    while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 24 * v6 - 24;
    v10 = vdupq_n_s64(v9 / 0x18);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[3] = -4096;
      }

      v7 += 2;
      v8 += 6;
    }

    while (((v9 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(v5, a2, &v13);
      v12 = v13;
      *v13 = *a2;
      *(v12 + 1) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 24;
  }

  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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

  llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::grow(a1, v7);
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

char *llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::grow(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x277C69E30);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 32);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1210)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 8) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1830)))).i32[1])
      {
        *v12 = -1;
        v12[4] = -1;
      }

      v7 += 4;
      v12 += 16;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      *(v15 + 1) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTableForSymtab(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 2 && v6 != 11)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = *(a2 + 24);
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9[0] = llvm::object::defaultWarningHandler;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTable(a1, a3 + 40 * v8, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, v9, a5);
}

size_t llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getName@<X0>(llvm::object *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (a3 <= v5)
  {
    llvm::object::object_category(a1);
    memset(__p, 0, sizeof(__p));
    v10 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2883EB8F0;
    v17 = __p;
    llvm::raw_ostream::SetUnbuffered(&v9);
    v19[0] = &unk_2883ED160;
    v19[1] = "st_name (0x%x) is past the end of the string table of size 0x%zx";
    v20 = v5;
    v21 = a3;
    llvm::raw_ostream::operator<<(&v9, v19);
    operator new();
  }

  v6 = a2 + v5;
  if (a2)
  {
    result = strlen((a2 + v5));
  }

  else
  {
    result = 0;
  }

  *(a4 + 16) &= ~1u;
  *a4 = v6;
  *(a4 + 8) = result;
  return result;
}

uint64_t llvm::jitlink::ELFLinkGraphBuilderBase::getCommonSection(llvm::jitlink::ELFLinkGraphBuilderBase *this)
{
  result = *(this + 2);
  if (!result)
  {
    v3 = *(this + 1);
    llvm::jitlink::LinkGraph::createSection();
  }

  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolLinkageAndScope(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 12) >> 4;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 10)
    {
      goto LABEL_11;
    }

    v6 = 0;
    LOWORD(v5) = 1;
    v7 = 1;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_13;
      }

LABEL_11:
      v10[0] = "Unrecognized symbol binding ";
      v11 = v5;
      v12 = 2307;
      v13[0] = v10;
      v14 = " for ";
      v15 = 770;
      v16 = v13;
      v17 = a2;
      v18 = a3;
      v19 = 1282;
      getErrorErrorCat();
      operator new();
    }

    v7 = 0;
    LOWORD(v5) = 3;
    v6 = 3;
  }

LABEL_13:
  v9 = *(a1 + 13) & 3;
  if (v9 == 1)
  {
    v10[0] = "Unrecognized symbol visibility ";
    v11 = 1;
    v12 = 2307;
    v13[0] = v10;
    v14 = " for ";
    v15 = 770;
    v16 = v13;
    v17 = a2;
    v18 = a3;
    v19 = 1282;
    getErrorErrorCat();
    operator new();
  }

  if (v9 != 2)
  {
    LOWORD(v5) = v6;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v7 | (v5 << 8);
}

uint64_t *llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,false>>@<X0>(unsigned int a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v12[0] = "found an extended symbol index (";
    v13 = a1;
    v14 = 2051;
    v15 = v12;
    p_p = "), but unable to locate the extended symbol index table";
    v17 = 770;
    LODWORD(v10[0]) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v4 = a1;
  result = llvm::object::DataRegion<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>::operator[](a2, a1, &v19);
  if (v20)
  {
    v10[0] = "unable to read an extended symbol table at index ";
    v10[2] = v4;
    v11 = 2051;
    v12[0] = v10;
    v13 = ": ";
    v14 = 770;
    v6 = v19;
    v19 = 0;
    v8 = v6;
    llvm::toString(&v8, &__p);
    v15 = v12;
    p_p = &__p;
    v17 = 1026;
    v18 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 8) &= ~1u;
  *a3 = v19;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::DataRegion<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>::operator[]@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 16) == 1)
  {
    if (result[1] <= a2)
    {
      v5[0] = "the index is greater than or equal to the number of entries (";
      v5[2] = result + 1;
      v6 = 3075;
      v7 = v5;
      v8 = ")";
      v9 = 770;
      v10 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v4 = *result;
  }

  else
  {
    v4 = *result;
    if (*result + 4 * a2 + 4 > result[3])
    {
      v7 = "can't read past the end of the file";
      v9 = 259;
      LODWORD(v5[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = *(v4 + 4 * a2);
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)0>::addRelocations(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    while (v5[1] != 150994944)
    {
      *a2 = 0;
LABEL_20:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(*(a1 + 24), bswap32(v5[7]), &v21);
    if (v22)
    {
      v7 = v21;
      *a2 = v21;
      goto LABEL_19;
    }

    v8 = *(a1 + 24);
    *&v16 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionName(v8, v21, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v16, &v19);
    if (v20)
    {
      v7 = v19;
      *&v19 = 0;
      *a2 = v7;
      goto LABEL_13;
    }

    if ((*(a1 + 72) & 1) == 0 && (v16 = v19, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v16) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v21))
    {
      v7 = 0;
      *a2 = 0;
LABEL_13:
      if (v20)
      {
        v9 = v19;
        *&v19 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      if (v22)
      {
        v10 = v21;
        v21 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

LABEL_19:
      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_20;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, bswap32(v5[7]));
    if (!GraphBlock)
    {
      v18 = 1283;
      *&v16 = "Refencing a section that wasn't added to the graph: ";
      v17 = v19;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(*(a1 + 24), v5, &v16);
    v7 = v16;
    if (v17)
    {
      *&v16 = 0;
    }

    else
    {
      if (*(&v16 + 1))
      {
        v13 = 8 * *(&v16 + 1);
        while (1)
        {
          llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)0>::addSingleRelRelocation(a1, v7, v21, v12, a2);
          if (*a2)
          {
            break;
          }

          v7 += 2;
          v13 -= 8;
          if (!v13)
          {
            v7 = 0;
            goto LABEL_32;
          }
        }

        v7 = *a2;
        goto LABEL_33;
      }

      v7 = 0;
    }

LABEL_32:
    *a2 = v7;
LABEL_33:
    if (v17)
    {
      v14 = v16;
      *&v16 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    goto LABEL_13;
  }

LABEL_37:
  *a2 = 0;
LABEL_38:
  v15 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_aarch32<(llvm::support::endianness)0>::addSingleRelRelocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = bswap32(*(a2 + 4));
  v11 = v10 >> 8;
  v29 = v10 >> 8;
  if (v10 > 0xFF)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(*(a1 + 24), *(a1 + 48), v11, &v32);
    if (v33)
    {
      v12 = v32;
      v32 = 0;
LABEL_18:
      *a5 = v12;
      goto LABEL_19;
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  LODWORD(v34) = v11;
  *&v21 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>((a1 + 104), &v34, &v21) || v21 == *(a1 + 104) + 16 * *(a1 + 120) || (v13 = *(v21 + 8)) == 0)
  {
    v14 = *(a1 + 112);
    *&v21 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
    *(&v21 + 1) = 113;
    v22 = v28;
    v23 = 3;
    v24[0] = &unk_2883ECF20;
    v24[1] = &v29;
    v25[0] = &unk_2883ED1C0;
    v25[1] = v32 + 14;
    v26 = &unk_2883ECC68;
    v27 = v14;
    v28[0] = v24;
    v28[1] = v25;
    v28[2] = &v26;
    getErrorErrorCat();
    operator new();
  }

  llvm::jitlink::getJITLinkEdgeKind(&v34, *(a2 + 7));
  if (v35)
  {
    v12 = v34;
    goto LABEL_18;
  }

  v15 = bswap32(*a2) + bswap32(*(a3 + 12)) - *a4;
  *&v21 = v13;
  DWORD2(v21) = v15;
  v22 = 0;
  LOBYTE(v23) = v34;
  v16 = *(a1 + 8);
  if (v34 > 3u)
  {
    if (v34 == 4)
    {
      llvm::jitlink::aarch32::readAddendArm(v16, a4, &v21);
    }

    llvm::jitlink::aarch32::readAddendThumb(v16, a4, &v21, (a1 + 152), &v30);
  }

  else
  {
    llvm::jitlink::aarch32::readAddendData(v16, a4, &v21, &v30);
  }

  if (v31)
  {
    v12 = v30;
    goto LABEL_18;
  }

  v22 = v30;
  llvm::jitlink::Block::addEdge(a4, &v21);
  v19 = v31;
  *a5 = 0;
  if (v19)
  {
    v20 = v30;
    v30 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

LABEL_19:
  if (v33)
  {
    v17 = v32;
    v32 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections(a1, v9);
  if (v10)
  {
    v6 = v9[0];
    v7 = *(a3 + 8) | 1;
  }

  else
  {
    if (v9[1] <= a2)
    {
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = v9[0] + 40 * a2;
    v7 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v7;
  *a3 = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionName(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections(a1, v17);
  if (v18)
  {
    v10 = v17[0];
    *(a5 + 16) |= 1u;
    *a5 = v10;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionStringTable(a1, v17[0], v17[1], a3, a4, v15);
    if (v16)
    {
      v11 = v15[0];
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionName(a1, a2, v15[0], v15[1], a5);
      if (v16)
      {
        v12 = v15[0];
        v15[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }
    }

    if (v18)
    {
      v13 = v17[0];
      v17[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 32);
  if (v4)
  {
    v5 = *(v3 + 46);
    if (v5 != 10240)
    {
      v15 = "invalid e_shentsize in ELF header: ";
      v16 = __rev16(v5);
      v17 = 2307;
      LODWORD(v14) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = bswap32(v4);
    v7 = result[1];
    if (v6 > 0xFFFFFFD7 || v6 + 40 > v7)
    {
      v14 = v6;
      v15 = "section header table goes past the end of the file: e_shoff = 0x";
      v16 = &v14;
      v17 = 3587;
      v18 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v9 = v3 + v6;
    v12 = *(v3 + 48);
    if (v12)
    {
      v13 = __rev16(v12);
    }

    else
    {
      v13 = bswap32(*(v9 + 20));
    }

    if (v6 + 40 * v13 > v7)
    {
      v15 = "section table goes past the end of file";
      v17 = 259;
      LODWORD(v14) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a2 + 16) &= ~1u;
    v11 = v13;
  }

  else
  {
    v9 = result[2];
    v10 = result[3];
    if (v9 == v10)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) &= ~1u;
      return result;
    }

    *(a2 + 16) &= ~1u;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3);
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionStringTable(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(std::string *__return_ptr, uint64_t, void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 50);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v13 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v15 = 259;
      LODWORD(v11[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = bswap32(*(a2 + 24));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    v10 = a1[6];
    *a6 = a1[5];
    *(a6 + 8) = v10;
    return;
  }

  v8 = __rev16(v7);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v8)
  {
    v11[0] = "section header string table index ";
    v11[2] = v8;
    v12 = 2051;
    v13 = v11;
    v14 = " does not exist";
    v15 = 770;
    v16 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9 = a2 + 40 * v8;

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTable(a1, v9, a4, a5, a6);
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionName@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    v6 = bswap32(*a2);
    if (a4 <= v6)
    {
      llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = v10->__r_.__value_.__r.__words[2];
      *__p = *&v10->__r_.__value_.__l.__data_;
      v16 = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTable(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 50331648)
  {
    goto LABEL_10;
  }

  llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v30);
  v10 = std::string::insert(&v30, 0, "invalid sh_type for string table section ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, ": expected SHT_STRTAB, but got ");
  v13 = v12->__r_.__value_.__r.__words[2];
  v35 = *&v12->__r_.__value_.__l.__data_;
  v36 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(*(a2 + 4)));
  v32[0] = &v35;
  v32[2] = ELFSectionTypeName;
  v32[3] = v15;
  v33 = 1284;
  a3(&v29, a4, v32);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v16 = v29.__r_.__value_.__r.__words[0];
  if (!v29.__r_.__value_.__r.__words[0])
  {
LABEL_10:
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<char>(a1, a2, &v35);
    v17 = v35;
    if (v36)
    {
      *&v35 = 0;
      *(a5 + 16) |= 1u;
      *a5 = v17;
    }

    else
    {
      v18 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v29);
        v23 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v30, " is empty");
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      if (*(v35 + *(&v35 + 1) - 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v29);
        v19 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v20 = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v30, " is non-null terminated");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      *(a5 + 16) &= ~1u;
      *a5 = v17;
      *(a5 + 8) = v18;
    }

    if (v36)
    {
      v27 = v35;
      *&v35 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else
  {
    *(a5 + 16) |= 1u;
    *a5 = v16;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections(a1, v14);
  if (v15)
  {
    v5 = v14[0];
    v14[0] = 0;
    v13.__r_.__value_.__r.__words[0] = v5;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13);
    if (v13.__r_.__value_.__r.__words[0])
    {
      (*(*v13.__r_.__value_.__l.__data_ + 8))(v13.__r_.__value_.__r.__words[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(a3, "[unknown index]");
  }

  else
  {
    std::to_string(&v12, 0xCCCCCCCCCCCCCCCDLL * ((a2 - v14[0]) >> 3));
    v6 = std::string::insert(&v12, 0, "[index ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, "]");
    v9 = v8->__r_.__value_.__r.__words[2];
    *a3 = *&v8->__r_.__value_.__l.__data_;
    *(a3 + 16) = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (v15)
  {
    v10 = v14[0];
    v14[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<char>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = bswap32(*(a2 + 16));
  v6 = bswap32(*(a2 + 20));
  if (__CFADD__(v5, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v26);
    v7 = std::string::insert(&v26, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v21, " has a sh_offset (0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v24 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v5;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v6;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    LODWORD(v18) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v5))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v6;
    v18 = v5;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v3[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v6;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 0x8000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 8;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = bswap32(a2[9]);
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap32(a2[5]);
  if ((v6 & 7) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = bswap32(a2[9]);
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = bswap32(a2[4]);
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 3;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 16 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = bswap32(a2[5]);
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 16 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 0x10000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 16;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = bswap32(a2[9]);
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap32(a2[5]);
  if ((v6 & 0xF) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = bswap32(a2[9]);
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = bswap32(a2[4]);
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 4;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections(a1, v9);
  if (v10)
  {
    v7 = v9[0];
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable(a1, a2, v9[0], v9[1], a3);
    if (v10)
    {
      result = v9[0];
      v9[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>(a1, a2, &v32);
  v11 = v32;
  if (v34)
  {
    v32 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v12 = bswap32(a2[6]);
    if (a4 <= v12)
    {
      v28 = "invalid section index: ";
      v29 = v12;
      v30 = 2051;
      LODWORD(v24[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v13 = a3 + 40 * v12;
    v14 = *(v13 + 4);
    if (v14 != 0x2000000 && v14 != 184549376)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(v14));
      v27 = 1283;
      v24[0] = "SHT_SYMTAB_SHNDX section is linked with ";
      v25 = ELFSectionTypeName;
      v26 = v19;
      v28 = v24;
      v29 = " section (expected SHT_SYMTAB/SHT_DYNSYM)";
      v30 = 770;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v16 = v33;
    v23 = bswap32(*(v13 + 20)) >> 4;
    if (v33 != v23)
    {
      v20 = v33;
      v21[0] = "SHT_SYMTAB_SHNDX has ";
      v21[2] = &v20;
      v22 = 2563;
      v24[0] = v21;
      v25 = " entries, but the symbol table associated has ";
      v27 = 770;
      v28 = v24;
      v29 = &v23;
      v30 = 3074;
      v31 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a5 + 16) &= ~1u;
    *(a5 + 8) = v16;
  }

  *a5 = v11;
  if (v34)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 0x4000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v32);
    v12 = std::string::insert(&v32, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 4;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v16 = bswap32(a2[9]);
    v46 = v43;
    v47 = v16;
    v48 = 2050;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap32(a2[5]);
  if ((v6 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v7 = std::string::insert(&v36, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v32, " has an invalid sh_size (");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v6;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v11 = bswap32(a2[9]);
    v43[0] = v40;
    v44 = v11;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    LODWORD(v31.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v17 = bswap32(a2[4]);
  if (__CFADD__(v17, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v36);
    v18 = std::string::insert(&v36, 0, "section ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v32, " has a sh_offset (0x");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v17;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v6;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    LODWORD(v29) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v17))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v6;
    v29 = v17;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v4[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    v49 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v26 = *result + v17;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v6 >> 2;
  return result;
}

void *llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTableForSymtab(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 0x2000000 && v6 != 184549376)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = bswap32(*(a2 + 24));
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9[0] = llvm::object::defaultWarningHandler;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTable(a1, a3 + 40 * v8, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, v9, a5);
}

size_t llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getName@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = bswap32(*a1);
  if (a3 <= v5)
  {
    llvm::object::object_category(a1);
    memset(__p, 0, sizeof(__p));
    v10 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2883EB8F0;
    v17 = __p;
    llvm::raw_ostream::SetUnbuffered(&v9);
    v19[0] = &unk_2883ED160;
    v19[1] = "st_name (0x%x) is past the end of the string table of size 0x%zx";
    v20 = v5;
    v21 = a3;
    llvm::raw_ostream::operator<<(&v9, v19);
    operator new();
  }

  v6 = a2 + v5;
  if (a2)
  {
    result = strlen((a2 + v5));
  }

  else
  {
    result = 0;
  }

  *(a4 + 16) &= ~1u;
  *a4 = v6;
  *(a4 + 8) = result;
  return result;
}

uint64_t *llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)0,false>>@<X0>(unsigned int a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v12[0] = "found an extended symbol index (";
    v13 = a1;
    v14 = 2051;
    v15 = v12;
    p_p = "), but unable to locate the extended symbol index table";
    v17 = 770;
    LODWORD(v10[0]) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v4 = a1;
  result = llvm::object::DataRegion<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>::operator[](a2, a1, &v19);
  if (v20)
  {
    v10[0] = "unable to read an extended symbol table at index ";
    v10[2] = v4;
    v11 = 2051;
    v12[0] = v10;
    v13 = ": ";
    v14 = 770;
    v6 = v19;
    v19 = 0;
    v8 = v6;
    llvm::toString(&v8, &__p);
    v15 = v12;
    p_p = &__p;
    v17 = 1026;
    v18 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 8) &= ~1u;
  *a3 = bswap32(v19);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFJITLinker_aarch32::~ELFJITLinker_aarch32(llvm::jitlink::ELFJITLinker_aarch32 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

uint64_t **llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_aarch32>::fixUpBlocks@<X0>(uint64_t **result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208))
  {
    v5 = result;
    v6 = *(a2 + 216);
    if (v6)
    {
      v7 = 24 * v6;
      v8 = *(a2 + 200);
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 += 3;
        v7 -= 24;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v8 = *(a2 + 200);
    }

    v9 = *(a2 + 200) + 24 * v6;
LABEL_10:
    if (v8 != v9)
    {
      v10 = v8[2];
      v22 = *(v10 + 20);
      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v10 + 32);
      v21 = *(v10 + 32) + 8 * *(v10 + 48);
      if (v21 == result)
      {
        goto LABEL_31;
      }

      v12 = result;
      v13 = v11;
      do
      {
        v14 = *v12;
        if (v22 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v15, 0);
          v16 = result;
          if (v15)
          {
            result = memmove(result, __src, v15);
          }

          v14[3] = v16;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v17 = v14[5];
        v18 = v14[6];
        while (v17 != v18)
        {
          v19 = v17[24];
          if (v19 >= 2)
          {
            if (v19 > 3)
            {
              if (v19 == 4)
              {
                llvm::jitlink::aarch32::applyFixupArm(a2, v14, v17);
              }

              result = llvm::jitlink::aarch32::applyFixupThumb(a2, v14, v17, v5 + 152, a3);
            }

            else
            {
              result = llvm::jitlink::aarch32::applyFixupData(a2, v14, v17, a3);
            }

            if (*a3)
            {
              return result;
            }
          }

          v17 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v21);
LABEL_31:
      while (1)
      {
        v8 += 3;
        if (v8 == v9)
        {
          break;
        }

        if (*v8 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a3 = 0;
  return result;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_aarch32>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_aarch64@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v16, 1, &v22);
  v6 = v22;
  if ((v23 & 1) == 0)
  {
    v7 = *(v22 + 4);
    v8 = *(v22 + 5);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::object::ObjectFile::makeTriple(v6, __p);
    v21 = v11;
    v17 = *__p;
    v18 = v13;
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    v19 = v14;
    v20 = v15;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(v16, v6 + 56, &v21, &v17, v7, v8);
  }

  v22 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v22);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::buildGraph(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(**(a1 + 24) + 16) != 1)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::prepare(a1, &v5);
  v4 = v5;
  if (v5 || (llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::graphifySections(a1, &v5), (v4 = v5) != 0) || (llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::graphifySymbols(a1, &v5), (v4 = v5) != 0) || ((*(*a1 + 16))(&v5, a1), (v4 = v5) != 0))
  {
    *(a2 + 8) |= 1u;
  }

  else
  {
    *(a2 + 8) &= ~1u;
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  *a2 = v4;
}

void anonymous namespace::ELFLinkGraphBuilder_aarch64<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFLinkGraphBuilder_aarch64(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_aarch64(uint64_t *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v15 = ".eh_frame";
    *&v16 = 9;
    v17 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v15);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    v4 = operator new(0x20uLL, 8uLL);
    v16 = xmmword_2750C12D0;
    *v4 = ".eh_frame";
    v4[1] = 9;
    *(v4 + 4) = 8;
    *(v4 + 5) = 84279812;
    *(v4 + 24) = 8;
    v15 = v4;
    v17 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v15);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    v15 = ".eh_frame";
    *&v16 = 9;
    v17 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameNullTerminator,llvm::jitlink::EHFrameNullTerminator,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v15);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    (*(**a2 + 64))(&v15);
    if (v17 < 8)
    {
      *&v13 = llvm::jitlink::markAllSymbolsLive;
      v14 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v13);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v15);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    v17 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v9[1] + 8, &v15);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
  }

  v5 = *a1;
  (*(**a2 + 72))(&v15);
  if (!v15)
  {
    operator new();
  }

  v6 = *a2;
  v8 = v15;
  v15 = 0;
  (*(*v6 + 24))(v6, &v8);
  if (v8)
  {
    (*(*v8 + 1))(v8);
  }

  if (v15)
  {
    (*(*v15 + 1))(v15);
  }

  v15 = &v11;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v15 = &v10[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v15 = v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v15 = &v9[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v15 = v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t *anonymous namespace::buildTables_ELF_aarch64@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  v43 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v39 = v41;
  v40 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v34;
  llvm::jitlink::LinkGraph::blocks(this, v46);
  v47[0] = v46[0];
  v47[1] = v46[1];
  v47[2] = v46[2];
  v47[3] = v46[3];
  llvm::jitlink::LinkGraph::blocks(this, v44);
  v45[0] = v44[4];
  v45[1] = v44[5];
  v45[2] = v44[6];
  v45[3] = v44[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v48, v47, v45);
  v5 = v48;
  v28 = v49;
  if (v48 != v49)
  {
    while (1)
    {
      v6 = *v5;
      v8 = *(*v5 + 40);
      v7 = *(*v5 + 48);
      while (v8 != v7)
      {
        if (llvm::jitlink::aarch64::GOTTableManager::visitEdge(v41, this, v6, v8))
        {
          goto LABEL_34;
        }

        v9 = *(v8 + 24);
        if (v9 == 20)
        {
          v11 = 13;
LABEL_12:
          *(v8 + 24) = v11;
          v12 = *v8;
          *&v46[0] = 0;
          v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v29, v12, v46);
          v14 = *&v46[0];
          if (!v13)
          {
            v14 = v29[0] + 16 * v30;
          }

          if (v14 == v29[0] + 16 * v30)
          {
            if (!v31)
            {
              llvm::jitlink::LinkGraph::createSection();
            }

            *(&v46[0] + 1) = 16;
            *&v44[0] = 0;
            *&v47[0] = 8;
            *&v45[0] = 0;
            v15 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v31, v46, v44, v47, v45);
            v16 = v32;
            if (!v32)
            {
              v16 = llvm::jitlink::LinkGraph::addExternalSymbol(this, "__tlsdesc_resolver", 0x12uLL, 8, 0);
              v32 = v16;
            }

            llvm::jitlink::Block::addEdge(v15, 2, 0, v16, 0);
            v17 = v33;
            *&v46[0] = 0;
            v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33, v12, v46);
            v19 = *&v46[0];
            if (!v18)
            {
              v19 = *v17 + 16 * *(v17 + 4);
            }

            if (v19 == *v17 + 16 * *(v17 + 4))
            {
              v20 = v17[3];
              if (!v20)
              {
                llvm::jitlink::LinkGraph::createSection();
              }

              v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this, 16, 0);
              *v21 = 0;
              v21[1] = 0;
              *&v46[0] = v21;
              *(&v46[0] + 1) = 16;
              *&v44[0] = 0;
              *&v47[0] = 8;
              *&v45[0] = 0;
              v22 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v20, v46, v44, v47, v45);
              llvm::jitlink::Block::addEdge(v22, 2, 8, v12, 0);
              v23 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v22, 0, 16, 0, 0);
              v24 = *v12;
              *&v44[0] = v24;
              if ((v24 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v24 + 8), 1uLL);
              }

              *(&v44[0] + 1) = v23;
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v17, v44, v44 + 1, v46);
              v19 = *&v46[0];
              if ((*&v44[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*&v44[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
              }
            }

            llvm::jitlink::Block::addEdge(v15, 2, 8, *(v19 + 8), 0);
            v25 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v15, 0, 8, 0, 0);
            v26 = *v12;
            *&v44[0] = v26;
            if ((v26 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v26 + 8), 1uLL);
            }

            *(&v44[0] + 1) = v25;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v29, v44, v44 + 1, v46);
            v14 = *&v46[0];
            if ((*&v44[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v44[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          EntryForTarget = *(v14 + 8);
LABEL_33:
          *v8 = EntryForTarget;
          goto LABEL_34;
        }

        if (v9 == 19)
        {
          v11 = 12;
          goto LABEL_12;
        }

        if (v9 == 9 && (*(*(*v8 + 8) + 8) & 1) == 0)
        {
          EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::aarch64::PLTTableManager>::getEntryForTarget(v37, this, *v8);
          goto LABEL_33;
        }

LABEL_34:
        v8 += 32;
      }

      if (++v5 == v28)
      {
        v5 = v48;
        break;
      }
    }
  }

  if (v5)
  {
    v49 = v5;
    operator delete(v5);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v29);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v34);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v37);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v41);
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(int a1, int a2, int a3, uint64_t a4, void *__src, size_t __len)
{
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v13) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
  }

  else
  {
    __dst = 0uLL;
    v13 = 0;
  }

  *v8 = *a4;
  v9 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v10 = *(a4 + 24);
  v11 = *(a4 + 40);
  operator new();
}

void anonymous namespace::ELFLinkGraphBuilder_aarch64<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    v7 = llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>;
    while (1)
    {
      if (*(v5 + 4) != 4)
      {
        *a2 = 0;
        goto LABEL_106;
      }

      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(a1 + 24), *(v5 + 44), &v67);
      if (v68)
      {
        v8 = v67;
        *a2 = v67;
        if (v8)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      v9 = *(a1 + 24);
      *&v47 = llvm::object::defaultWarningHandler;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v9, v67, v7, &v47, &v65);
      if (v66)
      {
        v10 = v65;
        *&v65 = 0;
        *a2 = v10;
        goto LABEL_99;
      }

      if ((*(a1 + 72) & 1) == 0 && (v47 = v65, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v47) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v67))
      {
        *a2 = 0;
        goto LABEL_99;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, *(v5 + 44));
      if (!GraphBlock)
      {
        LOWORD(v49) = 1283;
        *&v47 = "Refencing a section that wasn't added to the graph: ";
        v48 = v65;
        getErrorErrorCat();
        operator new();
      }

      v12 = GraphBlock;
      v46 = v7;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v5, &v62);
      v13 = v62;
      if (v64)
      {
        v62 = 0;
        goto LABEL_94;
      }

      if (v63)
      {
        break;
      }

LABEL_93:
      v13 = 0;
LABEL_94:
      *a2 = v13;
LABEL_95:
      if (v64)
      {
        v42 = v62;
        v62 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      v7 = v46;
LABEL_99:
      if (v66)
      {
        v43 = v65;
        *&v65 = 0;
        if (v43)
        {
          (*(*v43 + 8))(v43);
        }
      }

      if (v68)
      {
        v44 = v67;
        v67 = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }
      }

      if (*a2)
      {
        goto LABEL_108;
      }

LABEL_106:
      v5 += 64;
      if (v5 == v6)
      {
        goto LABEL_107;
      }
    }

    v14 = 24 * v63;
    while (1)
    {
      v15 = v67;
      v16 = *(v13 + 12);
      v55 = v16;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), v13, *(a1 + 48), &v69);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v17 = v69;
      v69 = 0;
      *a2 = v17;
LABEL_80:
      if (v70)
      {
        v39 = v69;
        v69 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if (*a2)
      {
        goto LABEL_95;
      }

      v13 += 24;
      v14 -= 24;
      if (!v14)
      {
        goto LABEL_93;
      }
    }

    GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v16);
    if (!GraphSymbol)
    {
      v21 = *(a1 + 112);
      *&v47 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
      *(&v47 + 1) = 113;
      *&v48 = v54;
      *(&v48 + 1) = 3;
      v49 = &unk_2883ECF20;
      v50 = &v55;
      v51[0] = &unk_2883ED130;
      v51[1] = v69 + 6;
      v52 = &unk_2883ECC68;
      v53 = v21;
      v54[0] = &v49;
      v54[1] = v51;
      v54[2] = &v52;
      getErrorErrorCat();
      v60 = 3;
      v61 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
    }

    v19 = *(v13 + 8);
    v59 = v19;
    if (v19 > 310)
    {
      if (v19 > 562)
      {
        if ((v19 - 563) >= 2)
        {
          if (v19 != 569)
          {
LABEL_41:
            *&v47 = "{0:d}: ";
            *(&v47 + 1) = 7;
            *&v48 = v51;
            *(&v48 + 1) = 1;
            v49 = &unk_2883EB018;
            v50 = &v59;
            v51[0] = &v49;
            v56 = "Unsupported aarch64 relocation:";
            v57 = &v47;
            v58 = 1539;
            llvm::object::getELFRelocationTypeName(0xB7, v19);
            operator new();
          }

          goto LABEL_79;
        }

        v20 = 20;
      }

      else
      {
        switch(v19)
        {
          case 311:
            v20 = 14;
            break;
          case 312:
            v20 = 15;
            break;
          case 562:
            v20 = 19;
            break;
          default:
            goto LABEL_41;
        }
      }

LABEL_65:
      v22 = *v13 + *(v15 + 2) - *v12;
    }

    else
    {
      switch(v19)
      {
        case 257:
          v20 = 2;
          goto LABEL_65;
        case 258:
          v20 = 4;
          goto LABEL_65;
        case 259:
        case 262:
        case 263:
        case 265:
        case 267:
        case 270:
        case 271:
        case 272:
        case 273:
        case 274:
        case 276:
        case 279:
        case 280:
        case 281:
          goto LABEL_41;
        case 260:
          v20 = 5;
          goto LABEL_65;
        case 261:
          v20 = 6;
          goto LABEL_65;
        case 264:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0x5FFFFFE0) != 0x52800000)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[80]>();
          }

          goto LABEL_57;
        case 266:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0x5FFFFFE0) == 0x52A00000)
          {
            goto LABEL_57;
          }

          goto LABEL_92;
        case 268:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0x5FFFFFE0) != 0x52C00000)
          {
            goto LABEL_92;
          }

          goto LABEL_57;
        case 269:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0x5FFFFFE0) != 0x52E00000)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[78]>();
          }

LABEL_57:
          v20 = 10;
          break;
        case 275:
          v20 = 12;
          goto LABEL_65;
        case 277:
          v20 = 13;
          goto LABEL_65;
        case 278:
          v22 = *v13 + *(v15 + 2) - *v12;
          v23 = *(v12[3] + v22);
          if ((~v23 & 0x4800000) == 0 || (v23 & 0xFB000000) != 956301312)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[74]>();
          }

          goto LABEL_91;
        case 282:
        case 283:
          v20 = 9;
          goto LABEL_65;
        case 284:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0xFB000000) != 0x79000000)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
          }

          goto LABEL_91;
        case 285:
          v22 = *v13 + *(v15 + 2) - *v12;
          if ((*(v12[3] + v22) & 0xFB000000) != 0xB9000000)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 286:
          v22 = *v13 + *(v15 + 2) - *v12;
          v40 = *(v12[3] + v22);
          if (v40 >> 30 != 3 || (v40 & 0x3B000000) != 956301312)
          {
LABEL_92:
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[81]>();
          }

          goto LABEL_91;
        default:
          if (v19 != 299)
          {
            goto LABEL_41;
          }

          v22 = *v13 + *(v15 + 2) - *v12;
          if (*(v12[3] + v22) >> 23 != 123)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[83]>();
          }

LABEL_91:
          v20 = 13;
          break;
      }
    }

    v25 = *(v13 + 16);
    v26 = v12[6];
    v27 = v12[7];
    if (v26 >= v27)
    {
      v29 = v12[5];
      v30 = (v26 - v29) >> 5;
      v31 = v30 + 1;
      if ((v30 + 1) >> 59)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v32 = v27 - v29;
      if (v32 >> 4 > v31)
      {
        v31 = v32 >> 4;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFE0)
      {
        v33 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((v12 + 5), v33);
      }

      v34 = 32 * v30;
      *v34 = GraphSymbol;
      *(v34 + 8) = v22;
      *(v34 + 16) = v25;
      *(v34 + 24) = v20;
      v28 = 32 * v30 + 32;
      v35 = v12[5];
      v36 = v12[6] - v35;
      v37 = (32 * v30 - v36);
      memcpy(v37, v35, v36);
      v38 = v12[5];
      v12[5] = v37;
      v12[6] = v28;
      v12[7] = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v26 = GraphSymbol;
      *(v26 + 8) = v22;
      *(v26 + 16) = v25;
      v28 = v26 + 32;
      *(v26 + 24) = v20;
    }

    v12[6] = v28;
LABEL_79:
    *a2 = 0;
    goto LABEL_80;
  }

LABEL_107:
  *a2 = 0;
LABEL_108:
  v45 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(a1, v9);
  if (v10)
  {
    v6 = v9[0];
    v7 = *(a3 + 8) | 1;
  }

  else
  {
    if (v9[1] <= a2)
    {
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = v9[0] + (a2 << 6);
    v7 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v7;
  *a3 = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(a1, v17);
  if (v18)
  {
    v10 = v17[0];
    *(a5 + 16) |= 1u;
    *a5 = v10;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionStringTable(a1, v17[0], v17[1], a3, a4, v15);
    if (v16)
    {
      v11 = v15[0];
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(a1, a2, v15[0], v15[1], a5);
      if (v16)
      {
        v12 = v15[0];
        v15[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }
    }

    if (v18)
    {
      v13 = v17[0];
      v17[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 40);
  v25 = v4;
  if (v4)
  {
    v5 = *(v3 + 58);
    if (v5 != 64)
    {
      v22 = "invalid e_shentsize in ELF header: ";
      v23 = v5;
      v24 = 2307;
      LODWORD(v18[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = result[1];
    if (v4 > 0xFFFFFFFFFFFFFFBFLL || v4 + 64 > v6)
    {
      v22 = "section header table goes past the end of the file: e_shoff = 0x";
      v23 = &v25;
      v24 = 3587;
      LODWORD(v18[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v10 = v3 + v4;
    v11 = *(v3 + 60);
    v21 = v11;
    if (!v11)
    {
      v11 = *(v10 + 32);
      v21 = v11;
      if (v11 >> 58)
      {
        v18[0] = "invalid number of sections specified in the NULL section's sh_size field (";
        v19 = &v21;
        v20 = 3075;
        v22 = v18;
        v23 = ")";
        v24 = 770;
        LODWORD(v16[0]) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }
    }

    v12 = __CFADD__(v4, v11 << 6);
    v13 = v4 + (v11 << 6);
    if (v12)
    {
      v14[0] = "invalid section header table offset (e_shoff = 0x";
      v14[2] = &v25;
      v15 = 3587;
      v16[0] = v14;
      v16[2] = ") or invalid number of sections specified in the first section header's sh_size field (0x";
      v17 = 770;
      v18[0] = v16;
      v19 = &v21;
      v20 = 3586;
      v22 = v18;
      v23 = ")";
      v24 = 770;
      v26 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    if (v13 > v6)
    {
      v22 = "section table goes past the end of file";
      v24 = 259;
      LODWORD(v18[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a2 + 16) &= ~1u;
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  else
  {
    v8 = result[2];
    v9 = result[3];
    if (v8 == v9)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) &= ~1u;
    }

    else
    {
      *(a2 + 16) &= ~1u;
      *a2 = v8;
      *(a2 + 8) = (v9 - v8) >> 6;
    }
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionStringTable(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(std::string *__return_ptr, uint64_t, void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 62);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v12 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v14 = 259;
      LODWORD(v10[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    v9 = a1[6];
    *a6 = a1[5];
    *(a6 + 8) = v9;
    return;
  }

  if (!*(*a1 + 62))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v7)
  {
    v10[0] = "section header string table index ";
    v10[2] = v7;
    v11 = 2051;
    v12 = v10;
    v13 = " does not exist";
    v14 = 770;
    v15 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = a2 + (v7 << 6);

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTable(a1, v8, a4, a5, a6);
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  if (v6)
  {
    if (a4 <= v6)
    {
      llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = v10->__r_.__value_.__r.__words[2];
      *__p = *&v10->__r_.__value_.__l.__data_;
      v16 = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTable(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 3)
  {
    goto LABEL_10;
  }

  llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v30);
  v10 = std::string::insert(&v30, 0, "invalid sh_type for string table section ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, ": expected SHT_STRTAB, but got ");
  v13 = v12->__r_.__value_.__r.__words[2];
  v35 = *&v12->__r_.__value_.__l.__data_;
  v36 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ELFSectionTypeName = llvm::object::getELFSectionTypeName(*(*a1 + 18), *(a2 + 4));
  v32[0] = &v35;
  v32[2] = ELFSectionTypeName;
  v32[3] = v15;
  v33 = 1284;
  a3(&v29, a4, v32);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v16 = v29.__r_.__value_.__r.__words[0];
  if (!v29.__r_.__value_.__r.__words[0])
  {
LABEL_10:
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<char>(a1, a2, &v35);
    v17 = v35;
    if (v36)
    {
      *&v35 = 0;
      *(a5 + 16) |= 1u;
      *a5 = v17;
    }

    else
    {
      v18 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v29);
        v23 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v30, " is empty");
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      if (*(v35 + *(&v35 + 1) - 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v29);
        v19 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v20 = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v30, " is non-null terminated");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      *(a5 + 16) &= ~1u;
      *a5 = v17;
      *(a5 + 8) = v18;
    }

    if (v36)
    {
      v27 = v35;
      *&v35 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else
  {
    *(a5 + 16) |= 1u;
    *a5 = v16;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(a1, v13);
  if (v14)
  {
    v5 = v13[0];
    v13[0] = 0;
    v12.__r_.__value_.__r.__words[0] = v5;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12);
    if (v12.__r_.__value_.__r.__words[0])
    {
      (*(*v12.__r_.__value_.__l.__data_ + 8))(v12.__r_.__value_.__r.__words[0]);
    }

    a3[23] = 15;
    strcpy(a3, "[unknown index]");
  }

  else
  {
    std::to_string(&v11, (a2 - v13[0]) >> 6);
    v6 = std::string::insert(&v11, 0, "[index ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "]");
    *a3 = *v8;
    v8->__r_.__value_.__r.__words[0] = 0;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  if (v14)
  {
    v9 = v13[0];
    v13[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<char>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v37 = v5;
  v38 = v6;
  if (__CFADD__(v6, v5))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v24);
    v7 = std::string::insert(&v24, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v19, " has a sh_offset (0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v22 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v25[0] = __p;
    v26 = &v38;
    v27 = 3588;
    v28[0] = v25;
    v29 = ") + sh_size (0x";
    v30 = 770;
    v31[0] = v28;
    v32 = &v37;
    v33 = 3586;
    v34 = v31;
    v35 = ") that cannot be represented";
    v36 = 770;
    LODWORD(v18.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if ((v5 + v6) > result[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v17);
    v11 = std::string::insert(&v17, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v18, " has a sh_offset (0x");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v19.__r_.__value_.__r.__words[0] = &v24;
    v19.__r_.__value_.__r.__words[2] = &v38;
    v20 = 3588;
    __p[0] = &v19;
    v22 = ") + sh_size (0x";
    v23 = 770;
    v25[0] = __p;
    v26 = &v37;
    v27 = 3586;
    v28[0] = v25;
    v29 = ") that is greater than the file size (0x";
    v30 = 770;
    v16 = v3[1];
    v31[0] = v28;
    v32 = &v16;
    v33 = 3586;
    v34 = v31;
    v35 = ")";
    v36 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v15 = *result + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v5;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 24)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v28);
    v12 = std::string::insert(&v28, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v30, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v34 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = 24;
    v38[0] = __p;
    v39 = &v32;
    v40 = 2564;
    v41[0] = v38;
    v42 = ", but got ";
    v43 = 770;
    v27.__r_.__value_.__r.__words[0] = a2[7];
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[3];
  v7 = a2[4];
  v36 = v7;
  v37 = v6;
  if (v7 % 0x18)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v32);
    v8 = std::string::insert(&v32, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3076;
    v38[0] = __p;
    v39 = ") which is not a multiple of its sh_entsize (";
    v40 = 770;
    v27.__r_.__value_.__r.__words[0] = a2[7];
    v41[0] = v38;
    v42 = &v27;
    v43 = 3074;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (__CFADD__(v6, v7))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v32);
    v16 = std::string::insert(&v32, 0, "section ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, " has a sh_offset (0x");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v37;
    v35 = 3588;
    v38[0] = __p;
    v39 = ") + sh_size (0x";
    v40 = 770;
    v41[0] = v38;
    v42 = &v36;
    v43 = 3586;
    v44 = v41;
    v45 = ") that cannot be represented";
    v46 = 770;
    LODWORD(v27.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v7 + v6 > result[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v26);
    v20 = std::string::insert(&v26, 0, "section ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v27, " has a sh_offset (0x");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v28.__r_.__value_.__r.__words[0] = &v32;
    v28.__r_.__value_.__r.__words[2] = &v37;
    v29 = 3588;
    v30.__r_.__value_.__r.__words[0] = &v28;
    v30.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v31 = 770;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3586;
    v38[0] = __p;
    v39 = ") that is greater than the file size (0x";
    v40 = 770;
    v25 = v4[1];
    v41[0] = v38;
    v42 = &v25;
    v43 = 3586;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    v47 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v24 = *result + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v24;
  *(a3 + 8) = v7 / 0x18;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (*(*result + 18) == 8 && *(v4 + 4) == 2)
  {
    if (*(v4 + 5) == 1)
    {
      v5 = *(a2 + 8) << 32;
    }

    else
    {
      v5 = *(a2 + 8);
    }
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = HIDWORD(v5);
  if (v6)
  {
    return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>(result, a3, v6, a4);
  }

  *(a4 + 8) &= ~1u;
  *a4 = 0;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 24 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = a2[4];
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 24 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::prepare(uint64_t a1@<X0>, void **a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(*(a1 + 24), __p);
  if (v20 & 1) != 0 || (*(a1 + 32) = *__p, v4 = *(a1 + 24), v5 = *(a1 + 32), v6 = *(a1 + 40), v17 = llvm::object::defaultWarningHandler, llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionStringTable(v4, v5, v6, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v17, __p), (v20))
  {
LABEL_3:
    *a2 = __p[0];
  }

  else
  {
    *(a1 + 56) = *__p;
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a1 + 32) + 40);
      do
      {
        v11 = (v10 - 10);
        v12 = *(v10 - 9);
        if (v12 == 2)
        {
          if (*(a1 + 48))
          {
            v15 = *(a1 + 8) + 96;
            std::operator+<char>();
            llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
          }

          *(a1 + 48) = v11;
          v12 = *(v10 - 9);
        }

        if (v12 == 18)
        {
          v13 = *v10;
          if (*(a1 + 40) <= v13)
          {
            llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
          }

          llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(*(a1 + 24), v11, __p);
          if (v20)
          {
            goto LABEL_3;
          }

          v17 = (*(a1 + 32) + (v13 << 6));
          v18 = *__p;
          llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(a1 + 128, &v17, &v18, &v16);
          if (v20)
          {
            v14 = __p[0];
            __p[0] = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }
          }
        }

        v10 += 16;
        v9 -= 64;
      }

      while (v9);
    }

    *a2 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::graphifySections@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v3 = result;
    v4 = 0;
    v5 = *a2;
    v6 = 1;
    do
    {
      v7 = *(v3 + 32) + (v4 << 6);
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(*(v3 + 24), v7, *(v3 + 56), *(v3 + 64), &v29);
      if (v30)
      {
        v5 = v29;
        *&v29 = 0;
      }

      else
      {
        result = (*(*v3 + 40))(v3, v7);
        if ((result & 1) != 0 || !*(v7 + 4) || (*(v3 + 72) & 1) == 0 && (v27 = v29, result = std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v27), result != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]))
        {
          v8 = 6;
          goto LABEL_11;
        }

        v11 = *(v7 + 8);
        SectionByName = llvm::jitlink::LinkGraph::findSectionByName(*(v3 + 8), v29, *(&v29 + 1), v9);
        if (!SectionByName)
        {
          v13 = *(v3 + 8);
          llvm::jitlink::LinkGraph::createSection();
        }

        if (*(v7 + 4) == 8)
        {
          v14 = *(v3 + 8);
          v15 = *(v7 + 32);
          v16 = *(v7 + 16);
          v26 = *(v7 + 48);
          *&v27 = v16;
          *&v24 = v15;
          v25 = 0;
          v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v14, SectionByName, &v24, &v27, &v26, &v25);
LABEL_23:
          LODWORD(v27) = v6 - 1;
          result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((v3 + 80), &v27);
          v8 = 0;
          *(result + 8) = v17;
          goto LABEL_11;
        }

        result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<char>(*(v3 + 24), v7, &v27);
        if ((v28 & 1) == 0)
        {
          v18 = *(v3 + 8);
          v19 = *(v7 + 16);
          v20 = *(v7 + 48);
          v24 = v27;
          v25 = v20;
          v26 = v19;
          v23 = 0;
          v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v18, SectionByName, &v24, &v26, &v25, &v23);
          if (v28)
          {
            v21 = v27;
            *&v27 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }

          goto LABEL_23;
        }

        v5 = v27;
      }

      v8 = 1;
LABEL_11:
      if (v30)
      {
        result = v29;
        *&v29 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      if (v8 != 6 && v8)
      {
        goto LABEL_30;
      }

      v4 = v6;
    }

    while (*(v3 + 40) != v6++);
  }

  v5 = 0;
LABEL_30:
  *a2 = v5;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}