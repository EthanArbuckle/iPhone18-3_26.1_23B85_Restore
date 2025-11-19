uint64_t sub_21DE0F6F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21DE0F72C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21DE0F774()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v1 = *(v27 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v28 = *(v10 + 80);
  v11 = (v8 + v9 + v28) & ~v28;
  v12 = *(v10 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v27);
  (*(v6 + 8))(v0 + v8, v5);
  v14 = v0 + v11;
  v15 = type metadata accessor for SanitizerResource(0);
  if (!(*(*(v15 - 8) + 48))(v0 + v11, 1, v15))
  {
    v16 = sub_21DEC6C50();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v0 + v11, 1, v16))
    {
      (*(v17 + 8))(v0 + v11, v16);
    }

    v18 = *(v15 + 20);
    v19 = sub_21DEC6C10();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }

    v21 = *(v15 + 24);
    v22 = sub_21DEC6C30();
    (*(*(v22 - 8) + 8))(v14 + v21, v22);
  }

  v23 = (v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v0 + v23);

  return MEMORY[0x2821FE8E8](v0, v24 + 10, v2 | v7 | v28 | 7);
}

uint64_t sub_21DE0FB10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DE0FB48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DE0FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94128, &qword_21DECD6C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94130, &qword_21DECD6D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_21DEC6C30();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21DE0FCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94128, &qword_21DECD6C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94130, &qword_21DECD6D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_21DEC6C30();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21DE0FE48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DEC6B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21DEC6B70();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21DE0FFAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21DEC6B90();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21DEC6B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94140, &qword_21DECD700);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DE1010C()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93FA0, &qword_21DECD510);
  v2 = *(v27 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F98, &qword_21DECD508);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F90, &qword_21DECD500) - 8);
  v28 = *(v11 + 80);
  v12 = (v9 + v10 + v28) & ~v28;
  v13 = *(v11 + 64);
  v14 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1 + v4, v27);
  v15 = v1 + v9;
  v16 = v1;
  (*(v7 + 8))(v15, v6);
  v17 = v1 + v12;
  v18 = type metadata accessor for SanitizerResource(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_21DEC6C50();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v17, 1, v19))
    {
      (*(v20 + 8))(v17, v19);
    }

    v21 = *(v18 + 20);
    v22 = sub_21DEC6C10();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v24 = *(v18 + 24);
    v25 = sub_21DEC6C30();
    (*(*(v25 - 8) + 8))(v17 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v16, v13 + v12 + 1, v3 | v8 | v28 | 7);
}

uint64_t sub_21DE104A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21DE10528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21DE10734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21DEC6950();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21DE10870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_21DEC6950();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21DE10A00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DE10A38()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21DE10AE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DE10B00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_21DE11A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::destroy(&a20, a21);

  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::pair<int,int>,half>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<std::pair<int,int>,half>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int>,half>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      v8 = v4;
      v9 = *(v4 + 7);
      if (v6 == v9)
      {
        v10 = *(v8 + 8);
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__copy_impl::operator()[abi:nn200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::back_insert_iterator<std::vector<std::pair<std::pair<int,int>,half>>>>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(v5 + 28);
      _S0 = *(v5 + 9);
      __asm { FCVT            H8, S0 }

      v15 = *(a4 + 16);
      if (v7 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a4) >> 2);
        v17 = v16 + 1;
        if (v16 + 1 > 0x1555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 2);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0xAAAAAAAAAAAAAAALL)
        {
          v19 = 0x1555555555555555;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,half>>>(a4, v19);
        }

        v20 = 12 * v16;
        *v20 = v8;
        *(v20 + 8) = _H8;
        v7 = 12 * v16 + 12;
        v21 = *(a4 + 8) - *a4;
        v22 = v20 - v21;
        memcpy((v20 - v21), *a4, v21);
        v23 = *a4;
        *a4 = v22;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v7 = v8;
        *(v7 + 8) = _H8;
        v7 += 12;
      }

      *(a4 + 8) = v7;
      v24 = v5[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v5[2];
          _ZF = *v25 == v5;
          v5 = v25;
        }

        while (!_ZF);
      }

      v5 = v25;
    }

    while (v25 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,half>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v211 = (a2 - 8);
  j = v7;
  while (1)
  {
    v7 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - j) >> 2);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(j, (j + 12), (a2 - 12));
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(j, (j + 12), (j + 24), (a2 - 12));
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(j, (j + 12), (j + 24), (j + 36), (a2 - 12));
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v86 = *(a2 - 4);
        v87 = *(j + 8);
        if (v86 == v87)
        {
          v89 = *(a2 - 12);
          v88 = *j;
          v206 = -1;
          if (v89 >= *j)
          {
            v206 = 1;
          }

          if (v89 == v88)
          {
            v207 = *(a2 - 8);
            v208 = *(j + 4);
            v209 = v207 == v208;
            v187 = v207 < v208;
            v206 = -1;
            if (!v187)
            {
              v206 = 1;
            }

            if (v209)
            {
              v206 = 0;
            }
          }

          if ((v206 & 0x80) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v86 <= v87)
          {
            return result;
          }

          v88 = *j;
          v89 = *(a2 - 12);
        }

        *j = v89;
        *(a2 - 12) = v88;
        v210 = *(j + 4);
        *(j + 4) = *(a2 - 8);
        *(a2 - 8) = v210;
        *(j + 8) = v86;
        *(a2 - 4) = v87;
        return result;
      }
    }

    if (v10 <= 287)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v115 = (v11 - 2) >> 1;
      v116 = v115;
      while (1)
      {
        v117 = v116;
        if (v115 < v116)
        {
          goto LABEL_291;
        }

        v118 = (2 * v116) | 1;
        v119 = j + 12 * v118;
        if (2 * v117 + 2 < v11)
        {
          v120 = *(v119 + 8);
          v121 = *(v119 + 20);
          if (v120 != v121)
          {
            if (v120 <= v121)
            {
              goto LABEL_275;
            }

LABEL_274:
            v119 += 12;
            v118 = 2 * v117 + 2;
            goto LABEL_275;
          }

          v147 = *(v119 + 12);
          if (*v119 >= v147)
          {
            v148 = 1;
          }

          else
          {
            v148 = -1;
          }

          if (*v119 == v147)
          {
            v149 = *(v119 + 4);
            v150 = *(v119 + 16);
            v151 = v149 == v150;
            v148 = v149 >= v150 ? 1 : -1;
            if (v151)
            {
              v148 = 0;
            }
          }

          if (v148 < 0)
          {
            goto LABEL_274;
          }
        }

LABEL_275:
        v122 = j + 12 * v117;
        v123 = *(v119 + 8);
        v124 = *(v122 + 8);
        if (v123 == v124)
        {
          v126 = *v119;
          v125 = *v122;
          if (*v119 >= *v122)
          {
            v127 = 1;
          }

          else
          {
            v127 = -1;
          }

          if (v126 == v125)
          {
            v128 = *(v119 + 4);
            v129 = *(v122 + 4);
            v130 = v128 == v129;
            v127 = v128 >= v129 ? 1 : -1;
            if (v130)
            {
              v127 = 0;
            }
          }

          if ((v127 & 0x80) == 0)
          {
            goto LABEL_288;
          }
        }

        else if (v123 <= v124)
        {
          v125 = *v122;
          v126 = *v119;
LABEL_288:
          v131 = *(v122 + 4);
          *v122 = v126;
          *(v122 + 4) = *(v119 + 4);
          *(v122 + 8) = v123;
          if (v115 < v118)
          {
LABEL_289:
            v132 = v119;
LABEL_290:
            *v132 = v125;
            *(v132 + 4) = v131;
            *(v132 + 8) = v124;
            goto LABEL_291;
          }

          while (2)
          {
            v133 = 2 * v118;
            v118 = (2 * v118) | 1;
            v132 = j + 12 * v118;
            v134 = v133 + 2;
            if (v134 < v11)
            {
              v135 = *(v132 + 8);
              v136 = *(v132 + 20);
              if (v135 == v136)
              {
                v142 = *(v132 + 12);
                if (*v132 >= v142)
                {
                  v143 = 1;
                }

                else
                {
                  v143 = -1;
                }

                if (*v132 == v142)
                {
                  v144 = *(v132 + 4);
                  v145 = *(v132 + 16);
                  v146 = v144 == v145;
                  v143 = v144 >= v145 ? 1 : -1;
                  if (v146)
                  {
                    v143 = 0;
                  }
                }

                if (v143 < 0)
                {
LABEL_296:
                  v132 += 12;
                  v118 = v134;
                }
              }

              else if (v135 > v136)
              {
                goto LABEL_296;
              }
            }

            v137 = *(v132 + 8);
            if (v137 == v124)
            {
              v138 = *v132;
              if (*v132 >= v125)
              {
                v139 = 1;
              }

              else
              {
                v139 = -1;
              }

              if (v138 == v125)
              {
                v140 = *(v132 + 4);
                v141 = v140 == v131;
                v139 = v140 >= v131 ? 1 : -1;
                if (v141)
                {
                  v139 = 0;
                }
              }

              if (v139 < 0)
              {
                goto LABEL_289;
              }
            }

            else
            {
              if (v137 > v124)
              {
                goto LABEL_289;
              }

              v138 = *v132;
            }

            *v119 = v138;
            *(v119 + 4) = *(v132 + 4);
            *(v119 + 8) = v137;
            v119 = v132;
            if (v115 < v118)
            {
              goto LABEL_290;
            }

            continue;
          }
        }

LABEL_291:
        v116 = v117 - 1;
        if (!v117)
        {
          v152 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
          while (1)
          {
            v153 = 0;
            v154 = *j;
            v155 = *(j + 4);
            v156 = *(j + 8);
            v157 = j;
            do
            {
              v158 = v157;
              v159 = v157 + 12 * v153;
              v157 = v159 + 12;
              v160 = 2 * v153;
              v153 = (2 * v153) | 1;
              v161 = v160 + 2;
              if (v161 >= v152)
              {
                goto LABEL_339;
              }

              v162 = *(v159 + 20);
              v163 = *(v159 + 32);
              if (v162 != v163)
              {
                if (v162 <= v163)
                {
                  goto LABEL_339;
                }

LABEL_338:
                v157 = v159 + 24;
                v153 = v161;
                goto LABEL_339;
              }

              v164 = *(v159 + 12);
              v165 = *(v159 + 24);
              v166 = v164 == v165;
              if (v164 >= v165)
              {
                v167 = 1;
              }

              else
              {
                v167 = -1;
              }

              if (v166)
              {
                v168 = *(v159 + 16);
                v169 = *(v159 + 28);
                v170 = v168 == v169;
                v167 = v168 >= v169 ? 1 : -1;
                if (v170)
                {
                  v167 = 0;
                }
              }

              if (v167 < 0)
              {
                goto LABEL_338;
              }

LABEL_339:
              *v158 = *v157;
              result = *(v157 + 4);
              *(v158 + 4) = result;
              *(v158 + 8) = *(v157 + 8);
            }

            while (v153 <= ((v152 - 2) >> 1));
            if (v157 == a2 - 12)
            {
              *v157 = v154;
              *(v157 + 4) = v155;
              goto LABEL_386;
            }

            *v157 = *(a2 - 12);
            *(v157 + 4) = *(a2 - 8);
            *(v157 + 8) = *(a2 - 4);
            *(a2 - 12) = v154;
            *(a2 - 8) = v155;
            *(a2 - 4) = v156;
            v171 = v157 - j + 12;
            if (v171 < 13)
            {
              goto LABEL_387;
            }

            result = 0xAAAAAAAAAAAAAAABLL * (v171 >> 2) - 2;
            v172 = result >> 1;
            v173 = j + 12 * (result >> 1);
            v174 = *(v173 + 8);
            v156 = *(v157 + 8);
            if (v174 == v156)
            {
              v176 = *v173;
              v175 = *v157;
              if (*v173 >= *v157)
              {
                v177 = 1;
              }

              else
              {
                v177 = -1;
              }

              if (v176 == v175)
              {
                v178 = *(v173 + 4);
                v179 = *(v157 + 4);
                v180 = v178 == v179;
                v177 = v178 >= v179 ? 1 : -1;
                if (v180)
                {
                  v177 = 0;
                }
              }

              if ((v177 & 0x80) == 0)
              {
                goto LABEL_387;
              }

LABEL_369:
              v181 = *(v157 + 4);
              *v157 = v176;
              *(v157 + 4) = *(v173 + 4);
              *(v157 + 8) = v174;
              if (result >= 2)
              {
                while (1)
                {
                  result = v172 - 1;
                  v172 = (v172 - 1) >> 1;
                  v157 = j + 12 * v172;
                  v182 = *(v157 + 8);
                  if (v182 == v156)
                  {
                    v183 = *v157;
                    if (*v157 >= v175)
                    {
                      v184 = 1;
                    }

                    else
                    {
                      v184 = -1;
                    }

                    if (v183 == v175)
                    {
                      v185 = *(v157 + 4);
                      v186 = v185 == v181;
                      v184 = v185 >= v181 ? 1 : -1;
                      if (v186)
                      {
                        v184 = 0;
                      }
                    }

                    if ((v184 & 0x80) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v182 <= v156)
                    {
                      break;
                    }

                    v183 = *v157;
                  }

                  *v173 = v183;
                  *(v173 + 4) = *(v157 + 4);
                  *(v173 + 8) = v182;
                  v173 = j + 12 * v172;
                  if (result <= 1)
                  {
                    goto LABEL_385;
                  }
                }
              }

              v157 = v173;
LABEL_385:
              *v157 = v175;
              *(v157 + 4) = v181;
LABEL_386:
              *(v157 + 8) = v156;
              goto LABEL_387;
            }

            if (v174 > v156)
            {
              v175 = *v157;
              v176 = *v173;
              goto LABEL_369;
            }

LABEL_387:
            a2 -= 12;
            v187 = v152-- <= 2;
            if (v187)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = j + 12 * (v11 >> 1);
    if (v10 < 0x601)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>((v7 + 12 * v12), v7, (a2 - 12));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(v7, (v7 + 12 * v12), (a2 - 12));
      v14 = 3 * v12;
      v15 = (v7 + 12 * v12 - 12);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>((v7 + 12), v15, (a2 - 24));
      v16 = (v7 + 12 + 4 * v14);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>((v7 + 24), v16, (a2 - 36));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(v15, v13, v16);
      v17 = *v7;
      *v7 = *v13;
      *v13 = v17;
      LOWORD(v17) = *(v7 + 8);
      *(v7 + 8) = *(v13 + 8);
      *(v13 + 8) = v17;
    }

    --a3;
    if (a4)
    {
      v18 = *v7;
      v19 = *(v7 + 8);
LABEL_19:
      v21 = 0;
      v22 = *(v7 + 4);
      while (1)
      {
        v23 = *(v7 + v21 + 20);
        if (v23 == v19)
        {
          break;
        }

        if (v23 <= v19)
        {
          goto LABEL_35;
        }

LABEL_34:
        v21 += 12;
      }

      v24 = *(v7 + v21 + 12);
      v25 = v24 == v18;
      if (v24 >= v18)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (v25)
      {
        v27 = *(v7 + v21 + 16);
        v28 = v27 == v22;
        v26 = v27 >= v22 ? 1 : -1;
        if (v28)
        {
          v26 = 0;
        }
      }

      if (v26 < 0)
      {
        goto LABEL_34;
      }

LABEL_35:
      v29 = v7 + v21 + 12;
      i = a2 - 12;
      if (v21)
      {
        while (1)
        {
          v31 = *(i + 8);
          if (v31 == v19)
          {
            if (*i >= v18)
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

            if (*i == v18)
            {
              v33 = *(i + 4);
              v34 = v33 == v22;
              v32 = v33 >= v22 ? 1 : -1;
              if (v34)
              {
                v32 = 0;
              }
            }

            if (v32 < 0)
            {
              goto LABEL_71;
            }
          }

          else if (v31 > v19)
          {
            goto LABEL_71;
          }

          i -= 12;
        }
      }

      i = a2;
      if (v29 < a2)
      {
        for (i = a2 - 12; ; i -= 12)
        {
          v35 = *(i + 8);
          if (v35 == v19)
          {
            if (*i >= v18)
            {
              v37 = 1;
            }

            else
            {
              v37 = -1;
            }

            if (*i == v18)
            {
              v38 = *(i + 4);
              v39 = v38 == v22;
              v37 = v38 >= v22 ? 1 : -1;
              if (v39)
              {
                v37 = 0;
              }
            }

            if (v37 < 0 || v29 >= i)
            {
              break;
            }
          }

          else if (v35 > v19 || v29 >= i)
          {
            break;
          }
        }
      }

LABEL_71:
      j = v29;
      if (v29 < i)
      {
        v40 = i;
        do
        {
          v41 = *j;
          *j = *v40;
          *v40 = v41;
          v42 = *(j + 4);
          *(j + 4) = *(v40 + 4);
          *(v40 + 4) = v42;
          v43 = *(j + 8);
          *(j + 8) = *(v40 + 8);
          *(v40 + 8) = v43;
          do
          {
            while (1)
            {
              j += 12;
              v44 = *(j + 8);
              if (v44 == v19)
              {
                break;
              }

              if (v44 <= v19)
              {
                goto LABEL_98;
              }
            }

            if (*j >= v18)
            {
              v45 = 1;
            }

            else
            {
              v45 = -1;
            }

            if (*j == v18)
            {
              v46 = *(j + 4);
              v47 = v46 == v22;
              v45 = v46 >= v22 ? 1 : -1;
              if (v47)
              {
                v45 = 0;
              }
            }
          }

          while (v45 < 0);
          do
          {
LABEL_98:
            while (1)
            {
              v40 -= 12;
              v51 = *(v40 + 8);
              if (v51 == v19)
              {
                break;
              }

              if (v51 > v19)
              {
                goto LABEL_100;
              }
            }

            if (*v40 >= v18)
            {
              v48 = 1;
            }

            else
            {
              v48 = -1;
            }

            if (*v40 == v18)
            {
              v49 = *(v40 + 4);
              v50 = v49 == v22;
              v48 = v49 >= v22 ? 1 : -1;
              if (v50)
              {
                v48 = 0;
              }
            }
          }

          while ((v48 & 0x80) == 0);
LABEL_100:
          ;
        }

        while (j < v40);
      }

      if (j - 12 != v7)
      {
        *v7 = *(j - 12);
        *(v7 + 4) = *(j - 8);
        *(v7 + 8) = *(j - 4);
      }

      *(j - 12) = v18;
      *(j - 8) = v22;
      *(j - 4) = v19;
      if (v29 < i)
      {
LABEL_106:
        result = std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,false>(v7, j - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v52 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*>(v7, j - 12);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*>(j, a2);
        if (result)
        {
          a2 = j - 12;
          if (v52)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v52)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v20 = *(v7 - 4);
      v19 = *(v7 + 8);
      if (v20 == v19)
      {
        v53 = *(v7 - 12);
        v18 = *v7;
        v54 = v53 == *v7;
        if (v53 >= *v7)
        {
          v55 = 1;
        }

        else
        {
          v55 = -1;
        }

        if (v54)
        {
          v56 = *(v7 - 8);
          v57 = *(v7 + 4);
          v58 = v56 == v57;
          v55 = v56 >= v57 ? 1 : -1;
          if (v58)
          {
            v55 = 0;
          }
        }

        if (v55 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = *v7;
        if (v20 > v19)
        {
          goto LABEL_19;
        }
      }

      v59 = *(v7 + 4);
      v60 = *(a2 - 4);
      if (v19 == v60)
      {
        if (v18 >= *v8)
        {
          v65 = 1;
        }

        else
        {
          v65 = -1;
        }

        if (v18 == *v8)
        {
          v65 = v59 >= *v211 ? 1 : -1;
          if (v59 == *v211)
          {
            v65 = 0;
          }
        }

        if (v65 < 0)
        {
LABEL_120:
          for (j = v7 + 12; ; j += 12)
          {
            v61 = *(j + 8);
            if (v19 == v61)
            {
              if (v18 >= *j)
              {
                v62 = 1;
              }

              else
              {
                v62 = -1;
              }

              if (v18 == *j)
              {
                v63 = *(j + 4);
                v64 = v59 == v63;
                v62 = v59 >= v63 ? 1 : -1;
                if (v64)
                {
                  v62 = 0;
                }
              }

              if (v62 < 0)
              {
                goto LABEL_161;
              }
            }

            else if (v19 > v61)
            {
              goto LABEL_161;
            }
          }
        }
      }

      else if (v19 > v60)
      {
        goto LABEL_120;
      }

      for (j = v7 + 12; j < a2; j += 12)
      {
        v66 = *(j + 8);
        if (v19 == v66)
        {
          if (v18 >= *j)
          {
            v67 = 1;
          }

          else
          {
            v67 = -1;
          }

          if (v18 == *j)
          {
            v68 = *(j + 4);
            v69 = v59 == v68;
            v67 = v59 >= v68 ? 1 : -1;
            if (v69)
            {
              v67 = 0;
            }
          }

          if (v67 < 0)
          {
            break;
          }
        }

        else if (v19 > v66)
        {
          break;
        }
      }

LABEL_161:
      v70 = a2;
      if (j >= a2)
      {
        goto LABEL_206;
      }

      v71 = (a2 - 8);
      while (v19 != v60)
      {
        if (v19 <= v60)
        {
          goto LABEL_178;
        }

LABEL_177:
        v60 = *(v71 - 4);
        v71 -= 6;
      }

      v72 = *(v71 - 1);
      v73 = v18 == v72;
      if (v18 >= v72)
      {
        v74 = 1;
      }

      else
      {
        v74 = -1;
      }

      if (v73)
      {
        v74 = v59 >= *v71 ? 1 : -1;
        if (v59 == *v71)
        {
          v74 = 0;
        }
      }

      if (v74 < 0)
      {
        goto LABEL_177;
      }

LABEL_178:
      v70 = v71 - 2;
LABEL_206:
      while (j < v70)
      {
        v75 = *j;
        *j = *v70;
        *v70 = v75;
        v76 = *(j + 4);
        *(j + 4) = *(v70 + 1);
        *(v70 + 1) = v76;
        v77 = *(j + 8);
        *(j + 8) = v70[4];
        *(v70 + 4) = v77;
        do
        {
          while (1)
          {
            j += 12;
            v78 = *(j + 8);
            if (v19 == v78)
            {
              break;
            }

            if (v19 > v78)
            {
              goto LABEL_204;
            }
          }

          if (v18 >= *j)
          {
            v79 = 1;
          }

          else
          {
            v79 = -1;
          }

          if (v18 == *j)
          {
            v80 = *(j + 4);
            v81 = v59 == v80;
            v79 = v59 >= v80 ? 1 : -1;
            if (v81)
            {
              v79 = 0;
            }
          }
        }

        while ((v79 & 0x80) == 0);
        do
        {
LABEL_204:
          while (1)
          {
            v70 -= 6;
            v85 = v70[4];
            if (v19 == v85)
            {
              break;
            }

            if (v19 <= v85)
            {
              goto LABEL_206;
            }
          }

          if (v18 >= *v70)
          {
            v82 = 1;
          }

          else
          {
            v82 = -1;
          }

          if (v18 == *v70)
          {
            v83 = *(v70 + 1);
            v84 = v59 == v83;
            v82 = v59 >= v83 ? 1 : -1;
            if (v84)
            {
              v82 = 0;
            }
          }
        }

        while (v82 < 0);
      }

      if (j - 12 != v7)
      {
        *v7 = *(j - 12);
        *(v7 + 4) = *(j - 8);
        *(v7 + 8) = *(j - 4);
      }

      a4 = 0;
      *(j - 12) = v18;
      *(j - 8) = v59;
      *(j - 4) = v19;
    }
  }

  v90 = (j + 12);
  v92 = j == a2 || v90 == a2;
  if ((a4 & 1) == 0)
  {
    if (v92)
    {
      return result;
    }

    for (k = j + 4; ; k += 12)
    {
      v189 = v7;
      v7 = v90;
      v190 = *(v189 + 20);
      v191 = *(v189 + 8);
      if (v190 == v191)
      {
        break;
      }

      if (v190 > v191)
      {
        v192 = *v90;
LABEL_406:
        v198 = *(v189 + 16);
        for (m = k; ; m -= 12)
        {
          v200 = *m;
          *(m + 8) = *(m - 4);
          *(m + 12) = v200;
          *(m + 16) = v191;
          v191 = *(m - 8);
          if (v190 == v191)
          {
            v201 = *(m - 16);
            v202 = v192 == v201;
            if (v192 >= v201)
            {
              v203 = 1;
            }

            else
            {
              v203 = -1;
            }

            if (v202)
            {
              v204 = *(m - 12);
              v205 = v198 == v204;
              v203 = v198 >= v204 ? 1 : -1;
              if (v205)
              {
                v203 = 0;
              }
            }

            if ((v203 & 0x80) == 0)
            {
LABEL_422:
              *(m - 4) = v192;
              *m = v198;
              *(m + 4) = v190;
              break;
            }
          }

          else if (v190 <= v191)
          {
            goto LABEL_422;
          }
        }
      }

LABEL_423:
      v90 = (v7 + 12);
      if (v7 + 12 == a2)
      {
        return result;
      }
    }

    v192 = *v90;
    v193 = *v90 == *v189;
    if (*v90 >= *v189)
    {
      v194 = 1;
    }

    else
    {
      v194 = -1;
    }

    if (v193)
    {
      v195 = *(v189 + 16);
      v196 = *(v189 + 4);
      v197 = v195 == v196;
      v194 = v195 >= v196 ? 1 : -1;
      if (v197)
      {
        v194 = 0;
      }
    }

    if ((v194 & 0x80) == 0)
    {
      goto LABEL_423;
    }

    goto LABEL_406;
  }

  if (v92)
  {
    return result;
  }

  v93 = 0;
  v94 = j;
  while (2)
  {
    v95 = v94;
    v94 = v90;
    v96 = v95[10];
    v97 = v95[4];
    if (v96 == v97)
    {
      v98 = *v90;
      v99 = *v95;
      if (v98 >= *v95)
      {
        v100 = 1;
      }

      else
      {
        v100 = -1;
      }

      if (v98 == v99)
      {
        v101 = *(v95 + 4);
        v102 = *(v95 + 1);
        v103 = v101 == v102;
        v100 = v101 >= v102 ? 1 : -1;
        if (v103)
        {
          v100 = 0;
        }
      }

      if ((v100 & 0x80) == 0)
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (v96 <= v97)
      {
        goto LABEL_266;
      }

      v98 = *v90;
      v99 = *v95;
    }

    v104 = *(v95 + 4);
    *(v95 + 3) = v99;
    v94[1] = *(v95 + 1);
    *(v94 + 4) = v97;
    v105 = j;
    if (v95 == j)
    {
      goto LABEL_265;
    }

    v106 = v93;
    while (2)
    {
      v107 = j + v106;
      v108 = *(j + v106 - 4);
      if (v96 != v108)
      {
        if (v96 <= v108)
        {
          v105 = j + v106;
          goto LABEL_265;
        }

        v109 = *(v107 - 12);
        goto LABEL_261;
      }

      v109 = *(v107 - 12);
      if (v98 >= v109)
      {
        v110 = 1;
      }

      else
      {
        v110 = -1;
      }

      if (v98 == v109)
      {
        v111 = *(j + v106 - 8);
        v112 = v104 == v111;
        v110 = v104 >= v111 ? 1 : -1;
        if (v112)
        {
          v110 = 0;
        }
      }

      if (v110 < 0)
      {
LABEL_261:
        v113 = j + v106;
        v114 = *(j + v106 - 8);
        v95 -= 6;
        *v113 = v109;
        *(v113 + 4) = v114;
        *(v113 + 8) = v108;
        v106 -= 12;
        if (!v106)
        {
          v105 = j;
          goto LABEL_265;
        }

        continue;
      }

      break;
    }

    v105 = v95;
LABEL_265:
    *v105 = v98;
    *(v105 + 4) = v104;
    *(v105 + 8) = v96;
LABEL_266:
    v90 = v94 + 3;
    v93 += 12;
    if (v94 + 3 != a2)
    {
      continue;
    }

    return result;
  }
}

short float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(short float *result, short float *a2, short float *a3)
{
  v3 = a2[4];
  v4 = result[4];
  if (v3 == v4)
  {
    if (*a2 >= *result)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (*a2 == *result)
    {
      v8 = *(a2 + 1);
      v9 = *(result + 1);
      v10 = v8 == v9;
      v11 = v8 < v9;
      v7 = -1;
      if (!v11)
      {
        v7 = 1;
      }

      if (v10)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = a3[4];
    if (v12 == v3)
    {
      v14 = *a3;
      v13 = *a2;
      v22 = -1;
      if (*a3 >= *a2)
      {
        v22 = 1;
      }

      if (v14 == v13)
      {
        v23 = *(a3 + 1);
        v24 = *(a2 + 1);
        v25 = v23 == v24;
        v11 = v23 < v24;
        v22 = -1;
        if (!v11)
        {
          v22 = 1;
        }

        if (v25)
        {
          v22 = 0;
        }
      }

      if ((v22 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v12 <= v3)
      {
        return result;
      }

      v13 = *a2;
      v14 = *a3;
    }

    *a2 = v14;
    *a3 = v13;
    v26 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v26;
    a2[4] = v12;
    a3[4] = v3;
    v27 = a2[4];
    v28 = result[4];
    if (v27 == v28)
    {
      v30 = *a2;
      v29 = *result;
      v36 = -1;
      if (*a2 >= *result)
      {
        v36 = 1;
      }

      if (v30 == v29)
      {
        v37 = *(a2 + 1);
        v38 = *(result + 1);
        v39 = v37 == v38;
        v11 = v37 < v38;
        v36 = -1;
        if (!v11)
        {
          v36 = 1;
        }

        if (v39)
        {
          v36 = 0;
        }
      }

      if ((v36 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        return result;
      }

      v29 = *result;
      v30 = *a2;
    }

    *result = v30;
    *a2 = v29;
    v40 = *(result + 1);
    *(result + 1) = *(a2 + 1);
    *(a2 + 1) = v40;
    result[4] = v27;
    a2[4] = v28;
    return result;
  }

  if (v3 <= v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = a3[4];
  if (v5 == v3)
  {
    v6 = *a3;
    v15 = *a2;
    v16 = -1;
    if (*a3 >= *a2)
    {
      v16 = 1;
    }

    if (v6 == v15)
    {
      v17 = *(a3 + 1);
      v18 = *(a2 + 1);
      v19 = v17 == v18;
      v11 = v17 < v18;
      v16 = -1;
      if (!v11)
      {
        v16 = 1;
      }

      if (v19)
      {
        v16 = 0;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v5 > v3)
    {
      v6 = *a3;
LABEL_26:
      v20 = *result;
      *result = v6;
      *a3 = v20;
      v21 = *(result + 1);
      *(result + 1) = *(a3 + 1);
      *(a3 + 1) = v21;
      result[4] = v5;
LABEL_61:
      a3[4] = v4;
      return result;
    }

    v15 = *a2;
  }

  v31 = *result;
  *result = v15;
  *a2 = v31;
  v32 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v32;
  result[4] = v3;
  a2[4] = v4;
  v33 = a3[4];
  if (v33 != v4)
  {
    if (v33 <= v4)
    {
      return result;
    }

    v34 = *a2;
    v35 = *a3;
    goto LABEL_60;
  }

  v35 = *a3;
  v34 = *a2;
  v41 = -1;
  if (*a3 >= *a2)
  {
    v41 = 1;
  }

  if (v35 == v34)
  {
    v42 = *(a3 + 1);
    v43 = v42 == v32;
    v11 = v42 < v32;
    v44 = -1;
    if (!v11)
    {
      v44 = 1;
    }

    if (v43)
    {
      v41 = 0;
    }

    else
    {
      v41 = v44;
    }
  }

  if (v41 < 0)
  {
LABEL_60:
    *a2 = v35;
    *a3 = v34;
    v45 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v45;
    a2[4] = v33;
    goto LABEL_61;
  }

  return result;
}

short float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(short float *a1, short float *a2, short float *a3, short float *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, a2, a3);
  v9 = a4[4];
  v10 = a3[4];
  if (v9 == v10)
  {
    v12 = *a4;
    v11 = *a3;
    v13 = -1;
    if (*a4 >= *a3)
    {
      v13 = 1;
    }

    if (v12 == v11)
    {
      v14 = *(a4 + 1);
      v15 = *(a3 + 1);
      v16 = v14 == v15;
      v17 = v14 < v15;
      v13 = -1;
      if (!v17)
      {
        v13 = 1;
      }

      if (v16)
      {
        v13 = 0;
      }
    }

    if ((v13 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v9 <= v10)
    {
      return result;
    }

    v11 = *a3;
    v12 = *a4;
  }

  *a3 = v12;
  *a4 = v11;
  v18 = *(a3 + 1);
  *(a3 + 1) = *(a4 + 1);
  *(a4 + 1) = v18;
  a3[4] = v9;
  a4[4] = v10;
  v19 = a3[4];
  v20 = a2[4];
  if (v19 == v20)
  {
    v22 = *a3;
    v21 = *a2;
    v23 = -1;
    if (*a3 >= *a2)
    {
      v23 = 1;
    }

    if (v22 == v21)
    {
      v24 = *(a3 + 1);
      v25 = *(a2 + 1);
      v26 = v24 == v25;
      v17 = v24 < v25;
      v23 = -1;
      if (!v17)
      {
        v23 = 1;
      }

      if (v26)
      {
        v23 = 0;
      }
    }

    if ((v23 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v19 <= v20)
    {
      return result;
    }

    v21 = *a2;
    v22 = *a3;
  }

  *a2 = v22;
  *a3 = v21;
  v27 = *(a2 + 1);
  *(a2 + 1) = *(a3 + 1);
  *(a3 + 1) = v27;
  a2[4] = v19;
  a3[4] = v20;
  v28 = a2[4];
  v29 = a1[4];
  if (v28 != v29)
  {
    if (v28 <= v29)
    {
      return result;
    }

    v30 = *a1;
    v31 = *a2;
    goto LABEL_34;
  }

  v31 = *a2;
  v30 = *a1;
  v32 = -1;
  if (*a2 >= *a1)
  {
    v32 = 1;
  }

  if (v31 == v30)
  {
    v33 = *(a2 + 1);
    v34 = *(a1 + 1);
    v35 = v33 == v34;
    v17 = v33 < v34;
    v32 = -1;
    if (!v17)
    {
      v32 = 1;
    }

    if (v35)
    {
      v32 = 0;
    }
  }

  if (v32 < 0)
  {
LABEL_34:
    *a1 = v31;
    *a2 = v30;
    v36 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v36;
    a1[4] = v28;
    a2[4] = v29;
  }

  return result;
}

short float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(short float *a1, short float *a2, short float *a3, short float *a4, short float *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, a2, a3, a4);
  v11 = a5[4];
  v12 = a4[4];
  if (v11 == v12)
  {
    v14 = *a5;
    v13 = *a4;
    v15 = -1;
    if (*a5 >= *a4)
    {
      v15 = 1;
    }

    if (v14 == v13)
    {
      v16 = *(a5 + 1);
      v17 = *(a4 + 1);
      v18 = v16 == v17;
      v19 = v16 < v17;
      v15 = -1;
      if (!v19)
      {
        v15 = 1;
      }

      if (v18)
      {
        v15 = 0;
      }
    }

    if ((v15 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v11 <= v12)
    {
      return result;
    }

    v13 = *a4;
    v14 = *a5;
  }

  *a4 = v14;
  *a5 = v13;
  v20 = *(a4 + 1);
  *(a4 + 1) = *(a5 + 1);
  *(a5 + 1) = v20;
  a4[4] = v11;
  a5[4] = v12;
  v21 = a4[4];
  v22 = a3[4];
  if (v21 == v22)
  {
    v24 = *a4;
    v23 = *a3;
    v25 = -1;
    if (*a4 >= *a3)
    {
      v25 = 1;
    }

    if (v24 == v23)
    {
      v26 = *(a4 + 1);
      v27 = *(a3 + 1);
      v28 = v26 == v27;
      v19 = v26 < v27;
      v25 = -1;
      if (!v19)
      {
        v25 = 1;
      }

      if (v28)
      {
        v25 = 0;
      }
    }

    if ((v25 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v21 <= v22)
    {
      return result;
    }

    v23 = *a3;
    v24 = *a4;
  }

  *a3 = v24;
  *a4 = v23;
  v29 = *(a3 + 1);
  *(a3 + 1) = *(a4 + 1);
  *(a4 + 1) = v29;
  a3[4] = v21;
  a4[4] = v22;
  v30 = a3[4];
  v31 = a2[4];
  if (v30 == v31)
  {
    v33 = *a3;
    v32 = *a2;
    v34 = -1;
    if (*a3 >= *a2)
    {
      v34 = 1;
    }

    if (v33 == v32)
    {
      v35 = *(a3 + 1);
      v36 = *(a2 + 1);
      v37 = v35 == v36;
      v19 = v35 < v36;
      v34 = -1;
      if (!v19)
      {
        v34 = 1;
      }

      if (v37)
      {
        v34 = 0;
      }
    }

    if ((v34 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v30 <= v31)
    {
      return result;
    }

    v32 = *a2;
    v33 = *a3;
  }

  *a2 = v33;
  *a3 = v32;
  v38 = *(a2 + 1);
  *(a2 + 1) = *(a3 + 1);
  *(a3 + 1) = v38;
  a2[4] = v30;
  a3[4] = v31;
  v39 = a2[4];
  v40 = a1[4];
  if (v39 != v40)
  {
    if (v39 <= v40)
    {
      return result;
    }

    v41 = *a1;
    v42 = *a2;
    goto LABEL_45;
  }

  v42 = *a2;
  v41 = *a1;
  v43 = -1;
  if (*a2 >= *a1)
  {
    v43 = 1;
  }

  if (v42 == v41)
  {
    v44 = *(a2 + 1);
    v45 = *(a1 + 1);
    v46 = v44 == v45;
    v19 = v44 < v45;
    v43 = -1;
    if (!v19)
    {
      v43 = 1;
    }

    if (v46)
    {
      v43 = 0;
    }
  }

  if (v43 < 0)
  {
LABEL_45:
    *a1 = v42;
    *a2 = v41;
    v47 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v47;
    a1[4] = v39;
    a2[4] = v40;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, (a1 + 12), (a2 - 12));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, (a1 + 12), (a1 + 24), (a2 - 12));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
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
      v5 = *(a2 - 4);
      v6 = *(a1 + 8);
      if (v5 == v6)
      {
        v8 = *(a2 - 12);
        v7 = *a1;
        v31 = -1;
        if (v8 >= *a1)
        {
          v31 = 1;
        }

        if (v8 == v7)
        {
          v32 = *(a2 - 8);
          v33 = *(a1 + 4);
          v34 = v32 == v33;
          v35 = v32 < v33;
          v31 = -1;
          if (!v35)
          {
            v31 = 1;
          }

          if (v34)
          {
            v31 = 0;
          }
        }

        if ((v31 & 0x80) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v5 <= v6)
        {
          return 1;
        }

        v7 = *a1;
        v8 = *(a2 - 12);
      }

      *a1 = v8;
      *(a2 - 12) = v7;
      v36 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v36;
      *(a1 + 8) = v5;
      *(a2 - 4) = v6;
      return 1;
    }
  }

  v9 = a1 + 24;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<half>(half const*,half const*,half const*,half const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,half> const&,std::pair<std::pair<int,int>,half> const&)#1} &,std::pair<std::pair<int,int>,half>*,0>(a1, (a1 + 12), (a1 + 24));
  v10 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *(v10 + 8);
    v14 = *(v9 + 8);
    if (v13 == v14)
    {
      v15 = *v10;
      v16 = *v9;
      if (*v10 >= *v9)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      if (v15 == v16)
      {
        v18 = *(v10 + 4);
        v19 = *(v9 + 4);
        v20 = v18 == v19;
        v17 = v18 >= v19 ? 1 : -1;
        if (v20)
        {
          v17 = 0;
        }
      }

      if ((v17 & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        goto LABEL_45;
      }

      v15 = *v10;
      v16 = *v9;
    }

    v21 = *(v10 + 4);
    *v10 = v16;
    *(v10 + 4) = *(v9 + 4);
    *(v10 + 8) = v14;
    v22 = v11;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 20);
      if (v13 == v24)
      {
        break;
      }

      if (v13 <= v24)
      {
        goto LABEL_43;
      }

      v25 = *(v23 + 12);
LABEL_41:
      *(v23 + 24) = v25;
      v29 = a1 + v22;
      *(v29 + 28) = *(a1 + v22 + 16);
      *(v29 + 32) = v24;
      v22 -= 12;
      if (v22 == -24)
      {
        v30 = a1;
        goto LABEL_44;
      }
    }

    v25 = *(v23 + 12);
    if (v15 >= v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v15 == v25)
    {
      v27 = *(a1 + v22 + 16);
      v28 = v21 == v27;
      v26 = v21 >= v27 ? 1 : -1;
      if (v28)
      {
        v26 = 0;
      }
    }

    if (v26 < 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    v30 = a1 + v22 + 24;
LABEL_44:
    *v30 = v15;
    *(v30 + 4) = v21;
    *(v30 + 8) = v13;
    if (++v12 != 8)
    {
LABEL_45:
      v9 = v10;
      v11 += 12;
      v10 += 12;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 12 == a2;
  }
}

void std::vector<std::pair<std::pair<int,int>,half>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 12 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 12;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,half>>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * v6 + 12 * a2;
    v13 = v11;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      v13 += 12;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::pair<std::pair<int,int>,float>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<std::pair<int,int>,float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int>,float>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__copy_impl::operator()[abi:nn200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<int,int>,float>,std::__tree_node<std::__value_type<std::pair<int,int>,float>,void *> *,long>>,std::back_insert_iterator<std::vector<std::pair<std::pair<int,int>,float>>>>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(v5 + 28);
      v9 = *(v5 + 9);
      v10 = *(a4 + 16);
      if (v7 >= v10)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a4) >> 2);
        v12 = v11 + 1;
        if (v11 + 1 > 0x1555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 2);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0xAAAAAAAAAAAAAAALL)
        {
          v14 = 0x1555555555555555;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,float>>>(a4, v14);
        }

        v15 = 12 * v11;
        *v15 = v8;
        *(v15 + 8) = v9;
        v7 = 12 * v11 + 12;
        v16 = *(a4 + 8) - *a4;
        v17 = v15 - v16;
        memcpy((v15 - v16), *a4, v16);
        v18 = *a4;
        *a4 = v17;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = v8;
        *(v7 + 8) = v9;
        v7 += 12;
      }

      *(a4 + 8) = v7;
      v19 = v5[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v5[2];
          v21 = *v20 == v5;
          v5 = v20;
        }

        while (!v21);
      }

      v5 = v20;
    }

    while (v20 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v211 = (a2 - 8);
  j = v7;
  while (1)
  {
    v7 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - j) >> 2);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(j, (j + 12), (a2 - 12));
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(j, j + 12, j + 24, a2 - 12);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(j, j + 12, j + 24, j + 36, (a2 - 12));
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v86 = *(a2 - 4);
        v87 = *(j + 8);
        if (v86 == v87)
        {
          v89 = *(a2 - 12);
          v88 = *j;
          v206 = -1;
          if (v89 >= *j)
          {
            v206 = 1;
          }

          if (v89 == LODWORD(v88))
          {
            v207 = *(a2 - 8);
            v208 = *(j + 4);
            v209 = v207 == v208;
            v187 = v207 < v208;
            v206 = -1;
            if (!v187)
            {
              v206 = 1;
            }

            if (v209)
            {
              v206 = 0;
            }
          }

          if ((v206 & 0x80) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v86 <= v87)
          {
            return result;
          }

          v88 = *j;
          v89 = *(a2 - 12);
        }

        *j = v89;
        *(a2 - 12) = v88;
        v210 = *(j + 4);
        *(j + 4) = *(a2 - 8);
        *(a2 - 8) = v210;
        *(j + 8) = v86;
        *(a2 - 4) = v87;
        return result;
      }
    }

    if (v10 <= 287)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v115 = (v11 - 2) >> 1;
      v116 = v115;
      while (1)
      {
        v117 = v116;
        if (v115 < v116)
        {
          goto LABEL_291;
        }

        v118 = (2 * v116) | 1;
        v119 = j + 12 * v118;
        if (2 * v117 + 2 < v11)
        {
          v120 = *(v119 + 8);
          v121 = *(v119 + 20);
          if (v120 != v121)
          {
            if (v120 <= v121)
            {
              goto LABEL_275;
            }

LABEL_274:
            v119 += 12;
            v118 = 2 * v117 + 2;
            goto LABEL_275;
          }

          v147 = *(v119 + 12);
          if (*v119 >= v147)
          {
            v148 = 1;
          }

          else
          {
            v148 = -1;
          }

          if (*v119 == v147)
          {
            v149 = *(v119 + 4);
            v150 = *(v119 + 16);
            v151 = v149 == v150;
            v148 = v149 >= v150 ? 1 : -1;
            if (v151)
            {
              v148 = 0;
            }
          }

          if (v148 < 0)
          {
            goto LABEL_274;
          }
        }

LABEL_275:
        v122 = j + 12 * v117;
        v123 = *(v119 + 8);
        v124 = *(v122 + 8);
        if (v123 == v124)
        {
          v126 = *v119;
          v125 = *v122;
          if (*v119 >= *v122)
          {
            v127 = 1;
          }

          else
          {
            v127 = -1;
          }

          if (v126 == v125)
          {
            v128 = *(v119 + 4);
            v129 = *(v122 + 4);
            v130 = v128 == v129;
            v127 = v128 >= v129 ? 1 : -1;
            if (v130)
            {
              v127 = 0;
            }
          }

          if ((v127 & 0x80) == 0)
          {
            goto LABEL_288;
          }
        }

        else if (v123 <= v124)
        {
          v125 = *v122;
          v126 = *v119;
LABEL_288:
          v131 = *(v122 + 4);
          *v122 = v126;
          *(v122 + 4) = *(v119 + 4);
          *(v122 + 8) = v123;
          if (v115 < v118)
          {
LABEL_289:
            v132 = v119;
LABEL_290:
            *v132 = v125;
            *(v132 + 4) = v131;
            *(v132 + 8) = v124;
            goto LABEL_291;
          }

          while (2)
          {
            v133 = 2 * v118;
            v118 = (2 * v118) | 1;
            v132 = j + 12 * v118;
            v134 = v133 + 2;
            if (v134 < v11)
            {
              v135 = *(v132 + 8);
              v136 = *(v132 + 20);
              if (v135 == v136)
              {
                v142 = *(v132 + 12);
                if (*v132 >= v142)
                {
                  v143 = 1;
                }

                else
                {
                  v143 = -1;
                }

                if (*v132 == v142)
                {
                  v144 = *(v132 + 4);
                  v145 = *(v132 + 16);
                  v146 = v144 == v145;
                  v143 = v144 >= v145 ? 1 : -1;
                  if (v146)
                  {
                    v143 = 0;
                  }
                }

                if (v143 < 0)
                {
LABEL_296:
                  v132 += 12;
                  v118 = v134;
                }
              }

              else if (v135 > v136)
              {
                goto LABEL_296;
              }
            }

            v137 = *(v132 + 8);
            if (v137 == v124)
            {
              v138 = *v132;
              if (*v132 >= v125)
              {
                v139 = 1;
              }

              else
              {
                v139 = -1;
              }

              if (v138 == v125)
              {
                v140 = *(v132 + 4);
                v141 = v140 == v131;
                v139 = v140 >= v131 ? 1 : -1;
                if (v141)
                {
                  v139 = 0;
                }
              }

              if (v139 < 0)
              {
                goto LABEL_289;
              }
            }

            else
            {
              if (v137 > v124)
              {
                goto LABEL_289;
              }

              v138 = *v132;
            }

            *v119 = v138;
            *(v119 + 4) = *(v132 + 4);
            *(v119 + 8) = v137;
            v119 = v132;
            if (v115 < v118)
            {
              goto LABEL_290;
            }

            continue;
          }
        }

LABEL_291:
        v116 = v117 - 1;
        if (!v117)
        {
          v152 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
          while (1)
          {
            v153 = 0;
            v154 = *j;
            v155 = *(j + 4);
            v156 = *(j + 8);
            v157 = j;
            do
            {
              v158 = v157;
              v159 = &v157[3 * v153];
              v157 = v159 + 3;
              v160 = 2 * v153;
              v153 = (2 * v153) | 1;
              v161 = v160 + 2;
              if (v161 >= v152)
              {
                goto LABEL_339;
              }

              v162 = *(v159 + 5);
              v163 = *(v159 + 8);
              if (v162 != v163)
              {
                if (v162 <= v163)
                {
                  goto LABEL_339;
                }

LABEL_338:
                v157 = v159 + 6;
                v153 = v161;
                goto LABEL_339;
              }

              v164 = v159[3];
              v165 = v159[6];
              v166 = v164 == v165;
              if (v164 >= v165)
              {
                v167 = 1;
              }

              else
              {
                v167 = -1;
              }

              if (v166)
              {
                v168 = v159[4];
                v169 = v159[7];
                v170 = v168 == v169;
                v167 = v168 >= v169 ? 1 : -1;
                if (v170)
                {
                  v167 = 0;
                }
              }

              if (v167 < 0)
              {
                goto LABEL_338;
              }

LABEL_339:
              *v158 = *v157;
              result = v157[1];
              v158[1] = result;
              v158[2] = v157[2];
            }

            while (v153 <= ((v152 - 2) >> 1));
            if (v157 == (a2 - 12))
            {
              *v157 = v154;
              v157[1] = v155;
              goto LABEL_386;
            }

            *v157 = *(a2 - 12);
            v157[1] = *(a2 - 8);
            v157[2] = *(a2 - 4);
            *(a2 - 12) = v154;
            *(a2 - 8) = v155;
            *(a2 - 4) = v156;
            v171 = v157 - j + 12;
            if (v171 < 13)
            {
              goto LABEL_387;
            }

            result = 0xAAAAAAAAAAAAAAABLL * (v171 >> 2) - 2;
            v172 = result >> 1;
            v173 = j + 12 * (result >> 1);
            v174 = *(v173 + 8);
            v156 = *(v157 + 2);
            if (v174 == v156)
            {
              v176 = *v173;
              v175 = *v157;
              if (*v173 >= *v157)
              {
                v177 = 1;
              }

              else
              {
                v177 = -1;
              }

              if (v176 == v175)
              {
                v178 = *(v173 + 4);
                v179 = v157[1];
                v180 = v178 == v179;
                v177 = v178 >= v179 ? 1 : -1;
                if (v180)
                {
                  v177 = 0;
                }
              }

              if ((v177 & 0x80) == 0)
              {
                goto LABEL_387;
              }

LABEL_369:
              v181 = v157[1];
              *v157 = v176;
              v157[1] = *(v173 + 4);
              *(v157 + 2) = v174;
              if (result >= 2)
              {
                while (1)
                {
                  result = v172 - 1;
                  v172 = (v172 - 1) >> 1;
                  v157 = (j + 12 * v172);
                  v182 = *(v157 + 2);
                  if (v182 == v156)
                  {
                    v183 = *v157;
                    if (*v157 >= v175)
                    {
                      v184 = 1;
                    }

                    else
                    {
                      v184 = -1;
                    }

                    if (v183 == v175)
                    {
                      v185 = v157[1];
                      v186 = v185 == v181;
                      v184 = v185 >= v181 ? 1 : -1;
                      if (v186)
                      {
                        v184 = 0;
                      }
                    }

                    if ((v184 & 0x80) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v182 <= v156)
                    {
                      break;
                    }

                    v183 = *v157;
                  }

                  *v173 = v183;
                  *(v173 + 4) = v157[1];
                  *(v173 + 8) = v182;
                  v173 = j + 12 * v172;
                  if (result <= 1)
                  {
                    goto LABEL_385;
                  }
                }
              }

              v157 = v173;
LABEL_385:
              *v157 = v175;
              v157[1] = v181;
LABEL_386:
              *(v157 + 2) = v156;
              goto LABEL_387;
            }

            if (v174 > v156)
            {
              v175 = *v157;
              v176 = *v173;
              goto LABEL_369;
            }

LABEL_387:
            a2 -= 12;
            v187 = v152-- <= 2;
            if (v187)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = j + 12 * (v11 >> 1);
    if (v10 < 0x601)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>((v7 + 12 * v12), v7, (a2 - 12));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(v7, (v7 + 12 * v12), (a2 - 12));
      v14 = 3 * v12;
      v15 = (v7 + 12 * v12 - 12);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>((v7 + 12), v15, (a2 - 24));
      v16 = (v7 + 12 + 4 * v14);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>((v7 + 24), v16, (a2 - 36));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(v15, v13, v16);
      v17 = *v7;
      *v7 = *v13;
      *v13 = v17;
      LODWORD(v17) = *(v7 + 8);
      *(v7 + 8) = *(v13 + 8);
      *(v13 + 8) = v17;
    }

    --a3;
    if (a4)
    {
      v18 = *v7;
      v19 = *(v7 + 8);
LABEL_19:
      v21 = 0;
      v22 = *(v7 + 4);
      while (1)
      {
        v23 = *(v7 + v21 + 20);
        if (v23 == v19)
        {
          break;
        }

        if (v23 <= v19)
        {
          goto LABEL_35;
        }

LABEL_34:
        v21 += 12;
      }

      v24 = *(v7 + v21 + 12);
      v25 = v24 == LODWORD(v18);
      if (v24 >= SLODWORD(v18))
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (v25)
      {
        v27 = *(v7 + v21 + 16);
        v28 = v27 == v22;
        v26 = v27 >= v22 ? 1 : -1;
        if (v28)
        {
          v26 = 0;
        }
      }

      if (v26 < 0)
      {
        goto LABEL_34;
      }

LABEL_35:
      v29 = v7 + v21 + 12;
      i = a2 - 12;
      if (v21)
      {
        while (1)
        {
          v31 = *(i + 8);
          if (v31 == v19)
          {
            if (*i >= SLODWORD(v18))
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

            if (*i == LODWORD(v18))
            {
              v33 = *(i + 4);
              v34 = v33 == v22;
              v32 = v33 >= v22 ? 1 : -1;
              if (v34)
              {
                v32 = 0;
              }
            }

            if (v32 < 0)
            {
              goto LABEL_71;
            }
          }

          else if (v31 > v19)
          {
            goto LABEL_71;
          }

          i -= 12;
        }
      }

      i = a2;
      if (v29 < a2)
      {
        for (i = a2 - 12; ; i -= 12)
        {
          v35 = *(i + 8);
          if (v35 == v19)
          {
            if (*i >= SLODWORD(v18))
            {
              v37 = 1;
            }

            else
            {
              v37 = -1;
            }

            if (*i == LODWORD(v18))
            {
              v38 = *(i + 4);
              v39 = v38 == v22;
              v37 = v38 >= v22 ? 1 : -1;
              if (v39)
              {
                v37 = 0;
              }
            }

            if (v37 < 0 || v29 >= i)
            {
              break;
            }
          }

          else if (v35 > v19 || v29 >= i)
          {
            break;
          }
        }
      }

LABEL_71:
      j = v29;
      if (v29 < i)
      {
        v40 = i;
        do
        {
          v41 = *j;
          *j = *v40;
          *v40 = v41;
          v42 = *(j + 4);
          *(j + 4) = v40[1];
          *(v40 + 1) = v42;
          v43 = *(j + 8);
          *(j + 8) = v40[2];
          *(v40 + 2) = v43;
          do
          {
            while (1)
            {
              j += 12;
              v44 = *(j + 8);
              if (v44 == v19)
              {
                break;
              }

              if (v44 <= v19)
              {
                goto LABEL_98;
              }
            }

            if (*j >= SLODWORD(v18))
            {
              v45 = 1;
            }

            else
            {
              v45 = -1;
            }

            if (*j == LODWORD(v18))
            {
              v46 = *(j + 4);
              v47 = v46 == v22;
              v45 = v46 >= v22 ? 1 : -1;
              if (v47)
              {
                v45 = 0;
              }
            }
          }

          while (v45 < 0);
          do
          {
LABEL_98:
            while (1)
            {
              v40 -= 3;
              v51 = v40[2];
              if (v51 == v19)
              {
                break;
              }

              if (v51 > v19)
              {
                goto LABEL_100;
              }
            }

            if (*v40 >= SLODWORD(v18))
            {
              v48 = 1;
            }

            else
            {
              v48 = -1;
            }

            if (*v40 == LODWORD(v18))
            {
              v49 = *(v40 + 1);
              v50 = v49 == v22;
              v48 = v49 >= v22 ? 1 : -1;
              if (v50)
              {
                v48 = 0;
              }
            }
          }

          while ((v48 & 0x80) == 0);
LABEL_100:
          ;
        }

        while (j < v40);
      }

      if (j - 12 != v7)
      {
        *v7 = *(j - 12);
        *(v7 + 4) = *(j - 8);
        *(v7 + 8) = *(j - 4);
      }

      *(j - 12) = v18;
      *(j - 8) = v22;
      *(j - 4) = v19;
      if (v29 < i)
      {
LABEL_106:
        result = std::__introsort<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,false>(v7, j - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v52 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*>(v7, j - 12);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*>(j, a2);
        if (result)
        {
          a2 = j - 12;
          if (v52)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v52)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v20 = *(v7 - 4);
      v19 = *(v7 + 8);
      if (v20 == v19)
      {
        v53 = *(v7 - 12);
        v18 = *v7;
        v54 = v53 == *v7;
        if (v53 >= *v7)
        {
          v55 = 1;
        }

        else
        {
          v55 = -1;
        }

        if (v54)
        {
          v56 = *(v7 - 8);
          v57 = *(v7 + 4);
          v58 = v56 == v57;
          v55 = v56 >= v57 ? 1 : -1;
          if (v58)
          {
            v55 = 0;
          }
        }

        if (v55 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = *v7;
        if (v20 > v19)
        {
          goto LABEL_19;
        }
      }

      v59 = *(v7 + 4);
      v60 = *(a2 - 4);
      if (v19 == v60)
      {
        if (SLODWORD(v18) >= *v8)
        {
          v65 = 1;
        }

        else
        {
          v65 = -1;
        }

        if (LODWORD(v18) == *v8)
        {
          v65 = v59 >= *v211 ? 1 : -1;
          if (v59 == *v211)
          {
            v65 = 0;
          }
        }

        if (v65 < 0)
        {
LABEL_120:
          for (j = v7 + 12; ; j += 12)
          {
            v61 = *(j + 8);
            if (v19 == v61)
            {
              if (SLODWORD(v18) >= *j)
              {
                v62 = 1;
              }

              else
              {
                v62 = -1;
              }

              if (LODWORD(v18) == *j)
              {
                v63 = *(j + 4);
                v64 = v59 == v63;
                v62 = v59 >= v63 ? 1 : -1;
                if (v64)
                {
                  v62 = 0;
                }
              }

              if (v62 < 0)
              {
                goto LABEL_161;
              }
            }

            else if (v19 > v61)
            {
              goto LABEL_161;
            }
          }
        }
      }

      else if (v19 > v60)
      {
        goto LABEL_120;
      }

      for (j = v7 + 12; j < a2; j += 12)
      {
        v66 = *(j + 8);
        if (v19 == v66)
        {
          if (SLODWORD(v18) >= *j)
          {
            v67 = 1;
          }

          else
          {
            v67 = -1;
          }

          if (LODWORD(v18) == *j)
          {
            v68 = *(j + 4);
            v69 = v59 == v68;
            v67 = v59 >= v68 ? 1 : -1;
            if (v69)
            {
              v67 = 0;
            }
          }

          if (v67 < 0)
          {
            break;
          }
        }

        else if (v19 > v66)
        {
          break;
        }
      }

LABEL_161:
      v70 = a2;
      if (j >= a2)
      {
        goto LABEL_206;
      }

      v71 = (a2 - 8);
      while (v19 != v60)
      {
        if (v19 <= v60)
        {
          goto LABEL_178;
        }

LABEL_177:
        v60 = *(v71 - 2);
        v71 -= 3;
      }

      v72 = *(v71 - 1);
      v73 = LODWORD(v18) == v72;
      if (SLODWORD(v18) >= v72)
      {
        v74 = 1;
      }

      else
      {
        v74 = -1;
      }

      if (v73)
      {
        v74 = v59 >= *v71 ? 1 : -1;
        if (v59 == *v71)
        {
          v74 = 0;
        }
      }

      if (v74 < 0)
      {
        goto LABEL_177;
      }

LABEL_178:
      v70 = v71 - 1;
LABEL_206:
      while (j < v70)
      {
        v75 = *j;
        *j = *v70;
        *v70 = v75;
        v76 = *(j + 4);
        *(j + 4) = v70[1];
        *(v70 + 1) = v76;
        v77 = *(j + 8);
        *(j + 8) = v70[2];
        *(v70 + 2) = v77;
        do
        {
          while (1)
          {
            j += 12;
            v78 = *(j + 8);
            if (v19 == v78)
            {
              break;
            }

            if (v19 > v78)
            {
              goto LABEL_204;
            }
          }

          if (SLODWORD(v18) >= *j)
          {
            v79 = 1;
          }

          else
          {
            v79 = -1;
          }

          if (LODWORD(v18) == *j)
          {
            v80 = *(j + 4);
            v81 = v59 == v80;
            v79 = v59 >= v80 ? 1 : -1;
            if (v81)
            {
              v79 = 0;
            }
          }
        }

        while ((v79 & 0x80) == 0);
        do
        {
LABEL_204:
          while (1)
          {
            v70 -= 3;
            v85 = v70[2];
            if (v19 == v85)
            {
              break;
            }

            if (v19 <= v85)
            {
              goto LABEL_206;
            }
          }

          if (SLODWORD(v18) >= *v70)
          {
            v82 = 1;
          }

          else
          {
            v82 = -1;
          }

          if (LODWORD(v18) == *v70)
          {
            v83 = *(v70 + 1);
            v84 = v59 == v83;
            v82 = v59 >= v83 ? 1 : -1;
            if (v84)
            {
              v82 = 0;
            }
          }
        }

        while (v82 < 0);
      }

      if (j - 12 != v7)
      {
        *v7 = *(j - 12);
        *(v7 + 4) = *(j - 8);
        *(v7 + 8) = *(j - 4);
      }

      a4 = 0;
      *(j - 12) = v18;
      *(j - 8) = v59;
      *(j - 4) = v19;
    }
  }

  v90 = (j + 12);
  v92 = j == a2 || v90 == a2;
  if ((a4 & 1) == 0)
  {
    if (v92)
    {
      return result;
    }

    for (k = j + 4; ; k += 12)
    {
      v189 = v7;
      v7 = v90;
      v190 = *(v189 + 20);
      v191 = *(v189 + 8);
      if (v190 == v191)
      {
        break;
      }

      if (v190 > v191)
      {
        v192 = *v90;
LABEL_406:
        v198 = *(v189 + 16);
        for (m = k; ; m -= 12)
        {
          v200 = *m;
          *(m + 8) = *(m - 4);
          *(m + 12) = v200;
          *(m + 16) = v191;
          v191 = *(m - 8);
          if (v190 == v191)
          {
            v201 = *(m - 16);
            v202 = v192 == v201;
            if (v192 >= v201)
            {
              v203 = 1;
            }

            else
            {
              v203 = -1;
            }

            if (v202)
            {
              v204 = *(m - 12);
              v205 = v198 == v204;
              v203 = v198 >= v204 ? 1 : -1;
              if (v205)
              {
                v203 = 0;
              }
            }

            if ((v203 & 0x80) == 0)
            {
LABEL_422:
              *(m - 4) = v192;
              *m = v198;
              *(m + 4) = v190;
              break;
            }
          }

          else if (v190 <= v191)
          {
            goto LABEL_422;
          }
        }
      }

LABEL_423:
      v90 = (v7 + 12);
      if (v7 + 12 == a2)
      {
        return result;
      }
    }

    v192 = *v90;
    v193 = *v90 == *v189;
    if (*v90 >= *v189)
    {
      v194 = 1;
    }

    else
    {
      v194 = -1;
    }

    if (v193)
    {
      v195 = *(v189 + 16);
      v196 = *(v189 + 4);
      v197 = v195 == v196;
      v194 = v195 >= v196 ? 1 : -1;
      if (v197)
      {
        v194 = 0;
      }
    }

    if ((v194 & 0x80) == 0)
    {
      goto LABEL_423;
    }

    goto LABEL_406;
  }

  if (v92)
  {
    return result;
  }

  v93 = 0;
  v94 = j;
  while (2)
  {
    v95 = v94;
    v94 = v90;
    v96 = v95[5];
    v97 = v95[2];
    if (v96 == v97)
    {
      v98 = *v90;
      v99 = *v95;
      if (v98 >= *v95)
      {
        v100 = 1;
      }

      else
      {
        v100 = -1;
      }

      if (v98 == v99)
      {
        v101 = *(v95 + 4);
        v102 = *(v95 + 1);
        v103 = v101 == v102;
        v100 = v101 >= v102 ? 1 : -1;
        if (v103)
        {
          v100 = 0;
        }
      }

      if ((v100 & 0x80) == 0)
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (v96 <= v97)
      {
        goto LABEL_266;
      }

      v98 = *v90;
      v99 = *v95;
    }

    v104 = *(v95 + 4);
    *(v95 + 3) = v99;
    v94[1] = *(v95 + 1);
    *(v94 + 2) = v97;
    v105 = j;
    if (v95 == j)
    {
      goto LABEL_265;
    }

    v106 = v93;
    while (2)
    {
      v107 = j + v106;
      v108 = *(j + v106 - 4);
      if (v96 != v108)
      {
        if (v96 <= v108)
        {
          v105 = j + v106;
          goto LABEL_265;
        }

        v109 = *(v107 - 12);
        goto LABEL_261;
      }

      v109 = *(v107 - 12);
      if (v98 >= v109)
      {
        v110 = 1;
      }

      else
      {
        v110 = -1;
      }

      if (v98 == v109)
      {
        v111 = *(j + v106 - 8);
        v112 = v104 == v111;
        v110 = v104 >= v111 ? 1 : -1;
        if (v112)
        {
          v110 = 0;
        }
      }

      if (v110 < 0)
      {
LABEL_261:
        v113 = j + v106;
        v114 = *(j + v106 - 8);
        v95 -= 3;
        *v113 = v109;
        *(v113 + 4) = v114;
        *(v113 + 8) = v108;
        v106 -= 12;
        if (!v106)
        {
          v105 = j;
          goto LABEL_265;
        }

        continue;
      }

      break;
    }

    v105 = v95;
LABEL_265:
    *v105 = v98;
    *(v105 + 4) = v104;
    *(v105 + 8) = v96;
LABEL_266:
    v90 = v94 + 3;
    v93 += 12;
    if (v94 + 3 != a2)
    {
      continue;
    }

    return result;
  }
}

float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(float *result, float *a2, float *a3)
{
  v3 = a2[2];
  v4 = result[2];
  if (v3 == v4)
  {
    if (*a2 >= *result)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (*a2 == *result)
    {
      v8 = *(a2 + 1);
      v9 = *(result + 1);
      v10 = v8 == v9;
      v11 = v8 < v9;
      v7 = -1;
      if (!v11)
      {
        v7 = 1;
      }

      if (v10)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = a3[2];
    if (v12 == v3)
    {
      v14 = *a3;
      v13 = *a2;
      v22 = -1;
      if (*a3 >= *a2)
      {
        v22 = 1;
      }

      if (LODWORD(v14) == LODWORD(v13))
      {
        v23 = *(a3 + 1);
        v24 = *(a2 + 1);
        v25 = v23 == v24;
        v11 = v23 < v24;
        v22 = -1;
        if (!v11)
        {
          v22 = 1;
        }

        if (v25)
        {
          v22 = 0;
        }
      }

      if ((v22 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v12 <= v3)
      {
        return result;
      }

      v13 = *a2;
      v14 = *a3;
    }

    *a2 = v14;
    *a3 = v13;
    v26 = *(a2 + 1);
    a2[1] = a3[1];
    *(a3 + 1) = v26;
    a2[2] = v12;
    a3[2] = v3;
    v27 = a2[2];
    v28 = result[2];
    if (v27 == v28)
    {
      v30 = *a2;
      v29 = *result;
      v36 = -1;
      if (*a2 >= *result)
      {
        v36 = 1;
      }

      if (LODWORD(v30) == LODWORD(v29))
      {
        v37 = *(a2 + 1);
        v38 = *(result + 1);
        v39 = v37 == v38;
        v11 = v37 < v38;
        v36 = -1;
        if (!v11)
        {
          v36 = 1;
        }

        if (v39)
        {
          v36 = 0;
        }
      }

      if ((v36 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        return result;
      }

      v29 = *result;
      v30 = *a2;
    }

    *result = v30;
    *a2 = v29;
    v40 = *(result + 1);
    result[1] = a2[1];
    *(a2 + 1) = v40;
    result[2] = v27;
    a2[2] = v28;
    return result;
  }

  if (v3 <= v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = a3[2];
  if (v5 == v3)
  {
    v6 = *a3;
    v15 = *a2;
    v16 = -1;
    if (*a3 >= *a2)
    {
      v16 = 1;
    }

    if (LODWORD(v6) == LODWORD(v15))
    {
      v17 = *(a3 + 1);
      v18 = *(a2 + 1);
      v19 = v17 == v18;
      v11 = v17 < v18;
      v16 = -1;
      if (!v11)
      {
        v16 = 1;
      }

      if (v19)
      {
        v16 = 0;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v5 > v3)
    {
      v6 = *a3;
LABEL_26:
      v20 = *result;
      *result = v6;
      *a3 = v20;
      v21 = *(result + 1);
      result[1] = a3[1];
      *(a3 + 1) = v21;
      result[2] = v5;
LABEL_61:
      a3[2] = v4;
      return result;
    }

    v15 = *a2;
  }

  v31 = *result;
  *result = v15;
  *a2 = v31;
  v32 = *(result + 1);
  result[1] = a2[1];
  *(a2 + 1) = v32;
  result[2] = v3;
  a2[2] = v4;
  v33 = a3[2];
  if (v33 != v4)
  {
    if (v33 <= v4)
    {
      return result;
    }

    v34 = *a2;
    v35 = *a3;
    goto LABEL_60;
  }

  v35 = *a3;
  v34 = *a2;
  v41 = -1;
  if (*a3 >= *a2)
  {
    v41 = 1;
  }

  if (LODWORD(v35) == LODWORD(v34))
  {
    v42 = *(a3 + 1);
    v43 = v42 == v32;
    v11 = v42 < v32;
    v44 = -1;
    if (!v11)
    {
      v44 = 1;
    }

    if (v43)
    {
      v41 = 0;
    }

    else
    {
      v41 = v44;
    }
  }

  if (v41 < 0)
  {
LABEL_60:
    *a2 = v35;
    *a3 = v34;
    v45 = *(a2 + 1);
    a2[1] = a3[1];
    *(a3 + 1) = v45;
    a2[2] = v33;
    goto LABEL_61;
  }

  return result;
}

float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, a2, a3);
  v9 = *(a4 + 8);
  v10 = *(a3 + 8);
  if (v9 == v10)
  {
    v12 = *a4;
    v11 = *a3;
    v13 = -1;
    if (*a4 >= *a3)
    {
      v13 = 1;
    }

    if (LODWORD(v12) == LODWORD(v11))
    {
      v14 = *(a4 + 4);
      v15 = *(a3 + 4);
      v16 = v14 == v15;
      v17 = v14 < v15;
      v13 = -1;
      if (!v17)
      {
        v13 = 1;
      }

      if (v16)
      {
        v13 = 0;
      }
    }

    if ((v13 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v9 <= v10)
    {
      return result;
    }

    v11 = *a3;
    v12 = *a4;
  }

  *a3 = v12;
  *a4 = v11;
  v18 = *(a3 + 4);
  *(a3 + 4) = *(a4 + 4);
  *(a4 + 4) = v18;
  *(a3 + 8) = v9;
  *(a4 + 8) = v10;
  v19 = *(a3 + 8);
  v20 = *(a2 + 8);
  if (v19 == v20)
  {
    v22 = *a3;
    v21 = *a2;
    v23 = -1;
    if (*a3 >= *a2)
    {
      v23 = 1;
    }

    if (LODWORD(v22) == LODWORD(v21))
    {
      v24 = *(a3 + 4);
      v25 = *(a2 + 4);
      v26 = v24 == v25;
      v17 = v24 < v25;
      v23 = -1;
      if (!v17)
      {
        v23 = 1;
      }

      if (v26)
      {
        v23 = 0;
      }
    }

    if ((v23 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v19 <= v20)
    {
      return result;
    }

    v21 = *a2;
    v22 = *a3;
  }

  *a2 = v22;
  *a3 = v21;
  v27 = *(a2 + 4);
  *(a2 + 4) = *(a3 + 4);
  *(a3 + 4) = v27;
  *(a2 + 8) = v19;
  *(a3 + 8) = v20;
  v28 = *(a2 + 8);
  v29 = *(a1 + 8);
  if (v28 != v29)
  {
    if (v28 <= v29)
    {
      return result;
    }

    v30 = *a1;
    v31 = *a2;
    goto LABEL_34;
  }

  v31 = *a2;
  v30 = *a1;
  v32 = -1;
  if (*a2 >= *a1)
  {
    v32 = 1;
  }

  if (LODWORD(v31) == LODWORD(v30))
  {
    v33 = *(a2 + 4);
    v34 = *(a1 + 4);
    v35 = v33 == v34;
    v17 = v33 < v34;
    v32 = -1;
    if (!v17)
    {
      v32 = 1;
    }

    if (v35)
    {
      v32 = 0;
    }
  }

  if (v32 < 0)
  {
LABEL_34:
    *a1 = v31;
    *a2 = v30;
    v36 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v36;
    *(a1 + 8) = v28;
    *(a2 + 8) = v29;
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, a2, a3, a4);
  v11 = a5[2];
  v12 = *(a4 + 8);
  if (v11 == v12)
  {
    v14 = *a5;
    v13 = *a4;
    v15 = -1;
    if (*a5 >= *a4)
    {
      v15 = 1;
    }

    if (LODWORD(v14) == v13)
    {
      v16 = *(a5 + 1);
      v17 = *(a4 + 4);
      v18 = v16 == v17;
      v19 = v16 < v17;
      v15 = -1;
      if (!v19)
      {
        v15 = 1;
      }

      if (v18)
      {
        v15 = 0;
      }
    }

    if ((v15 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v11 <= v12)
    {
      return result;
    }

    v13 = *a4;
    v14 = *a5;
  }

  *a4 = v14;
  *a5 = v13;
  v20 = *(a4 + 4);
  *(a4 + 4) = a5[1];
  *(a5 + 1) = v20;
  *(a4 + 8) = v11;
  a5[2] = v12;
  v21 = *(a4 + 8);
  v22 = *(a3 + 8);
  if (v21 == v22)
  {
    v24 = *a4;
    v23 = *a3;
    v25 = -1;
    if (*a4 >= *a3)
    {
      v25 = 1;
    }

    if (v24 == v23)
    {
      v26 = *(a4 + 4);
      v27 = *(a3 + 4);
      v28 = v26 == v27;
      v19 = v26 < v27;
      v25 = -1;
      if (!v19)
      {
        v25 = 1;
      }

      if (v28)
      {
        v25 = 0;
      }
    }

    if ((v25 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v21 <= v22)
    {
      return result;
    }

    v23 = *a3;
    v24 = *a4;
  }

  *a3 = v24;
  *a4 = v23;
  v29 = *(a3 + 4);
  *(a3 + 4) = *(a4 + 4);
  *(a4 + 4) = v29;
  *(a3 + 8) = v21;
  *(a4 + 8) = v22;
  v30 = *(a3 + 8);
  v31 = *(a2 + 8);
  if (v30 == v31)
  {
    v33 = *a3;
    v32 = *a2;
    v34 = -1;
    if (*a3 >= *a2)
    {
      v34 = 1;
    }

    if (v33 == v32)
    {
      v35 = *(a3 + 4);
      v36 = *(a2 + 4);
      v37 = v35 == v36;
      v19 = v35 < v36;
      v34 = -1;
      if (!v19)
      {
        v34 = 1;
      }

      if (v37)
      {
        v34 = 0;
      }
    }

    if ((v34 & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    if (v30 <= v31)
    {
      return result;
    }

    v32 = *a2;
    v33 = *a3;
  }

  *a2 = v33;
  *a3 = v32;
  v38 = *(a2 + 4);
  *(a2 + 4) = *(a3 + 4);
  *(a3 + 4) = v38;
  *(a2 + 8) = v30;
  *(a3 + 8) = v31;
  v39 = *(a2 + 8);
  v40 = *(a1 + 8);
  if (v39 != v40)
  {
    if (v39 <= v40)
    {
      return result;
    }

    v41 = *a1;
    v42 = *a2;
    goto LABEL_45;
  }

  v42 = *a2;
  v41 = *a1;
  v43 = -1;
  if (*a2 >= *a1)
  {
    v43 = 1;
  }

  if (v42 == v41)
  {
    v44 = *(a2 + 4);
    v45 = *(a1 + 4);
    v46 = v44 == v45;
    v19 = v44 < v45;
    v43 = -1;
    if (!v19)
    {
      v43 = 1;
    }

    if (v46)
    {
      v43 = 0;
    }
  }

  if (v43 < 0)
  {
LABEL_45:
    *a1 = v42;
    *a2 = v41;
    v47 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v47;
    *(a1 + 8) = v39;
    *(a2 + 8) = v40;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, (a1 + 12), (a2 - 12));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, a1 + 12, a1 + 24, a2 - 12);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, a1 + 12, a1 + 24, a1 + 36, (a2 - 12));
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
      v5 = *(a2 - 4);
      v6 = *(a1 + 8);
      if (v5 == v6)
      {
        v8 = *(a2 - 12);
        v7 = *a1;
        v31 = -1;
        if (v8 >= *a1)
        {
          v31 = 1;
        }

        if (v8 == LODWORD(v7))
        {
          v32 = *(a2 - 8);
          v33 = *(a1 + 4);
          v34 = v32 == v33;
          v35 = v32 < v33;
          v31 = -1;
          if (!v35)
          {
            v31 = 1;
          }

          if (v34)
          {
            v31 = 0;
          }
        }

        if ((v31 & 0x80) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v5 <= v6)
        {
          return 1;
        }

        v7 = *a1;
        v8 = *(a2 - 12);
      }

      *a1 = v8;
      *(a2 - 12) = v7;
      v36 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v36;
      *(a1 + 8) = v5;
      *(a2 - 4) = v6;
      return 1;
    }
  }

  v9 = a1 + 24;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIResultStatus copyBoundingBoxList<float>(float const*,float const*,float const*,float const*,NSMutableArray<SIPersonDetectorBoundingBox *> *,unsigned long,unsigned long)::{lambda(std::pair<std::pair<int,int>,float> const&,std::pair<std::pair<int,int>,float> const&)#1} &,std::pair<std::pair<int,int>,float>*,0>(a1, (a1 + 12), (a1 + 24));
  v10 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *(v10 + 8);
    v14 = *(v9 + 8);
    if (v13 == v14)
    {
      v15 = *v10;
      v16 = *v9;
      if (*v10 >= *v9)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      if (v15 == v16)
      {
        v18 = *(v10 + 4);
        v19 = *(v9 + 4);
        v20 = v18 == v19;
        v17 = v18 >= v19 ? 1 : -1;
        if (v20)
        {
          v17 = 0;
        }
      }

      if ((v17 & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        goto LABEL_45;
      }

      v15 = *v10;
      v16 = *v9;
    }

    v21 = *(v10 + 4);
    *v10 = v16;
    *(v10 + 4) = *(v9 + 4);
    *(v10 + 8) = v14;
    v22 = v11;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 20);
      if (v13 == v24)
      {
        break;
      }

      if (v13 <= v24)
      {
        goto LABEL_43;
      }

      v25 = *(v23 + 12);
LABEL_41:
      *(v23 + 24) = v25;
      v29 = a1 + v22;
      *(v29 + 28) = *(a1 + v22 + 16);
      *(v29 + 32) = v24;
      v22 -= 12;
      if (v22 == -24)
      {
        v30 = a1;
        goto LABEL_44;
      }
    }

    v25 = *(v23 + 12);
    if (v15 >= v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v15 == v25)
    {
      v27 = *(a1 + v22 + 16);
      v28 = v21 == v27;
      v26 = v21 >= v27 ? 1 : -1;
      if (v28)
      {
        v26 = 0;
      }
    }

    if (v26 < 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    v30 = a1 + v22 + 24;
LABEL_44:
    *v30 = v15;
    *(v30 + 4) = v21;
    *(v30 + 8) = v13;
    if (++v12 != 8)
    {
LABEL_45:
      v9 = v10;
      v11 += 12;
      v10 += 12;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 12 == a2;
  }
}

void std::vector<std::pair<std::pair<int,int>,float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<int,int>,float>>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t scale_task()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = ps_task_context_get_userdata();
  resource = ps_resource_array_get_resource();
  if ((MEMORY[0x223D4CF20](resource, 0) & 1) == 0)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v11 = 136380931;
    v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIScaleTask.m";
    v13 = 1025;
    v14 = 161;
    v8 = " %{private}s:%{private}d *** scale_task: invalid input resource received ***";
LABEL_14:
    _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, v8, &v11, 0x12u);
    goto LABEL_15;
  }

  pixelbuffer = ps_resource_get_pixelbuffer();
  v3 = ps_resource_array_get_resource();
  v4 = ps_resource_get_class();
  if (v4 == 3)
  {
    opaque_ptr = ps_resource_get_opaque_ptr();
    if (opaque_ptr)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v4 != 7 || (opaque_ptr = ps_resource_get_pixelbuffer(), SICopyMetadataFromExistingPolarisPixelBufferResource(resource, v3), !opaque_ptr))
  {
LABEL_10:
    v7 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v11 = 136380931;
    v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIScaleTask.m";
    v13 = 1025;
    v14 = 177;
    v8 = " %{private}s:%{private}d *** Failed to get the output bufferk. ***";
    goto LABEL_14;
  }

LABEL_5:
  if (([v0 scaleImage:pixelbuffer outputBuffer:opaque_ptr] & 1) == 0)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136380931;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIScaleTask.m";
      v13 = 1025;
      v14 = 185;
      v8 = " %{private}s:%{private}d *** Failed to scale the image in scaling task. ***";
      goto LABEL_14;
    }

LABEL_15:

    v6 = 1;
    goto LABEL_16;
  }

  ps_resource_get_timestamp_seconds();
  ps_resource_set_timestamp_seconds();
  v6 = 0;
LABEL_16:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id camera_resource_buffer_allocator(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v18 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:2];
  [v18 setCount:a2];
  if (a2)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v6 = v3;
      v7 = [v6 height];
      v8 = [v6 width];
      v9 = [v6 pixelFormat];
      v10 = [v6 cvPixelBufferProps];

      pixelBufferOut = 0;
      v11 = CVPixelBufferCreate(v5, v8, v7, v9, v10, &pixelBufferOut);
      if (v11)
      {
        break;
      }

      v15 = pixelBufferOut;

      if (!v15)
      {
        goto LABEL_7;
      }

      [v18 replacePointerAtIndex:v4 withPointer:v15];
LABEL_12:
      if (a2 == ++v4)
      {
        goto LABEL_13;
      }
    }

    v12 = v11;
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136381187;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIScaleTask.m";
      v22 = 1025;
      v23 = 206;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Failed to create CVPixelBuffer for resource with error code %d ***", buf, 0x18u);
    }

LABEL_7:
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136380931;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIScaleTask.m";
      v22 = 1025;
      v23 = 221;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Failed to create cv pixel buffer! ***", buf, 0x12u);
    }

    goto LABEL_12;
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t si::BufferTiling::CropTile<unsigned char>(uint64_t a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 162;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::CropTile<unsigned char>(a2, buf, &v20, a4, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::CropTile<unsigned char>(void *a1, size_t *a2, __int128 *a3, uint64_t *a4, __int128 *a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2[2];
  v6 = a5[1];
  if (v5 != *(a5 + 2))
  {
    v27 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v59 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v60 = 1025;
      v61 = 27;
      v28 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v29 = v27;
      v30 = 18;
LABEL_24:
      _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = *a2;
  v56 = *a2 * v10;
  if (a1[1] != v56 * v5)
  {
    v27 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v31 = a1[1];
    v32 = *a2;
    v33 = a2[2];
    *buf = 136381955;
    v59 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v60 = 1025;
    v61 = 31;
    v62 = 2048;
    v63 = v31;
    v64 = 2048;
    v65 = v32;
    v66 = 2048;
    v67 = *(&v32 + 1);
    v68 = 2048;
    v69 = v33;
    v28 = " %{private}s:%{private}d *** Number of sourceBuffer elements (%lu) must match sourceSize (%lu, %lu, %lu) ***";
LABEL_23:
    v29 = v27;
    v30 = 58;
    goto LABEL_24;
  }

  v13 = a4;
  v14 = *a5;
  v15 = *(a5 + 1);
  v16 = *a5;
  v57 = *a5 * v15;
  if (a4[1] != v57 * v5)
  {
    v27 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v34 = v13[1];
    v35 = *a5;
    v36 = *(a5 + 2);
    *buf = 136381955;
    v59 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v60 = 1025;
    v61 = 35;
    v62 = 2048;
    v63 = v34;
    v64 = 2048;
    v65 = v35;
    v66 = 2048;
    v67 = *(&v35 + 1);
    v68 = 2048;
    v69 = v36;
    v28 = " %{private}s:%{private}d *** Number of targetTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_23;
  }

  v17 = *a3;
  v18 = *(a3 + 1);
  v19 = *a3;
  if (v11 < *a3 || (v50 = v10 - v18, v10 < v18))
  {
    v27 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      v59 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v60 = 1025;
      v61 = 51;
      v62 = 2048;
      v63 = v19;
      v64 = 2048;
      v65 = v18;
      v66 = 2048;
      v67 = v11;
      v68 = 2048;
      v69 = v10;
      v28 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for source buffer (%lu, %lu) ***";
      goto LABEL_23;
    }

LABEL_25:

    result = 0;
    goto LABEL_26;
  }

  v54 = a2[2];
  if (v19 + v16 <= v11 && v18 + v15 <= v10)
  {
    if (v5)
    {
      v20 = 0;
      v21 = 0;
      v22 = v19 + v18 * v11;
      do
      {
        if (v15)
        {
          v23 = (*a1 + v22);
          v24 = (*v13 + v20);
          v25 = v15;
          do
          {
            memcpy(v24, v23, v16);
            v23 += v11;
            v24 += v16;
            --v25;
          }

          while (v25);
        }

        ++v21;
        v22 += v56;
        v20 += v57;
        result = 1;
      }

      while (v21 != v54);
      goto LABEL_26;
    }

LABEL_42:
    result = 1;
    goto LABEL_26;
  }

  if (v11 - *a3 >= v16)
  {
    v38 = *a5;
  }

  else
  {
    v38 = v11 - *a3;
  }

  if (v50 >= v15)
  {
    v39 = *(a5 + 1);
  }

  else
  {
    v39 = v10 - v18;
  }

  if (!v5)
  {
    goto LABEL_42;
  }

  v53 = v39;
  v40 = 0;
  v41 = 0;
  v47 = v16 * v39;
  v48 = *(a5 + 1);
  v46 = v16 * (v15 - v39);
  v42 = v19 + v18 * v11;
  do
  {
    v55 = *v13;
    if (v39)
    {
      v43 = v53;
      v44 = (*a1 + v42);
      v45 = (v55 + v40);
      do
      {
        memcpy(v45, v44, v38);
        bzero(&v45[v38], v16 - v38);
        v44 += v11;
        v45 += v16;
        --v43;
      }

      while (v43);
    }

    if (v50 < v48)
    {
      bzero((v55 + v47 + v57 * v41), v46);
    }

    ++v41;
    v42 += v56;
    v40 += v57;
    result = 1;
    v39 = v53;
    v13 = a4;
  }

  while (v41 != v54);
LABEL_26:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::BufferTiling::CropTile<float>(uint64_t a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 162;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::CropTile<float>(a2, buf, &v20, a4, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::CropTile<float>(void *a1, __int128 *a2, __int128 *a3, uint64_t *a4, __int128 *a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  v6 = a5[1];
  if (v5 != *(a5 + 2))
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v71 = 1025;
      v72 = 27;
      v34 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v35 = v33;
      v36 = 18;
LABEL_24:
      _os_log_impl(&dword_21DE0D000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *a2;
  v12 = *a2 * v10;
  if (a1[1] != v12 * v5)
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v37 = a1[1];
    v38 = *a2;
    v39 = *(a2 + 2);
    *buf = 136381955;
    v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v71 = 1025;
    v72 = 31;
    v73 = 2048;
    v74 = v37;
    v75 = 2048;
    v76 = v38;
    v77 = 2048;
    v78 = *(&v38 + 1);
    v79 = 2048;
    v80 = v39;
    v34 = " %{private}s:%{private}d *** Number of sourceBuffer elements (%lu) must match sourceSize (%lu, %lu, %lu) ***";
LABEL_23:
    v35 = v33;
    v36 = 58;
    goto LABEL_24;
  }

  v15 = *a5;
  v16 = *(a5 + 1);
  v17 = *a5;
  v18 = *a5 * v16;
  if (a4[1] != v18 * v5)
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v40 = a4[1];
    v41 = *a5;
    v42 = *(a5 + 2);
    *buf = 136381955;
    v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v71 = 1025;
    v72 = 35;
    v73 = 2048;
    v74 = v40;
    v75 = 2048;
    v76 = v41;
    v77 = 2048;
    v78 = *(&v41 + 1);
    v79 = 2048;
    v80 = v42;
    v34 = " %{private}s:%{private}d *** Number of targetTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_23;
  }

  v19 = *a3;
  v20 = *(a3 + 1);
  v21 = *a3;
  v22 = v11 - *a3;
  if (v11 < *a3 || (v59 = v10 - v20, v10 < v20))
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v71 = 1025;
      v72 = 51;
      v73 = 2048;
      v74 = v21;
      v75 = 2048;
      v76 = v20;
      v77 = 2048;
      v78 = v11;
      v79 = 2048;
      v80 = v10;
      v34 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for source buffer (%lu, %lu) ***";
      goto LABEL_23;
    }

LABEL_25:

    result = 0;
    goto LABEL_26;
  }

  v66 = *(a2 + 2);
  if (v21 + v17 <= v11 && v20 + v16 <= v10)
  {
    if (v5)
    {
      v23 = 0;
      v24 = 0;
      v25 = 4 * v17;
      v26 = 4 * v20 * v11 + 4 * v21;
      v67 = 4 * v12;
      v27 = 4 * v11;
      v28 = 4 * v18;
      do
      {
        if (v16)
        {
          v29 = (*a1 + v26);
          v30 = (*a4 + v23);
          v31 = v16;
          do
          {
            memcpy(v30, v29, v25);
            v29 += v27;
            v30 += v25;
            --v31;
          }

          while (v31);
        }

        ++v24;
        v26 += v67;
        v23 += v28;
        result = 1;
      }

      while (v24 != v66);
      goto LABEL_26;
    }

LABEL_41:
    result = 1;
    goto LABEL_26;
  }

  if (v22 >= v17)
  {
    v22 = *a5;
  }

  if (v59 >= v16)
  {
    v44 = *(a5 + 1);
  }

  else
  {
    v44 = v10 - v20;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  v45 = 0;
  v46 = 0;
  v47 = 4 * v22;
  v48 = 4 * (v17 - v22);
  v62 = 4 * v18;
  v49 = 4 * v20 * v11 + 4 * v21;
  v55 = 4 * v17 * (v16 - v44);
  v56 = 4 * v17 * v44;
  v57 = 4 * v12;
  v58 = *(a5 + 1);
  v50 = 4 * v11;
  v51 = 4 * v17;
  v63 = v44;
  do
  {
    v68 = *a4;
    if (v44)
    {
      v52 = (*a1 + v49);
      v53 = (v68 + v45);
      v54 = v63;
      do
      {
        memcpy(v53, v52, v47);
        bzero(&v53[v47], v48);
        v52 += v50;
        v53 += v51;
        --v54;
      }

      while (v54);
    }

    if (v59 < v58)
    {
      bzero((v68 + v56 + v62 * v46), v55);
    }

    ++v46;
    v49 += v57;
    v44 = v63;
    v45 += v62;
    result = 1;
  }

  while (v46 != v66);
LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::BufferTiling::CropTile<half>(uint64_t a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 162;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::CropTile<half>(a2, buf, &v20, a4, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::CropTile<half>(void *a1, __int128 *a2, __int128 *a3, uint64_t *a4, __int128 *a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  v6 = a5[1];
  if (v5 != *(a5 + 2))
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v71 = 1025;
      v72 = 27;
      v34 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v35 = v33;
      v36 = 18;
LABEL_24:
      _os_log_impl(&dword_21DE0D000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *a2;
  v12 = *a2 * v10;
  if (a1[1] != v12 * v5)
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v37 = a1[1];
    v38 = *a2;
    v39 = *(a2 + 2);
    *buf = 136381955;
    v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v71 = 1025;
    v72 = 31;
    v73 = 2048;
    v74 = v37;
    v75 = 2048;
    v76 = v38;
    v77 = 2048;
    v78 = *(&v38 + 1);
    v79 = 2048;
    v80 = v39;
    v34 = " %{private}s:%{private}d *** Number of sourceBuffer elements (%lu) must match sourceSize (%lu, %lu, %lu) ***";
LABEL_23:
    v35 = v33;
    v36 = 58;
    goto LABEL_24;
  }

  v15 = *a5;
  v16 = *(a5 + 1);
  v17 = *a5;
  v18 = *a5 * v16;
  if (a4[1] != v18 * v5)
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v40 = a4[1];
    v41 = *a5;
    v42 = *(a5 + 2);
    *buf = 136381955;
    v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v71 = 1025;
    v72 = 35;
    v73 = 2048;
    v74 = v40;
    v75 = 2048;
    v76 = v41;
    v77 = 2048;
    v78 = *(&v41 + 1);
    v79 = 2048;
    v80 = v42;
    v34 = " %{private}s:%{private}d *** Number of targetTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_23;
  }

  v19 = *a3;
  v20 = *(a3 + 1);
  v21 = *a3;
  v22 = v11 - *a3;
  if (v11 < *a3 || (v59 = v10 - v20, v10 < v20))
  {
    v33 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v71 = 1025;
      v72 = 51;
      v73 = 2048;
      v74 = v21;
      v75 = 2048;
      v76 = v20;
      v77 = 2048;
      v78 = v11;
      v79 = 2048;
      v80 = v10;
      v34 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for source buffer (%lu, %lu) ***";
      goto LABEL_23;
    }

LABEL_25:

    result = 0;
    goto LABEL_26;
  }

  v66 = *(a2 + 2);
  if (v21 + v17 <= v11 && v20 + v16 <= v10)
  {
    if (v5)
    {
      v23 = 0;
      v24 = 0;
      v25 = 2 * v17;
      v26 = 2 * v20 * v11 + 2 * v21;
      v67 = 2 * v12;
      v27 = 2 * v11;
      v28 = 2 * v18;
      do
      {
        if (v16)
        {
          v29 = (*a1 + v26);
          v30 = (*a4 + v23);
          v31 = v16;
          do
          {
            memcpy(v30, v29, v25);
            v29 += v27;
            v30 += v25;
            --v31;
          }

          while (v31);
        }

        ++v24;
        v26 += v67;
        v23 += v28;
        result = 1;
      }

      while (v24 != v66);
      goto LABEL_26;
    }

LABEL_41:
    result = 1;
    goto LABEL_26;
  }

  if (v22 >= v17)
  {
    v22 = *a5;
  }

  if (v59 >= v16)
  {
    v44 = *(a5 + 1);
  }

  else
  {
    v44 = v10 - v20;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  v45 = 0;
  v46 = 0;
  v47 = 2 * v22;
  v48 = 2 * (v17 - v22);
  v62 = 2 * v18;
  v49 = 2 * v20 * v11 + 2 * v21;
  v55 = 2 * v17 * (v16 - v44);
  v56 = 2 * v17 * v44;
  v57 = 2 * v12;
  v58 = *(a5 + 1);
  v50 = 2 * v11;
  v51 = 2 * v17;
  v63 = v44;
  do
  {
    v68 = *a4;
    if (v44)
    {
      v52 = (*a1 + v49);
      v53 = (v68 + v45);
      v54 = v63;
      do
      {
        memcpy(v53, v52, v47);
        bzero(&v53[v47], v48);
        v52 += v50;
        v53 += v51;
        --v54;
      }

      while (v54);
    }

    if (v59 < v58)
    {
      bzero((v68 + v56 + v62 * v46), v55);
    }

    ++v46;
    v49 += v57;
    v44 = v63;
    v45 += v62;
    result = 1;
  }

  while (v46 != v66);
LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::BufferTiling::AddTile<unsigned char>(uint64_t a1, void *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 181;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *a1;
    *buf = *(a1 + 16);
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::AddTile<unsigned char>(a2, buf, a4, v19, &v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::AddTile<unsigned char>(void *a1, __int128 *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  v6 = a4[1];
  if (v5 != *(a4 + 2))
  {
    v34 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v45 = 136380931;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v47 = 1025;
      v48 = 92;
      v35 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v36 = v34;
      v37 = 18;
LABEL_28:
      _os_log_impl(&dword_21DE0D000, v36, OS_LOG_TYPE_ERROR, v35, &v45, v37);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *a2;
  v12 = *a2 * v10;
  if (a1[1] != v12 * v5)
  {
    v34 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v38 = a1[1];
    v39 = *a2;
    v40 = *(a2 + 2);
    v45 = 136381955;
    v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v47 = 1025;
    v48 = 96;
    v49 = 2048;
    v50 = v38;
    v51 = 2048;
    v52 = v39;
    v53 = 2048;
    v54 = *(&v39 + 1);
    v55 = 2048;
    v56 = v40;
    v35 = " %{private}s:%{private}d *** Number of sourceTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
LABEL_27:
    v36 = v34;
    v37 = 58;
    goto LABEL_28;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *a4;
  v18 = *a4 * v16;
  if (a3[1] != v18 * v5)
  {
    v34 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v41 = a3[1];
    v42 = *a4;
    v43 = *(a4 + 2);
    v45 = 136381955;
    v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v47 = 1025;
    v48 = 100;
    v49 = 2048;
    v50 = v41;
    v51 = 2048;
    v52 = v42;
    v53 = 2048;
    v54 = *(&v42 + 1);
    v55 = 2048;
    v56 = v43;
    v35 = " %{private}s:%{private}d *** Number of sumBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_27;
  }

  v19 = *a5;
  v20 = *(a5 + 1);
  v21 = *a5;
  v22 = v17 - *a5;
  if (v17 < *a5 || v16 < v20)
  {
    v34 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v45 = 136381955;
      v46 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v47 = 1025;
      v48 = 116;
      v49 = 2048;
      v50 = v21;
      v51 = 2048;
      v52 = v20;
      v53 = 2048;
      v54 = v17;
      v55 = 2048;
      v56 = v16;
      v35 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for target buffer (%lu, %lu) ***";
      goto LABEL_27;
    }

LABEL_29:

    result = 0;
    goto LABEL_30;
  }

  if (v22 >= v11)
  {
    v22 = *a2;
  }

  if (v16 - v20 < v10)
  {
    v10 = v16 - v20;
  }

  if (v5)
  {
    v23 = 0;
    v24 = 0;
    v25 = v21 + v20 * v17;
    do
    {
      if (v10)
      {
        v26 = 0;
        v27 = (*a3 + v25);
        v28 = (*a1 + v23);
        do
        {
          v29 = v22;
          v30 = v28;
          for (i = v27; v29; --v29)
          {
            v32 = *v30++;
            *i++ += v32;
          }

          ++v26;
          v27 += v17;
          v28 += v11;
        }

        while (v26 != v10);
      }

      ++v24;
      v25 += v18;
      v23 += v12;
    }

    while (v24 != v5);
  }

  result = 1;
LABEL_30:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::BufferTiling::AddTile<float>(uint64_t a1, void *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 181;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *a1;
    *buf = *(a1 + 16);
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::AddTile<float>(a2, buf, a4, v19, &v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::AddTile<float>(void *a1, __int128 *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  v6 = a4[1];
  if (v5 != *(a4 + 2))
  {
    v32 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v50 = 1025;
      v51 = 92;
      v33 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v34 = v32;
      v35 = 18;
LABEL_27:
      _os_log_impl(&dword_21DE0D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *a2;
  v12 = *a2 * v10;
  if (a1[1] != v12 * v5)
  {
    v32 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v36 = a1[1];
    v37 = *a2;
    v38 = *(a2 + 2);
    *buf = 136381955;
    v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v50 = 1025;
    v51 = 96;
    v52 = 2048;
    v53 = v36;
    v54 = 2048;
    v55 = v37;
    v56 = 2048;
    v57 = *(&v37 + 1);
    v58 = 2048;
    v59 = v38;
    v33 = " %{private}s:%{private}d *** Number of sourceTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
LABEL_26:
    v34 = v32;
    v35 = 58;
    goto LABEL_27;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *a4;
  v18 = *a4 * v16;
  if (a3[1] != v18 * v5)
  {
    v32 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v39 = a3[1];
    v40 = *a4;
    v41 = *(a4 + 2);
    *buf = 136381955;
    v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v50 = 1025;
    v51 = 100;
    v52 = 2048;
    v53 = v39;
    v54 = 2048;
    v55 = v40;
    v56 = 2048;
    v57 = *(&v40 + 1);
    v58 = 2048;
    v59 = v41;
    v33 = " %{private}s:%{private}d *** Number of sumBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_26;
  }

  v19 = *a5;
  v20 = *(a5 + 1);
  v21 = *a5;
  if (v17 < *a5 || v16 < v20)
  {
    v32 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v50 = 1025;
      v51 = 116;
      v52 = 2048;
      v53 = v21;
      v54 = 2048;
      v55 = v20;
      v56 = 2048;
      v57 = v17;
      v58 = 2048;
      v59 = v16;
      v33 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for target buffer (%lu, %lu) ***";
      goto LABEL_26;
    }

LABEL_28:

    result = 0;
    goto LABEL_29;
  }

  if (v17 - *a5 >= v11)
  {
    v22 = *a2;
  }

  else
  {
    v22 = v17 - *a5;
  }

  if (v16 - v20 < v10)
  {
    v10 = v16 - v20;
  }

  v47 = v10;
  if (v5)
  {
    v23 = 0;
    v24 = 0;
    v25 = 4 * v20 * v17 + 4 * v21;
    v26 = 4 * v17;
    v45 = 4 * v12;
    v46 = 4 * v18;
    v27 = 4 * v11;
    do
    {
      if (v47)
      {
        v28 = *a3 + v25;
        v29 = *a1 + v23;
        v30 = v47;
        do
        {
          MEMORY[0x223D4D420](v29, 1, v28, 1, v28, 1, v22);
          v28 += v26;
          v29 += v27;
          --v30;
        }

        while (v30);
      }

      ++v24;
      v25 += v46;
      v23 += v45;
    }

    while (v24 != v5);
  }

  result = 1;
LABEL_29:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::BufferTiling::AddTile<half>(uint64_t a1, short float **a2, __int128 *a3, void *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a3;
  v9 = *(a1 + 32);
  if (*a3 >= ((*(a1 + 40) - v9) >> 3) || (v10 = *(a1 + 56), *(&v7 + 1) >= ((*(a1 + 64) - v10) >> 3)))
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a3;
      v16 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
      v17 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      *&buf[12] = 1025;
      *&buf[14] = 181;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = *(&v15 + 1);
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Tile index (%lu,%lu) is out of valid range (0...%lu,0...%lu) ***", buf, 0x3Au);
    }

    result = 0;
  }

  else
  {
    *&v7 = a5;
    v11 = *a1;
    *buf = *(a1 + 16);
    *&buf[16] = v7;
    *&v12 = *(v10 + 8 * *(&v7 + 1));
    *(&v12 + 1) = *(v9 + 8 * v8);
    v19[1] = v7;
    v20 = v12;
    v19[0] = v11;
    result = si::AddTile<half>(a2, buf, a4, v19, &v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t si::AddTile<half>(short float **a1, __int128 *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2);
  v6 = a4[1];
  if (v5 != *(a4 + 2))
  {
    v36 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v47 = 136380931;
      v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v49 = 1025;
      v50 = 92;
      v37 = " %{private}s:%{private}d *** Number of color channels must match ***";
      v38 = v36;
      v39 = 18;
LABEL_28:
      _os_log_impl(&dword_21DE0D000, v38, OS_LOG_TYPE_ERROR, v37, &v47, v39);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *a2;
  v12 = *a2 * v10;
  if (a1[1] != (v12 * v5))
  {
    v36 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v40 = a1[1];
    v41 = *a2;
    v42 = *(a2 + 2);
    v47 = 136381955;
    v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v49 = 1025;
    v50 = 96;
    v51 = 2048;
    v52 = v40;
    v53 = 2048;
    v54 = v41;
    v55 = 2048;
    v56 = *(&v41 + 1);
    v57 = 2048;
    v58 = v42;
    v37 = " %{private}s:%{private}d *** Number of sourceTileBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
LABEL_27:
    v38 = v36;
    v39 = 58;
    goto LABEL_28;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *a4;
  if (a3[1] != *a4 * v16 * v5)
  {
    v36 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v43 = a3[1];
    v44 = *a4;
    v45 = *(a4 + 2);
    v47 = 136381955;
    v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
    v49 = 1025;
    v50 = 100;
    v51 = 2048;
    v52 = v43;
    v53 = 2048;
    v54 = v44;
    v55 = 2048;
    v56 = *(&v44 + 1);
    v57 = 2048;
    v58 = v45;
    v37 = " %{private}s:%{private}d *** Number of sumBuffer elements (%lu) must match tileSize (%lu, %lu, %lu) ***";
    goto LABEL_27;
  }

  v18 = *a5;
  v19 = *(a5 + 1);
  v20 = *a5;
  v21 = v17 - *a5;
  if (v17 < *a5 || v16 < v19)
  {
    v36 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v47 = 136381955;
      v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v49 = 1025;
      v50 = 116;
      v51 = 2048;
      v52 = v20;
      v53 = 2048;
      v54 = v19;
      v55 = 2048;
      v56 = v17;
      v57 = 2048;
      v58 = v16;
      v37 = " %{private}s:%{private}d *** Invalid offset (%lu,%lu) for target buffer (%lu, %lu) ***";
      goto LABEL_27;
    }

LABEL_29:

    result = 0;
    goto LABEL_30;
  }

  if (v21 >= v11)
  {
    v21 = *a2;
  }

  if (v16 - v19 < v10)
  {
    v10 = v16 - v19;
  }

  if (v5)
  {
    v22 = 0;
    v23 = *a1;
    v24 = *a3 + 2 * v19 * v17 + 2 * v20;
    v25 = 2 * *a4 * v16;
    v26 = 2 * v12;
    v27 = 2 * v11;
    do
    {
      if (v10)
      {
        v28 = 0;
        v29 = v23;
        v30 = v24;
        do
        {
          v31 = v21;
          v32 = v29;
          for (i = v30; v31; --v31)
          {
            v34 = *v32++;
            *i = v34 + *i;
            ++i;
          }

          ++v28;
          v30 += v17;
          v29 = (v29 + v27);
        }

        while (v28 != v10);
      }

      ++v22;
      v24 += v25;
      v23 = (v23 + v26);
    }

    while (v22 != v5);
  }

  result = 1;
LABEL_30:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *si::BufferTiling::BufferTiling(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = *a2;
  *a1 = *a2;
  v8 = *a3;
  *(a1 + 2) = 0u;
  v9 = a1 + 4;
  *(a1 + 1) = v8;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v10 = "imageResolution.x > 0 && imageResolution.y > 0";
  v11 = 146;
  if (!*a2 || !(*(a2 + 8) >> 64) || (v12 = *a3, v13 = *a3, v10 = "tileResolution.x > 0 && tileResolution.y > 0", v11 = 147, !v13) || !*(&v12 + 1) || (v10 = "minTileOverlap < tileResolution.x && minTileOverlap < tileResolution.y", v11 = 148, v13 <= a4) || *(&v12 + 1) <= a4)
  {
    __assert_rtn("BufferTiling", "SIBufferTiling.mm", v11, v10);
  }

  v14 = si::BufferTiling::CalculateNumTiles(v7, v8, a4);
  v15 = si::BufferTiling::CalculateNumTiles(a1[1], a1[3], a4);
  v16 = *a1;
  v17 = a1[2];
  si::BufferTiling::CalculateOverlaps(v14, v26);
  v18 = a1[1];
  v19 = a1[3];
  si::BufferTiling::CalculateOverlaps(v15, __p);
  si::BufferTiling::CalculateOffsets(v26, a1[2], &v23);
  v20 = v9[3];
  if (v20)
  {
    a1[8] = v20;
    operator delete(v20);
    v9[3] = 0;
    v9[4] = 0;
    v9[5] = 0;
  }

  *(a1 + 7) = v23;
  a1[9] = v24;
  si::BufferTiling::CalculateOffsets(__p, a1[3], &v23);
  v21 = *v9;
  if (*v9)
  {
    a1[5] = v21;
    operator delete(v21);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 2) = v23;
  a1[6] = v24;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return a1;
}

void sub_21DE18C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v20 = *(v18 + 24);
  if (v20)
  {
    *(v17 + 64) = v20;
    operator delete(v20);
  }

  v21 = *v18;
  if (*v18)
  {
    *(v17 + 40) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

unint64_t si::BufferTiling::CalculateNumTiles(si::BufferTiling *this, unint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 <= a3)
  {
    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136381443;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBufferTiling.mm";
      v10 = 1025;
      v11 = 198;
      v12 = 2048;
      v13 = a3;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** minTileOverlap (%lu) must be smaller than tileSideLength (%lu) ***", &v8, 0x26u);
    }

    result = 0;
  }

  else if (this <= a2)
  {
    result = 1;
  }

  else
  {
    result = vcvtps_u32_f32((this - a2) / (a2 - a3)) + 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void si::BufferTiling::CalculateOverlaps(unint64_t a1@<X2>, void *a2@<X8>)
{
  if (a1 > 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<unsigned long>::__vallocate[abi:nn200100](a2, a1 - 1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t **si::BufferTiling::CalculateOffsets@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6 >> 3 != -1)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](a3, (v6 >> 3) + 1);
  }

  v7 = -1;
  if (v5 != v4)
  {
    v8 = (*a3 + 8);
    v9 = **a3;
    do
    {
      v10 = *v4++;
      v9 = v9 + a2 - v10;
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t SIInternalOSBuild()
{
  if (SIInternalOSBuild_onceToken != -1)
  {
    SIInternalOSBuild_cold_1();
  }

  return SIInternalOSBuild_internalVersion;
}

uint64_t __SIInternalOSBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  SIInternalOSBuild_internalVersion = result;
  return result;
}

uint64_t SIBytesPerElement(int a1)
{
  if (a1 == 1278226488)
  {
    v1 = "800L";
    return *(v1 + 4);
  }

  else
  {
    v2 = "800L";
    v3 = 14;
    while (--v3)
    {
      v1 = v2 + 24;
      v4 = *(v2 + 6);
      v2 += 24;
      if (v4 == a1)
      {
        return *(v1 + 4);
      }
    }

    return 0;
  }
}

uint64_t SIMTLPixelFormatFromOSType(int a1)
{
  if (a1 == 1278226488)
  {
    v1 = "800L";
    return *(v1 + 1);
  }

  else
  {
    v2 = "800L";
    v3 = 14;
    while (--v3)
    {
      v1 = v2 + 24;
      v4 = *(v2 + 6);
      v2 += 24;
      if (v4 == a1)
      {
        return *(v1 + 1);
      }
    }

    return 0;
  }
}

uint64_t SIOSTypeFromMTLPixelFormat(uint64_t a1)
{
  if (a1 == 10)
  {
    v1 = "800L";
    return *v1;
  }

  else
  {
    v2 = "800L";
    v3 = 14;
    while (--v3)
    {
      v1 = v2 + 24;
      v4 = *(v2 + 4);
      v2 += 24;
      if (v4 == a1)
      {
        return *v1;
      }
    }

    return 0;
  }
}

uint64_t SIImageFormatMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = a4;
  *(a5 + 4) = a3;
  return result;
}

size_t SIImageFormatFromPixelBuffer@<X0>(__CVBuffer *a1@<X0>, size_t *a2@<X8>)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  a2[2] = 0;
  *a2 = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  a2[1] = result;
  *(a2 + 4) = PixelFormatType;
  if (PixelFormatType == 1278226488)
  {
    v6 = "800L";
LABEL_6:
    v10 = *(v6 + 1);
  }

  else
  {
    v7 = "800L";
    v8 = 14;
    while (--v8)
    {
      v6 = v7 + 24;
      v9 = *(v7 + 6);
      v7 += 24;
      if (v9 == PixelFormatType)
      {
        goto LABEL_6;
      }
    }

    v10 = 0;
  }

  a2[3] = v10;
  return result;
}

uint64_t SIImageFormatFromSurface@<X0>(__IOSurface *a1@<X0>, size_t *a2@<X8>)
{
  *a2 = IOSurfaceGetWidth(a1);
  a2[1] = IOSurfaceGetHeight(a1);
  result = IOSurfaceGetPixelFormat(a1);
  a2[2] = 0;
  a2[3] = 0;
  *(a2 + 4) = result;
  return result;
}

void SIImageFormatFromTexture(void *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v3 = a1;
  *a2 = [v3 width];
  a2[1] = [v3 height];
  *(a2 + 4) = 0;
  v4 = [v3 pixelFormat];

  a2[3] = v4;
}

uint64_t SIImageFormatMatch(uint64_t *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 1;
  }

  else
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 125;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: unexpected resolution ***", buf, 0x12u);
    }

    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v8 = a1[1];
      *buf = 136381443;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 126;
      v37 = 2049;
      v38 = v7;
      v39 = 2049;
      v40 = v8;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   expected (%{private}lu x %{private}lu) ***", buf, 0x26u);
    }

    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      v11 = a2[1];
      *buf = 136381443;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 127;
      v37 = 2048;
      v38 = v10;
      v39 = 2048;
      v40 = v11;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   received (%lu x %lu) ***", buf, 0x26u);
    }

    result = 0;
  }

  v12 = *(a2 + 4);
  if (v12 && v12 != *(a1 + 4))
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 132;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: unexpected ostype ***", buf, 0x12u);
    }

    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15.i32[0] = *(a1 + 4);
      v16 = vrev64_s16(*&vmovl_u8(v15));
      *buf = vuzp1_s8(v16, v16).u32[0];
      LOBYTE(v34) = 0;
      v27 = 136381187;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v29 = 1025;
      v30 = 133;
      v31 = 2081;
      v32 = buf;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   expected %{private}s ***", &v27, 0x1Cu);
    }

    v17 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18.i32[0] = *(a2 + 4);
      v19 = vrev64_s16(*&vmovl_u8(v18));
      *buf = vuzp1_s8(v19, v19).u32[0];
      LOBYTE(v34) = 0;
      v27 = 136381187;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v29 = 1025;
      v30 = 134;
      v31 = 2081;
      v32 = buf;
      _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   received %{private}s ***", &v27, 0x1Cu);
    }

    result = 0;
  }

  v20 = a2[3];
  if (v20 && v20 != a1[3])
  {
    v21 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 138;
      _os_log_impl(&dword_21DE0D000, v21, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: unexpected pixelFormat ***", buf, 0x12u);
    }

    v22 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[3];
      *buf = 136381187;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 139;
      v37 = 2049;
      v38 = v23;
      _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   expected %{private}lu ***", buf, 0x1Cu);
    }

    v24 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = a2[3];
      *buf = 136381187;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v35 = 1025;
      v36 = 140;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d ***   received %lu ***", buf, 0x1Cu);
    }

    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICheckPixelBuffer(__CVBuffer *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    SIImageFormatFromPixelBuffer(a1, buf);
    v3 = a2[1];
    v7[0] = *a2;
    v7[1] = v3;
    result = SIImageFormatMatch(v7, buf);
  }

  else
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v10 = 1025;
      v11 = 147;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: pixelbuffer is null ***", buf, 0x12u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICheckSurface(__IOSurface *a1, _OWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *buf = IOSurfaceGetWidth(a1);
    *&buf[8] = IOSurfaceGetHeight(a1);
    v10 = 0;
    *&buf[16] = IOSurfaceGetPixelFormat(a1);
    v4 = a2[1];
    v8[0] = *a2;
    v8[1] = v4;
    result = SIImageFormatMatch(v8, buf);
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      *&buf[12] = 1025;
      *&buf[14] = 155;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: surface is null ***", buf, 0x12u);
    }

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICheckTexture(void *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    SIImageFormatFromTexture(a1, buf);
    v3 = a2[1];
    v7[0] = *a2;
    v7[1] = v3;
    result = SIImageFormatMatch(v7, buf);
  }

  else
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageFormat.m";
      v10 = 1025;
      v11 = 164;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** ERROR: texture is null ***", buf, 0x12u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

CVPixelBufferRef SICreateCVPixelBufferFromTexture(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  pixelBufferOut = 0;
  if (![v1 iosurface])
  {
    v14 = *MEMORY[0x277CC4DE8];
    v15[0] = MEMORY[0x277CBEC10];
    pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v3 = SIOSTypeFromMTLPixelFormat([v1 pixelFormat]);
    v4 = [v1 width];
    v5 = 4 * v4 * SIBytesPerElement(v3);
    v6 = malloc_type_malloc([v1 height] * v5, 0x100004077774924uLL);
    memset(v12, 0, 24);
    v12[3] = [v1 width];
    v12[4] = [v1 height];
    v12[5] = 1;
    [v1 getBytes:v6 bytesPerRow:v5 fromRegion:v12 mipmapLevel:0];
    v7 = CVPixelBufferCreateWithBytes(0, [v1 width], objc_msgSend(v1, "height"), v3, v6, v5, callback, 0, pixelBufferAttributes, &pixelBufferOut);
    if (v3 == 1380411457 || v3 == 1380410945)
    {
      v8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]);
      CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x277CC4B78], v8, kCVAttachmentMode_ShouldNotPropagate);
    }

    if (v7)
    {
      CVPixelBufferRelease(pixelBufferOut);

      goto LABEL_9;
    }

LABEL_11:
    v9 = pixelBufferOut;
    goto LABEL_12;
  }

  if (!CVPixelBufferCreateWithIOSurface(0, [v1 iosurface], 0, &pixelBufferOut))
  {
    goto LABEL_11;
  }

  CVPixelBufferRelease(pixelBufferOut);
LABEL_9:
  v9 = 0;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL SISaveCGImage(CGImage *a1, NSString *a2, UTType *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:a2];
  v7 = [(UTType *)v5 identifier];
  v8 = [v7 UTF8String];
  v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v8, 0x8000100u);

  v10 = CGImageDestinationCreateWithURL(v6, v9, 1uLL, 0);
  CFRelease(v9);
  if (v10)
  {
    CGImageDestinationAddImage(v10, a1, 0);
    v11 = CGImageDestinationFinalize(v10);
    CFRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL SISaveTextureAsPNG(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SICreateCVPixelBufferFromTexture(v3);
  if (v5)
  {
    v6 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v5];
    if ([v3 pixelFormat] == 115 || objc_msgSend(v3, "pixelFormat") == 125)
    {
      v7 = [MEMORY[0x277CBF750] filterWithName:@"CIGammaAdjust"];
      [v7 setValue:v6 forKey:*MEMORY[0x277CBFAF0]];
      [v7 setValue:&unk_282F34C30 forKey:@"inputPower"];
      v8 = [v7 outputImage];

      v6 = v8;
    }

    v9 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v10 = [v3 width];
    v11 = [v3 height];
    v12 = [v9 createCGImage:v6 fromRect:*MEMORY[0x277CBF9D0] format:CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]) colorSpace:{0.0, 0.0, v10, v11}];
    v13 = SISaveCGImage(v12, v4, *MEMORY[0x277CE1E10]);
    CGImageRelease(v12);
    CVPixelBufferRelease(v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL SISaveTextureAsTIFF(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SICreateCVPixelBufferFromTexture(v3);
  if (v5)
  {
    v6 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v5];
    v7 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v8 = [v3 width];
    v9 = [v3 height];
    v10 = [v7 createCGImage:v6 fromRect:*MEMORY[0x277CBF9D0] format:CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]) colorSpace:{0.0, 0.0, v8, v9}];
    v11 = SISaveCGImage(v10, v4, *MEMORY[0x277CE1E80]);
    CGImageRelease(v10);
    CVPixelBufferRelease(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL SISavePixelBufferTIFF(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1];
  [v4 writeToTIFF:v3];

  return v4 != 0;
}

BOOL SISaveIOSurfaceTIFF(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 createPixelBufferWithAttributes:0];
  v5 = SISavePixelBufferTIFF(v4, v3);
  CVPixelBufferRelease(v4);

  return v5;
}

BOOL SISavePixelBufferPNG(__CVBuffer *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1];
  v5 = MEMORY[0x277CBF740];
  v14 = *MEMORY[0x277CBF940];
  v15[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [v5 contextWithOptions:v6];

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CVPixelBufferGetWidth(a1);
  v10 = [v7 createCGImage:v4 fromRect:*MEMORY[0x277CBF9C8] format:DeviceRGB colorSpace:{0.0, 0.0, Width, CVPixelBufferGetHeight(a1)}];
  v11 = SISaveCGImage(v10, v3, *MEMORY[0x277CE1E10]);
  CGImageRelease(v10);
  CGColorSpaceRelease(DeviceRGB);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL SISaveIOSurfacePNG(__IOSurface *a1, void *a2)
{
  v3 = a2;
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(0, a1, 0, &pixelBufferOut);
  v4 = SISavePixelBufferPNG(pixelBufferOut, v3);
  CVPixelBufferRelease(pixelBufferOut);

  return v4;
}

void SIDumpCVPixelBufferToFile(__CVBuffer *a1, void *a2)
{
  v41[19] = *MEMORY[0x277D85DE8];
  v34 = a2;
  [v34 UTF8String];
  std::ofstream::basic_ofstream(&v39);
  CVPixelBufferLockBaseAddress(a1, 0);
  pixelBuffer = a1;
  if (CVPixelBufferGetPixelFormatType(a1) == 1111970369)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    if (Height)
    {
      v7 = BytesPerRow;
      v8 = 0;
      v9 = (BaseAddress + 3);
      v10 = MEMORY[0x277D82680];
      do
      {
        v11 = Width;
        for (i = v9; v11; --v11)
        {
          v13 = MEMORY[0x223D4C3C0](&v39, *(i - 3));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " ", 1);
          v14 = MEMORY[0x223D4C3C0](&v39, *(i - 2));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, " ", 1);
          v15 = MEMORY[0x223D4C3C0](&v39, *(i - 1));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " ", 1);
          v16 = MEMORY[0x223D4C3C0](&v39, *i);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " ", 1);
          i += 4;
        }

        std::ios_base::getloc(&v40[*(v39 - 24) - 8]);
        v17 = std::locale::use_facet(&v38, v10);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v38);
        std::ostream::put();
        std::ostream::flush();
        ++v8;
        v9 += v7;
      }

      while (v8 != Height);
    }
  }

  else if (CVPixelBufferGetPixelFormatType(a1) == 875836518)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    v19 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v20 = CVPixelBufferGetWidth(a1);
    v37 = CVPixelBufferGetHeight(a1);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    v21 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    if (v37)
    {
      v22 = v21;
      v23 = 0;
      v24 = (v19 + 1);
      do
      {
        v25 = v20;
        v26 = v24;
        for (j = BaseAddressOfPlane; v25; --v25)
        {
          v28 = *j++;
          v29 = MEMORY[0x223D4C3C0](&v39, v28);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " ", 1);
          v30 = MEMORY[0x223D4C3C0](&v39, *(v26 - 1));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, " ", 1);
          v31 = MEMORY[0x223D4C3C0](&v39, *v26);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, " ", 1);
          v26 += 2;
        }

        std::ios_base::getloc(&v40[*(v39 - 24) - 8]);
        v32 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
        (v32->__vftable[2].~facet_0)(v32, 10);
        std::locale::~locale(&v38);
        std::ostream::put();
        std::ostream::flush();
        ++v23;
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v24 += v22;
      }

      while (v23 != v37);
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v40[*(v39 - 24) - 8], *&v40[*(v39 - 24) + 24] | 4);
  }

  v39 = *MEMORY[0x277D82810];
  *&v40[*(v39 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x223D4C360](v40);
  std::ostream::~ostream();
  MEMORY[0x223D4C420](v41);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_21DE1AA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ofstream::~ofstream(&a14, MEMORY[0x277D82810]);
  MEMORY[0x223D4C420](&a66);

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x223D4C350](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_21DE1AC20(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x223D4C420](v1);
  _Unwind_Resume(a1);
}

uint64_t SICreateCVPixelBufferFromUrl(void *a1, OSType a2, void *a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v10 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v9];
  if (!v10)
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *pixelBufferOut = 136381187;
      *&pixelBufferOut[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v25 = 1025;
      v26 = 289;
      v27 = 2113;
      v28 = v7;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load image resource '%{private}@' ***", pixelBufferOut, 0x1Cu);
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v8 copyItems:0];
    [v11 setValue:MEMORY[0x277CBEC10] forKey:*MEMORY[0x277CC4DE8]];

    v8 = v11;
  }

  *pixelBufferOut = 0;
  [v10 extent];
  v13 = v12;
  [v10 extent];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v13, v14, a2, v8, pixelBufferOut);
  if (!*pixelBufferOut)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v15 = objc_alloc(MEMORY[0x277CBF740]);
  v22 = *MEMORY[0x277CBF940];
  v23 = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v17 = [v15 initWithOptions:v16];

  [v17 render:v10 toCVPixelBuffer:*pixelBufferOut];
  v18 = *pixelBufferOut;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t SIEnsureDirectoryExist(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v11 = 0;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1 isDirectory:&v11];

  if ((v3 & 1) == 0)
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136381187;
      v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v14 = 1025;
      v15 = 322;
      v16 = 2112;
      v17 = v1;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Path %@ does not exist in the system, create one to save the output data. ***", buf, 0x1Cu);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v4 = [v6 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v10];
    v7 = v10;

    goto LABEL_10;
  }

  if ((v11 & 1) == 0)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v14 = 1025;
      v15 = 325;
      v16 = 2112;
      v17 = v1;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Path %@ exists, but it is not a directory ***", buf, 0x1Cu);
    }

    v4 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v4 = 1;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t SIRemoveAllFilesInDirectory(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v27 = v1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0;
  v3 = [v2 contentsOfDirectoryAtPath:v1 error:&v34];
  v4 = v34;
  v23 = v3;
  if (!v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    log = v3;
    v5 = 0;
    v8 = [log countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v8)
    {
      v7 = 1;
      goto LABEL_25;
    }

    v9 = *v31;
    v24 = *MEMORY[0x277CCA1F0];
    v25 = *MEMORY[0x277CCA1E0];
    v7 = 1;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(log);
        }

        v11 = [v27 stringByAppendingPathComponent:*(*(&v30 + 1) + 8 * v10)];
        v29 = v5;
        v12 = [v2 attributesOfItemAtPath:v11 error:&v29];
        v13 = v29;

        if (v13)
        {
          v14 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [v13 localizedDescription];
            *buf = 136381443;
            v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
            v38 = 1025;
            v39 = 348;
            v40 = 2113;
            v41 = v11;
            v42 = 2112;
            v43 = v15;
            _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get attributes for %{private}@, error: %@ ***", buf, 0x26u);
          }

          goto LABEL_13;
        }

        v16 = [v12 objectForKeyedSubscript:v25];
        v17 = [v16 isEqualToString:v24];

        if (v17)
        {
          v28 = 0;
          v18 = [v2 removeItemAtPath:v11 error:&v28];
          v13 = v28;
          if ((v18 & 1) == 0)
          {
            v14 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v19 = [v13 localizedDescription];
              *buf = 136381443;
              v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
              v38 = 1025;
              v39 = 357;
              v40 = 2113;
              v41 = v11;
              v42 = 2112;
              v43 = v19;
              _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to delete file: %{private}@, error: %@ ***", buf, 0x26u);
            }

LABEL_13:

            v7 = 0;
          }

          v5 = v13;
          goto LABEL_15;
        }

        v5 = 0;
LABEL_15:

        ++v10;
      }

      while (v8 != v10);
      v20 = [log countByEnumeratingWithState:&v30 objects:v35 count:16];
      v8 = v20;
      if (!v20)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = v4;
  log = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v6 = [v5 localizedDescription];
    *buf = 136381443;
    v37 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v38 = 1025;
    v39 = 339;
    v40 = 2113;
    v41 = v1;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_21DE0D000, log, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to list directory: %{private}@, error: %@ ***", buf, 0x26u);
  }

  v7 = 0;
LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void sub_21DE1BAE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

char *SIStridedCopy(char *__src, uint64_t a2, uint64_t a3, size_t a4, unsigned __int8 *__dst, uint64_t a6, uint64_t a7, size_t a8)
{
  if (a6 != a2)
  {
    SIStridedCopy();
  }

  v8 = a7;
  if (a7 != a3)
  {
    SIStridedCopy();
  }

  if (a8 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a8;
  }

  if (a7)
  {
    v13 = __src;
    do
    {
      if (v11)
      {
        __src = memmove(__dst, v13, v11);
      }

      v13 += a4;
      __dst += a8;
      --v8;
    }

    while (v8);
  }

  return __src;
}

void sub_21DE1CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_object_dispose((v11 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PrintMIMEAttachment(NSData *a1, NSString *a2, NSString *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v22 = a2;
  v23 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n--START_MIME--\n"];
  printf("%s", [v6 UTF8String]);

  v7 = MEMORY[0x277CCACA8];
  v8 = v22;
  v9 = v23;
  v10 = [(NSData *)v5 base64EncodedStringWithOptions:0];
  v11 = [(NSString *)v9 length];
  v12 = [(NSString *)v8 length];
  v13 = v11 + 2 * v12 + [v10 length] + 196;
  v14 = [MEMORY[0x277CCAB68] stringWithCapacity:v13];
  v15 = [(NSString *)v8 lastPathComponent];

  [v14 appendString:@"MIME-Version: 1.0\n"];
  [v14 appendFormat:@"Content-Type: %@; name=%@\n", v9, v15];
  [v14 appendString:@"Content-Transfer-Encoding: base64\n"];
  [v14 appendFormat:@"Content-Disposition: attachment; filename=%@\n", v15];
  [v14 appendString:@"\n"];
  [v14 appendString:v10];
  if ([v14 length] > v13)
  {
    v16 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v26 = 1025;
      v27 = 733;
      _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Actual MIME message size exceeded estimated. ***", buf, 0x12u);
    }
  }

  v17 = [v7 stringWithFormat:@"%@", v14];
  v18 = v17;
  printf("%s", [v17 UTF8String]);

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n--END_MIME--\n"];
  v20 = v19;
  printf("%s", [v19 UTF8String]);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t SISavePixelBufferRAW(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    __assert_rtn("SISavePixelBufferRAW", "SIIOUtility.mm", 1404, "pixelBuffer");
  }

  v4 = [[SIRawImage alloc] initFromCVPixelBuffer:a1];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];
  v6 = [v4 saveToURL:v5];

  return v6;
}

uint64_t SICreateCVPixelBufferFromRawFileUrl(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v11 copyItems:0];
  v13 = v12;
  if (a4)
  {
    [v12 setValue:MEMORY[0x277CBEC10] forKey:*MEMORY[0x277CC4DE8]];
    v14 = v13;

    v11 = v14;
  }

  v15 = [[SIRawImage alloc] initFromDataURL:v9 metadataURL:v10];
  v16 = [v15 createPixelBufferWithAttributes:v11 zeroCopy:a5];

  return v16;
}

id SICreatePortableSurfaceFromRawFileUrl(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = [[SIRawImage alloc] initFromDataURL:v9 metadataURL:v10];
  v13 = v12;
  if (a4 && [v12 pixelFormat] != a4)
  {
    v14 = [v13 toPixelFormat:a4 bytesPerRow:a3];

    v13 = v14;
  }

  v15 = [v13 createSurfaceWithAllocator:v11 stride:a3];

  return v15;
}

id SICreatePortableSurfaceFromRawFileResource(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [a1 URLForResource:a2 withExtension:@"raw"];
  v11 = [v10 URLByAppendingPathExtension:@"json"];
  v12 = SICreatePortableSurfaceFromRawFileUrl(v10, v11, a4, a3, v9);

  return v12;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x223D4C360](a1 + 1);

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223D4C390](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x223D4C3A0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_21DE21530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id SIPolarisTimestampDictionary()
{
  v23 = *MEMORY[0x277D85DE8];
  count = ps_resource_array_get_count();
  v1 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:count];
  if (count)
  {
    for (i = 0; count != i; ++i)
    {
      resource = ps_resource_array_get_resource();
      key = ps_resource_get_key();
      if (MEMORY[0x223D4CEB0](resource) == 1)
      {
        if (MEMORY[0x223D4CF20](resource, 0))
        {
          ps_resource_get_timestamp_seconds();
          v6 = v5;
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
          v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
          [v1 setObject:v8 forKeyedSubscript:v7];
        }

        else
        {
          v7 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136381187;
            v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisTimestampDictionary.m";
            v17 = 1025;
            v18 = 31;
            v19 = 2081;
            v20 = key;
            v10 = v7;
            v11 = " %{private}s:%{private}d *** resource Key %{private}s invalid ***";
            v12 = 28;
            goto LABEL_10;
          }
        }
      }

      else
      {
        v7 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = MEMORY[0x223D4CEB0](resource);
          *buf = 136381443;
          v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisTimestampDictionary.m";
          v17 = 1025;
          v18 = 26;
          v19 = 2081;
          v20 = key;
          v21 = 2048;
          v22 = v9;
          v10 = v7;
          v11 = " %{private}s:%{private}d *** expected item count for %{private}s to be 1, but got %zu ***";
          v12 = 38;
LABEL_10:
          _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_21DE228C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_21DE22FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SISceneUnderstanding;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_21DE2378C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_21DE249A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_21DE24C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIBaseNetworkE5RT;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21DE2644C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<SIE5RTPort * {__strong}>::push_back[abi:nn200100](void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SIE5RTPort * {__strong}>>(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    std::vector<SIE5RTPort * {__strong}>::__swap_out_circular_buffer(result, v13);
    v7 = v3[1];
    result = std::__split_buffer<SIE5RTPort * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_21DE27C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<SIE5RTPort * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_21DE27F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE280B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void std::vector<char const*>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<SIE5RTPort * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SIE5RTPort * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<SIE5RTPort * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<e5rt_execution_stream_operation *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

std::string *std::pair<std::string const,std::unordered_set<unsigned long long>>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::unordered_set<unsigned long long>::unordered_set(&this[1], a2 + 24);
  return this;
}

void sub_21DE28778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::unordered_set<unsigned long long>>::~pair(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}