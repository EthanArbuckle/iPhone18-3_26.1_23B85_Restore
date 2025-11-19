uint64_t sub_2701B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FB8);
  __chkstk_darwin(v2);
  v4 = &v37[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FC0);
  __chkstk_darwin(v5);
  v7 = &v37[-v6];
  v8 = *a1;
  v46 = *(a1 + 16);
  v47 = *(a1 + 32);
  v45 = v8;
  v9 = v8;
  v10 = v46;
  v41 = v8;
  v42 = v46;
  v43 = v47;

  sub_2582E4(*(&v9 + 1), v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD0);
  if (!swift_dynamicCast())
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_2566A0(v39, &qword_518FD8);
    v11 = *(&v45 + 1);
    v12 = *(v9 + 16);
    v13 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      v14 = 0;
      if (v13 != 2)
      {
        goto LABEL_15;
      }

      v15 = *(*(&v45 + 1) + 16);
      v16 = *(*(&v45 + 1) + 24);
      v17 = __OFSUB__(v16, v15);
      v11 = v16 - v15;
      if (!v17)
      {
LABEL_12:
        if (v11 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

LABEL_15:
        *&v41 = sub_2A0BF4(v14);
        *(&v41 + 1) = v18;
        __chkstk_darwin(v41);
        *&v37[-16] = &v45;
        sub_27C158(sub_27151C);
        v19 = *&v4[*(v2 + 48)];
        sub_271538(v4, v7);
        v20 = *(&v41 + 1) >> 62;
        if ((*(&v41 + 1) >> 62) > 1)
        {
          if (v20 != 2)
          {
            if (!v19)
            {
              goto LABEL_30;
            }

            v24 = 0;
LABEL_37:
            if (v24 < v19)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            sub_303518();
LABEL_39:
            sub_2566A0(v7, &qword_518FC0);
            goto LABEL_40;
          }

          v22 = *(v41 + 16);
          v21 = *(v41 + 24);
          v17 = __OFSUB__(v21, v22);
          v23 = v21 - v22;
          if (v17)
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
          }

          if (v19 != v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!v20)
          {
            if (v19 == BYTE14(v41))
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          if (__OFSUB__(DWORD1(v41), v41))
          {
            goto LABEL_53;
          }

          if (v19 != DWORD1(v41) - v41)
          {
LABEL_25:
            if (v20 == 2)
            {
              v24 = *(v41 + 24);
            }

            else if (v20 == 1)
            {
              v24 = v41 >> 32;
            }

            else
            {
              v24 = BYTE14(v41);
            }

            goto LABEL_37;
          }
        }

LABEL_30:
        memset(v44, 0, 15);
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FE0) + 56);
        if ((*(v7 + v25) & 1) == 0)
        {
          v26 = *v7;
          v27 = v7[1];
          v28 = *(*v7 + 16);
          if (v27 == v28)
          {
            LOBYTE(v29) = 0;
LABEL_33:
            *(v7 + v25) = 1;
            if (v29)
            {
              *&v39[0] = v44[0];
              *(v39 + 6) = *(v44 + 6);
              sub_303548();
            }

            goto LABEL_39;
          }

          LOBYTE(v29) = 0;
          while (v27 < v28)
          {
            v34 = *(v26 + v27 + 32);
            v7[1] = v27 + 1;
            sub_3035D8();
            sub_2715A8();
            sub_303C08();
            if (BYTE1(v39[0]) == 1)
            {
              goto LABEL_33;
            }

            v35 = v39[0];
            v36 = *(v7 + *(v5 + 44));
            LOBYTE(v39[0]) = v34;
            BYTE1(v39[0]) = v35;
            v36(&v38, v39);
            *(v44 + v29) = v38;
            v29 = v29 + 1;
            if ((v29 >> 8))
            {
              goto LABEL_49;
            }

            if (v29 == 14)
            {
              *&v39[0] = v44[0];
              *(v39 + 6) = *(v44 + 6);
              sub_303548();
              LOBYTE(v29) = 0;
            }

            v26 = *v7;
            v27 = v7[1];
            v28 = *(*v7 + 16);
            if (v27 == v28)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v11 = BYTE6(v46);
      goto LABEL_12;
    }

    v17 = __OFSUB__(HIDWORD(v11), v11);
    LODWORD(v11) = HIDWORD(v11) - v11;
    if (v17)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v11 = v11;
    goto LABEL_12;
  }

  sub_258288(v39, v44);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_3033E8();
  v41 = v39[0];
  __swift_destroy_boxed_opaque_existential_0(v44);
LABEL_40:
  v30 = v41;
  v31 = *(&v45 + 1);
  v32 = v46;
  sub_2582E4(v41, *(&v41 + 1));

  sub_258780(v31, v32);

  sub_258780(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_2707B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v12)
  {
    sub_2713F4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  else
  {
    v15 = v9;
    (*(v8 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    sub_2A5890(v11, a3, a4, &v17);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v15 = v17;
    }
  }

  return result;
}

uint64_t sub_270924(_BYTE *a1)
{
  if (*a1)
  {
    sub_2713F4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = *v1;
    v5 = ccec_export_pub_size((*v1 + 32));
    v6 = sub_303AE8();
    *(v6 + 16) = v5;
    ccec_export_pub((v4 + 32), (v6 + 32));
    *(v6 + 16) = v5;
    v7 = sub_271344(v6);

    return v7;
  }
}

uint64_t sub_270A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v12 == 1)
  {
    v13 = v9;
    (*(v8 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    sub_2A5908(v11, a3, a4, &v17);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v13 = v17;
    }
  }

  else
  {
    sub_2713F4();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t sub_270BD8(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = *v1;
    v3 = ccec_export_pub_size((*v1 + 32));
    v4 = sub_303AE8();
    *(v4 + 16) = v3;
    ccec_export_pub((v2 + 32), (v4 + 32));
    *(v4 + 16) = v3;
    v5 = sub_271344(v4);

    return v5;
  }

  else
  {
    sub_2713F4();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }
}

void *sub_270CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X1>, void *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size(result);
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_270D7C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, void, uint64_t)@<X3>, void *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = getccec_full_ctx_size(result);
    result = a2(v6, 0, v6);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v12 == 2)
  {
    v13 = v9;
    (*(v8 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    sub_2A597C(v11, a3, a4, &v17);
    result = (*(v8 + 8))(a1, a3);
    if (!v4)
    {
      *v13 = v17;
    }
  }

  else
  {
    sub_2713F4();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return (*(v8 + 8))(a1, a3);
  }

  return result;
}

uint64_t sub_270F50(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = *v1;
    v3 = ccec_export_pub_size((*v1 + 32));
    v4 = sub_303AE8();
    *(v4 + 16) = v3;
    ccec_export_pub((v2 + 32), (v4 + 32));
    *(v4 + 16) = v3;
    v5 = sub_271344(v4);

    return v5;
  }

  else
  {
    sub_2713F4();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_27103C(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_303AE8();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5 + 4;
  v8 = 0;
  v7[0] = v5 + 4;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        v5[2] = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      v5[2] = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_27113C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2711A8(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2711FC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_303C88();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27124C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3 = *(a3 + 3);
  v7 = *(a3 + 1);
  v8 = v3;
  v5[2] = &v6;
  return sub_2711A8(sub_271600, v5, a1, a2);
}

void *sub_2712B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = *(a3 + 32);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FB8) + 48);
  sub_271620(v11, v10);
  result = sub_287DC0(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_271344(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518DA8);
  v10 = sub_2714B8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_29516C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_2713F4()
{
  result = qword_518F00;
  if (!qword_518F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518F00);
  }

  return result;
}

unint64_t sub_2714B8()
{
  result = qword_518FB0;
  if (!qword_518FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_518DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518FB0);
  }

  return result;
}

uint64_t sub_271538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2715A8()
{
  result = qword_518FE8;
  if (!qword_518FE8)
  {
    sub_3035D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518FE8);
  }

  return result;
}

uint64_t sub_271620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_271690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_27113C(sub_2716F8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_271724()
{
  v1 = *(v0 + 8);
  sub_2582E4(v1, *(v0 + 16));
  return v1;
}

void *sub_271758@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t destroy for KEM.EncapsulationResult(uint64_t a1)
{

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  return sub_258780(v2, v3);
}

void *sub_2717B4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  v4 = a2[2];

  sub_2582E4(v3, v4);
  a1[1] = v3;
  a1[2] = v4;
  return a1;
}

void *assignWithCopy for KEM.EncapsulationResult(void *a1, void *a2)
{
  *a1 = *a2;

  v5 = a2[1];
  v4 = a2[2];
  sub_2582E4(v5, v4);
  v6 = a1[1];
  v7 = a1[2];
  a1[1] = v5;
  a1[2] = v4;
  sub_258780(v6, v7);
  return a1;
}

void *assignWithTake for KEM.EncapsulationResult(void *a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);
  sub_258780(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for KEM.EncapsulationResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KEM.EncapsulationResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2719D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v23 = a8;
  v21 = a5;
  v22 = a7;
  v15 = sub_303B88();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  v25 = *a2;
  v24 = *a3;
  v19 = *(a6 - 8);
  (*(v19 + 16))(&v21 - v17, a4, a6);
  (*(v19 + 56))(v18, 0, 1, a6);
  sub_27516C(&v25, a1, &v24, v18, v21, a6, v22, v23, a9);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_271B6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v15 = *a2;
  v10 = *a3;
  v13 = xmmword_33E040;
  v14 = v10;
  v11 = sub_258338();
  return sub_27516C(&v15, a1, &v14, &v13, a4, &type metadata for Data, a5, v11, a6);
}

uint64_t sub_271C00(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_303B88();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *(a1 + 2);
  v20 = *a2;
  v18 = *a1;
  v19 = v14;
  v15 = *(a4 - 8);
  (*(v15 + 16))(v13, a3, a4);
  (*(v15 + 56))(v13, 0, 1, a4);
  v16 = sub_2755E4(&v20, &v18, v13, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_271DA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v45 = a5;
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_272804(a4, a2, a3, &v43);
  sub_272A84(v43, *(&v43 + 1), &v44);
  if (v6)
  {
    goto LABEL_28;
  }

  v12 = v44;
  v13 = ccaes_gcm_decrypt_mode();
  if (!v13)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v14 = v13;
  v41 = a1;
  v43 = v12;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();

  v15 = sub_27628C(&v41, &v43, v14);
  if (a6 >> 60 != 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = swift_allocObject();
      v17 = *(v15 + 24);
      v40 = v16;
      *(v16 + 24) = v17;
      getGCMCtxSize(v17);
      v18 = swift_slowAlloc();
      __src = *(v15 + 16);
      GCMCtxSize = getGCMCtxSize(v17);
      if ((GCMCtxSize & 0x8000000000000000) != 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      memmove(v18, __src, GCMCtxSize);
      *(v40 + 16) = v18;

      v15 = v40;
    }

    sub_273178(v45, a6);
  }

  v44 = xmmword_33DAD0;
  sub_272414(a4, a2, a3, &v41);
  sub_272630(16, v41, v42, &v43);
  v21 = *(&v43 + 1);
  v20 = v43;
  v22 = *(&v43 + 1) >> 62;
  if ((*(&v43 + 1) >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE14(v43);
      sub_258780(v43, *(&v43 + 1));
      v20 = v23;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v22 != 2)
  {
    sub_258780(v43, *(&v43 + 1));
    v20 = 0;
    goto LABEL_18;
  }

  v25 = *(v43 + 16);
  v24 = *(v43 + 24);
  sub_258780(v43, *(&v43 + 1));
  v20 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_15:
    v26 = HIDWORD(v20);
    v27 = v20;
    sub_258780(v20, v21);
    if (__OFSUB__(v26, v27))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20 = v26 - v27;
  }

LABEL_18:
  sub_303528(v20);
  sub_272414(a4, a2, a3, &v41);
  sub_272630(16, v41, v42, &v43);
  v28 = *(&v43 + 1);
  v29 = v43;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_21;
  }

  v30 = swift_allocObject();
  v31 = *(v15 + 24);
  *(v30 + 24) = v31;
  getGCMCtxSize(v31);
  v32 = swift_slowAlloc();
  v45 = *(v15 + 16);
  v33 = getGCMCtxSize(v31);
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  memmove(v32, v45, v33);
  *(v30 + 16) = v32;

LABEL_21:
  sub_2733BC(v29, v28, &v44);
  sub_258780(v29, v28);
  sub_272260(16, a2, a3, &v43);
  v35 = *(&v43 + 1);
  v34 = v43;
  v36 = sub_276BA4(v43, *(&v43 + 1));
  sub_258780(v34, v35);
  if (v36)
  {

    return v44;
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v38 = 2;
    *(v38 + 4) = 1;
    swift_willThrow();
    sub_258780(v44, *(&v44 + 1));
  }
}

uint64_t sub_272214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2582E4(v1, v2);
  sub_272260(16, v1, v2, &v4);
  return v4;
}

uint64_t sub_272260@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_273B30(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_273ACC(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_303558();
    v14 = v13;
    result = sub_258780(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2723AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2582E4(v1, v2);
  sub_272414(v3, v1, v2, v5);
  sub_272630(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t sub_272414@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_273B30(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_273ACC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_303558();
    v16 = v15;
    result = sub_258780(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

unint64_t sub_272564(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = a3 - a2;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (result)
  {
    if (v6 < result)
    {
      result = v5;
      if (a2)
      {
        return result;
      }

      return 0;
    }

    if (!a2)
    {
LABEL_17:
      __break(1u);
      return result;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (v5 < result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

unint64_t sub_2725C4(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_272630@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_273B30(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_273ACC(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = sub_303558();
    v15 = v14;
    result = sub_258780(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_272778@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_2582E4(v3, v4);
  sub_272804(v5, v3, v4, v7);
  return sub_272A84(v7[0], v7[1], a1);
}

uint64_t sub_272804@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_273B30(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_273ACC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_303558();
    v15 = v14;
    result = sub_258780(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_27294C(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2729C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = sub_292504(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272A50(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3 - a2;
    if (!a2)
    {
      v3 = 0;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272A84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= 12)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 12)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_258780(a1, a2);
      sub_273BE4();
      swift_allocError();
      *v8 = 1;
      *(v8 + 4) = 1;
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0xCuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v32[3] = &type metadata for Data;
  v32[4] = &protocol witness table for Data;
  v32[0] = a1;
  v32[1] = a2;
  v11 = __swift_project_boxed_opaque_existential_1(v32, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v30, 0, 14);
      v16 = v30;
      v15 = v30;
      goto LABEL_33;
    }

    v17 = *(v12 + 16);
    v18 = *(v12 + 24);
    v19 = sub_303388();
    if (v19)
    {
      v20 = sub_3033B8();
      v12 = v17 - v20;
      if (__OFSUB__(v17, v20))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v19 += v12;
    }

    v6 = __OFSUB__(v18, v17);
    v21 = v18 - v17;
    if (!v6)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v14)
  {
LABEL_21:
    v22 = v12;
    v23 = v12 >> 32;
    v21 = v23 - v22;
    if (v23 >= v22)
    {
      v19 = sub_303388();
      if (!v19)
      {
LABEL_25:
        v25 = sub_3033A8();
        if (v25 >= v21)
        {
          v26 = v21;
        }

        else
        {
          v26 = v25;
        }

        v27 = (v26 + v19);
        if (v19)
        {
          v15 = v27;
        }

        else
        {
          v15 = 0;
        }

        v16 = v19;
        goto LABEL_33;
      }

      v24 = sub_3033B8();
      if (!__OFSUB__(v22, v24))
      {
        v19 += v22 - v24;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v30[0] = *v11;
  LOWORD(v30[1]) = v13;
  BYTE2(v30[1]) = BYTE2(v13);
  BYTE3(v30[1]) = BYTE3(v13);
  BYTE4(v30[1]) = BYTE4(v13);
  BYTE5(v30[1]) = BYTE5(v13);
  v15 = v30 + BYTE6(v13);
  v16 = v30;
LABEL_33:
  sub_29516C(v16, v15, v31);
  v28 = v31[0];
  v29 = v31[1];
  result = __swift_destroy_boxed_opaque_existential_0(v32);
  *a3 = v28;
  a3[1] = v29;
  return result;
}

uint64_t sub_272D20()
{
  if (v0[2] != 12)
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_2582E4(v1, v2[1]);
  return v1;
}

uint64_t sub_272D6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 12;
  return result;
}

uint64_t sub_272D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_303B08() >= 28)
  {
    v10 = sub_2A0C94(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
    a4[2] = 12;
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

Swift::Int sub_272E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v29 = a6;
  v11 = *a1;
  v10 = a1[1];
  result = sub_303B08();
  if (result != 16)
  {
    sub_258780(v11, v10);
    sub_273BE4();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    swift_willThrow();
    (*(*(a5 - 8) + 8))(a3, a5);
    return (*(*(a4 - 8) + 8))(a2, a4);
  }

  v13 = v10 >> 62;
  v26 = a4;
  if ((v10 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v10);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  v14 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v11), v11))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v14 = HIDWORD(v11) - v11;
  }

LABEL_13:
  v28 = xmmword_33DAD0;
  v25 = a2;
  result = sub_303B08();
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_303B08();
  v20 = __OFADD__(v18, v19);
  result = v18 + v19;
  if (v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_303528(result);
  v27[3] = &type metadata for Data;
  v27[4] = &protocol witness table for Data;
  v27[0] = v11;
  v27[1] = v10;
  v21 = __swift_project_boxed_opaque_existential_1(v27, &type metadata for Data);
  v22 = *v21;
  v23 = v21[1];
  sub_2582E4(v11, v10);
  sub_273900(v22, v23);
  sub_258780(v11, v10);
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_3035B8();
  sub_3035B8();
  (*(*(a5 - 8) + 8))(a3, a5);
  result = (*(*(v26 - 8) + 8))(v25, v26);
  v24 = v29;
  *v29 = v28;
  *(v24 + 2) = v14;
  return result;
}

uint64_t sub_273178(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v20, 0, 14);
      v6 = ccgcm_aad(*(v2 + 24), *(v2 + 16), 0, v20);
      if (!v6)
      {
        return sub_258780(a1, a2);
      }

      goto LABEL_20;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);

    v9 = sub_303388();
    if (v9)
    {
      v10 = sub_3033B8();
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_27;
      }

      v9 += v7 - v10;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (v11)
    {
      goto LABEL_25;
    }

    result = sub_3033A8();
    if (v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v6 = ccgcm_aad(*(v2 + 24), *(v2 + 16), BYTE6(a2), v20);
    if (!v6)
    {
      return sub_258780(a1, a2);
    }

    goto LABEL_20;
  }

  v12 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v14 = sub_303388();
  if (!v14)
  {
    result = sub_3033A8();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = sub_3033B8();
  if (__OFSUB__(a1, v16))
  {
    goto LABEL_26;
  }

  v9 = a1 - v16 + v15;
  result = sub_3033A8();
  if (v9)
  {
LABEL_16:
    if (result >= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = result;
    }

    v6 = ccgcm_aad(*(v2 + 24), *(v2 + 16), v17, v9);
    if (!v6)
    {
      return sub_258780(a1, a2);
    }

LABEL_20:
    v18 = v6;
    sub_273BE4();
    swift_allocError();
    *v19 = v18;
    *(v19 + 4) = 0;
    swift_willThrow();
    return sub_258780(a1, a2);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2733BC(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_9:
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      result = BYTE6(a2);
      goto LABEL_21;
    }

LABEL_16:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      result = HIDWORD(result) - result;
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v6 != 2)
  {
    goto LABEL_20;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  result = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_20:
  result = 0;
LABEL_21:
  v9 = sub_27A290(result);
  __chkstk_darwin(v9);
  result = sub_27C7B4(sub_273E8C);
  if (result)
  {
    v10 = result;
    sub_273BE4();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_273534(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = sub_272564(a3, a1, a2);
  if (v12)
  {
    v13 = v12 + v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12 + v10;
  }

  else
  {
    v14 = 0;
  }

  v40[0] = v14;
  v40[1] = v13;
  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v39, 0, 14);
      v16 = v39;
LABEL_52:
      sub_2769F4(v39, v16, v40, a6, &v38);
      if (!v6)
      {
        sub_258780(a4, a5);
        return v38;
      }

LABEL_88:

      __break(1u);
      return result;
    }

    v18 = *(a4 + 16);
    v17 = *(a4 + 24);

    v19 = sub_303388();
    if (v19)
    {
      v20 = sub_3033B8();
      if (__OFSUB__(v18, v20))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v19 += v18 - v20;
    }

    v21 = __OFSUB__(v17, v18);
    v22 = v17 - v18;
    if (v21)
    {
      goto LABEL_77;
    }

    v23 = sub_3033A8();
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    if (v19)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v13 - v14;
    if (v14)
    {
      v27 = v13 - v14;
    }

    else
    {
      v27 = 0;
    }

    if (v27 < v25)
    {
      goto LABEL_78;
    }

    if (v19)
    {
      v28 = v19 + v24;
      v29 = v24;
      v30 = ccgcm_update(*(a6 + 24), *(a6 + 16), v24, v19, v14);
      if (v30)
      {
LABEL_49:
        v37 = v30;
        sub_258780(a4, a5);
        return v37;
      }

      if (v27 < 0)
      {
        goto LABEL_82;
      }

      result = sub_258780(a4, a5);
      if (v29 <= 0)
      {
        result = 0;
        if (v27)
        {
          if (!v14)
          {
            return result;
          }
        }

        else if (!v14 || v19 != v28)
        {
          return result;
        }

        if (v26 >= v29)
        {
          return result;
        }
      }

      else
      {
        if (v27 < v29)
        {
          return 0;
        }

        if (!v14)
        {
          goto LABEL_86;
        }

        if (v26 >= v29)
        {
          return 0;
        }
      }

      __break(1u);
      goto LABEL_72;
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (!v15)
  {
    v39[0] = a4;
    LOWORD(v39[1]) = a5;
    BYTE2(v39[1]) = BYTE2(a5);
    BYTE3(v39[1]) = BYTE3(a5);
    BYTE4(v39[1]) = BYTE4(a5);
    BYTE5(v39[1]) = BYTE5(a5);
    v16 = v39 + BYTE6(a5);
    goto LABEL_52;
  }

  if (a4 >> 32 < a4)
  {
    goto LABEL_76;
  }

  v19 = sub_303388();
  if (v19)
  {
    v32 = sub_3033B8();
    if (__OFSUB__(a4, v32))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v19 += a4 - v32;
  }

  v33 = sub_3033A8();
  if (v33 >= (a4 >> 32) - a4)
  {
    v34 = (a4 >> 32) - a4;
  }

  else
  {
    v34 = v33;
  }

  if (v19)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v26 = v13 - v14;
  if (v14)
  {
    v36 = v13 - v14;
  }

  else
  {
    v36 = 0;
  }

  if (v36 < v35)
  {
    goto LABEL_79;
  }

  if (!v19)
  {
    goto LABEL_85;
  }

  v28 = v19 + v34;
  v29 = v34;
  v30 = ccgcm_update(*(a6 + 24), *(a6 + 16), v34, v19, v14);
  if (v30)
  {
    goto LABEL_49;
  }

  if (v36 < 0)
  {
LABEL_83:
    __break(1u);
  }

  sub_258780(a4, a5);
  if (v29 > 0)
  {
    if (v36 < v29)
    {
      return 0;
    }

    if (v14)
    {
      if (v26 >= v29)
      {
        return 0;
      }

      goto LABEL_75;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  result = 0;
  if (!v36)
  {
LABEL_72:
    if (!v14 || v19 != v28)
    {
      return result;
    }

    goto LABEL_74;
  }

  if (!v14)
  {
    return result;
  }

LABEL_74:
  if (v26 < v29)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  return result;
}

uint64_t sub_273900(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_303548();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_273A38(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_273A38(v3, v4);
  }

  return sub_303548();
}

uint64_t sub_273A38(uint64_t a1, uint64_t a2)
{
  result = sub_303388();
  if (!result || (result = sub_3033B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_3033A8();
      return sub_303548();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_273ACC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_273B30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_273BE4()
{
  result = qword_518FF0;
  if (!qword_518FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518FF0);
  }

  return result;
}

unint64_t sub_273C38()
{
  result = qword_518FF8;
  if (!qword_518FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518FF8);
  }

  return result;
}

unint64_t sub_273C90()
{
  result = qword_519000;
  if (!qword_519000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519000);
  }

  return result;
}

uint64_t *sub_273CF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  sub_2582E4(*a2, v5);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = a2[2];
  return a1;
}

uint64_t *_s3GCMO9SealedBoxVwca(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  sub_2582E4(*a2, v5);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  sub_258780(v6, v7);
  a1[2] = a2[2];
  return a1;
}

uint64_t *_s3GCMO9SealedBoxVwta(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *a1 = *a2;
  sub_258780(v4, v5);
  a1[2] = *(a2 + 16);
  return a1;
}

uint64_t _s3GCMO9SealedBoxVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s3GCMO9SealedBoxVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_273E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_273534(a1, a2, *(v3 + 16), **(v3 + 24), *(*(v3 + 24) + 8), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_273F50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273F9C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_274004()
{
  result = qword_519080;
  if (!qword_519080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519080);
  }

  return result;
}

unint64_t sub_27405C()
{
  result = qword_5190B0;
  if (!qword_5190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5190B0);
  }

  return result;
}

unint64_t sub_2740B4()
{
  result = qword_5190E0;
  if (!qword_5190E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5190E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CorecryptoCurveType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CorecryptoCurveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_2741F0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v3);
  result = groupOrderByteCountForCP(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_274234(unsigned __int8 *result, uint64_t a2, unint64_t ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  result = (*(a6 + 24))(&v11, a4, a6);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = ccec_x963_import_priv(v11, a2 - v8, v8, v6);
  if (result)
  {
    v9 = result;
    sub_273BE4();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_2742F4(uint64_t a1, uint64_t a2, uint64_t ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  if (!*a3)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  (*(a6 + 24))(v28, a4, a6);
  if (!a1)
  {
    goto LABEL_26;
  }

  v12 = ccec_raw_import_priv_only(v28[0], a2 - a1, a1, v6);
  if (v12)
  {
    v13 = v12;
    sub_273BE4();
    swift_allocError();
    *v14 = v13;
    *(v14 + 4) = 0;
    return swift_willThrow();
  }

  v16 = ccec_der_export_priv_size(v6, 0, 0);
  if (!v16)
  {
    if (qword_518860 == -1)
    {
LABEL_16:
      v24 = off_519B88[0];

      goto LABEL_17;
    }

LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  v17 = v16;
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
  v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
  v20 = v19 | HIWORD(v19);
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  type metadata accessor for SecureBytes.Backing();
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = v23;
  if ((_swift_stdlib_malloc_size(v24) - 32) < v17)
  {
    goto LABEL_22;
  }

  LODWORD(v28[0]) = 0;
  result = ccrng(v28);
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (LODWORD(v28[0]))
  {
    goto LABEL_23;
  }

  ccrng_generate_bridge(result);
  swift_beginAccess();
  *(v24 + 2) = v17;
LABEL_17:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_beginAccess();
    sub_299C98((v24 + 8), v24 + *(v24 + 2) + 32, &v27);
    v25 = v27;

    v24 = v25;
  }

  swift_beginAccess();
  sub_2745B4((v24 + 8), v24 + *(v24 + 2) + 32, &v26, v6, a4, a5, a6);
}

uint64_t sub_2745B4(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v11 = result;
    v12 = a2 - result;
    LODWORD(result) = ccec_der_export_priv(a4, 0, 0, a2 - result, result);
    *a3 = result;
    if (result || ((*(a7 + 24))(&v15, a5, a7), result = ccec_der_import_priv(v15, v12, v11, a4), (*a3 = result) != 0))
    {
      v13 = result;
      sub_273BE4();
      swift_allocError();
      *v14 = v13;
      *(v14 + 4) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2746AC(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2741F0(a3, a5);
  if ((result + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  if (a2 - a1 == ((2 * result) | 1))
  {
    if (a2 != a1)
    {
      if (*a1 == 4)
      {
        return result;
      }

      v8 = 5;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_8:
  sub_273BE4();
  swift_allocError();
  *v9 = v8;
  *(v9 + 4) = 1;
  return swift_willThrow();
}

unint64_t sub_274778(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2741F0(a3, a5);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (!a1)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  if (a2 - a1 != result + 1)
  {
LABEL_8:
    sub_273BE4();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  if (a2 == a1 || (*a1 & 0xFE) != 2)
  {
    v8 = 5;
    goto LABEL_8;
  }

  return result;
}

void *sub_27483C(void *result)
{
  if (*result)
  {
    return sub_3033E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_2748A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  result = sub_3033E8();
  if (!v4)
  {
    (*(a4 + 24))(&v11, a2, a4);
    v8 = getccec_pub_ctx_size(v11);
    v10 = __chkstk_darwin(v8);
    result = sub_27103C(v10, sub_27506C);
    if (v12)
    {

      sub_273BE4();
      swift_allocError();
      *v9 = 1;
      *(v9 + 4) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_274A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *))
{
  (*(a4 + 24))(&v9, a2, a4);
  v8 = getccec_full_ctx_size(v9);
  return sub_29B110(v8, a6);
}

uint64_t sub_274B74(uint64_t a1, void *a2)
{
  v5 = *(v2 + 56);
  result = sub_3033E8();
  if (!v3)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_274C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_3033E8();
  if (!v4)
  {
    v12 = 0;
    (*(a4 + 24))(&v11, a2, a4);
    v8 = getccec_pub_ctx_size(v11);
    __chkstk_darwin(v8);
    result = sub_27103C(v9, sub_274DEC);
    if (v12)
    {

      sub_273BE4();
      swift_allocError();
      *v10 = 1;
      *(v10 + 4) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_274F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t *))
{
  v12 = 0;
  (*(a4 + 24))(&v11, a2, a4);
  v10 = getccec_pub_ctx_size(v11);
  result = sub_27103C(v10, a6);
  if (v12)
  {
    v8 = result;

    sub_273BE4();
    swift_allocError();
    *v9 = 1;
    *(v9 + 4) = 1;
    swift_willThrow();
    return v8;
  }

  return result;
}

void *sub_2750C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v3[6];
  v7 = v3[7];
  v9 = v3[8];
  v10 = v3[9];
  result = (*(v3[4] + 24))(&v12);
  if (a1)
  {
    result = a3(v12, a2 - a1, a1, v7);
    *v8 = result;
    *v9 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27516C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v43 = a8;
  v44 = a2;
  v45 = a5;
  v46 = a7;
  v47 = a4;
  v42 = a9;
  v49 = sub_303B88();
  v13 = __chkstk_darwin(v49);
  v15 = &v42 - v14;
  v50 = *(a6 - 8);
  __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v20 = *a3;
  v19 = a3[1];
  v48 = v21;
  if (v19 >> 60 == 15)
  {
    v52 = xmmword_33E1E0;
    sub_2A135C(&v52);
    v22 = *(&v52 + 1);
    v23 = v52;
  }

  else
  {
    v23 = v20;
    v22 = v19;
  }

  sub_2582E4(v23, v22);
  sub_276F08(v20, v19);
  v24 = ccaes_gcm_encrypt_mode();
  if (!v24)
  {
LABEL_26:
    __break(1u);
  }

  v25 = v24;
  *&v55 = v18;
  *&v52 = v23;
  *(&v52 + 1) = v22;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();
  v26 = sub_27628C(&v55, &v52, v25);
  if (v9)
  {
    return sub_258780(v23, v22);
  }

  v51 = v26;
  v28 = v48;
  v29 = v49;
  (*(v48 + 16))(v15, v47, v49);
  v30 = v50;
  if ((*(v50 + 48))(v15, 1, a6) == 1)
  {
    (*(v28 + 8))(v15, v29);
  }

  else
  {
    (*(v30 + 32))(v17, v15, a6);
    sub_275B20(v17, a6, v43);
    (*(v30 + 8))(v17, a6);
  }

  v31 = v22 >> 62;
  v32 = v44;
  if ((v22 >> 62) <= 1)
  {
    if (!v31)
    {
      v33 = BYTE6(v22);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v31 != 2)
  {
    v33 = 0;
    goto LABEL_20;
  }

  v35 = *(v23 + 16);
  v34 = *(v23 + 24);
  v33 = v34 - v35;
  if (__OFSUB__(v34, v35))
  {
    __break(1u);
LABEL_17:
    if (__OFSUB__(HIDWORD(v23), v23))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v33 = HIDWORD(v23) - v23;
  }

LABEL_20:
  v55 = xmmword_33DAD0;
  v36 = sub_303B08();
  v37 = v33 + v36;
  if (__OFADD__(v33, v36))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v37, 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_303528(v37 + 16);
  v53 = &type metadata for Data;
  v54 = &protocol witness table for Data;
  *&v52 = v23;
  *(&v52 + 1) = v22;
  v38 = __swift_project_boxed_opaque_existential_1(&v52, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_2582E4(v23, v22);
  sub_273900(v39, v40);
  __swift_destroy_boxed_opaque_existential_0(&v52);
  sub_27602C(v32, &v55);
  sub_276AB0();
  sub_258780(v23, v22);

  v41 = v42;
  *v42 = v55;
  *(v41 + 2) = v33;
  return result;
}

uint64_t sub_2755E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v55 = a3;
  v9 = sub_303B88();
  v56 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v57 = *(a4 - 8);
  __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];

  sub_2582E4(v16, v17);
  v53 = v18;
  v54 = v16;
  v58 = v17;
  sub_272804(v18, v16, v17, &v61);
  sub_272A84(v61, *(&v61 + 1), &v62);
  if (v5)
  {
    goto LABEL_31;
  }

  v19 = v62;
  v20 = ccaes_gcm_decrypt_mode();
  if (!v20)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v21 = v20;
  v59 = v15;
  v61 = v19;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();
  v22 = sub_27628C(&v59, &v61, v21);
  v51 = 0;
  v63 = v22;
  v23 = v56;
  (*(v56 + 16))(v12, v55, v9);
  v24 = v57;
  if ((*(v57 + 48))(v12, 1, a4) == 1)
  {
    (*(v23 + 8))(v12, v9);
    v25 = v54;
  }

  else
  {
    (*(v24 + 32))(v14, v12, a4);
    v26 = v51;
    sub_275B20(v14, a4, v52);
    (*(v24 + 8))(v14, a4);
    v51 = v26;
    v25 = v54;
    if (v26)
    {
    }
  }

  v62 = xmmword_33DAD0;
  v28 = v58;
  sub_2582E4(v25, v58);
  v29 = v53;
  sub_272414(v53, v25, v28, &v59);
  sub_272630(16, v59, v60, &v61);
  v31 = *(&v61 + 1);
  v30 = v61;
  v32 = *(&v61 + 1) >> 62;
  if ((*(&v61 + 1) >> 62) <= 1)
  {
    if (!v32)
    {
      v33 = BYTE14(v61);
      sub_258780(v61, *(&v61 + 1));
      v30 = v33;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v32 != 2)
  {
    sub_258780(v61, *(&v61 + 1));
    v30 = 0;
    goto LABEL_19;
  }

  v35 = *(v61 + 16);
  v34 = *(v61 + 24);
  sub_258780(v61, *(&v61 + 1));
  v30 = v34 - v35;
  if (__OFSUB__(v34, v35))
  {
    __break(1u);
LABEL_15:
    v36 = HIDWORD(v30);
    v37 = v30;
    sub_258780(v30, v31);
    if (__OFSUB__(v36, v37))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v36 - v37;
  }

LABEL_19:
  sub_303528(v30);
  sub_2582E4(v25, v28);
  sub_272414(v29, v25, v28, &v59);
  sub_272630(16, v59, v60, &v61);
  v39 = *(&v61 + 1);
  v38 = v61;
  v40 = v63;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_22;
  }

  v41 = swift_allocObject();
  v42 = *(v40 + 24);
  *(v41 + 24) = v42;
  getGCMCtxSize(v42);
  v43 = swift_slowAlloc();
  v44 = *(v40 + 16);
  GCMCtxSize = getGCMCtxSize(v42);
  if ((GCMCtxSize & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  memmove(v43, v44, GCMCtxSize);
  *(v41 + 16) = v43;

  v28 = v58;
LABEL_22:
  v46 = v51;
  sub_2733BC(v38, v39, &v62);
  sub_258780(v38, v39);
  if (v46)
  {
    sub_258780(v62, *(&v62 + 1));
  }

  else
  {
    sub_2582E4(v25, v28);
    sub_272260(16, v25, v28, &v61);
    v48 = *(&v61 + 1);
    v47 = v61;
    v49 = sub_276BA4(v61, *(&v61 + 1));
    sub_258780(v47, v48);
    if (v49)
    {

      return v62;
    }

    else
    {
      sub_273BE4();
      swift_allocError();
      *v50 = 2;
      *(v50 + 4) = 1;
      swift_willThrow();
      sub_258780(v62, *(&v62 + 1));
    }
  }
}

size_t sub_275B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_275C08(a1, a2, a3);
  }

  type metadata accessor for CoreCryptoGCMImpl.Context();
  v9 = swift_allocObject();
  v10 = *(v8 + 24);
  *(v9 + 24) = v10;
  getGCMCtxSize(v10);
  v11 = swift_slowAlloc();
  v12 = *(v8 + 16);
  result = getGCMCtxSize(v10);
  if ((result & 0x8000000000000000) == 0)
  {
    memmove(v11, v12, result);
    *(v9 + 16) = v11;

    *v3 = v9;
    return sub_275C08(a1, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_275C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  swift_getAssociatedTypeWitness();
  v28 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v23 - v4;
  v6 = sub_303B88();
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = swift_checkMetadataState();
  __chkstk_darwin(v9);
  v10 = swift_getAssociatedTypeWitness();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_3032E8();
  sub_303A28();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v12;
  v29 = v10;
  v27 = AssociatedConformanceWitness;
  sub_303C08();
  v14 = v24;
  v26 = *(v24 + 48);
  if (v26(v8, 1, AssociatedTypeWitness) != 1)
  {
    v17 = *(v14 + 32);
    v15 = v14 + 32;
    v16 = v17;
    v18 = (v15 - 24);
    while (1)
    {
      v19 = v15;
      v16(v5, v8, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_3033E8();
      v20 = v32;
      if (v32)
      {
        break;
      }

      (*v18)(v5, AssociatedTypeWitness);
      sub_303C08();
      v15 = v19;
      if (v26(v8, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v25 + 8))(v28, v29);
      }
    }

    sub_273BE4();
    swift_allocError();
    *v21 = v20;
    *(v21 + 4) = 0;
    swift_willThrow();
    (*v18)(v5, AssociatedTypeWitness);
  }

  return (*(v25 + 8))(v28, v29);
}

size_t sub_27602C(uint64_t a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    return sub_27612C(a1, a2);
  }

  type metadata accessor for CoreCryptoGCMImpl.Context();
  v7 = swift_allocObject();
  v8 = *(v6 + 24);
  *(v7 + 24) = v8;
  getGCMCtxSize(v8);
  v9 = swift_slowAlloc();
  v10 = *(v6 + 16);
  result = getGCMCtxSize(v8);
  if ((result & 0x8000000000000000) == 0)
  {
    memmove(v9, v10, result);
    *(v7 + 16) = v9;

    *v2 = v7;
    return sub_27612C(a1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_27612C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = v2 + 16;
    v2 = *(v2 + 16);
    if (!__OFSUB__(*(v4 + 8), v2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_9:
  result = sub_303B08();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = sub_27A290(result);
  __chkstk_darwin(v5);
  result = sub_27C7B4(sub_276EC8);
  if (result)
  {
    v6 = result;
    sub_273BE4();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_27628C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v8 = *a2;
  v7 = a2[1];
  swift_beginAccess();
  v9 = *(v6 + 16);
  if (v9 >> 60)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v9 > 0x20;
  v11 = (1 << v9) & 0x101010000;
  if (v10 || v11 == 0)
  {
    sub_258780(v8, v7);

    sub_273BE4();
    swift_allocError();
    *v20 = 0;
    *(v20 + 4) = 1;
    swift_willThrow();
    type metadata accessor for CoreCryptoGCMImpl.Context();
    swift_deallocPartialClassInstance();
    return v4;
  }

  getGCMCtxSize(a3);
  v13 = swift_slowAlloc();
  *(v3 + 16) = v13;
  *(v3 + 24) = a3;
  v14 = ccgcm_init(a3, v13, *(v6 + 16), v6 + 32);

  if (v14)
  {
    sub_258780(v8, v7);
LABEL_29:
    sub_273BE4();
    swift_allocError();
    *v28 = v14;
    *(v28 + 4) = 0;
    swift_willThrow();

    return v4;
  }

  v15 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v15)
    {
      v29[0] = v8;
      LOWORD(v29[1]) = v7;
      BYTE2(v29[1]) = BYTE2(v7);
      BYTE3(v29[1]) = BYTE3(v7);
      BYTE4(v29[1]) = BYTE4(v7);
      BYTE5(v29[1]) = BYTE5(v7);
      v16 = BYTE6(v7);
      v17 = *(v4 + 16);
      v18 = v29;
      v19 = a3;
      goto LABEL_28;
    }

    if (v8 <= v8 >> 32)
    {

      v22 = sub_303388();
      if (v22)
      {
        v27 = sub_3033B8();
        if (__OFSUB__(v8, v27))
        {
          goto LABEL_36;
        }

        v22 += v8 - v27;
      }

      result = sub_3033A8();
      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        if (v22)
        {
          v17 = *(v4 + 16);
          v16 = HIDWORD(v8) - v8;
          goto LABEL_26;
        }

        goto LABEL_38;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v15 != 2)
  {
    memset(v29, 0, 14);
    v17 = *(v4 + 16);
    v18 = v29;
    v19 = a3;
    v16 = 0;
LABEL_28:
    v14 = ccgcm_set_iv(v19, v17, v16, v18);
    sub_258780(v8, v7);
    sub_258780(v8, v7);
    if (v14)
    {
      goto LABEL_29;
    }

    return v4;
  }

  v21 = *(v8 + 16);

  v22 = sub_303388();
  if (v22)
  {
    v23 = sub_3033B8();
    if (__OFSUB__(v21, v23))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v22 += v21 - v23;
  }

  result = sub_3033A8();
  v26 = *(v8 + 16);
  v25 = *(v8 + 24);
  v16 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    goto LABEL_33;
  }

  if (v22)
  {
    v17 = *(v4 + 16);
LABEL_26:
    v19 = a3;
    v18 = v22;
    goto LABEL_28;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2765E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v36 = a6;
  v37 = a7;
  v34 = a5;
  AssociatedConformanceWitness = a3;
  v38 = a2;
  v39 = a4;
  v33 = a8;
  swift_getAssociatedTypeWitness();
  v30 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v30 - v10;
  v12 = sub_303B88();
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = swift_checkMetadataState();
  __chkstk_darwin(v15);
  v16 = swift_getAssociatedTypeWitness();
  v32 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = sub_272564(AssociatedConformanceWitness, a1, v38);
  v21 = v20 + v19;
  v23 = v20 + v22;
  if (!v20)
  {
    v23 = 0;
    v21 = 0;
  }

  v40[0] = v21;
  v40[1] = v23;
  sub_3032E8();
  v38 = v18;
  sub_303A28();
  v39 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = (v31 + 48);
  v25 = (v31 + 32);
  v26 = (v31 + 8);
  while (1)
  {
    sub_303C08();
    if ((*v24)(v14, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v27 = (*v25)(v11, v14, AssociatedTypeWitness);
    __chkstk_darwin(v27);
    *(&v30 - 2) = v40;
    *(&v30 - 1) = v34;
    swift_getAssociatedConformanceWitness();
    sub_3033E8();
    (*v26)(v11, AssociatedTypeWitness);
    v28 = v41;
    if (v41)
    {
      goto LABEL_8;
    }
  }

  v28 = 0;
LABEL_8:
  result = (*(v32 + 8))(v38, v39);
  *v33 = v28;
  return result;
}

uint64_t sub_2769F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = a2 - result;
  if (result)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  if (*a3)
  {
    if (a3[1] - v9 >= v8)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = ccgcm_update(*(a4 + 24), *(a4 + 16), v7, result, v9);
  v10 = result;
  if (!result)
  {
    result = sub_272564(v7, *a3, a3[1]);
    v12 = v11 + result;
    v14 = v11 + v13;
    if (!v11)
    {
      v14 = 0;
      v12 = 0;
    }

    *a3 = v12;
    a3[1] = v14;
  }

  *a5 = v10;
  return result;
}

uint64_t sub_276AB0()
{
  v5[0] = 0;
  v5[1] = 0;
  v1 = ccgcm_finalize(*(v0 + 24), *(v0 + 16), 16, v5);
  if (v1)
  {
    v2 = v1;
    sub_273BE4();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v6[3] = &type metadata for UnsafeRawBufferPointer;
    v6[4] = &protocol witness table for UnsafeRawBufferPointer;
    v6[0] = v5;
    v6[1] = v6;
    __swift_project_boxed_opaque_existential_1(v6, &type metadata for UnsafeRawBufferPointer);
    sub_303548();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }
}

uint64_t *sub_276BA4(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (HIDWORD(a1) - a1 != 16)
    {
      return 0;
    }
  }

LABEL_8:
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = *(v2 + 24);
  result = ccaes_gcm_decrypt_mode();
  if (result)
  {
    if (v10 == result)
    {
      v12 = a1;
      if (v4 == 2)
      {
        v15 = v2;
        v20 = *(v12 + 16);
        v21 = *(v12 + 24);
        v19 = sub_303388();
        if (v19)
        {
          v22 = sub_3033B8();
          if (__OFSUB__(v20, v22))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v19 += v20 - v22;
        }

        v7 = __OFSUB__(v21, v20);
        v14 = v21 - v20;
        if (!v7)
        {
LABEL_23:
          v23 = sub_3033A8();
          v2 = v15;
          if (v19)
          {
            if (v23 >= v14)
            {
              v24 = v14;
            }

            else
            {
              v24 = v23;
            }

            memmove(__dst, v19, v24);
          }

          return (ccgcm_finalize(v10, *(v2 + 16), 16, __dst) == 0);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v4 != 1)
      {
        __src = a1;
        v26 = a2;
        v27 = BYTE2(a2);
        v28 = BYTE3(a2);
        v29 = BYTE4(a2);
        v30 = BYTE5(a2);
        memcpy(__dst, &__src, BYTE6(a2));
        return (ccgcm_finalize(v10, *(v2 + 16), 16, __dst) == 0);
      }

      v13 = a1;
      v14 = (a1 >> 32) - a1;
      if (a1 >> 32 >= a1)
      {
        v15 = v2;
        v16 = sub_303388();
        if (v16)
        {
          v17 = v16;
          v18 = sub_3033B8();
          if (!__OFSUB__(v13, v18))
          {
            v19 = (v13 - v18 + v17);
            goto LABEL_23;
          }

LABEL_37:
          __break(1u);
        }

        sub_3033A8();
        return (ccgcm_finalize(v10, *(v2 + 16), 16, __dst) == 0);
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_276DF8()
{
  v1 = *(v0 + 16);
  GCMCtxSize = getGCMCtxSize(*(v0 + 24));
  memset_s(v1, GCMCtxSize, 0, GCMCtxSize);

  return swift_deallocClassInstance();
}

uint64_t sub_276E80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (result)
  {
    result = ccgcm_aad(*(v3 + 24), *(v3 + 16), a2 - result, result);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_276F08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2582E4(a1, a2);
  }

  return a1;
}

unint64_t sub_276F64(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v22 = a7;
  v14 = sub_303B88();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  v25 = *a2;
  v24 = *a3;
  v18 = *(a6 - 8);
  (*(v18 + 16))(&v21 - v16, a4, a6);
  (*(v18 + 56))(v17, 0, 1, a6);
  v19 = sub_27A604(&v25, a1, &v24, v17, a5, a6, v22, v23);
  (*(v15 + 8))(v17, v14);
  return v19;
}

unint64_t sub_27710C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v13 = *a2;
  v8 = *a3;
  v11 = xmmword_33E040;
  *v12 = v8;
  v9 = sub_258338();
  return sub_27A604(&v13, a1, v12, &v11, a4, &type metadata for Data, a5, v9);
}

uint64_t sub_277190(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_303B88();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v20 = *a3;
  v16 = *(a5 - 8);
  (*(v16 + 16))(&v19 - v14, a4, a5);
  (*(v16 + 56))(v15, 0, 1, a5);
  v17 = sub_27A9C4(&v20, a1, a2, v15, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v17;
}

uint64_t sub_277328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_272804(12, a2, a3, &v22);
  sub_2777E4(v22, *(&v22 + 1), &v23);
  if (v5)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v21[0] = a1;
    v22 = v23;
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_allocObject();

    v11 = sub_27AFE8(v21, &v22);
    if (a5 >> 60 != 15)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = swift_allocObject();
        v13 = swift_slowAlloc();
        *(v12 + 16) = v13;
        memmove(v13, *(v11 + 16), 0x100uLL);

        v11 = v12;
      }

      sub_276F08(a4, a5);
      sub_278240(a4, a5, v11);
      sub_EB18(a4, a5);
    }

    v23 = xmmword_33DAD0;
    sub_272414(12, a2, a3, v21);
    sub_272630(16, v21[0], v21[1], &v22);
    v14 = v22;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = swift_allocObject();
      v16 = swift_slowAlloc();
      *(v15 + 16) = v16;
      memmove(v16, *(v11 + 16), 0x100uLL);
    }

    sub_277C54(v14, *(&v14 + 1), &v23);
    sub_258780(v14, *(&v14 + 1));
    sub_272260(16, a2, a3, &v22);
    v17 = v22;
    v18 = sub_27BB94(v22, *(&v22 + 1));
    sub_258780(v17, *(&v17 + 1));
    if (v18)
    {

      return v23;
    }

    else
    {
      sub_273BE4();
      swift_allocError();
      *v20 = 2;
      *(v20 + 4) = 1;
      swift_willThrow();
      sub_258780(v23, *(&v23 + 1));
    }
  }

  return result;
}

uint64_t sub_2776C0(uint64_t a1, unint64_t a2)
{
  sub_2582E4(a1, a2);
  sub_272260(16, a1, a2, &v5);
  return v5;
}

uint64_t sub_277708(uint64_t a1, unint64_t a2)
{
  sub_2582E4(a1, a2);
  sub_272414(12, a1, a2, v5);
  sub_272630(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t sub_277760@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2582E4(a1, a2);
  sub_272804(12, a1, a2, v7);
  return sub_2777E4(v7[0], v7[1], a3);
}

uint64_t sub_2777E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_13;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 12)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 12)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_258780(a1, a2);
      sub_273BE4();
      swift_allocError();
      *v15 = 1;
      *(v15 + 4) = 1;
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) != 12)
  {
    goto LABEL_13;
  }

LABEL_8:
  v32[3] = &type metadata for Data;
  v32[4] = &protocol witness table for Data;
  v32[0] = a1;
  v32[1] = a2;
  v9 = __swift_project_boxed_opaque_existential_1(v32, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(v30, 0, 14);
      v14 = v30;
      v13 = v30;
      goto LABEL_33;
    }

    v17 = *(v10 + 16);
    v18 = *(v10 + 24);
    v19 = sub_303388();
    if (v19)
    {
      v20 = sub_3033B8();
      v10 = v17 - v20;
      if (__OFSUB__(v17, v20))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v19 += v10;
    }

    v6 = __OFSUB__(v18, v17);
    v21 = v18 - v17;
    if (!v6)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v12)
  {
LABEL_21:
    v22 = v10;
    v23 = v10 >> 32;
    v21 = v23 - v22;
    if (v23 >= v22)
    {
      v19 = sub_303388();
      if (!v19)
      {
LABEL_25:
        v25 = sub_3033A8();
        if (v25 >= v21)
        {
          v26 = v21;
        }

        else
        {
          v26 = v25;
        }

        v27 = (v26 + v19);
        if (v19)
        {
          v13 = v27;
        }

        else
        {
          v13 = 0;
        }

        v14 = v19;
        goto LABEL_33;
      }

      v24 = sub_3033B8();
      if (!__OFSUB__(v22, v24))
      {
        v19 += v22 - v24;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v30[0] = *v9;
  LOWORD(v30[1]) = v11;
  BYTE2(v30[1]) = BYTE2(v11);
  BYTE3(v30[1]) = BYTE3(v11);
  BYTE4(v30[1]) = BYTE4(v11);
  BYTE5(v30[1]) = BYTE5(v11);
  v13 = v30 + BYTE6(v11);
  v14 = v30;
LABEL_33:
  sub_29516C(v14, v13, v31);
  v28 = v31[0];
  v29 = v31[1];
  result = __swift_destroy_boxed_opaque_existential_0(v32);
  *a3 = v28;
  a3[1] = v29;
  return result;
}

uint64_t sub_277A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_303B08() > 27)
  {
    v8 = sub_2A0C94(a1, a2, *(v5 + 8));
    (*(*(a2 - 8) + 8))(a1, a2);
    return v8;
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }
}

uint64_t sub_277B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_278524(a1);
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  return v9;
}

void sub_277C54(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_20;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
LABEL_18:
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      a1 = 0;
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v6)
  {
    a1 = BYTE6(a2);
LABEL_21:
    v9 = sub_27A290(a1);
    __chkstk_darwin(v9);
    sub_27C158(sub_278AE8);
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    a1 = HIDWORD(a1) - a1;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_277D94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7)
{
  v12 = sub_272564(a3, a1, a2);
  if (v14)
  {
    v15 = v14 + v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14 + v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v17)
    {
      v45[0] = a4;
      LOWORD(v45[1]) = a5;
      BYTE2(v45[1]) = BYTE2(a5);
      v18 = v15 - v16;
      BYTE3(v45[1]) = BYTE3(a5);
      BYTE4(v45[1]) = BYTE4(a5);
      if (!v16)
      {
        v18 = 0;
      }

      v7 = BYTE6(a5);
      BYTE5(v45[1]) = BYTE5(a5);
      if (v18 >= BYTE6(a5))
      {
        if (qword_5187C8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_66;
      }

      goto LABEL_63;
    }

    v44 = a6;
    a6 = v15;
    v15 = a4;
    if (a4 >> 32 < a4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v24 = sub_303388();
    if (v24)
    {
      v36 = sub_3033B8();
      if (__OFSUB__(a4, v36))
      {
        goto LABEL_74;
      }

      v24 += a4 - v36;
    }

    v15 = a6;
    v37 = sub_3033A8();
    if (v37 >= (a4 >> 32) - a4)
    {
      v28 = (a4 >> 32) - a4;
    }

    else
    {
      v28 = v37;
    }

    if (v24)
    {
      v38 = v28;
    }

    else
    {
      v38 = 0;
    }

    v39 = &a6[-v16];
    if (!v16)
    {
      v39 = 0;
    }

    if (v39 >= v38)
    {
      if (qword_5187C8 == -1)
      {
        v40 = v44;
        if (v24)
        {
          goto LABEL_48;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      swift_once();
      v40 = v44;
      if (v24)
      {
LABEL_48:
        v32 = v40(qword_520870, *(a7 + 16), v28, v24, v16);
        if (!v32)
        {
          v33 = v28;
          v34 = v16;
          v35 = v15;
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      goto LABEL_72;
    }

    goto LABEL_68;
  }

  if (v17 != 2)
  {
    memset(v45, 0, 14);
    if (v16 && v15 - v16 < 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (qword_5187C8 != -1)
    {
      swift_once();
    }

    v32 = (a6)(qword_520870, *(a7 + 16), 0, v45, v16);
    if (!v32)
    {
      v43 = 0;
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v44 = a6;
  a6 = v15;
  v23 = *(a4 + 16);
  v22 = *(a4 + 24);

  v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
  v24 = sub_303388();
  if (v24)
  {
    v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = sub_3033B8();
    if (__OFSUB__(v23, v25))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    v24 += v23 - v25;
  }

  v26 = __OFSUB__(v22, v23);
  v15 = v22 - v23;
  if (!v26)
  {
    v27 = sub_3033A8();
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = v27;
    }

    if (v24)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = &a6[-v16];
    if (!v16)
    {
      v30 = 0;
    }

    if (v30 >= v29)
    {
      if (qword_5187C8 == -1)
      {
        v31 = v44;
        if (!v24)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_31:
        v32 = v31(qword_520870, *(a7 + 16), v28, v24, v16);
        if (!v32)
        {
          v33 = v28;
          v34 = v16;
          v35 = a6;
LABEL_50:
          sub_272564(v33, v34, v35);
          return sub_258780(a4, a5);
        }

LABEL_56:
        v42 = v32;
        sub_273BE4();
        swift_allocError();
        *v21 = v42;
        goto LABEL_57;
      }

LABEL_69:
      swift_once();
      v31 = v44;
      if (!v24)
      {
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_13:
  v19 = (a6)(qword_520870, *(a7 + 16), v7, v45, v16);
  if (!v19)
  {
    v43 = v7;
LABEL_60:
    sub_272564(v43, v16, v15);
    return sub_258780(a4, a5);
  }

  v20 = v19;
  sub_273BE4();
  swift_allocError();
  *v21 = v20;
LABEL_57:
  *(v21 + 4) = 0;
  swift_willThrow();
  return sub_258780(a4, a5);
}

uint64_t sub_278240(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      if (qword_5187C8 != -1)
      {
        swift_once();
        v6 = BYTE6(a2);
      }

      v7 = ccchacha20poly1305_aad(qword_520870, *(a3 + 16), v6, v13);
      if (!v7)
      {
      }

      goto LABEL_13;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
LABEL_10:

      sub_278470(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    }

    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_10;
  }

  memset(v13, 0, 14);
  if (qword_5187C8 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = ccchacha20poly1305_aad(qword_520870, *(a3 + 16), 0, v13);
  if (v7)
  {
LABEL_13:
    v11 = v7;
    sub_273BE4();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_278470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_303388();
  v8 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_3033A8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_27B470(v8, v14, a4);
}

uint64_t sub_278524(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_303B08() != 16)
  {
    sub_258780(v2, v1);
    sub_273BE4();
    swift_allocError();
    *v9 = 1;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  v28 = &_s5NonceVN_0;
  v29 = sub_278A40();
  *&v27 = v2;
  *(&v27 + 1) = v1;
  v3 = __swift_project_boxed_opaque_existential_1(&v27, &_s5NonceVN_0);
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v26 + 6) = 0;
      *&v26 = 0;
      sub_2582E4(v2, v1);
      v7 = &v26;
      v8 = &v26;
      goto LABEL_25;
    }

    v11 = *(v4 + 16);
    v24 = *(v4 + 24);
    sub_2582E4(v2, v1);
    v12 = sub_303388();
    if (v12)
    {
      v13 = sub_3033B8();
      if (__OFSUB__(v11, v13))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v12 += v11 - v13;
    }

    v14 = __OFSUB__(v24, v11);
    v15 = v24 - v11;
    if (!v14)
    {
      v16 = sub_3033A8();
      if (v16 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

LABEL_20:
      v22 = (v17 + v12);
      if (v12)
      {
        v8 = v22;
      }

      else
      {
        v8 = 0;
      }

      v7 = v12;
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6)
  {
    v18 = v4;
    v19 = v4 >> 32;
    v25 = v19 - v18;
    if (v19 >= v18)
    {
      sub_2582E4(v2, v1);
      v12 = sub_303388();
      if (!v12)
      {
        goto LABEL_18;
      }

      v20 = sub_3033B8();
      if (!__OFSUB__(v18, v20))
      {
        v12 += v18 - v20;
LABEL_18:
        v21 = sub_3033A8();
        v17 = v25;
        if (v21 < v25)
        {
          v17 = v21;
        }

        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  *&v26 = *v3;
  WORD4(v26) = v5;
  BYTE10(v26) = BYTE2(v5);
  BYTE11(v26) = BYTE3(v5);
  BYTE12(v26) = BYTE4(v5);
  BYTE13(v26) = BYTE5(v5);
  sub_2582E4(v2, v1);
  v7 = &v26;
  v8 = (&v26 + BYTE6(v5));
LABEL_25:
  sub_29516C(v7, v8, &v30);
  sub_258780(v2, v1);
  v23 = v30;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v27 = v23;
  sub_278A94();
  sub_303B28();
  sub_258780(v27, *(&v27 + 1));
  v26 = v30;
  sub_303B28();
  sub_258780(v26, *(&v26 + 1));
  return v27;
}

unint64_t sub_27888C()
{
  result = qword_5192E8;
  if (!qword_5192E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5192E8);
  }

  return result;
}

unint64_t sub_2788E4()
{
  result = qword_5192F0;
  if (!qword_5192F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5192F0);
  }

  return result;
}

uint64_t *assignWithCopy for ChaChaPoly.SealedBox(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_2582E4(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_258780(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChaChaPoly.SealedBox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ChaChaPoly.SealedBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_278A40()
{
  result = qword_519370;
  if (!qword_519370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519370);
  }

  return result;
}

unint64_t sub_278A94()
{
  result = qword_519378;
  if (!qword_519378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519378);
  }

  return result;
}

uint64_t sub_278B14()
{
  result = sub_26FC90(5064011, 0xE300000000000000);
  qword_519380 = result;
  *algn_519388 = v1;
  return result;
}

uint64_t sub_278B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_278B98();
  *a1 = result;
  return result;
}

uint64_t sub_278B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5193A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_33E320;
  *(v0 + 32) = 50462976;
  if (__isPlatformVersionAtLeast(2, 19, 0, 0))
  {
    v0 = sub_2AA228(&dword_0 + 1, 5, 1, v0);
    *(v0 + 16) = 5;
    *(v0 + 36) = 4;
  }

  return v0;
}

unint64_t sub_278C38()
{
  result = qword_519390;
  if (!qword_519390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_519398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519390);
  }

  return result;
}

unint64_t sub_278CA0()
{
  result = qword_5193A0;
  if (!qword_5193A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5193A0);
  }

  return result;
}

uint64_t _s3KEMOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KEMOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_278EF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_278FCC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = swift_allocObject();
    getDigestSizeForDigestInfo(v6);
    v8 = swift_slowAlloc();
    result = ccdigest_init(v6, v8);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_279058()
{
  result = qword_5193B0;
  if (!qword_5193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5193B0);
  }

  return result;
}

unint64_t sub_2790AC(uint64_t a1)
{
  result = sub_2790D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2790D4()
{
  result = qword_5193F0;
  if (!qword_5193F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5193F0);
  }

  return result;
}

unint64_t sub_27912C()
{
  result = qword_5193F8;
  if (!qword_5193F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5193F8);
  }

  return result;
}

unint64_t sub_279184()
{
  result = qword_519438;
  if (!qword_519438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519438);
  }

  return result;
}

unint64_t sub_2791D8(uint64_t a1)
{
  result = sub_279200();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_279200()
{
  result = qword_519478;
  if (!qword_519478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519478);
  }

  return result;
}

unint64_t sub_279258()
{
  result = qword_519480;
  if (!qword_519480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519480);
  }

  return result;
}

uint64_t sub_2792E8()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return 32;
    }

    else
    {
      result = sub_303CA8();
      __break(1u);
    }
  }

  else if (*v0)
  {
    return 32;
  }

  else
  {
    return 16;
  }

  return result;
}

uint64_t sub_27937C()
{
  if (*v0 <= 2u)
  {
    return 12;
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_2793F4()
{
  if (*v0 <= 2u)
  {
    return 16;
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_27946C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*v9 == 2)
  {
    *&v32 = *a5;
    sub_2582E4(a3, a4);
    result = sub_2777E4(a3, a4, &v36);
    if (!v10)
    {
      v33 = v36;
      v18 = sub_276F64(a1, &v32, &v33, a2, a6, a7, a8, a9);
      v20 = v19;
      sub_EB18(v33, *(&v33 + 1));
      v23 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v23 != 2)
        {
          v24 = 0;
          goto LABEL_22;
        }

        v28 = *(a3 + 16);
        v27 = *(a3 + 24);
        v24 = v27 - v28;
        if (!__OFSUB__(v27, v28))
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      else
      {
        if (!v23)
        {
          v24 = BYTE6(a4);
LABEL_22:
          sub_272414(v24, v18, v20, &v34);
          return v34;
        }

        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v24 = HIDWORD(a3) - a3;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v37 = *a5;
    sub_2582E4(a3, a4);
    result = sub_272A84(a3, a4, &v33);
    if (!v10)
    {
      v32 = v33;
      sub_2719D4(a1, &v37, &v32, a2, a6, a7, a8, a9, &v34);
      sub_EB18(v32, *(&v32 + 1));
      v22 = *(&v34 + 1);
      v21 = v34;
      if (v35 != 12)
      {
        goto LABEL_31;
      }

      v25 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v30 = *(a3 + 16);
          v29 = *(a3 + 24);
          v26 = v29 - v30;
          if (__OFSUB__(v29, v30))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v25)
      {
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          result = sub_258780(v21, v22);
          __break(1u);
          return result;
        }

        v26 = HIDWORD(a3) - a3;
      }

      else
      {
        v26 = BYTE6(a4);
      }

      sub_272414(v26, v34, *(&v34 + 1), &v36);
      return v36;
    }
  }

  return result;
}

uint64_t sub_2796CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v58 = a4;
  v59 = a7;
  v64 = *(a6 - 8);
  __chkstk_darwin(a1);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v17;
  v63 = *(*(v17 + 8) + 8);
  *&v67 = swift_getAssociatedTypeWitness();
  v62 = *(v67 - 8);
  v18 = __chkstk_darwin(v67);
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v61 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v57 = *a5;
  v27 = *v10;
  v28 = a1;
  v29 = sub_303B08();
  if (v27 < 3)
  {
    if (v29 < 16)
    {
      sub_2713F4();
      swift_allocError();
      *v30 = 4;
      swift_willThrow();
      return v26;
    }

    if (v27 == 2)
    {
      sub_2582E4(a2, a3);
      v31 = v71;
      sub_2777E4(a2, a3, &v69);
      if (v31)
      {
        return v26;
      }

      v32 = v69;
      v33 = v70;
      v34 = v65;
      v35 = *(v64 + 16);
      v35(v65, v28, a6);
      v71 = v32;
      v64 = v33;
      sub_2582E4(v32, v33);
      v36 = v61;
      sub_303908();
      v35(v34, v28, a6);
      v37 = v60;
      sub_3038F8();
      v38 = v67;
      swift_getAssociatedConformanceWitness();
      v39 = sub_278524(&v69);
      v47 = *(v62 + 8);
      v48 = v39;
      v50 = v49;
      v47(v37, v38);
      v47(v36, v38);
      v69 = v57;
      v26 = sub_277190(v48, v50, &v69, v58, v59, a9);
      sub_258780(v71, v64);
      v51 = v48;
      v52 = v50;
    }

    else
    {
      sub_2582E4(a2, a3);
      v40 = v71;
      sub_272A84(a2, a3, &v69);
      if (v40)
      {
        return v26;
      }

      v61 = a9;
      v41 = v69;
      v62 = v70;
      v68[0] = v69;
      v68[1] = v70;
      v42 = v65;
      v43 = *(v64 + 16);
      v56 = v28;
      v43(v65, v28, a6);
      v71 = v41;
      v44 = v41;
      v45 = v62;
      sub_2582E4(v44, v62);
      sub_303908();
      v43(v42, v56, a6);
      sub_3038F8();
      v46 = v67;
      swift_getAssociatedConformanceWitness();
      sub_272E98(v68, v26, v24, v46, v46, &v69);
      v53 = v69;
      v67 = v70;
      v68[0] = v57;
      v26 = sub_271C00(&v69, v68, v58, v59, v61);
      sub_258780(v71, v45);
      v52 = v67;
      v51 = v53;
    }

    sub_258780(v51, v52);
    return v26;
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_279CA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5194C0);

  return swift_initStaticObject();
}

uint64_t sub_279CE0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5194C0);
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

unint64_t sub_279D28()
{
  result = qword_5194C8;
  if (!qword_5194C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5194D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5194C8);
  }

  return result;
}

unint64_t sub_279D90()
{
  result = qword_5194D8;
  if (!qword_5194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5194D8);
  }

  return result;
}

uint64_t _s4AEADOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4AEADOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_279F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29B0C8();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_279FCC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 1 || (result & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t (**sub_27A000@<X0>(uint64_t *a1@<X0>, int **a2@<X8>))(void)
{
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 7;
  }

  if ((*a1 + 7) <= 0xE)
  {
    if (qword_518860 != -1)
    {
      swift_once();
    }

    v5 = off_519B88[0];

    goto LABEL_17;
  }

  if (v3 < -7)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >> 35)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v4 >> 3;
  v8 = ((v4 >> 3) - 1) | (((v4 >> 3) - 1) >> 1);
  v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
  v10 = v9 | (v9 >> 8) | ((v9 | (v9 >> 8)) >> 16);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  type metadata accessor for SecureBytes.Backing();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(v5 + 3) = v13;
  if ((_swift_stdlib_malloc_size(v5) - 32) < v7)
  {
    goto LABEL_20;
  }

  v14[0] = 0;
  result = ccrng(v14);
  if (result)
  {
    if (!v14[0])
    {
      ccrng_generate_bridge(result);
      result = swift_beginAccess();
      *(v5 + 2) = v7;
LABEL_17:
      *a2 = v5;
      return result;
    }

LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27A17C()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 60))
  {
    return 8 * v3;
  }

  __break(1u);
  return result;
}

BOOL sub_27A1E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  sub_293F00(v3 + 32, v3 + 32 + *(v3 + 16), v2 + 32, v2 + 32 + v4, &v6);
  return v6;
}

uint64_t sub_27A290(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD0);
  if (swift_dynamicCast())
  {
    sub_258288(v25, v27);
    v3 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    __chkstk_darwin(v3);
    sub_3033E8();
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_27CF48(v25);
  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v8 = 0;
    v9 = 0;
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v10 = v5 + 16;
    v5 = *(v5 + 16);
    v8 = *(v10 + 8);
    v9 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(v6);
    v9 = BYTE6(v6);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_52;
  }

  v9 = HIDWORD(v5) - v5;
  v8 = v5 >> 32;
LABEL_12:
  if (__OFADD__(v8, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v8 + a1 < v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = sub_303508();
  __chkstk_darwin(v11);
  result = sub_27C408(sub_27CFB0);
  if (v14 == a1)
  {
    memset(v27, 0, 15);
    if (v13 != result)
    {
      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v27 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v25[0] = v27[0];
            *(v25 + 6) = *(v27 + 6);
            result = sub_303548();
            if (!i)
            {
              return result;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v25[0] = v27[0];
            *(v25 + 6) = *(v27 + 6);
            return sub_303548();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v18 = 0;
    v19 = *v1;
    v20 = v1[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v18 = *(v19 + 16);
      }
    }

    else if (v21)
    {
      v18 = v19;
    }

    v22 = __OFADD__(v18, v9);
    v23 = v18 + v9;
    if (v22)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v23, v14))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v24 = *(v19 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v21)
    {
      v24 = v19 >> 32;
    }

    else
    {
      v24 = BYTE6(v20);
    }

    if (v24 < v23 + v14)
    {
      goto LABEL_51;
    }

    return sub_303518();
  }

  return result;
}

unint64_t sub_27A604(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v32 = a2;
  v33 = a5;
  v34 = a7;
  v35 = a4;
  v12 = sub_303B88();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v38 = *(a6 - 8);
  __chkstk_darwin(v13);
  v30 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v19 = *a3;
  v18 = a3[1];
  if (v18 >> 60 == 15)
  {
    v40 = xmmword_33E1E0;
    sub_2A135C(&v40);
    v20 = *(&v40 + 1);
    v21 = v40;
  }

  else
  {
    v21 = *a3;
    v20 = a3[1];
  }

  v39[0] = v17;
  *&v40 = v21;
  *(&v40 + 1) = v20;
  type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
  swift_allocObject();
  sub_276F08(v19, v18);

  sub_2582E4(v21, v20);
  v22 = sub_27AFE8(v39, &v40);
  if (v8)
  {
    sub_258780(v21, v20);
  }

  else
  {
    v39[1] = v22;
    v23 = v36;
    v24 = v37;
    (*(v36 + 16))(v15, v35, v37);
    v25 = v38;
    if ((*(v38 + 48))(v15, 1, a6) == 1)
    {
      (*(v23 + 8))(v15, v24);
    }

    else
    {
      v26 = v30;
      (*(v25 + 32))(v30, v15, a6);
      sub_27AE70(v26, a6, v31);
      (*(v25 + 8))(v26, a6);
    }

    *&v40 = v21;
    *(&v40 + 1) = v20;
    sub_2582E4(v21, v20);
    sub_27AF20(v32, &v40);
    sub_27BA6C();
    sub_258780(v21, v20);

    v27 = *(&v40 + 1);
    v20 = v40;
    sub_2582E4(v40, *(&v40 + 1));
    sub_258780(v20, v27);
  }

  return v20;
}

uint64_t sub_27A9C4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a4;
  v11 = sub_303B88();
  v37 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v38 = *(a5 - 8);
  __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);
  sub_2582E4(a2, a3);

  sub_272804(12, a2, a3, &v40);
  sub_2777E4(v40, *(&v40 + 1), &v41);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v39[0] = v17;
    v40 = v41;
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_allocObject();
    v18 = sub_27AFE8(v39, &v40);
    v34 = 0;
    v42 = v18;
    v19 = v37;
    (*(v37 + 16))(v14, v36, v11);
    v20 = v38;
    if ((*(v38 + 48))(v14, 1, a5) == 1)
    {
      (*(v19 + 8))(v14, v11);
    }

    else
    {
      (*(v20 + 32))(v16, v14, a5);
      v21 = v34;
      sub_27AE70(v16, a5, v35);
      v34 = v21;
      if (v21)
      {
        sub_258780(a2, a3);
        sub_258780(a2, a3);
        (*(v20 + 8))(v16, a5);
      }

      (*(v20 + 8))(v16, a5);
    }

    v41 = xmmword_33DAD0;
    sub_272414(12, a2, a3, v39);
    sub_272630(16, v39[0], v39[1], &v40);
    v24 = *(&v40 + 1);
    v23 = v40;
    v25 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v34;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v28 = swift_allocObject();
      v29 = swift_slowAlloc();
      *(v28 + 16) = v29;
      memmove(v29, *(v25 + 16), 0x100uLL);
    }

    sub_277C54(v23, v24, &v41);
    if (v27)
    {
      sub_258780(a2, a3);
      sub_258780(v23, v24);
    }

    else
    {
      sub_258780(v23, v24);
      sub_272260(16, a2, a3, &v40);
      v30 = v40;
      v31 = sub_27BB94(v40, *(&v40 + 1));
      sub_258780(v30, *(&v30 + 1));
      if (v31)
      {

        return v41;
      }

      sub_273BE4();
      swift_allocError();
      *v32 = 2;
      *(v32 + 4) = 1;
      swift_willThrow();
    }

    sub_258780(v41, *(&v41 + 1));
  }

  return result;
}

void *sub_27AE50()
{
  result = ccchacha20poly1305_info();
  qword_520870 = result;
  return result;
}

uint64_t sub_27AE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    v9 = swift_allocObject();
    v10 = swift_slowAlloc();
    *(v9 + 16) = v10;
    memmove(v10, *(v8 + 16), 0x100uLL);

    *v3 = v9;
  }

  return sub_27B204(a1, a2, a3);
}

void sub_27AF20(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    v8 = swift_allocObject();
    v9 = swift_slowAlloc();
    *(v8 + 16) = v9;
    memmove(v9, *(v7 + 16), 0x100uLL);

    *v3 = v8;
  }

  sub_27B56C(a1, a2);
}

uint64_t sub_27AFE8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  v6 = *(v3 + 16);
  if (v6 >> 60)
  {
    __break(1u);
LABEL_12:
    swift_once();
    v7 = *(v2 + 16);
    goto LABEL_4;
  }

  if (v6 != 32)
  {
    sub_258780(v5, v4);

    sub_273BE4();
    swift_allocError();
    *v11 = 0;
    *(v11 + 4) = 1;
    swift_willThrow();
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v7 = swift_slowAlloc();
  *(v2 + 16) = v7;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  if (qword_5187C8 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8 = ccchacha20poly1305_init(qword_520870, v7, (v3 + 32));
  if (v8)
  {
    v9 = v8;
    sub_273BE4();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    swift_willThrow();
    sub_258780(v5, v4);

LABEL_9:

    return v2;
  }

  v12 = sub_29F9BC(v5, v4, v2);
  sub_258780(v5, v4);
  if (v12)
  {
    sub_273BE4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  return v2;
}

uint64_t sub_27B204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v11[-v8];
  sub_3032E8();
  v12 = a2;
  v13 = a3;
  v14 = v3;
  swift_getAssociatedConformanceWitness();
  sub_303A88();
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_27B370()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_27B470(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (qword_5187C8 == -1)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2;
  v7 = a3;
  result = swift_once();
  a3 = v7;
  a2 = v6;
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = ccchacha20poly1305_aad(qword_520870, *(a3 + 16), a2 - v3, v3);
  if (result)
  {
    v4 = result;
    sub_273BE4();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_27B56C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = v2 + 16;
    v2 = *(v2 + 16);
    if (!__OFSUB__(*(v4 + 8), v2))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v5 = sub_303B08();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = sub_27A290(v5);
    __chkstk_darwin(v6);
    sub_27C158(sub_27CEE0);
    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_27B68C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = sub_272564(a3, a1, a2);
  v19 = v18 + v17;
  v21 = v18 + v20;
  if (!v18)
  {
    v21 = 0;
    v19 = 0;
  }

  v30[0] = v19;
  v30[1] = v21;
  sub_3032E8();
  v25 = a7;
  v26 = a8;
  v27 = v30;
  v28 = v23;
  v29 = v24;
  swift_getAssociatedConformanceWitness();
  sub_303A88();
  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_27B840()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_3033E8();
}

uint64_t sub_27B948(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void, unint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v7 = result;
  v8 = a2 - result;
  if (result)
  {
    v9 = a2 - result;
  }

  else
  {
    v9 = 0;
  }

  v10 = *a3;
  if (*a3)
  {
    v10 = a3[1] - v10;
  }

  if (v10 < v9)
  {
    __break(1u);
  }

  else if (qword_5187C8 == -1)
  {
    if (result)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v18 = a5;
  result = swift_once();
  a5 = v18;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
  v11 = a4(qword_520870, *(a5 + 16), v8, v7, *a3);
  if (v11)
  {
    v12 = v11;
    sub_273BE4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    result = sub_272564(v8, *a3, a3[1]);
    v15 = v14 + result;
    v17 = v14 + v16;
    if (!v14)
    {
      v17 = 0;
      v15 = 0;
    }

    *a3 = v15;
    a3[1] = v17;
  }

  return result;
}

uint64_t sub_27BA6C()
{
  v5[0] = 0;
  v5[1] = 0;
  if (qword_5187C8 != -1)
  {
    swift_once();
  }

  v1 = ccchacha20poly1305_finalize(qword_520870, *(v0 + 16), v5);
  if (v1)
  {
    v2 = v1;
    sub_273BE4();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v6[3] = &type metadata for UnsafeRawBufferPointer;
    v6[4] = &protocol witness table for UnsafeRawBufferPointer;
    v6[0] = v5;
    v6[1] = v6;
    __swift_project_boxed_opaque_existential_1(v6, &type metadata for UnsafeRawBufferPointer);
    sub_303548();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }
}

uint64_t sub_27BB94(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
LABEL_7:

    v6 = sub_27CE20(v5, a2 & 0x3FFFFFFFFFFFFFFFLL, v2);

    return v6 & 1;
  }

  if (v4)
  {
    v5 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
LABEL_9:
  v7 = qword_5187C8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = ccchacha20poly1305_verify(qword_520870, *(v2 + 16), v10);

  v6 = v8 == 0;
  return v6 & 1;
}

uint64_t sub_27BD30()
{
  memset_s(*(v0 + 16), 0x100uLL, 0, 0x100uLL);

  return swift_deallocClassInstance();
}

char *sub_27BDB4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_258780(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_258780(v6, v5);
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_303388() && __OFSUB__(v6, sub_3033B8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_3033D8();
      swift_allocObject();
      v13 = sub_303368();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_27CC04(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_258780(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    sub_303498();
    result = sub_27CC04(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

void sub_27C158(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_258780(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_33DAD0;
      sub_258780(0, 0xC000000000000000);
      sub_27CB28(a1);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_258780(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      a1(&v21, &v21 + BYTE6(v4));
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v7;
    v2[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    a1(&v21, &v21);
    return;
  }

  sub_258780(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_33DAD0;
  sub_258780(0, 0xC000000000000000);
  sub_303498();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = sub_303388();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_3033B8();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_3033A8();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a1(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v9 | 0x8000000000000000;
}

char *sub_27C408(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_258780(v6, v5);
      v16[0] = v6;
      LOWORD(v16[1]) = v5;
      BYTE2(v16[1]) = BYTE2(v5);
      BYTE3(v16[1]) = BYTE3(v5);
      BYTE4(v16[1]) = BYTE4(v5);
      BYTE5(v16[1]) = BYTE5(v5);
      BYTE6(v16[1]) = BYTE6(v5);
      result = a1(&v17, v16, v16 + BYTE6(v5));
      if (!v2)
      {
        result = v17;
      }

      v9 = LODWORD(v16[1]) | ((WORD2(v16[1]) | (BYTE6(v16[1]) << 16)) << 32);
      *v3 = v16[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_258780(v6, v5);
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_303388() && __OFSUB__(v6, sub_3033B8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_3033D8();
      swift_allocObject();
      v13 = sub_303368();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_27CCB8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_258780(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    sub_303498();
    result = sub_27CCB8(*(v17 + 2), *(v17 + 3), a1);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v17;
      v3[1] = v10;
      return result;
    }

    *v3 = v17;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = a1(&v17, v16, v16);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t sub_27C7B4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_258780(v6, v5);
      *&v17 = v6;
      WORD4(v17) = v5;
      BYTE10(v17) = BYTE2(v5);
      BYTE11(v17) = BYTE3(v5);
      BYTE12(v17) = BYTE4(v5);
      BYTE13(v17) = BYTE5(v5);
      BYTE14(v17) = BYTE6(v5);
      result = a1(&v16, &v17, &v17 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
      *v3 = v17;
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_258780(v6, v5);
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_303388() && __OFSUB__(v6, sub_3033B8()))
      {
LABEL_22:
        __break(1u);
      }

      sub_3033D8();
      swift_allocObject();
      v13 = sub_303368();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_27CD70(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        return v14;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_258780(v6, v5);
    *&v17 = v6;
    *(&v17 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_33DAD0;
    sub_258780(0, 0xC000000000000000);
    sub_303498();
    v10 = *(&v17 + 1);
    result = sub_27CD70(*(v17 + 16), *(v17 + 24), a1);
    *v3 = v17;
    v3[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v17 + 7) = 0;
    *&v17 = 0;
    result = a1(&v16, &v17, &v17);
    if (!v2)
    {
      return v16;
    }
  }

  return result;
}

void sub_27CB28(void (*a1)(uint64_t, uint64_t))
{
  sub_3034C8();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = sub_303388();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_3033B8();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = sub_3033A8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

char *sub_27CC04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_303388();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_3033B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_3033A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_27CCB8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_303388();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_3033B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_3033A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_27CD70(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_303388();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_3033B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_3033A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_27CE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_303388();
  if (v5)
  {
    v6 = v5;
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_10;
    }

    v8 = a1 - result + v6;
  }

  else
  {
    v8 = 0;
  }

  result = sub_3033A8();
  if (qword_5187C8 == -1)
  {
    if (v8)
    {
      return ccchacha20poly1305_verify(qword_520870, *(a3 + 16), v8) == 0;
    }
  }

  else
  {
    result = swift_once();
    if (v8)
    {
      return ccchacha20poly1305_verify(qword_520870, *(a3 + 16), v8) == 0;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_27CF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_27D020(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_27D020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

double sub_27D170@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_303AE8();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_27DA10((a1 + 32), a1 + 32 + *(a1 + 16));
      *(v5 + 32) = v21;
      *(v5 + 48) = v22;
      *(v5 + 64) = v23;
      *(v5 + 80) = v24;
      v6 = sub_26DDAC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_303AE8();
      *(v7 + 16) = 128;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *&v21 = v7;
      sub_26CC10(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_26DDAC(v21);
    }
  }

  v8 = ccsha512_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D10);
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo(v9);
  v11 = swift_slowAlloc();
  ccdigest_init(v9, v11);
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v20 + 1) = v10;
  swift_beginAccess();
  sub_26CCFC((a1 + 32), (a1 + 32 + *(a1 + 16)), &v19);
  v12 = sub_303AD8();
  sub_2689C8((v12 + 32), v12 + 32 + *(v12 + 16));

  v13 = ccsha512_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo(v14);
  v16 = swift_slowAlloc();
  ccdigest_init(v14, v16);
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v20 = v15;
  sub_26CE08((a1 + 32), (a1 + 32 + *(a1 + 16)), &v19);
  v17 = sub_303AD8();
  sub_2689C8((v17 + 32), v17 + 32 + *(v17 + 16));

  result = *&v20;
  *a2 = v20;
  return result;
}

double sub_27D460@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_303AE8();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_27DACC((a1 + 32), a1 + 32 + *(a1 + 16));
      *(v5 + 32) = v22;
      v6 = v24;
      *(v5 + 48) = v23;
      *(v5 + 64) = v6;
      v7 = sub_26DDAC(v5);

      a1 = v7;
    }

    else
    {
      v8 = sub_303AE8();
      *(v8 + 16) = 128;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *&v22 = v8;
      sub_26CC10(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_26DDAC(v22);
    }
  }

  v9 = ccsha384_di();
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D18);
  v11 = swift_allocObject();
  getDigestSizeForDigestInfo(v10);
  v12 = swift_slowAlloc();
  ccdigest_init(v10, v12);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(&v21 + 1) = v11;
  swift_beginAccess();
  sub_26CCFC((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v13 = sub_303AD8();
  sub_2689DC((v13 + 32), v13 + 32 + *(v13 + 16));

  v14 = ccsha384_di();
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = swift_allocObject();
  getDigestSizeForDigestInfo(v15);
  v17 = swift_slowAlloc();
  ccdigest_init(v15, v17);
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *&v21 = v16;
  sub_26CE08((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v18 = sub_303AD8();
  sub_2689DC((v18 + 32), v18 + 32 + *(v18 + 16));

  result = *&v21;
  *a2 = v21;
  return result;
}

double sub_27D740@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 64)
  {
    if (v4 > 0x40)
    {
      v5 = sub_303AE8();
      *(v5 + 16) = 64;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      sub_27DB88((a1 + 32), a1 + 32 + *(a1 + 16));
      *(v5 + 32) = v21;
      *(v5 + 48) = v22;
      v6 = sub_26DDAC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_303AE8();
      *(v7 + 16) = 64;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *&v21 = v7;
      sub_26CC10(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_26DDAC(v21);
    }
  }

  v8 = ccsha256_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D20);
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo(v9);
  v11 = swift_slowAlloc();
  ccdigest_init(v9, v11);
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v20 + 1) = v10;
  swift_beginAccess();
  sub_26CCFC((a1 + 32), (a1 + 32 + *(a1 + 16)), &v19);
  v12 = sub_303AD8();
  sub_2689F0((v12 + 32), v12 + 32 + *(v12 + 16));

  v13 = ccsha256_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo(v14);
  v16 = swift_slowAlloc();
  ccdigest_init(v14, v16);
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v20 = v15;
  sub_26CE08((a1 + 32), (a1 + 32 + *(a1 + 16)), &v19);
  v17 = sub_303AD8();
  sub_2689F0((v17 + 32), v17 + 32 + *(v17 + 16));

  result = *&v20;
  *a2 = v20;
  return result;
}

void *sub_27DA10(char *a1, uint64_t a2)
{
  result = ccsha512_di();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D10);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo(v5);
    v7 = swift_slowAlloc();
    ccdigest_init(v5, v7);
    *(inited + 16) = v5;
    *(inited + 24) = v7;
    v8 = sub_2689C8(a1, a2);
    sub_2698CC(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_27DACC(char *a1, uint64_t a2)
{
  result = ccsha384_di();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D18);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo(v5);
    v7 = swift_slowAlloc();
    ccdigest_init(v5, v7);
    *(inited + 16) = v5;
    *(inited + 24) = v7;
    v8 = sub_2689DC(a1, a2);
    sub_269834(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_27DB88(char *a1, uint64_t a2)
{
  result = ccsha256_di();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518D20);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo(v5);
    v7 = swift_slowAlloc();
    ccdigest_init(v5, v7);
    *(inited + 16) = v5;
    *(inited + 24) = v7;
    v8 = sub_2689F0(a1, a2);
    sub_2697A4(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_27DC50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v11 = sub_303B88();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *v5;
  v16 = (v15 + 8);
  if (v14)
  {
    *&v26 = *a2;
    v17 = *(a3 - 1);
    if (v14 == 1)
    {
      (*(*(a3 - 1) + 16))(v13, a1, a3);
      (*(v17 + 56))(v13, 0, 1, a3);
      v18 = sub_27405C();
      sub_290E2C(&v26, v13, &type metadata for SHA384, a3, v18, a4, &v30);
      (*v16)(v13, v11);
      v26 = v30;
      v27 = v31;
      v28 = v32;
      v19 = &v29;
    }

    else
    {
      (*(*(a3 - 1) + 16))(v13, a1, a3);
      (*(v17 + 56))(v13, 0, 1, a3);
      v22 = sub_2740B4();
      sub_290E2C(&v26, v13, &type metadata for SHA512, a3, v22, a4, &v30);
      (*v16)(v13, v11);
      v26 = v30;
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v19 = &v30;
    }
  }

  else
  {
    *&v26 = *a2;
    v20 = *(a3 - 1);
    (*(v20 + 16))(v13, a1, a3);
    (*(v20 + 56))(v13, 0, 1, a3);
    v21 = sub_274004();
    sub_290E2C(&v26, v13, &type metadata for SHA256, a3, v21, a4, &v30);
    (*v16)(v13, v11);
    v26 = v30;
    v27 = v31;
    v19 = &v28;
  }

  result = sub_299C98(&v26, v19, &v25);
  *a5 = v25;
  return result;
}

uint64_t sub_27E010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  if (*v5)
  {
    if (*v5 == 1)
    {
      sub_27E4A0(v7, a2, a3, a4, &v12);
    }

    else
    {
      sub_27E8A8(v7, a2, a3, a4, &v12);
    }
  }

  else
  {
    sub_27E0B4(v7, a2, a3, a4, &v12);
  }

  v8 = v12;
  swift_beginAccess();
  sub_299C98(v8 + 32, v8 + 32 + *(v8 + 16), &v11);
  v9 = v11;

  *a5 = v9;
  return result;
}

uint64_t sub_27E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = ceil(vcvtd_n_f64_s64(a4, 5uLL));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v8 = a4;
    v6 = a3;
    v7 = a2;
    v5 = a1;
    v9 = v11;
    if (qword_518860 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v12 = off_519B88[0];
  v36 = off_519B88[0];
  swift_beginAccess();
  v13 = *(v5 + 16);

  sub_299C98(v5 + 32, v5 + 32 + v13, &v37);

  if (!v9)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v26 = a5;
  v27 = v8;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_27D740(v14, &v35);
    swift_beginAccess();
    v15 = *(v12 + 2);

    sub_2689F0(v12 + 32, v12 + v15 + 32);

    if (v6 >> 60 != 15)
    {
      sub_2582E4(v7, v6);
      sub_27EF80(v7, v6, &v35, sub_2689F0, sub_2689F0);
      sub_EB18(v7, v6);
    }

    LOBYTE(v37) = a5;
    v16 = sub_2689F0(&v37, &v37 + 1);
    v17 = v35;
    sub_2697A4(v16);
    v34 = v17;
    v30[0] = v37;
    v30[1] = v38;

    sub_2689F0(v30, &v31);

    sub_2697A4(v18);

    v28 = v33;
    v29 = v32;

    v37 = v29;
    v38 = v28;
    sub_299C98(&v37, v39, &v32);

    v12 = v32;

    sub_2921BC(v19);

    if (v9 == a5)
    {
      break;
    }

    LOWORD(a5) = a5 + 1;
    if ((a5 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v27 < 0)
  {
    goto LABEL_24;
  }

  v20 = v36;
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = sub_291B74(0, v27, v21, v20);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  if ((v24 | v21) < 0)
  {
    goto LABEL_25;
  }

  if (v21 < v24)
  {
    goto LABEL_26;
  }

  *&v32 = 0;
  *(&v32 + 1) = v24;
  *&v33 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195E0);
  type metadata accessor for SecureBytes.Backing();
  sub_27EF2C();
  sub_303D88();

  *v26 = *&v30[0];
  return result;
}

uint64_t sub_27E4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = ceil(a4 / 48.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 < 256.0)
  {
    v7 = a4;
    v5 = a1;
    v6 = v9;
    if (qword_518860 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v10 = off_519B88[0];
  v40 = off_519B88[0];
  swift_beginAccess();
  v11 = *(v5 + 16);

  sub_299C98(v5 + 32, v5 + 32 + v11, &v41);

  if (!v6)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v26 = a5;
  v27 = v7;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_27D460(v12, &v39);
    swift_beginAccess();
    v13 = *(v10 + 2);

    sub_2689DC(v10 + 32, v10 + v13 + 32);

    if (a3 >> 60 != 15)
    {
      sub_2582E4(a2, a3);
      sub_27EF80(a2, a3, &v39, sub_2689DC, sub_2689DC);
      sub_EB18(a2, a3);
    }

    LOBYTE(v41) = a5;
    v14 = sub_2689DC(&v41, &v41 + 1);
    v15 = v39;
    sub_269834(v14);
    v38 = v15;
    v32[0] = v41;
    v32[1] = v42;
    v32[2] = v43;

    sub_2689DC(v32, &v33);

    sub_269834(v16);

    v17 = v36;
    v18 = v37;
    v30 = v35;
    v31 = v34;

    v41 = v31;
    v42 = v30;
    *&v43 = v17;
    *(&v43 + 1) = v18;
    sub_299C98(&v41, v44, &v34);

    v10 = v34;

    sub_2921BC(v19);

    if (v6 == a5)
    {
      break;
    }

    LOWORD(a5) = a5 + 1;
    if ((a5 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  if (v27 < 0)
  {
    goto LABEL_24;
  }

  v20 = v40;
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = sub_291B74(0, v27, v21, v20);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  if ((v24 | v21) < 0)
  {
    goto LABEL_25;
  }

  if (v21 < v24)
  {
    goto LABEL_26;
  }

  *&v34 = 0;
  *(&v34 + 1) = v24;
  *&v35 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195E0);
  type metadata accessor for SecureBytes.Backing();
  sub_27EF2C();
  sub_303D88();

  *v26 = *&v32[0];
  return result;
}

uint64_t sub_27E8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = ceil(vcvtd_n_f64_s64(a4, 6uLL));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 256.0)
  {
    v8 = a4;
    v6 = a3;
    v7 = a2;
    v5 = a1;
    v9 = v11;
    if (qword_518860 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_5:
  v12 = off_519B88[0];
  v35 = off_519B88[0];
  swift_beginAccess();
  v13 = *(v5 + 16);

  sub_299C98(v5 + 32, v5 + 32 + v13, v33);

  if (!v9)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v26 = a5;
  v27 = v8;
  LOBYTE(a5) = 1;
  while (1)
  {

    sub_27D170(v14, &v34);
    swift_beginAccess();
    v15 = *(v12 + 2);

    sub_2689C8(v12 + 32, v12 + v15 + 32);

    if (v6 >> 60 != 15)
    {
      sub_2582E4(v7, v6);
      sub_27EF80(v7, v6, &v34, sub_2689C8, sub_2689C8);
      sub_EB18(v7, v6);
    }

    LOBYTE(v36) = a5;
    v16 = sub_2689C8(&v36, &v36 + 1);
    v17 = v34;
    sub_2698CC(v16);
    v28[0] = v17;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;

    sub_2689C8(&v36, v40);

    sub_2698CC(v18);

    v36 = v33[0];
    v37 = v33[1];
    v38 = v33[2];
    v39 = v33[3];
    sub_299C98(&v36, v40, v28);

    v12 = v28[0];

    sub_2921BC(v19);

    if (v9 == a5)
    {
      break;
    }

    LODWORD(a5) = a5 + 1;
    if ((a5 >> 8))
    {
      __break(1u);
      break;
    }
  }

  if (v27 < 0)
  {
    goto LABEL_24;
  }

  v20 = v35;
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = sub_291B74(0, v27, v21, v20);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  if ((v24 | v21) < 0)
  {
    goto LABEL_25;
  }

  if (v21 < v24)
  {
    goto LABEL_26;
  }

  v28[0] = 0;
  v28[1] = v24;
  v28[2] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195E0);
  type metadata accessor for SecureBytes.Backing();
  sub_27EF2C();
  sub_303D88();

  *v26 = v28[3];
  return result;
}

uint64_t sub_27EC98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195C0);

  return swift_initStaticObject();
}

uint64_t sub_27ECD8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5195C0);
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

unint64_t sub_27ED20()
{
  result = qword_5195C8;
  if (!qword_5195C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_5195D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5195C8);
  }

  return result;
}

unint64_t sub_27ED88()
{
  result = qword_5195D8;
  if (!qword_5195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5195D8);
  }

  return result;
}

uint64_t _s3KDFOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KDFOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27EF2C()
{
  result = qword_5195E8;
  if (!qword_5195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5195E8);
  }

  return result;
}

uint64_t sub_27EF80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a4(v10, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_27F0C0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_27F0C0(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return a4(v10, v6);
}

uint64_t sub_27F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = sub_303388();
  v9 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_3033A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return a5(v9, v15);
}

uint64_t _s14SEC1PrivateKeyVwxx(void *a1)
{
  if (*a1)
  {

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t _s14SEC1PrivateKeyVwcp(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);

    swift_unknownObjectRetain();
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void *_s14SEC1PrivateKeyVwca(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (v5)
    {
      *a1 = v5;

      a1[1] = a2[1];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      sub_27F3A0(a1);
      v6 = a2[4];
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;
      a1[4] = v6;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];

    swift_unknownObjectRetain();
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    a1[4] = a2[4];
    *a1 = v8;
    *(a1 + 1) = v9;
  }

  a1[5] = a2[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t _s14SEC1PrivateKeyVwta(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (!*a2)
  {
    sub_27F3A0(a1);
LABEL_5:
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  swift_unknownObjectRelease();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  swift_unknownObjectRelease();
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t _s14SEC1PrivateKeyVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s14SEC1PrivateKeyVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27F58C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_285058(v21);
  if (v22 == 255)
  {
    goto LABEL_8;
  }

  v31[0] = v21[0];
  v31[1] = v21[1];
  v31[2] = v21[2];
  v32 = v22;
  sub_280164(v31, 2u);
  if (v2)
  {
    return;
  }

  if (v5 != 1 || (sub_285058(v23), v28 == 255))
  {
LABEL_8:
    sub_2809A8();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  else if (v23[0] == 4)
  {
    if (v28)
    {
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
      sub_2847F4(a1, 0, 2u);
      v11 = v10;
      sub_284AC0(a1, 1uLL, 2u);
      sub_28048C(v6, v7, v8, v9, v11, v14, v15, v16, v29, v17);
      v18 = v29[5];
      *(a2 + 64) = v29[4];
      *(a2 + 80) = v18;
      *(a2 + 96) = v30;
      v19 = v29[1];
      *a2 = v29[0];
      *(a2 + 16) = v19;
      v20 = v29[3];
      *(a2 + 32) = v29[2];
      *(a2 + 48) = v20;
    }

    else
    {
      sub_2566A0(v23, &qword_519610);
      __break(1u);
    }
  }

  else
  {
    sub_2809A8();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    sub_2566A0(v23, &qword_519610);
  }
}

uint64_t sub_27F7A4@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if ((*a1)[2] == 7 && (v5 + 4 == &qword_5189B0 || qword_5189B0 == v5[4] && qword_5189B8 == v5[5] && qword_5189C0 == v5[6] && qword_5189C8 == v5[7] && qword_5189D0 == v5[8] && qword_5189D8 == v5[9] && qword_5189E0 == v5[10]))
  {
    if (qword_5187D0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_520878;
LABEL_21:
    *a3 = *v6;
    *(a3 + 8) = *(v6 + 8);
    *(a3 + 24) = *(v6 + 24);
    swift_unknownObjectRetain();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519608);
  inited = swift_initStaticObject();
  if (sub_290800(inited, v5))
  {
    if (qword_5187D8 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_5208A0;
    goto LABEL_21;
  }

  v8 = swift_initStaticObject();
  if (sub_290800(v8, v5))
  {
    if (qword_5187E0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_5208C8;
    goto LABEL_21;
  }

  sub_2809A8();
  v10 = swift_allocError();
  *v11 = 3;
  result = swift_willThrow();
  *a2 = v10;
  return result;
}

uint64_t sub_27F9F0(char **a1, uint64_t a2)
{
  inited = 1;
  v18[2] = &inited;
  result = sub_28A2F4(2, a1, sub_280404, v18);
  if (!v2)
  {
    *&v6 = __chkstk_darwin(result);
    v16 = v7;
    v17 = v6;
    result = sub_28A2F4(4, a1, sub_280420, &v15);
    v8 = *(a2 + 16);
    v22[0] = *a2;
    v22[1] = v8;
    v23 = *(a2 + 32);
    if (*&v22[0])
    {
      v9 = *(a2 + 24);
      v34[0] = *(a2 + 8);
      v34[1] = v9;
      v26 = *&v22[0];
      v27 = v34[0];
      v28 = v9;
      v33 = *&v22[0];
      sub_2808EC(v22, &inited, &qword_5195F0);
      sub_280890(&v33, &inited);
      sub_2808EC(v34, &inited, &qword_5195F8);
      if (qword_5187D0 != -1)
      {
        swift_once();
      }

      v31[0] = xmmword_520878;
      v31[1] = *&qword_520888;
      v32 = qword_520898;
      v10 = sub_282DA0(v31, &v26);
      sub_280954(&v33);
      sub_2566A0(v34, &qword_5195F8);
      if ((v10 & 1) == 0)
      {
        sub_280890(&v33, &inited);
        sub_2808EC(v34, &inited, &qword_5195F8);
        if (qword_5187D8 != -1)
        {
          swift_once();
        }

        v29[0] = xmmword_5208A0;
        v29[1] = *&qword_5208B0;
        v30 = qword_5208C0;
        v11 = sub_282DA0(v29, &v26);
        sub_280954(&v33);
        sub_2566A0(v34, &qword_5195F8);
        if ((v11 & 1) == 0)
        {
          sub_280890(&v33, &inited);
          sub_2808EC(v34, &inited, &qword_5195F8);
          if (qword_5187E0 != -1)
          {
            swift_once();
          }

          v24[0] = xmmword_5208C8;
          v24[1] = *&qword_5208D8;
          v25 = qword_5208E8;
          v12 = sub_282DA0(v24, &v26);
          sub_280954(&v33);
          sub_2566A0(v34, &qword_5195F8);
          if ((v12 & 1) == 0)
          {
            sub_2809A8();
            swift_allocError();
            *v14 = 3;
            swift_willThrow();
            sub_280954(&v33);
            return sub_2566A0(v34, &qword_5195F8);
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519608);
      inited = swift_initStaticObject();
      __chkstk_darwin(inited);
      *&v17 = &inited;
      sub_28A2F4(160, a1, sub_2809FC, &v16);
      sub_280954(&v33);
      sub_2566A0(v34, &qword_5195F8);
    }

    v13 = *(a2 + 72);
    if (v13)
    {
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      inited = v13;
      __chkstk_darwin(result);
      *&v17 = &inited;
      return sub_28A2F4(161, a1, sub_280440, &v16);
    }
  }

  return result;
}

void sub_27FEA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_2809A8();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_2A5FBC(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      v18 = *v13++;
      v17 = v18;
      if ((v16 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else if (v16 < 0)
      {
        v20 = v17 >> -v16;
        if (v16 == -64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v20;
        }
      }

      else
      {
        v19 = v17 << v16;
        if (v16 == 64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v19;
        }
      }

      v12 |= v15;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_280000(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_2809A8();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_2A5FBC(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      if (v16 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else
      {
        v17 = *v13;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v19 = v17 >> -v16;
          if (v16 <= 0xFFFFFFFFFFFFFFC0)
          {
            v15 = 0;
          }

          else
          {
            v15 = v19;
          }
        }

        else
        {
          v18 = v17 << v16;
          if (v16 >= 0x40)
          {
            v15 = 0;
          }

          else
          {
            v15 = v18;
          }
        }
      }

      v12 |= v15;
      ++v13;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}