uint64_t sub_1001337B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = sub_1001D2160();
  v7 = sub_100133F10(v6 / 8, a1);
  if (v8 >> 60 == 15)
  {
    v9 = *(*(v4 - 8) + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v11 = __chkstk_darwin(v7, v8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v12 = v11;
    v14 = v13;
    sub_1001CFBD0();
    sub_10002683C(v12, v14);
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_100133954(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  v3 = *(a1 + 32);
  v13 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v2 + 16) = *(a1 + 16);
  *(v2 + 32) = v3;
  *(v2 + 40) = v13;
  *(v2 + 56) = v4;
  v5 = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State();
  *(v2 + 104) = v5;
  v6 = *(v5 - 8);
  *(v2 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  *(v2 + 136) = v11;
  *v11 = v2;
  v11[1] = sub_100133AF0;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 72, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100133AF0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100133E64;
  }

  else
  {
    v3 = sub_100133C04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133C04()
{
  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    v5 = v0[9];
    v6 = v0[12] + *(v0[11] + 76);
    v7 = v0[10];
    sub_1001CFC30();
    sub_10002683C(v5, v1);
    goto LABEL_16;
  }

  v2 = v0[12];
  v3 = *(v0[11] + 80);
  (*(v0[14] + 16))(v0[16], v2 + v3, v0[13]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    sub_100089CEC();
    *v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v11 + 40))(v2 + v3, v8, v10);
    (*(v11 + 8))(v9, v10);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
    goto LABEL_16;
  }

  v12 = (v0[12] + *(v0[11] + 76));
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2 || *(v13 + 16) == *(v13 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v15)
  {
    if ((v14 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];
    sub_100089CEC();
    *v16 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v17 + 40))(v2 + v3, v16, v18);
    goto LABEL_16;
  }

  if (v13 != v13 >> 32)
  {
    goto LABEL_13;
  }

LABEL_15:
  (*(v0[14] + 8))(v2 + v3, v0[13]);
  *(v2 + v3) = 0;
  swift_storeEnumTagMultiPayload();
LABEL_16:
  v20 = v0[15];
  v19 = v0[16];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100133E64()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = *(v0[11] + 80);
  (*(v0[14] + 8))(v2 + v3, v0[13]);
  *(v2 + v3) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100133F10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2 + *(a2 + 76);
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v6)
      {
        if (BYTE6(v5) < result)
        {
          return 0;
        }

LABEL_10:
        v11 = result;
        sub_100012038(*v3, *(v3 + 8));
        sub_10007A708(v11, v4, v5, &v13);
        v12 = v13;
        sub_10008570C(v11);
        return v12;
      }

      if (!__OFSUB__(HIDWORD(v4), v4))
      {
        if (HIDWORD(v4) - v4 < result)
        {
          return 0;
        }

        goto LABEL_10;
      }

      goto LABEL_17;
    }

    if (v6 == 2)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v10 >= result)
      {
        goto LABEL_10;
      }
    }

    else if (result <= 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100134000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  result = __chkstk_darwin(a1, a2);
  if (result)
  {
    sub_1001343D8(0, a4, v7, a4, &v9 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_1001D2170();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001340B8(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  return sub_100134000(a1, a2, v2[2], v2[3]);
}

uint64_t sub_1001340EC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_100131AB8(a1, a2);
}

uint64_t sub_100134194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_100134268;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_100134268()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_100134378@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5.n128_f64[0] = sub_100131814(a1, a2, a3);
  v6 = *(*(a1 - 1) + 8);

  return v6(v3, a1, v5);
}

uint64_t sub_1001343D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1, a2);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v27 - v15;
  v17 = *(v9 + 80);
  v18 = v17 + 1;
  if (((v17 + 1) & v17) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v9 + 72);
  if (v17 <= 0xF)
  {
    if (v14 >= 1025)
    {
      goto LABEL_12;
    }

LABEL_8:
    result = __chkstk_darwin(v14, v18);
    v23 = &v27 - v22;
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      memcpy(&v27 - v22, (a3 + a1), v10);
      (*(v9 + 16))(v12, v23, a4);
      v24 = *(v9 + 32);
      v24(v16, v12, a4);
      return (v24)(a5, v16, a4);
    }
  }

  else
  {
    while (1)
    {
      v14 = swift_slowAlloc();
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v25 = v14;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v14 = v25;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v19 = (a3 + a1);
    v20 = v14;
    memcpy(v14, v19, v10);
    (*(v9 + 16))(a5, v20, a4);
  }

  return result;
}

void sub_100134620(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_100134968();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_100134698(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1001347B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_100134968()
{
  if (!qword_10022ED60[0])
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, qword_10022ED60);
    }
  }
}

uint64_t sub_1001349CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    result = type metadata accessor for LengthPrefixDeframer.AsyncIterator.State();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100134AA4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[5];
  v7 = a3[2];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a3[3] - 8) + 64);
  v11 = *(v8 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (v9 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(a3[3] - 8) + 80) & 0xF8 | 7;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v14 = v10 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v9 < 0xFD)
      {
        v23 = *(((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13) + v10);
        if (v23 >= 3)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v22 = *(v8 + 48);

        return v22(a1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_100134D0C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[5];
  v9 = a4[2];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = 8;
  if (*(*(a4[3] - 8) + 64) > 8uLL)
  {
    v13 = *(*(a4[3] - 8) + 64);
  }

  if (v11 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = *(*(a4[3] - 8) + 80) & 0xF8 | 7;
  v16 = v13 + ((v15 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 1;
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v13 + ((v15 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~v15) != -1)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 < 0xFD)
  {
    v24 = (((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15);
    if (a2 > 0xFD)
    {
      v25 = (v13 + 1);
      v26 = -1 << (8 * (v13 + 1));
      if (v25 <= 3)
      {
        v27 = ~v26;
      }

      else
      {
        v27 = -1;
      }

      if (v25)
      {
        v28 = v27 & (a2 - 254);
        if (v25 <= 3)
        {
          v29 = v25;
        }

        else
        {
          v29 = 4;
        }

        bzero(v24, v25);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v24 = v28;
            v24[2] = BYTE2(v28);
          }

          else
          {
            *v24 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v24 = v28;
        }

        else
        {
          *v24 = v28;
        }
      }
    }

    else
    {
      v24[v13] = -a2;
    }
  }

  else
  {
    v23 = *(v10 + 56);

    v23(a1, a2);
  }
}

uint64_t sub_100135074(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001350E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100135224(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_100135464()
{
  result = qword_10022EE68;
  if (!qword_10022EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE68);
  }

  return result;
}

unint64_t sub_1001354C4()
{
  result = qword_10022EE70;
  if (!qword_10022EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE70);
  }

  return result;
}

uint64_t AsyncConnectionWriterProtocol.write<A>(_:isComplete:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 104) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return _swift_task_switch(sub_100135544, 0, 0);
}

uint64_t sub_100135544()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = sub_100135914(*(v0 + 16), 0, 1);
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v17 = *(v0 + 40);
  v5 = v3;
  v6 = v4;
  sub_1001D1090();
  sub_100012038(v5, v6);
  v7 = sub_1001D1060();
  *(v0 + 80) = v7;
  v8 = *(v17 + 8);
  v16 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_100135704;
  v11 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);
  v14 = *(v0 + 104);

  return v16(v5, v6, v7, v14, v13, v12);
}

uint64_t sub_100135704()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100135894;
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    sub_100011E48(v7, v6);
    v4 = sub_100135830;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100135830()
{
  sub_100011E48(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100135894()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_100011E48(v3, v2);
  sub_100011E48(v3, v2);
  v4 = v0[12];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100135914(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1001D0B00();
  if (!v3)
  {
    v9 = v7;
    v10 = v8;
    v31 = v7;
    v32 = v8;
    if ((a3 & 1) == 0)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = sub_1001A3C70(a2 + 1);
      v12 = sub_1001583E0(v11);
      if (v13 >> 60 != 15)
      {
        v14 = v12;
        v15 = v13;
        sub_1001CFC30();
        sub_10002683C(v14, v15);
        v9 = v31;
        v10 = v32;
      }
    }

    v16 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_21;
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (!v20)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v28 = (v10 >> 24) & 0xFF000000;
      v30 = xmmword_1001D3A00;
      v17 = BYTE6(v10);
      goto LABEL_24;
    }

    LODWORD(v21) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v21 = v21;
LABEL_15:
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v21))
    {
      v28 = bswap32(v21);
      v30 = xmmword_1001D3A00;
      if (v16 != 2)
      {
        LODWORD(v17) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_32;
        }

        v17 = v17;
        goto LABEL_24;
      }

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      v20 = __OFSUB__(v22, v23);
      v17 = v22 - v23;
      if (!v20)
      {
LABEL_24:
        if (!__OFADD__(v17, 4))
        {
          sub_1001CFBA0(v17 + 4);
          v29[3] = &type metadata for UnsafeRawBufferPointer;
          v29[4] = &protocol witness table for UnsafeRawBufferPointer;
          v29[0] = &v28;
          v29[1] = v29;
          v24 = sub_100024DC8(v29, &type metadata for UnsafeRawBufferPointer);
          v26 = *v24;
          v25 = v24[1];
          sub_1001CFBB0();
          sub_100011CF0(v29);
          sub_1001CFC30();
          a1 = v30;
          sub_100011E48(v9, v10);
          return a1;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_21:
      v17 = 0;
      v28 = 0;
      v30 = xmmword_1001D3A00;
      goto LABEL_24;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return a1;
}

uint64_t NWConnectionReceived.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10002683C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NWConnectionReceived.contentContext.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NWConnectionReceived.init(data:contentContext:isComplete:)(uint64_t a1, unint64_t a2)
{
  sub_10002683C(0, 0xF000000000000000);
  sub_100089C38(a1, a2);

  sub_10002683C(a1, a2);

  return a1;
}

uint64_t sub_100135C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v11 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_1001CFDA0();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v15 = sub_1001D02F0();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();
  v18 = sub_1001D0E60();
  v8[21] = v18;
  v19 = *(v18 - 8);
  v8[22] = v19;
  v20 = *(v19 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v21 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8[25] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_100135E98, 0, 0);
}

uint64_t sub_100135E98()
{
  v67 = v0;
  v1 = *(v0 + 224);
  v50 = *(v0 + 216);
  v2 = *(v0 + 200);
  v58 = *(v0 + 192);
  v55 = *(v0 + 184);
  v63 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v53 = *(v0 + 144);
  v54 = *(v0 + 168);
  v5 = *(v0 + 128);
  v62 = *(v0 + 136);
  v6 = *(v0 + 120);
  v60 = *(v0 + 112);
  v61 = v6;
  v57 = *(v0 + 64);
  v7 = *(v0 + 56);
  v52 = v7;
  v49 = *(v0 + 48);
  v8 = *(v0 + 40);
  sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
  v9 = swift_allocObject();
  *(v0 + 232) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = &_swiftEmptyArrayStorage;
  *(v9 + 32) = 0;
  v51 = *(v5 + 16);
  v51(&v1[*(v2 + 28)], v7, v6);
  *(v1 + 1) = v8;
  *(v1 + 2) = v9;
  v56 = v9;
  *v1 = v49;
  sub_100141D18(v1, v50);
  v10 = enum case for TC2LogCategory.network(_:);
  v11 = *(v4 + 104);

  v12 = v49;
  v11(v3, v10, v53);
  sub_1001D08B0();
  (*(v4 + 8))(v3, v53);
  v13 = *(v63 + 16);
  v13(v55, v58, v54);
  v51(v62, v52, v6);
  v14 = type metadata accessor for NWConnectionWrapper(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v0 + 240) = v17;
  v18 = (v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
  v19 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  (*(*(v19 - 8) + 56))(v60, 1, 2, v19);
  *v18 = 0;
  v20 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
  v21 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
  bzero(v18 + v20, *(*(v21 - 8) + 64));
  sub_100141D7C(v60, v18 + v20);
  *(v17 + 16) = v8;
  v59 = v13;
  v13((v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v55, v54);
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID);

  v65 = sub_1001D23A0();
  v66 = v22;
  v69._countAndFlagsBits = 1130045498;
  v69._object = 0xE400000000000000;
  sub_1001D18B0(v69);
  *(v0 + 16) = sub_1001D1000();
  v70._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v70);

  v71._countAndFlagsBits = 2629725;
  v71._object = 0xE300000000000000;
  sub_1001D18B0(v71);
  sub_1001D18B0(v57);
  v72._countAndFlagsBits = 41;
  v72._object = 0xE100000000000000;
  sub_1001D18B0(v72);
  v23 = v66;
  v24 = (v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
  *v24 = v65;
  v24[1] = v23;
  *(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v56;
  v25 = *(v17 + 16);

  sub_1001D10B0();
  (*(v5 + 8))(v62, v61);
  v26 = *(v63 + 8);
  *(v0 + 248) = v26;
  *(v0 + 256) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v55, v54);
  *(v0 + 264) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v27 = sub_1001D0E50();
  v28 = sub_1001D1DD0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v65 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954E0(*(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v65);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s start", v29, 0xCu);
    sub_100011CF0(v30);
  }

  v32 = *(v0 + 208);
  v31 = *(v0 + 216);
  v33 = *(v0 + 192);
  v34 = *(v0 + 168);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v38 = *(v0 + 48);
  v39 = *(v17 + 16);
  sub_1001D1170();
  v59(v35 + *(v36 + 20), v33, v34);
  v40 = *(v36 + 24);
  sub_100011AC0(qword_100227990, &unk_1001D34D0);
  v41 = swift_allocObject();
  *(v41 + 20) = 0;
  *(v41 + 16) = 0;
  *(v35 + v40) = v41;
  *v35 = v17;
  sub_100141D18(v31, v32);
  *(v0 + 24) = v17;

  v64 = (v37 + *v37);
  v42 = v37[1];
  v43 = swift_task_alloc();
  *(v0 + 272) = v43;
  *v43 = v0;
  v43[1] = sub_1001364F4;
  v44 = *(v0 + 208);
  v45 = *(v0 + 104);
  v46 = *(v0 + 88);
  v47 = *(v0 + 32);

  return v64(v47, v45, v0 + 24, v44);
}

uint64_t sub_1001364F4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_10013685C;
  }

  else
  {
    sub_100141DE8(*(v2 + 208), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v4 = sub_100136624;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100136624()
{
  v25 = v0;
  v1 = v0[33];
  v2 = v0[30];
  sub_100141DE8(v0[13], type metadata accessor for NWAsyncConnection.Inbound);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s cancel", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[24];
  v18 = v0[26];
  v19 = v0[23];
  v14 = v0[21];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[13];
  v15 = *(v0[30] + 16);
  sub_1001D1180();

  v9(v13, v14);
  sub_100141DE8(v12, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v11, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10013685C()
{
  v27 = v0;
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[26];
  sub_100141DE8(v0[13], type metadata accessor for NWAsyncConnection.Inbound);
  sub_100141DE8(v3, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v26);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s cancel", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[24];
  v20 = v0[26];
  v21 = v0[23];
  v15 = v0[21];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v16 = *(v0[30] + 16);
  sub_1001D1180();

  v10(v14, v15);
  sub_100141DE8(v12, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v13, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v17 = v0[1];
  v18 = v0[35];

  return v17();
}

uint64_t sub_100136AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v13;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v9 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_100136B6C, 0, 0);
}

uint64_t sub_100136B6C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
  v8 = swift_allocObject();
  *(v0 + 128) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = &_swiftEmptyArrayStorage;
  *(v8 + 32) = 0;
  v9 = *(v3 + 28);
  v10 = sub_1001CFDA0();
  v21 = *(v0 + 80);
  (*(*(v10 - 8) + 16))(&v1[v9], v5, v10);
  *(v1 + 1) = v7;
  *(v1 + 2) = v8;
  *v1 = v6;
  sub_100141D18(v1, v2);
  *(v0 + 16) = v2;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v21;

  v12 = v6;
  v13 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_100136D44;
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  v23 = *(v0 + 96);

  return sub_100137104(v18, v19, v16, v17, v14, v15, v8, v0 + 16);
}

uint64_t sub_100136D44()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v5 = sub_100136F38;
  }

  else
  {
    sub_100141DE8(*(v2 + 112), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v5 = sub_100136E98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100136E98()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_100141DE8(v0[15], type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100136F38()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_100141DE8(v0[15], type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  sub_100141DE8(v2, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_100136FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5)
{
  v9 = *a4;
  v13 = (a5 + *a5);
  v10 = a5[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10005B61C;

  return v13(a1, a2, a3, v9);
}

uint64_t sub_100137104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v40;
  v8[14] = v41;
  v8[11] = v38;
  v8[12] = v39;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  if (v40 == 1)
  {
    TupleTypeMetadata = *(v41 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = swift_task_alloc();
    if (v40)
    {
      v11 = 0;
      v12 = v41 & 0xFFFFFFFFFFFFFFFELL;
      if (v40 < 4)
      {
        goto LABEL_9;
      }

      if (v10 - v12 < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = (v10 + 16);
      v15 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v40)
      {
LABEL_9:
        v17 = v40 - v11;
        v18 = 8 * v11;
        v19 = (v10 + 8 * v11);
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[15] = TupleTypeMetadata;
  v22 = *(TupleTypeMetadata - 8);
  v8[16] = v22;
  v23 = *(v22 + 64) + 15;
  v8[17] = swift_task_alloc();
  v24 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[18] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v26 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v27 = sub_1001CFDA0();
  v8[21] = v27;
  v28 = *(v27 - 8);
  v8[22] = v28;
  v29 = *(v28 + 64) + 15;
  v8[23] = swift_task_alloc();
  v30 = sub_1001D02F0();
  v8[24] = v30;
  v31 = *(v30 - 8);
  v8[25] = v31;
  v32 = *(v31 + 64) + 15;
  v8[26] = swift_task_alloc();
  v33 = sub_1001D0E60();
  v8[27] = v33;
  v34 = *(v33 - 8);
  v8[28] = v34;
  v35 = *(v34 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_10013741C, 0, 0);
}

uint64_t sub_10013741C()
{
  v61 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v55 = v3;
  v51 = *(v0 + 168);
  v52 = *(v0 + 184);
  v57 = *(v0 + 160);
  v56 = *(v0 + 72);
  v9 = *(v0 + 48);
  v54 = *(v0 + 56);
  v53 = *(v0 + 32);
  (*(v5 + 104))(v6, enum case for TC2LogCategory.network(_:), v7);
  sub_1001D08B0();
  (*(v5 + 8))(v6, v7);
  v10 = *(v3 + 16);
  v10(v2, v1, v4);
  (*(v8 + 16))(v52, v9, v51);
  v11 = type metadata accessor for NWConnectionWrapper(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v0 + 248) = v14;
  v15 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
  v16 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  (*(*(v16 - 8) + 56))(v57, 1, 2, v16);
  *v15 = 0;
  v17 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
  v18 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
  bzero(v15 + v17, *(*(v18 - 8) + 64));
  sub_100141D7C(v57, v15 + v17);
  *(v14 + 16) = v53;
  v10(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger, v2, v4);
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID);

  v59 = sub_1001D23A0();
  v60 = v19;
  v63._countAndFlagsBits = 1130045498;
  v63._object = 0xE400000000000000;
  sub_1001D18B0(v63);
  *(v0 + 16) = sub_1001D1000();
  v64._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v64);

  v65._countAndFlagsBits = 2629725;
  v65._object = 0xE300000000000000;
  sub_1001D18B0(v65);
  sub_1001D18B0(v54);
  v66._countAndFlagsBits = 41;
  v66._object = 0xE100000000000000;
  sub_1001D18B0(v66);
  v20 = v60;
  v21 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
  *v21 = v59;
  v21[1] = v20;
  *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v56;
  v22 = *(v14 + 16);

  sub_1001D10B0();
  (*(v8 + 8))(v52, v51);
  v23 = *(v55 + 8);
  *(v0 + 256) = v23;
  *(v0 + 264) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v2, v4);
  *(v0 + 272) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v24 = sub_1001D0E50();
  v25 = sub_1001D1DD0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000954E0(*(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v59);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s start", v26, 0xCu);
    sub_100011CF0(v27);
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 216);
  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v32 = *(v0 + 104);
  v33 = *(v0 + 40);
  v34 = *(v14 + 16);
  sub_1001D1170();
  v10(v30 + *(v31 + 20), v28, v29);
  v35 = *(v31 + 24);
  sub_100011AC0(qword_100227990, &unk_1001D34D0);
  v36 = swift_allocObject();
  *(v36 + 20) = 0;
  *(v36 + 16) = 0;
  *(v30 + v35) = v36;
  *v30 = v14;
  v37 = swift_task_alloc();
  *(v0 + 280) = v37;
  if (v32)
  {
    v38 = 0;
    v39 = *(v0 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v40 = 32;
    do
    {
      v43 = *(v0 + 104);
      if (v43 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(*(v0 + 120) + v40);
      }

      v42 = *(v0 + 136) + v41;
      (*(*(*(v39 + 8 * v38) - 8) + 16))(v42, *(*(v0 + 80) + 8 * v38));
      *(v37 + 8 * v38++) = v42;
      v40 += 16;
    }

    while (v38 != v43);
  }

  v44 = *(v0 + 88);

  v58 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 288) = v46;
  *v46 = v0;
  v46[1] = sub_100137A68;
  v47 = *(v0 + 152);
  v48 = *(v0 + 96);
  v49 = *(v0 + 24);

  return v58(v49, v47, v14, v37);
}

uint64_t sub_100137A68()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v6 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_100137D8C;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v4 = sub_100137B94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100137B94()
{
  v23 = v0;
  v1 = v0[34];
  v2 = v0[31];
  sub_100141DE8(v0[19], type metadata accessor for NWAsyncConnection.Inbound);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s cancel", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[29];
  v14 = v0[26];
  v13 = v0[27];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[17];
  v15 = *(v0[31] + 16);
  sub_1001D1180();

  v9(v11, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100137D8C()
{
  v27 = v0;
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_100141DE8(v0[19], type metadata accessor for NWAsyncConnection.Inbound);
  (*(v4 + 8))(v3, v5);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000954E0(*(v8 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v8 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v26);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s cancel", v9, 0xCu);
    sub_100011CF0(v10);
  }

  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[33];
  v14 = v0[30];
  v15 = v0[29];
  v17 = v0[26];
  v16 = v0[27];
  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[17];
  v18 = *(v0[31] + 16);
  sub_1001D1180();

  v12(v14, v16);

  v19 = v0[1];
  v20 = v0[37];

  return v19();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:requestID:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1001D0F40();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100138084, 0, 0);
}

uint64_t sub_100138084()
{
  v1 = v0[5];
  v2 = v0[3];
  (*(v0[14] + 16))(v0[15], v0[4], v0[13]);
  v3 = sub_1001D11A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_1001D1140();
  v0[16] = v6;
  if (v1)
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[8];
    v10 = v0[5];
    v11 = swift_task_alloc();
    v0[17] = v11;
    v12 = *(v0 + 3);
    v13 = *(v0 + 9);
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    *(v11 + 32) = v12;
    *(v11 + 48) = v9;
    *(v11 + 56) = v13;
    *(v11 + 72) = v8;

    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_100138280;
    v15 = v0[12];
    v16 = v0[2];

    return NWConnection.withActivity<A>(activity:_:)(v16, v10, &unk_1001E0138, v11);
  }

  else
  {
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_100138414;
    v19 = v0[11];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[7];
    v23 = v0[8];
    v24 = v0[6];
    v25 = v0[2];
    v27 = v0[12];

    return sub_100136AB4(v25, v6, v24, v22, v23, v20, v21, v19);
  }
}

uint64_t sub_100138280()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100138600;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10013839C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013839C()
{
  v1 = v0[16];
  v2 = v0[5];

  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100138414()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100138594;
  }

  else
  {
    v3 = sub_100138528;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100138528()
{
  v1 = v0[16];

  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100138594()
{
  v1 = v0[16];

  v2 = v0[21];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100138600()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[5];

  v4 = v0[19];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100138680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_10005B61C;

  return sub_100136AB4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100138778(uint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_100138680(a1, v4, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_100138864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  v15[2] = a9;
  v15[3] = v22;
  v15[4] = v23;
  v16 = swift_task_alloc();
  *(v9 + 24) = v16;
  *v16 = v9;
  v16[1] = sub_1001428B0;

  return NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:requestID:logComment:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100138988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a3;
  v12 = (a5 + *a5);
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100138AA8;

  return v12(a1, a2, v5 + 16, a4);
}

uint64_t sub_100138AA8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100138BC4, 0, 0);
}

uint64_t sub_100138BC4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10011181C;
  v7 = *(v0 + 40);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1001E0148, v4, sub_10013DCE0, v7, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100138CDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  return _swift_task_switch(sub_100138D08, 0, 0);
}

uint64_t sub_100138D08()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100138E20;
  v7 = *(v0 + 40);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1001E0778, v4, sub_1001428BC, v7, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100138E20()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1001428D8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1001428C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t NWAsyncConnection.Inbound.makeAsyncIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v4 = *&v1[*(v3 + 24)];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16) == 1)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v5 = *v1;
    v6 = *(v3 + 20);
    v7 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
    v8 = v7[5];
    v9 = sub_1001D0E60();
    (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
    *&a1[v7[6]] = 0;
    a1[v7[7]] = 0;
    *a1 = v5;
  }

  return result;
}

uint64_t NWAsyncConnection.Inbound.AsyncIterator.next()()
{
  v1[6] = v0;
  v2 = sub_1001D0E60();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100139140, 0, 0);
}

uint64_t sub_100139140()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6 = *(v5 + 20);
  v30 = *(v3 + 16);
  v31 = v4;
  v30(v1, v4 + v6, v2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for data on NW connection", v9, 2u);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = *(v5 + 28);
  *(v0 + 44) = v15;
  if (*(v13 + v15) == 1)
  {
    v30(*(v0 + 72), v31 + v6, *(v0 + 56));
    v16 = sub_1001D0E50();
    v17 = sub_1001D1DE0();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Continuing iteration on NW connection that previously completed", v22, 2u);
    }

    v14(v19, v21);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);

    v25 = *(v0 + 8);

    return v25(0, 0, 1, 0);
  }

  else
  {
    v27 = **(v0 + 48);
    v28 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
    v29 = swift_task_alloc();
    *(v0 + 88) = v29;
    *v29 = v0;
    v29[1] = sub_100139430;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1001E0158, v27, sub_10013DDC4, v27, 0, 0, &type metadata for NWConnectionReceived);
  }
}

uint64_t sub_100139430()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1001395F4;
  }

  else
  {
    v3 = sub_100139544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100139544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4 == 1)
  {
    *(*(v0 + 48) + *(v0 + 44)) = 1;
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7(v2, v1, v3, v4);
}

uint64_t sub_1001395F4()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100139660(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001396F0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001396F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;

  if (!v4)
  {
    v13 = *(v10 + 16);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
  }

  v14 = *(v12 + 8);

  return v14();
}

uint64_t sub_100139824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1001398B8;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001398B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(*v5 + 56);
  v11 = *v5;
  v11[8] = v4;

  if (v4)
  {
    if (v11[4])
    {
      v12 = v11[5];
      v13 = v11[4];
      swift_getObjectType();
      v14 = sub_1001D1A70();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    return _swift_task_switch(sub_100139A50, v14, v16);
  }

  else
  {
    v17 = v11[3];
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = v11[1];

    return v18();
  }
}

uint64_t sub_100139A50()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::Int TC2NetworkActivityResult.hashValue.getter(char a1)
{
  sub_1001D2580();
  sub_1001D2590(a1 & 1);
  return sub_1001D25C0();
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:gatewayKeyConfig:mediaType:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v12;
  *(v9 + 104) = v8;
  *(v9 + 80) = v11;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return _swift_task_switch(sub_100139BE4, 0, 0);
}

uint64_t sub_100139BE4()
{
  v1 = *(*(v0 + 104) + 16);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100139C78;

  return sub_10013F08C(v2);
}

uint64_t sub_100139C78()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10013A0C4;
  }

  else
  {
    v3 = sub_100139D8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100139D8C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_1001D11A0();
  v7 = *(v1 + 8);

  sub_100012038(v5, v4);
  v8 = sub_1001D10F0();
  *(v0 + 128) = v8;
  if (v8)
  {
    v9 = v8;
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    sub_10005A1A4();
    v25 = *(v0 + 80);
    v12 = sub_1001D1E40();
    *(v0 + 136) = v12;
    v13 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v25;
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_100139F90;
    v16 = *(v0 + 96);
    v19 = *(v0 + 16);
    v18 = v0 + 16;
    v17 = v19;
    v20 = *(v18 + 48);
    v21 = *(v18 + 56);

    return sub_100137104(v17, v9, v12, v10 + v13, v20, v21, 0, v18);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100139F90()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v5 = sub_10013A14C;
  }

  else
  {
    v5 = sub_10013A0DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013A0DC()
{
  v1 = v0[18];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013A14C()
{
  v1 = v0[18];
  v2 = v0[16];

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10013A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v12 = (a5 + *a5);
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10005B61C;

  return v12(a1, a2, a3);
}

uint64_t sub_10013A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v23;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v8[6] = a1;
  v9 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v11 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = sub_1001CFDA0();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();
  v15 = sub_1001D02F0();
  v8[21] = v15;
  v16 = *(v15 - 8);
  v8[22] = v16;
  v17 = *(v16 + 64) + 15;
  v8[23] = swift_task_alloc();
  v18 = sub_1001D0E60();
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return _swift_task_switch(sub_10013A4C4, 0, 0);
}

uint64_t sub_10013A4C4()
{
  v1 = *(*(v0 + 96) + 16);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_10013A558;

  return sub_10013F08C(v2);
}

uint64_t sub_10013A558()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10013AD40;
  }

  else
  {
    v3 = sub_10013A66C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013A66C()
{
  v66 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  sub_1001D11A0();
  v5 = *(v1 + 8);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;

  sub_100012038(v2, v3);
  v6 = sub_1001D1100();
  *(v0 + 240) = v6;
  if (v6)
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v58 = v6;
    v14 = *(v0 + 152);
    v56 = *(v0 + 192);
    v57 = *(v0 + 144);
    v61 = *(v0 + 136);
    v60 = *(v0 + 96);
    v59 = *(v0 + 80);
    sub_10005A1A4();
    *(v0 + 248) = sub_1001D1E40();
    v15 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    (*(v10 + 104))(v11, enum case for TC2LogCategory.network(_:), v12);
    sub_1001D08B0();
    (*(v10 + 8))(v11, v12);
    v16 = *(v9 + 16);
    v16(v7, v8, v56);
    (*(v14 + 16))(v13, v60 + v15, v57);
    v17 = type metadata accessor for NWConnectionWrapper(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    *(v0 + 256) = v20;
    v21 = (v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v22 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v22 - 8) + 56))(v61, 1, 2, v22);
    *v21 = 0;
    v23 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v24 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v21 + v23, *(*(v24 - 8) + 64));
    sub_100141D7C(v61, v21 + v23);
    *(v20 + 16) = v58;
    v62 = v16;
    v16((v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v7, v56);
    sub_100141538(&qword_100228AF8, &type metadata accessor for UUID);

    v64 = sub_1001D23A0();
    v65 = v25;
    v68._countAndFlagsBits = 1130045498;
    v68._object = 0xE400000000000000;
    sub_1001D18B0(v68);
    *(v0 + 32) = sub_1001D1000();
    v69._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v69);

    v70._countAndFlagsBits = 2629725;
    v70._object = 0xE300000000000000;
    sub_1001D18B0(v70);
    sub_1001D18B0(v59);
    v71._countAndFlagsBits = 41;
    v71._object = 0xE100000000000000;
    sub_1001D18B0(v71);
    v26 = v65;
    v27 = (v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v27 = v64;
    v27[1] = v26;
    *(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = 0;
    v28 = *(v20 + 16);

    sub_1001D10B0();
    (*(v14 + 8))(v13, v57);
    v29 = *(v9 + 8);
    *(v0 + 264) = v29;
    *(v0 + 272) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v7, v56);
    *(v0 + 280) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v30 = sub_1001D0E50();
    v31 = sub_1001D1DD0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000954E0(*(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v64);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s start", v32, 0xCu);
      sub_100011CF0(v33);
    }

    v34 = *(v0 + 216);
    v35 = *(v0 + 192);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = *(v0 + 104);
    v39 = *(v20 + 16);
    sub_1001D1170();
    v62(v36 + *(v37 + 20), v34, v35);
    v40 = *(v37 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v41 = swift_allocObject();
    *(v41 + 20) = 0;
    *(v41 + 16) = 0;
    *(v36 + v40) = v41;
    *v36 = v20;
    *(v0 + 40) = v20;

    v63 = (v38 + *v38);
    v42 = v38[1];
    v43 = swift_task_alloc();
    *(v0 + 288) = v43;
    *v43 = v0;
    v43[1] = sub_10013ADE8;
    v44 = *(v0 + 128);
    v45 = *(v0 + 112);
    v46 = *(v0 + 48);

    return v63(v46, v44, v0 + 40);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    v50 = *(v0 + 208);
    v49 = *(v0 + 216);
    v51 = *(v0 + 184);
    v52 = *(v0 + 160);
    v54 = *(v0 + 128);
    v53 = *(v0 + 136);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_10013AD40()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10013ADE8()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_10013B0EC;
  }

  else
  {
    v3 = sub_10013AEFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013AEFC()
{
  v23 = v0;
  v1 = v0[35];
  v2 = v0[32];
  sub_100141DE8(v0[16], type metadata accessor for NWAsyncConnection.Inbound);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s cancel", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = v0[33];
  v9 = v0[34];
  v10 = v0[31];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[16];
  v15 = *(v0[32] + 16);
  sub_1001D1180();

  v8(v12, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10013B0EC()
{
  v25 = v0;
  v1 = v0[35];
  v2 = v0[32];
  sub_100141DE8(v0[16], type metadata accessor for NWAsyncConnection.Inbound);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s cancel", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[31];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[24];
  v14 = *(v0[32] + 16);
  sub_1001D1180();

  v9(v12, v13);

  v15 = v0[37];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];
  v19 = v0[20];
  v21 = v0[16];
  v20 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A, B>(ohttpContext:standaloneAEADKey:logComment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v15;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v14;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(v14 - 8);
  v9[13] = v10;
  v11 = *(v10 + 64) + 15;
  v9[14] = swift_task_alloc();

  return _swift_task_switch(sub_10013B3A8, 0, 0);
}

uint64_t sub_10013B3A8()
{
  v1 = *(*(v0 + 96) + 16);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10013B43C;

  return sub_10013F08C(v2);
}

uint64_t sub_10013B43C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10013B8A4;
  }

  else
  {
    v3 = sub_10013B550;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013B550()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1001D11A0();
  v8 = *(v4 + 8);
  (*(v2 + 16))(v1, v6, v5);

  v9 = sub_1001D1100();
  *(v0 + 136) = v9;
  if (v9)
  {
    v10 = v9;
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    sub_10005A1A4();
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);
    v13 = sub_1001D1E40();
    *(v0 + 144) = v13;
    v14 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *(v15 + 16) = v27;
    *(v15 + 32) = v12;
    *(v15 + 40) = v28;
    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *v16 = v0;
    v16[1] = sub_10013B770;
    v17 = *(v0 + 72);
    v20 = *(v0 + 16);
    v19 = v0 + 16;
    v18 = v20;
    v21 = *(v19 + 24);
    v22 = *(v19 + 32);

    return sub_100137104(v18, v10, v13, v11 + v14, v21, v22, 0, v19);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    v25 = *(v0 + 112);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10013B770()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v5 = sub_10013B984;
  }

  else
  {
    v5 = sub_10013B908;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013B8A4()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013B908()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013B984()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[21];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10013B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v12 = (a5 + *a5);
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10005B61C;

  return v12(a1, a2, a3);
}

uint64_t NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:logComment:aeadDelivery:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v11;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  return _swift_task_switch(sub_10013BB48, 0, 0);
}

uint64_t sub_10013BB48()
{
  v1 = *(*(v0 + 88) + 16);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10013BBDC;

  return sub_10013F08C(v2);
}

uint64_t sub_10013BBDC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10013C06C;
  }

  else
  {
    v3 = sub_10013BCF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013BCF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  sub_1001D11A0();
  v3 = *(v1 + 8);

  v4 = sub_1001D1110();
  *(v0 + 112) = v4;
  if (v4)
  {
    v5 = v4;
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
    v10 = swift_allocObject();
    *(v0 + 120) = v10;
    *(v10 + 16) = 0;
    *(v10 + 24) = &_swiftEmptyArrayStorage;
    *(v10 + 32) = 0;
    sub_10005A1A4();
    v21 = *(v0 + 64);
    v22 = *(v0 + 48);
    v11 = sub_1001D1E40();
    *(v0 + 128) = v11;
    v12 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *(v13 + 16) = v7;
    *(v13 + 24) = v6;
    *(v13 + 32) = v5;
    *(v13 + 40) = v9;
    *(v13 + 48) = v8;
    *(v13 + 56) = v10;
    *(v13 + 64) = v22;
    *(v13 + 80) = v21;

    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_10013BF20;
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 16);
    v24 = *(v0 + 80);

    return sub_100137104(v17, v5, v11, v6 + v12, v15, v16, v10, v0 + 16);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10013BF20()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);

  if (v0)
  {
    v7 = sub_10013C0FC;
  }

  else
  {
    v7 = sub_10013C084;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013C084()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013C0FC()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[19];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10013C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v19;
  *(v8 + 120) = v18;
  *(v8 + 104) = v17;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_1001D02F0();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v12 = sub_1001D0E60();
  *(v8 + 168) = v12;
  v13 = *(v12 - 8);
  *(v8 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_10013C2B0, 0, 0);
}

uint64_t sub_10013C2B0()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  (*(v3 + 104))(v2, enum case for TC2LogCategory.network(_:), v4);
  sub_1001D08B0();
  (*(v3 + 8))(v2, v4);
  LODWORD(v1) = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
  sub_1001CFDA0();
  sub_100141538(&qword_100228AF8, &type metadata accessor for UUID);
  v13 = sub_1001D23A0();
  v14 = v9;
  v16._countAndFlagsBits = 1130045498;
  v16._object = 0xE400000000000000;
  sub_1001D18B0(v16);
  v0[6] = sub_1001D1000();
  v17._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v17);

  v18._countAndFlagsBits = 2629725;
  v18._object = 0xE300000000000000;
  sub_1001D18B0(v18);
  v19._countAndFlagsBits = v6;
  v19._object = v5;
  sub_1001D18B0(v19);
  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  sub_1001D18B0(v20);
  v0[24] = v13;
  v0[25] = v14;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_10013C4A8;
  v11 = v0[13];

  return sub_10013F08C(v10);
}

uint64_t sub_10013C4A8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);

    v5 = sub_10013C7D4;
  }

  else
  {
    v5 = sub_10013C5C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10013C5C4()
{
  v5 = (v0[14] + *v0[14]);
  v1 = *(v0[14] + 4);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_10013C6B0;
  v3 = v0[15];

  return v5();
}

uint64_t sub_10013C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 224);
  v11 = *v5;
  v6[29] = a1;
  v6[30] = a2;
  v6[31] = a3;
  v6[32] = a4;
  v6[33] = v4;

  if (v4)
  {
    v8 = v6[25];

    v9 = sub_10013CF00;
  }

  else
  {
    v9 = sub_10013C864;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10013C7D4()
{
  v1 = v0[27];
  v2 = v0[20];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013C864()
{
  v59 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  sub_100012038(*(v0 + 232), *(v0 + 240));
  sub_100012038(v1, v2);

  v5 = sub_1001D0E50();
  v6 = sub_1001D1DD0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 256);
  if (!v7)
  {
    v16 = *(v0 + 248);
    sub_100011E48(*(v0 + 232), *(v0 + 240));
    sub_100011E48(v16, v8);
    goto LABEL_24;
  }

  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v58[0] = v12;
  *v11 = 136315650;
  result = sub_1000954E0(v10, v9, v58);
  *(v11 + 4) = result;
  *(v11 + 12) = 2048;
  v14 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = *(v0 + 262);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v17 = *(*(v0 + 248) + 16);
  v18 = *(*(v0 + 248) + 24);
  v19 = __OFSUB__(v18, v17);
  v15 = v18 - v17;
  if (v19)
  {
    __break(1u);
LABEL_10:
    v20 = *(v0 + 248);
    v21 = *(v0 + 252);
    v19 = __OFSUB__(v21, v20);
    LODWORD(v15) = v21 - v20;
    if (v19)
    {
      __break(1u);
      goto LABEL_35;
    }

    v15 = v15;
  }

LABEL_13:
  v22 = *(v0 + 240);
  *(v11 + 14) = v15;
  *(v11 + 22) = 2048;
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v25 = *(*(v0 + 232) + 16);
    v26 = *(*(v0 + 232) + 24);
    v19 = __OFSUB__(v26, v25);
    v24 = v26 - v25;
    if (!v19)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v27 = *(v0 + 232);
    v28 = *(v0 + 236);
    v19 = __OFSUB__(v28, v27);
    LODWORD(v24) = v28 - v27;
    if (!v19)
    {
      v24 = v24;
      goto LABEL_23;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  if (v23)
  {
    goto LABEL_20;
  }

  v24 = BYTE6(v22);
LABEL_23:
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  v31 = *(v0 + 232);
  *(v11 + 24) = v24;
  sub_100011E48(v31, v22);
  sub_100011E48(v30, v29);
  _os_log_impl(&_mh_execute_header, v5, v6, "%s updating obliviousHTTPConnection aeadNonce.count=%ld, aeadKey.count=%ld", v11, 0x20u);
  sub_100011CF0(v12);

LABEL_24:

  v32 = *(v0 + 80);
  v33 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v33;
  if (sub_1001D1130())
  {
    v34 = *(v0 + 200);
    v35 = *(v0 + 184);

    v36 = sub_1001D0E50();
    v37 = sub_1001D1DD0();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 200);
    if (v38)
    {
      v40 = *(v0 + 192);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58[0] = v42;
      *v41 = 136315138;
      v43 = sub_1000954E0(v40, v39, v58);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s did update obliviousHTTPConnection", v41, 0xCu);
      sub_100011CF0(v42);
    }

    else
    {
    }

    v57 = (*(v0 + 128) + **(v0 + 128));
    v52 = *(*(v0 + 128) + 4);
    v53 = swift_task_alloc();
    *(v0 + 272) = v53;
    *v53 = v0;
    v53[1] = sub_10013CD38;
    v54 = *(v0 + 136);
    v55 = *(v0 + 56);
    v56 = *(v0 + 64);

    return v57(v55, v56);
  }

  else
  {
    v44 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 232);
    v46 = *(v0 + 240);
    v48 = *(v0 + 200);

    sub_100141174();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_100011E48(v47, v46);
    sub_100011E48(v44, v45);
    v50 = *(v0 + 160);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_10013CD38()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10013CF90;
  }

  else
  {
    v3 = sub_10013CE4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013CE4C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  sub_100011E48(v0[29], v0[30]);
  sub_100011E48(v1, v2);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10013CF00()
{
  v1 = v0[33];
  v2 = v0[20];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013CF90()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_100011E48(v0[29], v0[30]);
  sub_100011E48(v1, v2);
  v3 = v0[35];
  v4 = v0[20];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10013D05C(uint64_t a1, void *a2)
{
  v4 = sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v16 - v8;
  v12 = a2;
  v10 = *a2;
  v11 = v12[1];
  (*(v5 + 16))(&v16 - v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v9, v4);
  sub_1001D1120();
}

uint64_t sub_10013D1AC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022F1C8, &qword_1001E0750);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v9 - v5;
  sub_10001208C(a1, &v9 - v5, &qword_10022F1C8, &qword_1001E0750);
  v7 = sub_1001D10E0();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
    return sub_1001D1AA0();
  }

  return result;
}

uint64_t sub_10013D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  v15[2] = a9;
  v15[3] = v22;
  v15[4] = v23;
  v16 = swift_task_alloc();
  *(v9 + 24) = v16;
  *v16 = v9;
  v16[1] = sub_10013D3D8;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:gatewayKeyConfig:mediaType:logComment:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10013D3D8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10013D4E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a3;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1001428B4;

  return v10(a1, a2, v4 + 16);
}

uint64_t sub_10013D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  v15[2] = a8;
  v15[3] = v21;
  v15[4] = v22;
  v15[5] = a6;
  v15[6] = a7;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1001428B0;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A, B>(ohttpContext:standaloneAEADKey:logComment:_:)(a1, a2, a3, a4, a5, &unk_1001E0760, v15, a8);
}

uint64_t sub_10013D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1000130E0;

  return NWAsyncConnection.OHTTPStreamFactory.withOHTTPSubStream<A>(ohttpContext:logComment:aeadDelivery:body:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10013D828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10013D848, 0, 0);
}

uint64_t sub_10013D848()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10013D8DC;

  return sub_10013F08C(v2);
}

uint64_t sub_10013D8DC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10013DC00;
  }

  else
  {
    v3 = sub_10013D9F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013D9F0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1001D10E0();
  *v4 = v0;
  v4[1] = sub_10013DAEC;
  v6 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000019, 0x80000001001E6F70, sub_100142310, v2, v5);
}

uint64_t sub_10013DAEC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10013DC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001446A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10013DD28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_1001454AC(a1, v1);
}

uint64_t sub_10013DDCC()
{
  if (*(v0 + 49))
  {
    __break(1u);
  }

  else
  {
    v1 = v0;
    v2 = *v0;
    v3 = *(v1 + 1);
    v6[0] = *v1;
    v6[1] = v3;
    v6[2] = *(v1 + 2);
    v7 = *(v1 + 24);

    sub_100011F00(v6, &qword_1002295E8, &unk_1001E0660);

    sub_1001D19B0();
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1001D19F0();
    }

    result = sub_1001D1A20();
    *v1 = v2;
    *(v1 + 49) = 0;
  }

  return result;
}

uint64_t sub_10013DEB4()
{
  if (*(v0 + 9))
  {
    __break(1u);
  }

  else
  {
    v3 = *v0;

    sub_1001D19B0();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1001D19F0();
    }

    result = sub_1001D1A20();
    *v0 = v3;
    *(v0 + 4) = 0;
  }

  return result;
}

uint64_t sub_10013DF5C()
{
  v1 = v0;
  v2 = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = (&v9 - v5);
  sub_10001208C(v1, &v9 - v5, &qword_10022F158, &qword_1001E06C0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100011F00(v1, &qword_10022F158, &qword_1001E06C0);
    v10 = *v6;

    sub_1001D19B0();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1001D19F0();
    }

    sub_1001D1A20();
    *v1 = v10;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_10013E0A8(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v27 = *(a1 + 24);
  v4 = a1[1];
  v26[0] = *a1;
  v26[1] = v4;
  v26[2] = a1[2];
  if (v3 != 2)
  {
    if (v3)
    {
      v7 = a1[1];
      v21 = *a1;
      v22 = v7;
      v23 = a1[2];
      v24 = *(a1 + 48);
      v25 = HIBYTE(v27);
      sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
      return;
    }

    if ((v27 & 0x100) == 0)
    {
      v5 = a1[1];
      v21 = *a1;
      v22 = v5;
      v23 = a1[2];
      v24 = *(a1 + 48);
      v25 = HIBYTE(v27);
      sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
      sub_10013DDCC();
      *v2 = a2;

      return;
    }

    goto LABEL_7;
  }

  if ((v27 & 0x100) != 0)
  {
LABEL_7:
    v8 = a1[2];
    v22 = a1[1];
    v23 = v8;
    v21 = *a1;
    v24 = *(a1 + 48);
    v25 = HIBYTE(v27);
    v17 = v21;
    v18 = v22;
    v19 = v8;
    v20 = v24 & 1;
    v9 = (a2 + *(*a2 + 88));
    sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
    sub_10001208C(&v21, v16, &qword_1002295E8, &unk_1001E0660);
    os_unfair_lock_lock(v9);
    v10 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
    sub_1001467FC(v9 + *(v10 + 28), &v17);
    os_unfair_lock_unlock(v9);
    sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
    sub_1001286C4(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20);
    *v2 = 1;
    return;
  }

  v11 = a1[1];
  v21 = *a1;
  v22 = v11;
  v23 = a1[2];
  v24 = *(a1 + 48);
  v25 = HIBYTE(v27);
  sub_10001208C(v26, v16, &qword_1002295E8, &unk_1001E0660);
  sub_100011F00(&v21, &qword_1002295E8, &unk_1001E0660);
  v13 = (a2 + *(*a2 + 88));
  os_unfair_lock_lock(v13);
  v14 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
  sub_100140F34(v13 + *(v14 + 28), v15, &qword_10022F128, &unk_1001E0670, &qword_1002295D8, &qword_1001D6988);
  os_unfair_lock_unlock(v13);
}

void sub_10013E398(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  if (*v2 == 2)
  {
    if ((*(a1 + 9) & 1) == 0)
    {
      v9 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v9);
      v10 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
      sub_100140F34(v9 + *(v10 + 28), &v11, &qword_10022D298, &qword_1001DE530, &qword_100227B38, &qword_1001D36D0);
      os_unfair_lock_unlock(v9);
      return;
    }

LABEL_8:
    v12 = *a1;
    v13 = v4 & 1;
    v7 = (a2 + *(*a2 + 88));
    sub_1001427A0(v3, v4, 1, sub_1001428C0);
    sub_1001422F8(v3, v4 & 1);
    os_unfair_lock_lock(v7);
    v8 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
    sub_1001469DC(v7 + *(v8 + 28), &v12);
    os_unfair_lock_unlock(v7);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    *v2 = 1;
    return;
  }

  if (*v2)
  {
    return;
  }

  if (*(a1 + 9))
  {
    goto LABEL_8;
  }

  sub_10013DEB4();
  *v2 = a2;
}

void sub_10013E57C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  if (*v2 == 2)
  {
    if ((*(a1 + 9) & 1) == 0)
    {
      v9 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v9);
      v10 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
      sub_100140F34(v9 + *(v10 + 28), &v11, &qword_10022F1A0, &unk_1001E0720, &qword_10022F1A8, &qword_1001E0870);
      os_unfair_lock_unlock(v9);
      return;
    }

LABEL_8:
    v12 = *a1;
    v13 = v4 & 1;
    v7 = (a2 + *(*a2 + 88));
    sub_1001427A0(v3, v4, 1, sub_1001428C0);
    sub_1001422F8(v3, v4 & 1);
    os_unfair_lock_lock(v7);
    v8 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
    sub_100146B68(v7 + *(v8 + 28), &v12);
    os_unfair_lock_unlock(v7);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    sub_1001427B4(v3, v4, 1, sub_1001428C4);
    *v2 = 1;
    return;
  }

  if (*v2)
  {
    return;
  }

  if (*(a1 + 9))
  {
    goto LABEL_8;
  }

  sub_10013DEB4();
  *v2 = a2;
}

void sub_10013E760(uint64_t a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v35[-v13];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v35[-v17];
  __chkstk_darwin(v16, v19);
  v21 = &v35[-v20];
  v22 = sub_100011AC0(&qword_10022F150, &qword_1001E06B8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v26 = &v35[-v25];
  v27 = *v2;
  sub_10001208C(a1, &v35[-v25], &qword_10022F158, &qword_1001E06C0);
  if (v27 == 2)
  {
    sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000DBEF4(v26, v14, &qword_10022F188, &qword_1001E06F0);
      sub_10001208C(v14, v10, &qword_10022F188, &qword_1001E06F0);
      v31 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v31);
      v32 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
      sub_100146CFC(v31 + *(v32 + 28), v10);
      os_unfair_lock_unlock(v31);
      sub_100011F00(v14, &qword_10022F188, &qword_1001E06F0);
      v30 = v10;
      goto LABEL_8;
    }

    sub_100011F00(v26, &qword_10022F158, &qword_1001E06C0);
    v33 = (a2 + *(*a2 + 88));
    os_unfair_lock_lock(v33);
    v34 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
    sub_100140F34(v33 + *(v34 + 28), v35, &qword_10022F168, &unk_1001E06D0, &qword_10022F170, &unk_1001E18C0);
    os_unfair_lock_unlock(v33);
  }

  else
  {
    if (v27)
    {
      sub_100011F00(v26, &qword_10022F158, &qword_1001E06C0);
      return;
    }

    sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000DBEF4(v26, v21, &qword_10022F188, &qword_1001E06F0);
      sub_10001208C(v21, v18, &qword_10022F188, &qword_1001E06F0);
      v28 = (a2 + *(*a2 + 88));
      os_unfair_lock_lock(v28);
      v29 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
      sub_100146CFC(v28 + *(v29 + 28), v18);
      os_unfair_lock_unlock(v28);
      sub_100011F00(v21, &qword_10022F188, &qword_1001E06F0);
      v30 = v18;
LABEL_8:
      sub_100011F00(v30, &qword_10022F188, &qword_1001E06F0);
      *v2 = 1;
      return;
    }

    sub_100011F00(v26, &qword_10022F158, &qword_1001E06C0);
    sub_10013DF5C();
    *v2 = a2;
  }
}

unint64_t sub_10013EB64(__int128 *a1)
{
  v2 = *v1;
  v24 = *(a1 + 24);
  v3 = a1[1];
  v22[0] = *a1;
  v22[1] = v3;
  v23 = a1[2];
  v18 = v22[0];
  v19 = v3;
  v20 = v23;
  v21 = *(a1 + 48);
  v4 = HIBYTE(v24);
  if (v2)
  {
    if (v2 != 1 && v2 != 2 && (v24 & 0x100) == 0)
    {
      v8 = a1[1];
      v13 = *a1;
      v14 = v8;
      v15 = a1[2];
      v16 = *(a1 + 48);
      v17 = HIBYTE(v24);
      sub_10001208C(v22, v12, &qword_1002295E8, &unk_1001E0660);
      sub_100011F00(&v13, &qword_1002295E8, &unk_1001E0660);
      v9 = (v2 + *(*v2 + 88));
      os_unfair_lock_lock(v9);
      v10 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
      sub_100140F34(v9 + *(v10 + 28), v11, &qword_10022F128, &unk_1001E0670, &qword_1002295D8, &qword_1001D6988);
      os_unfair_lock_unlock(v9);
      result = sub_100141EFC(v2);
      *v1 = 2;
      return result;
    }

    v5 = a1[1];
    v13 = *a1;
    v14 = v5;
    v15 = a1[2];
    v6 = *(a1 + 48);
  }

  else
  {
    *v1 = 2;
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v6 = v21;
  }

  v16 = v6;
  v17 = v4;
  sub_10001208C(v22, v12, &qword_1002295E8, &unk_1001E0660);
  return sub_100011F00(&v13, &qword_1002295E8, &unk_1001E0660);
}

uint64_t sub_10013ED28(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013ED48, 0, 0);
}

uint64_t sub_10013ED48()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v5 = v0;
  v5[1] = sub_10013EE70;
  v7 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &unk_1001E0648, v2, sub_100141EF4, v3, 0, 0, v6);
}

uint64_t sub_10013EE70()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10013F008;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_10013EF94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013EF94()
{
  sub_100011F00(v0 + 24, &qword_10022F120, &qword_1001E0658);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F008()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_100011F00((v0 + 3), &qword_10022F120, &qword_1001E0658);
  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10013F08C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013F0AC, 0, 0);
}

uint64_t sub_10013F0AC()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_10013F1C8;
  v6 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1001E0798, v2, sub_100142790, v3, 0, 0, &type metadata for () + 8);
}

uint64_t sub_10013F1C8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10013F360;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_10013F2EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013F2EC()
{
  sub_100011F00(v0 + 24, &qword_10022F1D0, &unk_1001E07A0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013F360()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_100011F00((v0 + 3), &qword_10022F1D0, &unk_1001E07A0);
  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10013F404()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_10013F51C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 32, &unk_1001E0708, v2, sub_1001422E8, v3, 0, 0, &type metadata for Int);
}

uint64_t sub_10013F51C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10013F6B8;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_10013F640;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013F640()
{
  sub_100011F00(v0 + 24, &qword_10022F190, &qword_1001E0710);
  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013F6B8()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_100011F00((v0 + 3), &qword_10022F190, &qword_1001E0710);
  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10013F73C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10013F75C, 0, 0);
}

uint64_t sub_10013F75C()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *v5 = v0;
  v5[1] = sub_10013F878;
  v7 = *(v0 + 32);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &unk_1001E06A0, v2, sub_100141FC0, v3, 0, 0, v6);
}

uint64_t sub_10013F878()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10013FA10;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_10013F99C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10013F99C()
{
  sub_100011F00(v0 + 24, &qword_10022F140, &qword_1001E06A8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013FA10()
{
  v2 = v0[6];
  v1 = v0[7];

  sub_100011F00((v0 + 3), &qword_10022F140, &qword_1001E06A8);
  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10013FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FAB8, 0, 0);
}

uint64_t sub_10013FAB8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v3 = v0;
  v3[1] = sub_10013FBB8;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100141F0C, v1, v4);
}

uint64_t sub_10013FBB8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10013FCF4, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10013FCF4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_10013FD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FD7C, 0, 0);
}

uint64_t sub_10013FD7C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10013FE70;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100142798, v1, &type metadata for () + 8);
}

uint64_t sub_10013FE70()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001428DC, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10013FFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10013FFD0, 0, 0);
}

uint64_t sub_10013FFD0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *v3 = v0;
  v3[1] = sub_10013FE70;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_100141FC8, v1, v4);
}

uint64_t sub_1001400C4(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F128, &unk_1001E0670);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - v15;
  v17 = *(v12 + 16);
  v17(&v26 - v15, a1, v11);
  v18 = sub_100011AC0(&qword_10022F130, &qword_1001E0680);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v17(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v22 = (v21 + *(*v21 + 88));
  *v22 = 0;
  v23 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
  v24 = sub_100011AC0(&qword_10022F138, &qword_1001E0688);
  bzero(v22 + v23, *(*(v24 - 8) + 64));
  sub_1000DBEF4(v10, v22 + v23, &qword_10022F128, &unk_1001E0670);
  (*(v12 + 8))(v16, v11);
  os_unfair_lock_lock((a2 + 16));
  os_unfair_lock_lock(a3);
  sub_10013E0A8((a2 + 24), v21);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_10014032C(uint64_t a1, os_unfair_lock_s *a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - v15;
  v17 = *(v12 + 16);
  v17(&v26 - v15, a1, v11);
  v18 = sub_100011AC0(&qword_10022F1E0, &qword_1001E07B0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v17(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v22 = (v21 + *(*v21 + 88));
  *v22 = 0;
  v23 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
  v24 = sub_100011AC0(&qword_10022F1E8, &qword_1001E07B8);
  bzero(v22 + v23, *(*(v24 - 8) + 64));
  sub_1000DBEF4(v10, v22 + v23, &qword_10022D298, &qword_1001DE530);
  (*(v12 + 8))(v16, v11);
  os_unfair_lock_lock(a2 + 4);
  os_unfair_lock_lock(a3);
  sub_10013E398(&a2[6], v21);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_100140594(uint64_t a1, os_unfair_lock_s *a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F1A0, &unk_1001E0720);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - v15;
  v17 = *(v12 + 16);
  v17(&v26 - v15, a1, v11);
  v18 = sub_100011AC0(&qword_10022F1B0, &qword_1001E0730);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v17(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v22 = (v21 + *(*v21 + 88));
  *v22 = 0;
  v23 = *(sub_100011AC0(&qword_10022F198, &qword_1001E0718) + 28);
  v24 = sub_100011AC0(&qword_10022F1B8, &qword_1001E0738);
  bzero(v22 + v23, *(*(v24 - 8) + 64));
  sub_1000DBEF4(v10, v22 + v23, &qword_10022F1A0, &unk_1001E0720);
  (*(v12 + 8))(v16, v11);
  os_unfair_lock_lock(a2 + 4);
  os_unfair_lock_lock(a3);
  sub_10013E57C(&a2[6], v21);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_1001407FC(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v6 = sub_100011AC0(&qword_10022F168, &unk_1001E06D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v28 - v9;
  v11 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  v17 = *(v12 + 16);
  v17(&v28 - v15, a1, v11);
  v18 = sub_100011AC0(&qword_10022F178, &qword_1001E06E0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v17(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v22 = (v21 + *(*v21 + 88));
  *v22 = 0;
  v23 = *(sub_100011AC0(&qword_10022F160, &qword_1001E06C8) + 28);
  v24 = sub_100011AC0(&qword_10022F180, &qword_1001E06E8);
  bzero(v22 + v23, *(*(v24 - 8) + 64));
  sub_1000DBEF4(v10, v22 + v23, &qword_10022F168, &unk_1001E06D0);
  (*(v12 + 8))(v16, v11);
  v25 = (a2 + *(*a2 + 88));
  os_unfair_lock_lock(v25);
  v26 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
  os_unfair_lock_lock(a3);
  sub_10013E760(v25 + v26, v21);
  os_unfair_lock_unlock(a3);
  os_unfair_lock_unlock(v25);
}

void sub_100140A94(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  sub_10013EB64((a1 + 24));
  os_unfair_lock_unlock(a2);

  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140AF8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  v4 = *(a2 + 8);
  if (v4 - 1 >= 2)
  {
    if (!v4)
    {
LABEL_5:
      *(a2 + 8) = 2;
      goto LABEL_6;
    }

    if ((*(a1 + 33) & 1) == 0)
    {
      v5 = (v4 + *(*v4 + 88));
      os_unfair_lock_lock(v5);
      v6 = sub_100011AC0(&qword_10022F1D8, &unk_1001E0860);
      sub_100140F34(v5 + *(v6 + 28), &v7, &qword_10022D298, &qword_1001DE530, &qword_100227B38, &qword_1001D36D0);
      os_unfair_lock_unlock(v5);
      sub_100141EFC(v4);
      goto LABEL_5;
    }
  }

LABEL_6:
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140BF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  os_unfair_lock_lock(a2);
  v4 = *(a2 + 8);
  if (v4 - 1 >= 2)
  {
    if (!v4)
    {
LABEL_5:
      *(a2 + 8) = 2;
      goto LABEL_6;
    }

    if ((*(a1 + 33) & 1) == 0)
    {
      v5 = (v4 + *(*v4 + 88));
      os_unfair_lock_lock(v5);
      v6 = sub_100011AC0(&qword_10022F198, &qword_1001E0718);
      sub_100140F34(v5 + *(v6 + 28), &v7, &qword_10022F1A0, &unk_1001E0720, &qword_10022F1A8, &qword_1001E0870);
      os_unfair_lock_unlock(v5);
      sub_100141EFC(v4);
      goto LABEL_5;
    }
  }

LABEL_6:
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_100140CE8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(*a1 + 88));
  os_unfair_lock_lock(v3);
  v4 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
  os_unfair_lock_lock(a2);
  sub_100140D7C((a2 + 8), v3 + v4);
  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(v3);
}

void sub_100140D7C(unint64_t *a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_10022F150, &qword_1001E06B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v14[-v8 - 8];
  v10 = *a1;
  sub_10001208C(a2, &v14[-v8 - 8], &qword_10022F158, &qword_1001E06C0);
  switch(v10)
  {
    case 0uLL:
      *a1 = 2;
LABEL_8:
      sub_100011F00(v9, &qword_10022F158, &qword_1001E06C0);
      return;
    case 1uLL:
      goto LABEL_8;
    case 2uLL:
      goto LABEL_8;
  }

  sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  sub_100011F00(v9, &qword_10022F158, &qword_1001E06C0);
  v11 = (v10 + *(*v10 + 88));
  os_unfair_lock_lock(v11);
  v12 = sub_100011AC0(&qword_10022F160, &qword_1001E06C8);
  sub_100140F34(v11 + *(v12 + 28), v14, &qword_10022F168, &unk_1001E06D0, &qword_10022F170, &unk_1001E18C0);
  os_unfair_lock_unlock(v11);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_100141EFC(v10);
    *a1 = 2;
  }
}

uint64_t sub_100140F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = sub_100011AC0(a3, a4);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = v24 - v14;
  v16 = sub_100011AC0(a5, a6);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = v24 - v20;
  sub_10001208C(a1, v15, a3, a4);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100011F00(v15, a3, a4);
  }

  sub_100011F00(a1, a3, a4);
  (*(v17 + 32))(v21, v15, v16);
  sub_1001D1AC0();
  sub_100141538(&qword_1002295E0, &type metadata accessor for CancellationError);
  v23 = swift_allocError();
  sub_1001D16E0();
  v24[1] = v23;
  sub_1001D1A90();
  (*(v17 + 8))(v21, v16);
  return (*(v17 + 56))(a1, 1, 1, v16);
}

unint64_t sub_100141174()
{
  result = qword_10022EE78;
  if (!qword_10022EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EE78);
  }

  return result;
}

uint64_t sub_1001411E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10005B61C;

  return sub_10013A1BC(a1, a2, a3, a4, v11);
}

void sub_1001412D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  JUMPOUT(0x10013B9FCLL);
}

uint64_t sub_1001413D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v17 = *(v4 + 72);
  v18 = *(v4 + 56);
  v14 = *(v4 + 88);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_10005B61C;

  return sub_10013C174(a1, a2, a3, a4, v10, v11, v12, v13);
}

uint64_t sub_100141538(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001415D8()
{
  result = qword_10022EEE8;
  if (!qword_10022EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EEE8);
  }

  return result;
}

uint64_t sub_100141674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001416D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_100141788()
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v0 <= 0x3F)
  {
    sub_1001D0E60();
    if (v1 <= 0x3F)
    {
      sub_100141CB8(319, &unk_10022EF98, &type metadata for Bool, &type metadata accessor for OSAllocatedUnfairLock);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10014185C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0E60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10014191C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0E60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001419C0()
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v0 <= 0x3F)
  {
    sub_1001D0E60();
    if (v1 <= 0x3F)
    {
      sub_100134968();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100141A78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFDA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100141B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFDA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100141BDC()
{
  sub_10005A1A4();
  if (v0 <= 0x3F)
  {
    sub_1001D11A0();
    if (v1 <= 0x3F)
    {
      sub_100141CB8(319, &unk_10022F0D0, &type metadata for () + 8, type metadata accessor for AsyncEvent);
      if (v2 <= 0x3F)
      {
        sub_1001CFDA0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100141CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100141D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100141E48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000130E0;

  return sub_10013FA94(a1, v5, v4);
}

unint64_t sub_100141EFC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_100141F14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10013FFAC(a1, v5, v4);
}

uint64_t sub_100141FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100141FF4, 0, 0);
}

uint64_t sub_100141FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1001420E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_1001422F0, v1, &type metadata for Int);
}

uint64_t sub_1001420E4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111938, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[3];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100142230(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_100141FD0(a1, v5, v4);
}

uint64_t sub_1001422F8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100142304(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100142318()
{
  v1 = sub_100011AC0(&qword_10022F1C0, &qword_1001E0748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001423AC(uint64_t a1)
{
  v2 = *(*(sub_100011AC0(&qword_10022F1C0, &qword_1001E0748) - 8) + 80);

  return sub_10013D1AC(a1);
}

uint64_t sub_100142428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_10005B61C;

  return sub_10013D4E8(a1, a2, a3, v11);
}

uint64_t sub_10014251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10005B61C;

  return sub_10013D4E8(a1, a2, a3, v9);
}

uint64_t sub_1001425FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10005B61C;

  return sub_100138988(a1, a2, a3, a4, v11);
}

uint64_t sub_1001426E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10013FD58(a1, v5, v4);
}

uint64_t sub_1001427A0(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1001427B4(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1001427C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10005B61C;

  return sub_100136FE8(a1, a2, a3, a4, v11);
}

void sub_100142904(uint64_t a1)
{
  v231 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v219 = *(v231 - 8);
  v2 = *(v219 + 64);
  __chkstk_darwin(v231, v3);
  v224 = &v217 - v4;
  v5 = sub_1001D12E0();
  v6 = *(v5 - 8);
  v235 = v5;
  v236 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v223 = &v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_100011AC0(&qword_10022F390, "̷");
  v10 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229, v11);
  v234 = &v217 - v12;
  v13 = sub_100011AC0(&qword_10022F398, "з");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v228 = &v217 - v16;
  v17 = sub_100011AC0(&qword_10022F3A0, "з");
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v226 = &v217 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v237 = (&v217 - v24);
  __chkstk_darwin(v23, v25);
  v233 = &v217 - v26;
  v27 = type metadata accessor for NWConnectionWrapper.State(0);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v221 = (&v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v30, v32);
  v222 = &v217 - v34;
  __chkstk_darwin(v33, v35);
  v232 = &v217 - v36;
  v37 = sub_1001D1310();
  v38 = *(v37 - 8);
  v39 = *(v38 + 8);
  v41 = __chkstk_darwin(v37, v40);
  v217 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41, v43);
  v225 = &v217 - v45;
  v47 = __chkstk_darwin(v44, v46);
  v230 = (&v217 - v48);
  v50 = __chkstk_darwin(v47, v49);
  v52 = &v217 - v51;
  __chkstk_darwin(v50, v53);
  v55 = &v217 - v54;
  v56 = sub_1001D1160();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v60 = __chkstk_darwin(v56, v59);
  v218 = &v217 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v60, v62);
  v220 = &v217 - v64;
  __chkstk_darwin(v63, v65);
  v67 = (&v217 - v66);
  v68 = *(v57 + 16);
  v68(&v217 - v66, a1, v56);
  v69 = (*(v57 + 88))(v67, v56);
  if (v69 == enum case for NWConnection.State.waiting(_:))
  {
    (*(v57 + 96))(v67, v56);
    (*(v38 + 4))(v55, v67, v37);
    v70 = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
    v71 = *(v38 + 2);
    v231 = v55;
    v71(v52, v55, v37);
    v72 = v238;

    v222 = v70;
    v73 = sub_1001D0E50();
    v74 = sub_1001D1DE0();

    v75 = os_log_type_enabled(v73, v74);
    v76 = v72;
    v227 = v37;
    v224 = v71;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v225 = v38;
      v79 = v78;
      v221 = swift_slowAlloc();
      v239[0] = v221;
      *v77 = 136315394;
      *(v77 + 4) = sub_1000954E0(*(v76 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v76 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      *(v77 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
      swift_allocError();
      v71(v80, v52, v37);
      v81 = _swift_stdlib_bridgeErrorToNSError();
      v230 = *(v225 + 1);
      v230(v52, v37);
      *(v77 + 14) = v81;
      *v79 = v81;
      _os_log_impl(&_mh_execute_header, v73, v74, "%s state changed to waiting error=%@", v77, 0x16u);
      sub_100011F00(v79, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v221);
    }

    else
    {

      v230 = *(v38 + 1);
      v230(v52, v37);
    }

    v98 = v235;
    v99 = v232;
    v100 = (v76 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v76 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v101 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    sub_100146FC8(v100 + v101, v99);
    v102 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v103 = *(v102 - 8);
    v104 = (*(v103 + 48))(v99, 2, v102);
    v105 = v233;
    v106 = v237;
    if (v104)
    {
      if (v104 != 1)
      {
        os_unfair_lock_unlock(v100);
        v125 = v231;
        goto LABEL_35;
      }

      sub_10014703C(v100 + v101);
      (v224)(v100 + v101, v231, v227);
      (*(v103 + 56))(v100 + v101, 0, 2, v102);
    }

    else
    {
      v230(v99, v227);
    }

    os_unfair_lock_unlock(v100);
    v112 = *(v238 + 16);
    v113 = v228;
    sub_1001D1010();
    v114 = sub_1001D1300();
    v115 = *(v114 - 8);
    if ((*(v115 + 48))(v113, 1, v114) == 1)
    {
      sub_100011F00(v113, &qword_10022F398, "з");
      v116 = 1;
    }

    else
    {
      sub_1001D12F0();
      (*(v115 + 8))(v113, v114);
      v116 = 0;
    }

    v117 = v236;
    v118 = *(v236 + 56);
    v118(v105, v116, 1, v98);
    (*(v117 + 104))(v106, enum case for NWPath.Status.unsatisfied(_:), v98);
    v118(v106, 0, 1, v98);
    v119 = *(v229 + 48);
    v120 = v234;
    sub_10001208C(v105, v234, &qword_10022F3A0, "з");
    v121 = v120;
    sub_10001208C(v106, v120 + v119, &qword_10022F3A0, "з");
    v122 = v117;
    v123 = v106;
    v124 = *(v122 + 48);
    if (v124(v121, 1, v98) == 1)
    {
      sub_100011F00(v123, &qword_10022F3A0, "з");
      v121 = v234;
      sub_100011F00(v105, &qword_10022F3A0, "з");
      if (v124(v121 + v119, 1, v98) == 1)
      {
        sub_100011F00(v121, &qword_10022F3A0, "з");
        v125 = v231;
LABEL_32:
        v133 = v125;
        v134 = v238;

        v135 = sub_1001D0E50();
        v136 = sub_1001D1E00();

        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v239[0] = v138;
          *v137 = 136315138;
          *(v137 + 4) = sub_1000954E0(*(v134 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v134 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
          _os_log_impl(&_mh_execute_header, v135, v136, "%s cancel", v137, 0xCu);
          sub_100011CF0(v138);
        }

        sub_1001D1180();
        sub_1001D10B0();
        v125 = v133;
        goto LABEL_35;
      }
    }

    else
    {
      v126 = v226;
      sub_10001208C(v121, v226, &qword_10022F3A0, "з");
      if (v124(v121 + v119, 1, v98) != 1)
      {
        v128 = v236;
        v129 = v121 + v119;
        v130 = v223;
        (*(v236 + 32))(v223, v129, v98);
        sub_100147098(&qword_10022F3B0, &type metadata accessor for NWPath.Status);
        v131 = sub_1001D1790();
        v132 = *(v128 + 8);
        v132(v130, v98);
        sub_100011F00(v237, &qword_10022F3A0, "з");
        sub_100011F00(v105, &qword_10022F3A0, "з");
        v132(v226, v98);
        sub_100011F00(v121, &qword_10022F3A0, "з");
        v125 = v231;
        if (v131)
        {
          goto LABEL_32;
        }

LABEL_35:
        v230(v125, v227);
        return;
      }

      sub_100011F00(v237, &qword_10022F3A0, "з");
      sub_100011F00(v105, &qword_10022F3A0, "з");
      (*(v236 + 8))(v126, v98);
    }

    sub_100011F00(v121, &qword_10022F390, "̷");
    v125 = v231;
    goto LABEL_35;
  }

  v82 = v37;
  v83 = v238;
  if (v69 == enum case for NWConnection.State.failed(_:))
  {
    (*(v57 + 96))(v67, v56);
    v84 = v38;
    v85 = *(v38 + 4);
    v86 = v230;
    v87 = v82;
    v85(v230, v67, v82);
    v88 = v225;
    v237 = *(v84 + 2);
    (v237)(v225, v86, v82);
    v89 = v83;

    v90 = sub_1001D0E50();
    v91 = sub_1001D1DE0();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v239[0] = v94;
      *v92 = 136315394;
      *(v92 + 4) = sub_1000954E0(*(v89 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v89 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      *(v92 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
      swift_allocError();
      (v237)(v95, v88, v87);
      v96 = _swift_stdlib_bridgeErrorToNSError();
      v97 = *(v84 + 1);
      v97(v88, v87);
      *(v92 + 14) = v96;
      *v93 = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s state changed to failed error=%@", v92, 0x16u);
      sub_100011F00(v93, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v94);

      v97(v230, v87);
    }

    else
    {

      v127 = *(v84 + 1);
      v127(v88, v87);
      v127(v86, v87);
    }

    return;
  }

  if (v69 == enum case for NWConnection.State.setup(_:))
  {

    v107 = sub_1001D0E50();
    v108 = sub_1001D1DD0();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v239[0] = v110;
      *v109 = 136315138;
      *(v109 + 4) = sub_1000954E0(*(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      v111 = "%s state changed to setup";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v107, v108, v111, v109, 0xCu);
      sub_100011CF0(v110);

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (v69 == enum case for NWConnection.State.preparing(_:))
  {

    v107 = sub_1001D0E50();
    v108 = sub_1001D1DD0();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v239[0] = v110;
      *v109 = 136315138;
      *(v109 + 4) = sub_1000954E0(*(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      v111 = "%s state changed to preparing";
      goto LABEL_29;
    }

LABEL_30:

    return;
  }

  if (v69 == enum case for NWConnection.State.ready(_:))
  {
    v139 = v238;

    v140 = sub_1001D0E50();
    v141 = sub_1001D1DD0();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v239[0] = v143;
      *v142 = 136315138;
      *(v142 + 4) = sub_1000954E0(*(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      _os_log_impl(&_mh_execute_header, v140, v141, "%s state changed to ready", v142, 0xCu);
      sub_100011CF0(v143);
    }

    v144 = v222;
    v145 = (v139 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v139 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v146 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    sub_100146FC8(v145 + v146, v144);
    v147 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v148 = *(v147 - 8);
    v149 = (*(v148 + 48))(v144, 2, v147);
    if (v149)
    {
      if (v149 != 1)
      {
        goto LABEL_53;
      }

      sub_10014703C(v145 + v146);
    }

    else
    {
      sub_10014703C(v145 + v146);
      (*(v38 + 1))(v144, v82);
    }

    (*(v148 + 56))(v145 + v146, 2, 2, v147);
LABEL_53:
    os_unfair_lock_unlock(v145);
    v170 = *(v139 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
    if (!v170)
    {
      return;
    }

    os_unfair_lock_lock((v170 + 16));
    if ((*(v170 + 33) & 1) == 0)
    {
      v57 = *(v170 + 24);
      v235 = v170;
      LODWORD(v234) = *(v170 + 32);
      v171 = v57 & 0xFFFFFFFFFFFFFF8;
      if (v57 >> 62)
      {
        goto LABEL_107;
      }

      v56 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
        while (1)
        {
          v172 = 0;
          v161 = (v57 & 0xC000000000000001);
          v173 = (v219 + 48);
          v236 = v219 + 8;
          v237 = (v219 + 16);
          v238 = v219 + 48;
          while (v161)
          {
            v174 = sub_1001D2040();
            v160 = (v172 + 1);
            if (__OFADD__(v172, 1))
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_62:
            v67 = (v174 + *(*v174 + 88));
            os_unfair_lock_lock(v67);
            v175 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
            if (!(*v173)(v67 + v175, 1, v231))
            {
              v176 = v67 + v175;
              v177 = v224;
              v178 = v161;
              v179 = v56;
              v180 = v57;
              v181 = v171;
              v182 = v231;
              (*v237)(v224, v176, v231);
              sub_1001D1AA0();
              v183 = v182;
              v171 = v181;
              v57 = v180;
              v56 = v179;
              v161 = v178;
              v173 = v238;
              (*v236)(v177, v183);
            }

            os_unfair_lock_unlock(v67);

            ++v172;
            if (v160 == v56)
            {
              goto LABEL_108;
            }
          }

          if (v172 < *(v171 + 16))
          {
            break;
          }

          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v56 = sub_1001D2190();
          if (!v56)
          {
            goto LABEL_108;
          }
        }

        v174 = *(v57 + 8 * v172 + 32);

        v160 = (v172 + 1);
        if (__OFADD__(v172, 1))
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

LABEL_108:
      sub_10014702C(v57, v234, 0);
      v170 = v235;
      *(v235 + 24) = 0;
      *(v170 + 32) = 256;
    }

    os_unfair_lock_unlock((v170 + 16));
    return;
  }

  if (v69 != enum case for NWConnection.State.cancelled(_:))
  {
    v160 = v220;
    v68(v220, a1, v56);

    v161 = sub_1001D0E50();
    v162 = sub_1001D1DE0();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      LODWORD(v236) = v162;
      v164 = v163;
      v237 = swift_slowAlloc();
      v239[0] = v237;
      *v164 = 136315394;
      *(v164 + 4) = sub_1000954E0(*(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
      *(v164 + 12) = 2082;
      v68(v218, v160, v56);
      v165 = sub_1001D1820();
      v167 = v166;
      v168 = *(v57 + 8);
      v168(v160, v56);
      v169 = sub_1000954E0(v165, v167, v239);

      *(v164 + 14) = v169;
      _os_log_impl(&_mh_execute_header, v161, v236, "%s state change to unexpected state=%{public}s", v164, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
LABEL_67:

      v168 = *(v57 + 8);
      v168(v160, v56);
    }

    v168(v67, v56);
    return;
  }

  v150 = sub_1001D0E50();
  v151 = sub_1001D1DD0();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v239[0] = v153;
    *v152 = 136315138;
    *(v152 + 4) = sub_1000954E0(*(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v239);
    _os_log_impl(&_mh_execute_header, v150, v151, "%s state changed to cancelled", v152, 0xCu);
    sub_100011CF0(v153);
  }

  v154 = v82;
  v155 = v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock;
  os_unfair_lock_lock((v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
  v156 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  v157 = v221;
  sub_100146FC8(v155 + *(v156 + 28), v221);
  v158 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  v159 = (*(*(v158 - 8) + 48))(v157, 2, v158);
  if (v159)
  {
    if (v159 != 1)
    {
      goto LABEL_86;
    }

    sub_1001D1AC0();
    sub_100147098(&qword_1002295E0, &type metadata accessor for CancellationError);
    v57 = swift_allocError();
    sub_1001D16E0();
  }

  else
  {
    v184 = *(v38 + 4);
    v185 = v217;
    v184(v217, v157, v154);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
    v57 = swift_allocError();
    v184(v186, v185, v154);
  }

  os_unfair_lock_unlock(v155);
  if (!v57)
  {
LABEL_87:
    v200 = *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
    if (!v200)
    {
      return;
    }

    os_unfair_lock_lock((v200 + 16));
    if ((*(v200 + 33) & 1) == 0)
    {
      v57 = *(v200 + 24);
      v201 = *(v200 + 32);
      v171 = v57 & 0xFFFFFFFFFFFFFF8;
      v235 = v200;
      LODWORD(v234) = v201;
      if (v57 >> 62)
      {
        v202 = sub_1001D2190();
        if (v202)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v202 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v202)
        {
LABEL_91:
          v203 = 0;
          v204 = v57 & 0xC000000000000001;
          v205 = (v219 + 48);
          v236 = v219 + 8;
          v237 = (v219 + 16);
          v238 = v219 + 48;
          do
          {
            if (v204)
            {
              v206 = sub_1001D2040();
              v207 = v203 + 1;
              if (__OFADD__(v203, 1))
              {
                goto LABEL_100;
              }
            }

            else
            {
              if (v203 >= *(v171 + 16))
              {
                goto LABEL_105;
              }

              v206 = *(v57 + 8 * v203 + 32);

              v207 = v203 + 1;
              if (__OFADD__(v203, 1))
              {
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }
            }

            v67 = (v206 + *(*v206 + 88));
            os_unfair_lock_lock(v67);
            v208 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
            if (!(*v205)(v67 + v208, 1, v231))
            {
              v209 = v67 + v208;
              v210 = v224;
              v211 = v204;
              v212 = v202;
              v213 = v57;
              v214 = v171;
              v215 = v231;
              (*v237)(v224, v209, v231);
              sub_1001D1AA0();
              v216 = v215;
              v171 = v214;
              v57 = v213;
              v202 = v212;
              v204 = v211;
              v205 = v238;
              (*v236)(v210, v216);
            }

            os_unfair_lock_unlock(v67);

            ++v203;
          }

          while (v207 != v202);
        }
      }

      sub_10014702C(v57, v234, 0);
      v200 = v235;
      *(v235 + 24) = 0;
      *(v200 + 32) = 256;
    }

    os_unfair_lock_unlock((v200 + 16));

    return;
  }

  v155 = *(v83 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent);
  if (v155)
  {
    os_unfair_lock_lock((v155 + 16));
    if ((*(v155 + 33) & 1) == 0)
    {
      v171 = *(v155 + 24);
      LODWORD(v233) = *(v155 + 32);
      v187 = v171 & 0xFFFFFFFFFFFFFF8;
      v234 = v155;
      if (v171 >> 62)
      {
        v188 = sub_1001D2190();
      }

      else
      {
        v188 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_errorRetain();
      if (v188)
      {
        v189 = 0;
        v190 = (v171 & 0xC000000000000001);
        v237 = (v171 & 0xC000000000000001);
        v238 = v219 + 48;
        v235 = v219 + 8;
        v236 = v219 + 16;
        do
        {
          if (v190)
          {
            v67 = sub_1001D2040();
            v83 = v189 + 1;
            if (__OFADD__(v189, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v189 >= *(v187 + 16))
            {
              goto LABEL_106;
            }

            v67 = *(v171 + 8 * v189 + 32);

            v83 = v189 + 1;
            if (__OFADD__(v189, 1))
            {
LABEL_85:
              __break(1u);
LABEL_86:
              os_unfair_lock_unlock(v155);
              goto LABEL_87;
            }
          }

          v191 = (v67 + *(*&v67->_os_unfair_lock_opaque + 88));
          swift_errorRetain();
          os_unfair_lock_lock(v191);
          v155 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
          if (!(*v238)(v191 + v155, 1, v231))
          {
            v192 = v191 + v155;
            v155 = v224;
            v193 = v188;
            v194 = v171;
            v195 = v187;
            v196 = v231;
            (*v236)(v224, v192, v231);
            sub_100011AC0(&qword_100227A58, &qword_1001D3600);
            v197 = swift_allocError();
            *v198 = v57;
            v239[0] = v197;
            swift_errorRetain();
            sub_1001D1A90();
            v199 = v196;
            v187 = v195;
            v171 = v194;
            v188 = v193;
            v190 = v237;
            (*v235)(v155, v199);
          }

          os_unfair_lock_unlock(v191);

          ++v189;
        }

        while (v83 != v188);
      }

LABEL_101:
      sub_10014702C(v171, v233, 0);
      v155 = v234;
      *(v234 + 24) = v57;
      *(v155 + 32) = 257;
    }

    os_unfair_lock_unlock((v155 + 16));
  }
}

uint64_t sub_1001446A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_1001446D0, 0, 0);
}

uint64_t sub_1001446D0()
{
  v41 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
  sub_100089C38(v3, v1);

  v5 = sub_1001D0E50();
  v6 = sub_1001D1DD0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  if (v7)
  {
    v9 = *(v0 + 16);
    v10 = -1;
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v11 = 136315906;
    v12 = sub_1000954E0(*(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v40);
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    v19 = *(v0 + 32);
    if (v8 >> 60 == 15)
    {
LABEL_3:
      v20 = *(v0 + 80);
      v21 = *(v0 + 40);
      v22 = *(v0 + 24);
      *(v11 + 14) = v10;
      sub_10002683C(v22, v19);
      *(v11 + 22) = 2080;
      v23 = sub_1001D1040();
      v25 = sub_1000954E0(v23, v24, &v40);

      *(v11 + 24) = v25;
      *(v11 + 32) = 1024;
      *(v11 + 34) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s send content.count=%ld context=%s isComplete=%{BOOL}d", v11, 0x26u);
      swift_arrayDestroy();

      goto LABEL_5;
    }

    v31 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v10 = 0;
        goto LABEL_3;
      }

      v32 = *(*(v0 + 24) + 16);
      v33 = *(*(v0 + 24) + 24);
      v10 = v33 - v32;
      if (!__OFSUB__(v33, v32))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v10 = BYTE6(v19);
      goto LABEL_3;
    }

    v34 = *(v0 + 24);
    v35 = *(v0 + 28);
    v36 = __OFSUB__(v35, v34);
    v37 = v35 - v34;
    if (v36)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v19, v13, v14, v15, v16, v17, v18);
    }

    v10 = v37;
    goto LABEL_3;
  }

  sub_10002683C(*(v0 + 24), *(v0 + 32));
LABEL_5:

  v26 = *(v0 + 80);
  v28 = *(v0 + 32);
  v27 = *(v0 + 40);
  v39 = *(v0 + 16);
  v29 = swift_task_alloc();
  *(v0 + 56) = v29;
  *(v29 + 16) = v39;
  *(v29 + 32) = v28;
  *(v29 + 40) = v27;
  *(v29 + 48) = v26;
  v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_1001449C4;
  v16 = sub_1001472FC;
  v15 = 0x80000001001E6FF0;
  v18 = &type metadata for () + 8;
  v19 = 0;
  v13 = 0;
  v14 = 0xD000000000000029;
  v17 = v29;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v19, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1001449C4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100144C28;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100144AE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100144AE0()
{
  v11 = v0;
  v1 = v0[6];
  v2 = v0[2];

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v5 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s send finished", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100144C28()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100144C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = a6;
  v23[3] = a4;
  v23[4] = a5;
  v23[2] = a3;
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v23 - v12;
  v14 = sub_1001D10A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[1] = *(a2 + 16);
  (*(v9 + 16))(v13, a1, v8);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  (*(v9 + 32))(v21 + v20, v13, v8);
  *v19 = sub_1001473DC;
  v19[1] = v21;
  (*(v15 + 104))(v19, enum case for NWConnection.SendCompletion.contentProcessed(_:), v14);

  sub_1001D1150();
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_100144EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWConnectionWrapper.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022F3C0, &qword_1001E0888);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v50 - v13;
  v15 = sub_1001D1310();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v58 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v50 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v50 - v26;
  sub_10001208C(a1, v14, &qword_10022F3C0, &qword_1001E0888);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100011F00(v14, &qword_10022F3C0, &qword_1001E0888);
    sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    return sub_1001D1AA0();
  }

  else
  {
    v56 = a3;
    v53 = *(v16 + 32);
    v53(v27, v14, v15);
    v29 = v27;
    v30 = *(v16 + 16);
    v54 = v29;
    v30(v24);

    v31 = sub_1001D0E50();
    v32 = sub_1001D1DE0();

    v33 = os_log_type_enabled(v31, v32);
    v55 = v30;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v52 = v16 + 32;
      v35 = v34;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v35 = 136315394;
      *(v35 + 4) = sub_1000954E0(*(a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v59);
      *(v35 + 12) = 2112;
      sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
      swift_allocError();
      (v30)(v36, v24, v15);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = *(v16 + 8);
      v38(v24, v15);
      *(v35 + 14) = v37;
      v39 = v50;
      *v50 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s send failed error=%@", v35, 0x16u);
      sub_100011F00(v39, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v51);
    }

    else
    {

      v38 = *(v16 + 8);
      v38(v24, v15);
    }

    v40 = v58;
    v41 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v42 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
    v43 = v57;
    sub_100146FC8(v41 + *(v42 + 28), v57);
    v44 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v45 = (*(*(v44 - 8) + 48))(v43, 2, v44);
    v46 = v54;
    if (v45)
    {
      v47 = v55;
      (v55)(v40, v54, v15);
    }

    else
    {
      v53(v40, v43, v15);
      v47 = v55;
    }

    os_unfair_lock_unlock(v41);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
    v48 = swift_allocError();
    v47(v49, v40, v15);
    v59 = v48;
    sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    sub_1001D1A90();
    v38(v40, v15);
    return (v38)(v46, v15);
  }
}

uint64_t sub_1001454AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1001D1310();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_100011AC0(&qword_10022F3B8, &qword_1001E0880);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_100011AC0(&qword_10022F3C0, &qword_1001E0888) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10014563C, 0, 0);
}

uint64_t sub_10014563C()
{
  v14 = v0;
  v1 = v0[3];
  v0[15] = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s receive", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1001457F8;
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v9, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_100147144, v11, v10);
}

uint64_t sub_1001457F8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1001458F4, 0, 0);
}

uint64_t sub_1001458F4()
{
  v70 = v0;
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v65 = *(v3 + 24);
  sub_10014714C(v3 + *(v0[9] + 80), v1);
  sub_10001208C(v1, v2, &qword_10022F3C0, &qword_1001E0888);

  sub_100089C38(v6, v5);
  v8 = sub_1001D0E50();
  v9 = sub_1001D1DD0();

  v66 = v6;
  v67 = v7;
  v68 = v5;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[3];
    v11 = -1;
    v12 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136315906;
    result = sub_1000954E0(*(v10 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v10 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v69);
    *(v12 + 4) = result;
    *(v12 + 12) = 2048;
    if (v5 >> 60 == 15)
    {
LABEL_3:
      v59 = v13;
      v16 = v0[12];
      v15 = v0[13];
      v17 = v5;
      v19 = v0[5];
      v18 = v0[6];
      *(v12 + 14) = v11;
      sub_10002683C(v6, v17);
      *(v12 + 22) = 1024;
      *(v12 + 24) = v65;
      *(v12 + 28) = 2112;
      sub_10001208C(v15, v16, &qword_10022F3C0, &qword_1001E0888);
      v20 = (*(v18 + 48))(v16, 1, v19);
      v22 = v0[12];
      v21 = v0[13];
      if (v20 == 1)
      {
        sub_100011F00(v0[12], &qword_10022F3C0, &qword_1001E0888);
        sub_100011F00(v21, &qword_10022F3C0, &qword_1001E0888);
        v23 = 0;
      }

      else
      {
        v27 = v0[5];
        v26 = v0[6];
        sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
        swift_allocError();
        (*(v26 + 32))(v28, v22, v27);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        sub_100011F00(v21, &qword_10022F3C0, &qword_1001E0888);
      }

      *(v12 + 30) = v23;
      *v62 = v23;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s receive finished data.count=%ld isComplete=%{BOOL}d error=%@", v12, 0x26u);
      sub_100011F00(v62, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v59);

      goto LABEL_11;
    }

    v25 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v25 != 2)
      {
        v11 = 0;
        goto LABEL_3;
      }

      v56 = *(v6 + 16);
      v55 = *(v6 + 24);
      v11 = v55 - v56;
      if (!__OFSUB__(v55, v56))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v11 = BYTE6(v5);
      goto LABEL_3;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      __break(1u);
      return result;
    }

    v11 = HIDWORD(v6) - v6;
    goto LABEL_3;
  }

  v24 = v0[13];
  sub_10002683C(v6, v5);

  sub_100011F00(v24, &qword_10022F3C0, &qword_1001E0888);
LABEL_11:
  v29 = v0[11];
  v31 = v0[5];
  v30 = v0[6];
  sub_10001208C(v0[14], v29, &qword_10022F3C0, &qword_1001E0888);
  if ((*(v30 + 48))(v29, 1, v31) == 1)
  {
    v32 = v0[13];
    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[10];
    v57 = v0[8];
    v60 = v0[7];
    v63 = v0[4];
    v36 = v0[2];
    sub_100011F00(v0[14], &qword_10022F3C0, &qword_1001E0888);
    sub_100011F00(v34, &qword_10022F3C0, &qword_1001E0888);
    sub_10002683C(0, 0xF000000000000000);
    sub_100089C38(v6, v68);

    sub_10002683C(v6, v68);

    *v36 = v6;
    *(v36 + 8) = v68;
    *(v36 + 16) = v67;
    *(v36 + 24) = v65;

    v37 = v0[1];
  }

  else
  {
    v39 = v0 + 4;
    v38 = v0[4];
    v40 = v0[3];
    v41 = *(v0[6] + 32);
    v41(v0[8], v0[11], v0[5]);
    v42 = (v40 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v40 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock));
    v43 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
    sub_100146FC8(v42 + *(v43 + 28), v38);
    v44 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    v45 = (*(*(v44 - 8) + 48))(v38, 2, v44);
    v46 = v0[6];
    if (v45)
    {
      v41 = *(v46 + 16);
      v39 = v0 + 8;
    }

    v47 = *v39;
    v48 = v0[13];
    v49 = v0[14];
    v58 = v0[12];
    v61 = v0[11];
    v64 = v0[10];
    v50 = v0[7];
    v51 = v0[8];
    v52 = v0[5];
    v41(v50, v47, v52);
    os_unfair_lock_unlock(v42);
    sub_100147098(&qword_10022F3A8, &type metadata accessor for NWError);
    swift_allocError();
    (*(v46 + 16))(v53, v50, v52);
    swift_willThrow();

    sub_10002683C(v66, v68);
    v54 = *(v46 + 8);
    v54(v50, v52);
    v54(v51, v52);
    sub_100011F00(v49, &qword_10022F3C0, &qword_1001E0888);

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_100146008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + 16);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_1001D1190();
}

uint64_t sub_10014615C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_100011AC0(&qword_10022F3B8, &qword_1001E0880);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = &v18 - v14;
  v16 = *(v13 + 88);
  *v15 = a1;
  *(v15 + 1) = a2;
  *(v15 + 2) = a3;
  v15[24] = a4;
  sub_10001208C(a5, &v15[v16], &qword_10022F3C0, &qword_1001E0888);
  sub_100089C38(a1, a2);

  sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  return sub_1001D1AA0();
}

void sub_100146264(uint64_t a1, const char *a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(a1 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(a1 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v9);
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = *(a1 + 16);
  sub_1001D1020();
}

uint64_t sub_100146378()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8];

  v5 = *&v0[OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent];

  v6 = &v0[OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock];
  v7 = sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  sub_10014703C(&v6[*(v7 + 28)]);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100146494()
{
  v0 = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100146584();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100146584()
{
  if (!qword_10022F248)
  {
    type metadata accessor for NWConnectionWrapper.State(255);
    v0 = sub_1001CFF60();
    if (!v1)
    {
      atomic_store(v0, &qword_10022F248);
    }
  }
}

char *sub_1001465FC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022F110, &qword_1001E0620);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100146640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001466CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10014675C()
{
  sub_1001467B4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1001467B4()
{
  if (!qword_10022F368)
  {
    v0 = sub_1001D1310();
    if (!v1)
    {
      atomic_store(v0, &qword_10022F368);
    }
  }
}

BOOL sub_1001467FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v22 - v9;
  v11 = (*(v6 + 48))(a1, 1, v5);
  if (!v11)
  {
    (*(v6 + 16))(v10, a1, v5);
    v12 = *a2;
    if (*(a2 + 48))
    {
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v13 = swift_allocError();
      *v14 = v12;
      v22[0] = v13;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      v16 = *(a2 + 32);
      v15 = *(a2 + 40);
      v22[7] = v2;
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      v19 = *(a2 + 8);
      v22[0] = v12;
      v22[1] = v19;
      v22[2] = v17;
      v22[3] = v18;
      v22[4] = v16;
      v22[5] = v15;
      v20 = v15;
      sub_100012038(v12, v19);
      sub_100012038(v17, v18);
      sub_100012038(v16, v20);
      sub_1001D1AA0();
    }

    (*(v6 + 8))(v10, v5);
  }

  return v11 != 0;
}

BOOL sub_1001469DC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v15 - v8;
  v10 = (*(v5 + 48))(a1, 1, v4);
  if (!v10)
  {
    (*(v5 + 16))(v9, a1, v4);
    if (a2[1])
    {
      v11 = *a2;
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v12 = swift_allocError();
      *v13 = v11;
      v15[1] = v12;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      sub_1001D1AA0();
    }

    (*(v5 + 8))(v9, v4);
  }

  return v10 != 0;
}

BOOL sub_100146B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v15 - v8;
  v10 = (*(v5 + 48))(a1, 1, v4);
  if (!v10)
  {
    (*(v5 + 16))(v9, a1, v4);
    v11 = *a2;
    if (*(a2 + 8))
    {
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v12 = swift_allocError();
      *v13 = v11;
      v16 = v12;
      swift_errorRetain();
      sub_1001D1A90();
    }

    else
    {
      v16 = *a2;
      sub_1001D1AA0();
    }

    (*(v5 + 8))(v9, v4);
  }

  return v10 != 0;
}

BOOL sub_100146CFC(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v15);
  v31 = v30 - v16;
  v17 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = v30 - v21;
  v23 = a1;
  v24 = (*(v18 + 48))(a1, 1, v17);
  if (!v24)
  {
    v30[0] = v8;
    v30[1] = v2;
    (*(v18 + 16))(v22, v23, v17);
    v25 = v31;
    sub_10001208C(v32, v31, &qword_10022F188, &qword_1001E06F0);
    sub_10001208C(v25, v14, &qword_10022F188, &qword_1001E06F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v14;
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v27 = swift_allocError();
      *v28 = v26;
      v33 = v27;
      sub_1001D1A90();
    }

    else
    {
      sub_1001470E0(v14, v30[0]);
      sub_1001D1AA0();
    }

    sub_100011F00(v25, &qword_10022F188, &qword_1001E06F0);
    (*(v18 + 8))(v22, v17);
  }

  return v24 != 0;
}

uint64_t sub_100146FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014702C(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    return sub_1001428C4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_10014703C(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100147098(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001470E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014714C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022F3C0, &qword_1001E0888);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001471BC()
{
  v1 = sub_100011AC0(qword_10022F3C8, &qword_1001E0890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100147250(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *(*(sub_100011AC0(qword_10022F3C8, &qword_1001E0890) - 8) + 80);

  return sub_10014615C(a1, a2, a3, a4, a5);
}

uint64_t sub_10014730C()
{
  v1 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001473DC(uint64_t a1)
{
  v3 = *(sub_100011AC0(&qword_100227B38, &qword_1001D36D0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100144EC0(a1, v4, v5);
}

uint64_t sub_10014745C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1, a2);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, v17);
  (*(v13 + 32))(a6, v16, a5);
  v18 = type metadata accessor for OnResponseHeadSequence();
  v19 = (a6 + *(v18 + 36));
  *v19 = a1;
  v19[1] = a2;
  v20 = (a6 + *(v18 + 40));
  *v20 = a3;
  v20[1] = a4;
}

unint64_t sub_1001475B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1001479FC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100147658(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_1001477F0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 9) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          *v21 = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

unint64_t sub_1001479FC()
{
  result = qword_10022F450[0];
  if (!qword_10022F450[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_10022F450);
  }

  return result;
}

unint64_t sub_100147A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1001479FC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100147AD4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100147C18(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100147DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness - 8, v16);
  v18 = &v20 - v17;
  (*(v8 + 16))(v12, v4, v7);
  sub_1001D1C90();
  sub_100147F60(v18, *(v4 + *(a1 + 36)), *(v4 + *(a1 + 36) + 8), *(v4 + *(a1 + 40)), *(v4 + *(a1 + 40) + 8), a3);
}

uint64_t sub_100147F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for OnResponseHeadSequence.AsyncIterator();
  *(a6 + v12[9]) = 1;
  *(a6 + v12[10]) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v15 = (a6 + v12[11]);
  *v15 = a2;
  v15[1] = a3;
  v16 = (a6 + v12[12]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t sub_100148050(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(sub_100011AC0(&unk_100230110, &unk_1001D6520) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = *(*(sub_100011AC0(&qword_1002295C0, &qword_1001D6910) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = sub_1001D0FF0();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10014818C, 0, 0);
}

uint64_t sub_10014818C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v1 + 40);
  *(v0 + 44) = v3;
  if (*(v2 + v3))
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);

    v8 = *(v0 + 8);

    return v8(0, 0xF000000000000000);
  }

  else
  {
    v10 = *(v1 + 36);
    if (*(v2 + v10))
    {
      *(v2 + v10) = 0;
      *(v0 + 144) = *(v1 + 24);
      *(v0 + 152) = *(v1 + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v14 = swift_task_alloc();
      *(v0 + 160) = v14;
      *v14 = v0;
      v14[1] = sub_1001483C0;
      v15 = *(v0 + 88);
      v16 = v0 + 48;
    }

    else
    {
      v17 = *(v1 + 24);
      *(v0 + 240) = *(v1 + 16);
      *(v0 + 248) = v17;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v19 = swift_task_alloc();
      *(v0 + 256) = v19;
      *v19 = v0;
      v19[1] = sub_100149084;
      v20 = *(v0 + 88);
      v16 = v0 + 16;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1001483C0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100149710;
  }

  else
  {
    v3 = sub_1001484D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001484D4()
{
  *(v0 + 176) = *(v0 + 48);
  v1 = *(v0 + 64);
  *(v0 + 192) = v1;
  *(v0 + 41) = *(v0 + 72);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0;
      v3 = 0xF000000000000000;
LABEL_24:
      v47 = *(v0 + 136);
      v49 = *(v0 + 104);
      v48 = *(v0 + 112);
      v50 = *(v0 + 96);

      v51 = *(v0 + 8);

      return v51(v2, v3);
    }

    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);

    sub_1001D1050();

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v26 = *(v0 + 80);
      v27 = *(v0 + 88);
      (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
      v28 = (v27 + *(v26 + 44));
      v29 = v28[1];
      v53 = (*v28 + **v28);
      v30 = (*v28)[1];
      v31 = swift_task_alloc();
      *(v0 + 200) = v31;
      *v31 = v0;
      v31[1] = sub_1001489D4;
      v25 = *(v0 + 136);
      goto LABEL_16;
    }
  }

  else
  {
    (*(*(v0 + 128) + 56))(*(v0 + 112), 1, 1, *(v0 + 120));
  }

  sub_100011F00(*(v0 + 112), &qword_1002295C0, &qword_1001D6910);
  v7 = *(v0 + 184);
  if (v7 >> 60 == 15)
  {
    v8 = *(v0 + 41);
    sub_100089D40(*(v0 + 176), v7, *(v0 + 192));
    v9 = *(v0 + 144);
    *(v0 + 240) = *(v0 + 152);
    *(v0 + 248) = v9;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_100149084;
    v14 = *(v0 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v15 = *(v0 + 41);
  *(*(v0 + 88) + *(v0 + 44)) = v15 & 1;
  if ((v15 & 1) == 0)
  {
    v32 = *(v0 + 184);
    v33 = *(v0 + 192);
    v34 = *(v0 + 176);
    v35 = *(v0 + 41);
    sub_100089C38(v34, v32);
    v36 = v34;
    v37 = v32;
    v38 = v33;
LABEL_23:
    sub_100089D40(v36, v37, v38);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    goto LABEL_24;
  }

  if (!*(v0 + 192))
  {
    v39 = *(v0 + 176);
    v40 = *(v0 + 184);
    v41 = *(v0 + 41);
    sub_100089C38(v39, v40);
    v36 = v39;
    v37 = v40;
    v38 = 0;
    goto LABEL_23;
  }

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  sub_1001D12A0();
  sub_100012038(v17, v16);
  sub_1001D1250();
  v18 = sub_1001D1070();
  *(v0 + 216) = v18;

  if (!v18)
  {
    v37 = *(v0 + 184);
    v38 = *(v0 + 192);
    v36 = *(v0 + 176);
    v42 = *(v0 + 41);
    goto LABEL_23;
  }

  sub_1001D1290();
  if (!swift_dynamicCastClass())
  {
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v45 = *(v0 + 176);
    v46 = *(v0 + 41);

    v36 = v45;
    v37 = v44;
    v38 = v43;
    goto LABEL_23;
  }

  v19 = *(v0 + 104);
  v20 = (*(v0 + 88) + *(*(v0 + 80) + 48));
  v21 = *v20;
  v22 = v20[1];
  sub_1001D1280();
  v53 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v0 + 224) = v24;
  *v24 = v0;
  v24[1] = sub_100148E88;
  v25 = *(v0 + 104);
LABEL_16:

  return v53(v25);
}

uint64_t sub_1001489D4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_10014979C;
  }

  else
  {
    v3 = sub_100148AE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100148AE8()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 184);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 41);
    sub_100089D40(*(v0 + 176), v1, *(v0 + 192));
    v3 = *(v0 + 144);
    *(v0 + 240) = *(v0 + 152);
    *(v0 + 248) = v3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = sub_100149084;
    v8 = *(v0 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v9 = *(v0 + 41);
  *(*(v0 + 88) + *(v0 + 44)) = v9 & 1;
  if (v9)
  {
    if (*(v0 + 192))
    {
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      sub_1001D12A0();
      sub_100012038(v11, v10);
      sub_1001D1250();
      v12 = sub_1001D1070();
      *(v0 + 216) = v12;

      if (v12)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v13 = *(v0 + 104);
          v14 = (*(v0 + 88) + *(*(v0 + 80) + 48));
          v15 = *v14;
          v16 = v14[1];
          sub_1001D1280();
          v43 = (v15 + *v15);
          v17 = v15[1];
          v18 = swift_task_alloc();
          *(v0 + 224) = v18;
          *v18 = v0;
          v18[1] = sub_100148E88;
          v19 = *(v0 + 104);

          return v43(v19);
        }

        v32 = *(v0 + 184);
        v31 = *(v0 + 192);
        v33 = *(v0 + 176);
        v34 = *(v0 + 41);

        v24 = v33;
        v25 = v32;
        v26 = v31;
      }

      else
      {
        v25 = *(v0 + 184);
        v26 = *(v0 + 192);
        v24 = *(v0 + 176);
        v30 = *(v0 + 41);
      }
    }

    else
    {
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 41);
      sub_100089C38(v27, v28);
      v24 = v27;
      v25 = v28;
      v26 = 0;
    }
  }

  else
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v22 = *(v0 + 176);
    v23 = *(v0 + 41);
    sub_100089C38(v22, v20);
    v24 = v22;
    v25 = v20;
    v26 = v21;
  }

  sub_100089D40(v24, v25, v26);
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 136);
  v39 = *(v0 + 104);
  v38 = *(v0 + 112);
  v40 = *(v0 + 96);

  v41 = *(v0 + 8);

  return v41(v35, v36);
}

uint64_t sub_100148E88()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 232) = v0;

  sub_100011F00(v3, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v4 = sub_100149858;
  }

  else
  {
    v4 = sub_100148FC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100148FC8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 41);
  sub_100089D40(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);

  v9 = *(v0 + 8);

  return v9(v3, v4);
}

uint64_t sub_100149084()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100149918;
  }

  else
  {
    v3 = sub_100149198;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100149198()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  *(v0 + 288) = v3;
  v4 = *(v0 + 40);
  *(v0 + 42) = v4;
  if (v3 == 1)
  {
    v2 = 0;
    v1 = 0xF000000000000000;
LABEL_17:
    v25 = *(v0 + 136);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v28 = *(v0 + 96);

    v29 = *(v0 + 8);

    return v29(v2, v1);
  }

  if (v4)
  {
    *(*(v0 + 88) + *(v0 + 44)) = 1;
    if (v3)
    {
      sub_1001D12A0();
      sub_1001D1250();
      v5 = sub_1001D1070();
      *(v0 + 296) = v5;

      if (v5)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v6 = *(v0 + 96);
          v7 = (*(v0 + 88) + *(*(v0 + 80) + 48));
          v8 = *v7;
          v9 = v7[1];
          sub_1001D1280();
          v30 = (v8 + *v8);
          v10 = v8[1];
          v11 = swift_task_alloc();
          *(v0 + 304) = v11;
          *v11 = v0;
          v11[1] = sub_1001494FC;
          v12 = *(v0 + 96);

          return v30(v12);
        }
      }
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 288);
    v23 = *(v0 + 272);
    v24 = *(v0 + 42);
    sub_100089C38(v23, v21);
    sub_100089D40(v23, v21, v22);
    v2 = *(v0 + 272);
    v1 = *(v0 + 280);
    goto LABEL_17;
  }

  if (v1 >> 60 != 15)
  {
    sub_100089C38(v2, v1);
    sub_100089D40(v2, v1, v3);
    goto LABEL_17;
  }

  sub_100089D40(v2, v1, v3);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  *v19 = v0;
  v19[1] = sub_100149084;
  v20 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1001494FC()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 312) = v0;

  sub_100011F00(v3, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v4 = sub_1001499A4;
  }

  else
  {
    v4 = sub_10014963C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10014963C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 42);
  sub_100089C38(v4, v2);
  sub_100089D40(v4, v2, v3);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 136);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);

  return v12(v6, v7);
}

uint64_t sub_100149710()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10014979C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 41);
  sub_100089D40(*(v0 + 176), *(v0 + 184), *(v0 + 192));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 208);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100149858()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 41);

  sub_10002683C(v4, v2);
  sub_100089D40(v4, v2, v3);
  v6 = *(v0 + 232);
  v7 = *(v0 + 136);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100149918()
{
  v1 = v0[33];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001499A4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 42);

  sub_100089D40(v4, v3, v2);
  v6 = *(v0 + 312);
  v7 = *(v0 + 136);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100149A54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100149AEC;

  return sub_100148050(a2);
}

uint64_t sub_100149AEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_100149C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100147DE4(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t NWConnection.withActivity<A>(activity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1001D0F00();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100149D5C, 0, 0);
}

uint64_t sub_100149D5C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  sub_1001D1030();
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100149E5C;
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_100149E5C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10014A030;
  }

  else
  {
    v3 = sub_100149F70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100149F70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v2 + 104))(v1, enum case for NWActivity.CompletionReason.success(_:), v3);
  sub_1001D0F20();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10014A030()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[3];
  (*(v3 + 104))(v2, enum case for NWActivity.CompletionReason.failure(_:), v4);
  sub_1001D0F20();
  (*(v3 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[11];

  return v6();
}

Swift::Int sub_10014A114()
{
  sub_1001D2580();
  sub_1001D2590(0x37uLL);
  return sub_1001D25C0();
}

Swift::Int sub_10014A180()
{
  sub_1001D2580();
  sub_1001D2590(0x37uLL);
  return sub_1001D25C0();
}

Swift::Int sub_10014A1F0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1 + 1);
  return sub_1001D25C0();
}

Swift::Int sub_10014A268()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1 + 1);
  return sub_1001D25C0();
}

uint64_t sub_10014A2AC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20privatecloudcomputed23TC2NetworkActivityLabelO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s20privatecloudcomputed23TC2NetworkActivityLabelO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_10014A310()
{
  result = qword_10022F4D8;
  if (!qword_10022F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4D8);
  }

  return result;
}

unint64_t sub_10014A368()
{
  result = qword_10022F4E0;
  if (!qword_10022F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4E0);
  }

  return result;
}

unint64_t sub_10014A3C0()
{
  result = qword_10022F4E8;
  if (!qword_10022F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4E8);
  }

  return result;
}

void sub_10014A444()
{
  v1 = v0;
  v2 = sub_1001D0E60();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v27 - v10;
  v28 = v3[2];
  v28(&v27 - v10, v1, v2);
  v12 = sub_1001D0E50();
  v13 = sub_1001D1E00();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "acquirePowerAssertion", v14, 2u);
  }

  v27 = v3[1];
  v27(v11, v2);
  AssertionID = 0;
  v15 = sub_1001D17A0();
  v16 = type metadata accessor for PowerAssertion();
  v17 = (v1 + *(v16 + 20));
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_1001D17A0();
  v21 = sub_1001D17A0();
  v22 = IOPMAssertionCreateWithDescription(v15, v20, v21, 0, 0, 10.0, 0, &AssertionID);

  if (v22)
  {
    v28(v8, v1, v2);
    v23 = sub_1001D0E50();
    v24 = sub_1001D1DE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to create assertion for trusted request", v25, 2u);
    }

    v27(v8, v2);
    v26 = 0;
  }

  else
  {
    v26 = AssertionID;
  }

  *(v1 + *(v16 + 24)) = v26;
}

uint64_t sub_10014A754()
{
  v1 = v0;
  v2 = sub_1001D0E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "releasePowerAssertion", v10, 2u);
  }

  (*(v3 + 8))(v7, v2);
  v11 = *(type metadata accessor for PowerAssertion() + 24);
  result = *(v1 + v11);
  if (result)
  {
    result = IOPMAssertionRelease(result);
    *(v1 + v11) = 0;
  }

  return result;
}

uint64_t type metadata accessor for PowerAssertion()
{
  result = qword_10022F548;
  if (!qword_10022F548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0E60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10014A9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0E60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10014AAB8()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014AB3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for AsyncEvent.EventState();
  result = sub_1001CFF60();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014ABDC()
{
  v1 = v0 + *(*v0 + 88);
  v2 = *(*v0 + 80);
  type metadata accessor for AsyncEvent.EventState();
  v3 = *(sub_1001CFF60() + 28);
  v4 = sub_1001CFF70();
  sub_10015607C(v4);
  return v0;
}

uint64_t sub_10014AC68()
{
  sub_10014ABDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_10014ACF0(uint64_t *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = *a1;
  type metadata accessor for AsyncEvent.EventState();
  return sub_1001CFF60();
}

uint64_t sub_10014AD3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for CancellableContinuation();
  result = sub_1001D1A60();
  if (v3 <= 0x3F)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    result = sub_1001D25D0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014ADE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 8;
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_10014AF0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}