uint64_t sub_21C8D0BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  v4 = *(v3 + 32);
  *a2 = v4;
  v5 = *(v3 + 40);
  *(a2 + 8) = v5;
  return sub_21C8D7854(v4, v5);
}

uint64_t sub_21C8D0CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810C4();
}

uint64_t sub_21C8D0D80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
  sub_21CB810D4();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_21C8D0E2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CB70C48(v2, v3);
}

uint64_t sub_21C8D0E6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF8, &qword_21CBADDF0);
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_21CB86474();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D10DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE80, &qword_21CBADB50);
  v40 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 32 * v22;
      v26 = *(v25 + 8);
      v42 = *v25;
      v43 = *v23;
      v41 = *(v25 + 16);
      v27 = *(v25 + 24);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v43;
      v17[1] = v24;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v42;
      *(v18 + 8) = v26;
      *(v18 + 16) = v41;
      *(v18 + 24) = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D13B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
  v39 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D1658(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMAccount(0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF28, &qword_21CBADE68);
  v52 = a2;
  result = sub_21CB86214();
  v16 = result;
  if (*(v13 + 16))
  {
    v47 = v3;
    v48 = v13;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v29 = v26 | (v17 << 6);
      v30 = *(v13 + 48);
      v53 = *(v49 + 72);
      v31 = v30 + v53 * v29;
      if (v52)
      {
        sub_21C8D88C8(v31, v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v32 = v12;
        v33 = *(v51 + 72);
        sub_21C8D88C8(*(v13 + 56) + v33 * v29, v54, type metadata accessor for PMAccount);
      }

      else
      {
        sub_21C710710(v31, v12, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v32 = v12;
        v33 = *(v51 + 72);
        sub_21C710710(*(v13 + 56) + v33 * v29, v54, type metadata accessor for PMAccount);
      }

      v34 = *(v16 + 40);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21C71B720(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      sub_21CB85494();
      v35 = v32;
      v36 = *&v32[*(v50 + 20)];
      sub_21CB864A4();
      if (v36)
      {
        v37 = v36;
        sub_21CB85DE4();
      }

      result = sub_21CB864D4();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v23 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_21C8D88C8(v35, *(v16 + 48) + v53 * v24, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v25 = *(v16 + 56) + v33 * v24;
      v12 = v35;
      result = sub_21C8D88C8(v54, v25, type metadata accessor for PMAccount);
      ++*(v16 + 16);
      v13 = v48;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_38;
    }

    v45 = 1 << *(v13 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v18, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v45;
    }

    *(v13 + 16) = 0;
  }

LABEL_38:
  *v3 = v16;
  return result;
}

uint64_t sub_21C8D1B3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  v43 = a2;
  result = sub_21CB86214();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978]);
      result = sub_21CB85484();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_21C8D1F18(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMAccount.UniqueID(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
  v47 = a2;
  result = sub_21CB86214();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v46 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v47)
      {
        sub_21C8D88C8(v28, v9, type metadata accessor for PMAccount.UniqueID);
        v29 = *(v13 + 56);
        v30 = v9;
        v31 = *(v29 + 8 * v26);
      }

      else
      {
        sub_21C710710(v28, v9, type metadata accessor for PMAccount.UniqueID);
        v32 = *(*(v13 + 56) + 8 * v26);
        v30 = v9;
        v31 = v32;
      }

      v33 = *(v14 + 40);
      sub_21CB86484();
      v34 = v30;
      sub_21C7CECE4();
      result = sub_21CB864D4();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21C8D88C8(v34, *(v14 + 48) + v27 * v22, type metadata accessor for PMAccount.UniqueID);
      *(*(v14 + 56) + 8 * v22) = v31;
      v9 = v34;
      ++*(v14 + 16);
      v13 = v45;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_21C8D229C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8970, &qword_21CBADDA8);
  v37 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_21C731A9C(v23, v38);
      }

      else
      {
        sub_21C7A3394(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_21CB855C4();
      sub_21CB86484();
      sub_21CB854C4();
      v26 = sub_21CB864D4();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_21C731A9C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D256C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v35 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 24 * v21;
      v36 = *v23;
      v24 = *(v23 + 16);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v22);
      result = sub_21CB864D4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v36;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D2828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v38 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v39 = *(*(v5 + 48) + v21);
      v22 = (*(v5 + 56) + 24 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if ((v38 & 1) == 0)
      {

        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v39);
      result = sub_21CB864D4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v39;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D2AEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v34 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v21);
      result = sub_21CB864D4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D2D78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  v40 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D3038(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF48, &qword_21CBADF78);
  v38 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D32EC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_21CB86214();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978]);
      result = sub_21CB85484();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_21C8D36C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED8, &qword_21CBADDD0);
  v41 = a2;
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(*(v5 + 56) + 8 * v21);
      if ((v41 & 1) == 0)
      {
        v27 = *(v22 + 8);

        v28 = v26;
      }

      v29 = *(v8 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      if (v25 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v25;
      }

      MEMORY[0x21CF15FC0](*&v30);
      result = sub_21CB864D4();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_38;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D399C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
  v68 = a2;
  v7 = sub_21CB86214();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v57 = v3;
    v58 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v66 = v7;
    v67 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_17:
      v25 = v20 | (v9 << 6);
      v70 = v21;
      if (v68)
      {
        v26 = *(v5 + 56);
        v27 = *(v5 + 48) + 112 * v25;
        v29 = *v27;
        v28 = *(v27 + 16);
        v30 = *(v27 + 32);
        v31 = *(v27 + 40);
        v32 = *(v27 + 48);
        v33 = *(v27 + 56);
        v35 = *(v27 + 64);
        v34 = *(v27 + 72);
        v36 = *(v27 + 80);
        v37 = *(v27 + 81);
        v38 = *(v27 + 82);
        v39 = *(v27 + 88);
        v40 = *(v27 + 104);
        v69 = *(v26 + 8 * v25);
      }

      else
      {
        v41 = (*(v5 + 48) + 112 * v25);
        v42 = v41[3];
        v43 = v41[4];
        v44 = v41[6];
        *v77 = v41[5];
        *&v77[16] = v44;
        v75 = v42;
        v76 = v43;
        v45 = *v41;
        v46 = v41[2];
        v73 = v41[1];
        v74 = v46;
        v72 = v45;
        v47 = *(*(v5 + 56) + 8 * v25);
        v65 = *(&v44 + 1);
        v64 = *&v77[8];
        v62 = v77[1];
        v63 = v77[2];
        v61 = v77[0];
        v34 = *(&v43 + 1);
        v35 = v43;
        v33 = *(&v75 + 1);
        v32 = v75;
        v31 = *(&v46 + 1);
        v30 = v46;
        v59 = v45;
        v60 = v73;
        sub_21C7A33F0(&v72, v71);
        v69 = v47;

        v29 = v59;
        v28 = v60;
        v36 = v61;
        v37 = v62;
        v38 = v63;
        v39 = v64;
        v40 = v65;
      }

      v78 = v29;
      v79 = v28;
      *&v80 = v30;
      *(&v80 + 1) = v31;
      *&v81 = v32;
      *(&v81 + 1) = v33;
      *&v82 = v35;
      *(&v82 + 1) = v34;
      v83[0] = v36;
      v83[1] = v37;
      v83[2] = v38;
      *&v83[8] = v39;
      *&v83[24] = v40;
      v8 = v66;
      v48 = *(v66 + 40);
      sub_21CB86484();
      sub_21C9DC744();
      result = sub_21CB864D4();
      v49 = -1 << *(v66 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*(v14 + 8 * (v50 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        v5 = v67;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *(v14 + 8 * v51);
          if (v55 != -1)
          {
            v15 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v50) & ~*(v14 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
      v5 = v67;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v66 + 48) + 112 * v15);
      v17 = *v83;
      v16[4] = v82;
      v16[5] = v17;
      v16[6] = *&v83[16];
      v18 = v79;
      *v16 = v78;
      v16[1] = v18;
      v19 = v81;
      v16[2] = v80;
      v16[3] = v19;
      *(*(v66 + 56) + 8 * v15) = v69;
      ++*(v66 + 16);
      v12 = v70;
    }

    v22 = v9;
    result = v58;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v13)
      {
        break;
      }

      v24 = v58[v9];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v68 & 1) == 0)
    {

      v3 = v57;
      goto LABEL_36;
    }

    v56 = 1 << *(v5 + 32);
    v3 = v57;
    if (v56 >= 64)
    {
      bzero(v58, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v58 = -1 << v56;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21C8D3D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
  result = sub_21CB86214();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_21C731A9C((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_21C8D7AA4(v24, &v38);
        sub_21C7A3394(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_21CB86014();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_21C731A9C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21C8D4014(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
  v44 = a2;
  result = sub_21CB86214();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_21C71B720(&qword_27CDF8950, MEMORY[0x277D49978]);
      result = sub_21CB85484();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_21C8D43D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21CB10A54(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21C8D6644(&qword_27CDEFE70, &qword_21CBADA60);
      goto LABEL_7;
    }

    sub_21C8D32EC(v18, a3 & 1, &qword_27CDEFE70, &qword_21CBADA60);
    v25 = *v4;
    v26 = sub_21CB10A54(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_21C8D5124(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21CB863B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_21C8D45C0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CB10C50(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21C8D5D6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21C8D229C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_21CB10C50(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for OptionsKey(0);
      result = sub_21CB863B4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_21C731A9C(a1, v20);
  }

  else
  {
    sub_21C8D51DC(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_21C8D4700(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a4 & 1;
  result = sub_21CB109D0(a4 & 1);
  v15 = *(v11 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v11 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D256C(v18, a5 & 1);
      v22 = *v6;
      result = sub_21CB109D0(v12);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21C8D5EEC();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + result) = v12;
    v28 = (v24[7] + 24 * result);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v29 = v24[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v24[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * result);
  v26 = *v25;
  v27 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}

unint64_t sub_21C8D4880(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = a4 & 1;
  result = sub_21CB109D0(a4 & 1);
  v15 = *(v11 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v11 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D2828(v18, a5 & 1);
      v22 = *v6;
      result = sub_21CB109D0(v12);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21C8D606C();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + result) = v12;
    v29 = (v24[7] + 24 * result);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v30 = v24[2];
    v17 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v17)
    {
      v24[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * result);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}

unint64_t sub_21C8D4A08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21CB10C54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21C8D61F4();
    result = v17;
    goto LABEL_8;
  }

  sub_21C8D2AEC(v14, a3 & 1);
  v18 = *v4;
  result = sub_21CB10C54(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for _ASDeleteKind(0);
  sub_21CB863B4();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_21C8D4B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CB10A3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21C8D2D78(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21CB10A3C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21C8D6350();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_21C8D4CD8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21CB10A3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21C8D3038(v16, a4 & 1);
      v20 = *v5;
      result = sub_21CB10A3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21C8D64C8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_21C8D4E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CB10E48(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_21C8D36C8(v18, a4 & 1);
      v22 = *v6;
      v13 = sub_21CB10E48(a2, a3, a5);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_21CB863B4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v21 = v13;
      sub_21C8D68BC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = v24[6] + 24 * v13;
  *v27 = a2;
  *(v27 + 8) = a3;
  *(v27 + 16) = a5;
  *(v24[7] + 8 * v13) = a1;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v29;
}

_OWORD *sub_21C8D4FD8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21CB10D50(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21C8D6BE4();
      goto LABEL_7;
    }

    sub_21C8D3D5C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_21CB10D50(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21C8D7AA4(a2, v22);
      return sub_21C8D5244(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_21CB863B4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_21C731A9C(a1, v17);
}

uint64_t sub_21C8D5124(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21CB85C44();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_21C8D51DC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21C731A9C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_21C8D5244(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21C731A9C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

id sub_21C8D52C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE80, &qword_21CBADB50);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;

        result = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21C8D5458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D55C4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF28, &qword_21CBADE68);
  v10 = *v0;
  v11 = sub_21CB86204();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v1;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v14 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = *(v30 + 72) * v25;
        sub_21C710710(*(v10 + 48) + v26, v9, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        v27 = *(v31 + 72) * v25;
        sub_21C710710(*(v10 + 56) + v27, v5, type metadata accessor for PMAccount);
        sub_21C8D88C8(v9, *(v12 + 48) + v26, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        result = sub_21C8D88C8(v5, *(v12 + 56) + v27, type metadata accessor for PMAccount);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

char *sub_21C8D58B0()
{
  v1 = v0;
  v34 = sub_21CB85C44();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  v4 = *v0;
  v5 = sub_21CB86204();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_21C8D5B30()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.UniqueID(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
  v6 = *v0;
  v7 = sub_21CB86204();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_21C710710(*(v6 + 48) + v22, v5, type metadata accessor for PMAccount.UniqueID);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_21C8D88C8(v5, *(v8 + 48) + v22, type metadata accessor for PMAccount.UniqueID);
        *(*(v8 + 56) + 8 * v21) = v23;
        result = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_21C8D5D6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8970, &qword_21CBADDA8);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_21C7A3394(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_21C731A9C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D5EEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21C8D606C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;

        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21C8D61F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D6350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D64C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF48, &qword_21CBADF78);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D6644(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_21CB85C44();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_21CB86204();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

id sub_21C8D68BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED8, &qword_21CBADDD0);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D6A34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 112 * v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v26[5] = v18[5];
        v26[6] = v21;
        v26[3] = v19;
        v26[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v26[0] = *v18;
        v26[1] = v23;
        v26[2] = v22;
        v24 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 112 * v17), v18, 0x70uLL);
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_21C7A33F0(v26, &v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21C8D6BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
  v2 = *v0;
  v3 = sub_21CB86204();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_21C8D7AA4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21C7A3394(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21C731A9C(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_21C8D6D88()
{
  v1 = v0;
  v32 = sub_21CB85C44();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
  v4 = *v0;
  v5 = sub_21CB86204();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21C8D6FF8(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 2)
  {
    if (!v2)
    {
      if (!(a2 >> 61))
      {
        return a1 == a2;
      }

      return 0;
    }

    if (v2 == 1)
    {
      if (a2 >> 61 != 1)
      {
        return 0;
      }
    }

    else if (a2 >> 61 != 2)
    {
      return 0;
    }

    return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (a2 >> 61 != 5)
      {
        return 0;
      }

      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    if (a2 == 0xC000000000000000)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 3)
    {
      if (a2 >> 61 != 3)
      {
        return 0;
      }

      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    if (a2 >> 61 == 4)
    {
      return ((a2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }
  }

  return 0;
}

uint64_t sub_21C8D70D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_getKeyPath();
      v22 = v10;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

      sub_21CB810D4();

      v13 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if ((v13 >> 61) > 2 || (v13 >> 61) < 2)
      {
      }

      else
      {

        if (v12 == (v13 & 0x1FFFFFFFFFFFFFFFLL))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_21CB81DB4();

          v14 = sub_21C8CC47C(v8);
          (*(v5 + 8))(v8, v4);
          if (v14)
          {
            sub_21CAE9A98(MEMORY[0x277D84FA0]);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          sub_21CB81DB4();

          v15 = v22;
          v16 = sub_21CB85C44();
          (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
          v17 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
          v18 = *(v17 + 48);
          v19 = *(v17 + 52);
          swift_allocObject();

          v20 = sub_21CA770B0(v15, v12 | 0x4000000000000000, v3);

          sub_21C8C7C18(v20);
          sub_21C718CB4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21C8D7470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_21C8D75F0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_21C8D7624()
{
  v1 = *(v0 + 16);
  v2 = sub_21C713194(*(v0 + 24));
  return sub_21CB70C48(v2, v3);
}

uint64_t sub_21C8D7680(uint64_t (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return a1(v5);
}

uint64_t sub_21C8D7734()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel) = *(v0 + 24);
}

uint64_t sub_21C8D7778(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21C8CB938(a1, a2);
}

uint64_t sub_21C8D7794(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C8CBCA8(a1);
}

uint64_t sub_21C8D77EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C8D70D4();
}

uint64_t sub_21C8D77F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21C8CC8EC(a1, a2);
}

uint64_t sub_21C8D7854(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_21C8D7874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = *(v0 + 24);
}

uint64_t sub_21C8D78BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C8CD848();
}

uint64_t objectdestroy_38Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_21C8D7934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return sub_21C8CD24C(a1, a2, a3, a4);
}

uint64_t sub_21C8D795C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = *(v0 + 24);
}

uint64_t sub_21C8D79D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21C8CE988(v2, v3);
}

uint64_t sub_21C8D7A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_21C8D7B00(uint64_t a1)
{
  v2 = sub_21CB83184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF70, &unk_21CBAE010);
    v10 = sub_21CB86074();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21C71B720(&qword_27CDEFF78, MEMORY[0x277CDDE90]);
      v18 = sub_21CB85484();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_21C71B720(&qword_27CDEFF80, MEMORY[0x277CDDE90]);
          v25 = sub_21CB85574();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21C8D7E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF18, &qword_21CBADE00);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      result = sub_21CB864D4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 == v9 && v15[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_21CB86344();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21C8D7F80(uint64_t a1)
{
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF58, &qword_21CBADFF8);
    v10 = sub_21CB86074();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21C71B720(&qword_27CDEE130, MEMORY[0x277CC95F0]);
      v18 = sub_21CB85484();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_21C71B720(&qword_27CDEE260, MEMORY[0x277CC95F0]);
          v25 = sub_21CB85574();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21C8D82A0(uint64_t a1)
{
  v2 = sub_21CB80F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF00, &qword_21CBADDF8);
    v10 = sub_21CB86074();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21C71B720(&qword_27CDEFF08, MEMORY[0x277CC99D0]);
      v18 = sub_21CB85484();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21C71B720(&qword_27CDEFF10, MEMORY[0x277CC99D0]);
          v25 = sub_21CB85574();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21C8D85C0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21CB85FA4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE0, &qword_21CBADDD8);
      v3 = sub_21CB86074();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21CB85FA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x21CF15BD0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_21CB85DC4();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_21CB85DD4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_21CB85DC4();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_21CB85DD4();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_21C8D88C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8D8948()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow) = v1;
  sub_21C72A574(v1);
  return sub_21C72A584(v3);
}

uint64_t sub_21C8D898C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
    v3 = sub_21CB86074();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      result = sub_21CB864D4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21C8D8BB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_21C6EDBAC(a1, &v10[-v6], &qword_27CDEFEE8, &unk_21CBADDE0);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();

  return sub_21C6EA794(v7, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C8D8D08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C72A574(*a1);
  return sub_21C8C7608(v2);
}

id sub_21C8D8D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  *a2 = v4;
  return v4;
}

uint64_t sub_21C8D8E30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();
}

uint64_t sub_21C8D8EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = sub_21CB82F84();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83994();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAddAccountView();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0098, &qword_21CBAE260);
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v35 - v17;
  v19 = *a1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C71B768(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);

  *v15 = sub_21CB82674();
  v15[1] = v20;
  v15[2] = 0x4079000000000000;
  v21 = v12[6];
  *(v15 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v22 = v12[7];
  sub_21C721B58();
  sub_21CB81FA4();
  v23 = (v15 + v12[8]);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v43);

  type metadata accessor for PMGroupsStore();
  sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v25 = sub_21CB82674();
  v27 = v26;

  *v23 = v25;
  v23[1] = v27;
  v28 = v15 + v12[9];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  sub_21C71B768(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
  sub_21CB845C4();
  sub_21C719300(v15, type metadata accessor for PMAddAccountView);
  v43 = 0x756F636341646461;
  v44 = 0xEA0000000000746ELL;
  v29 = (v39 + *(type metadata accessor for PMAppRootNavigationView() + 52));
  v30 = *v29;
  LOBYTE(v28) = *(v29 + 8);

  if ((v28 & 1) == 0)
  {
    sub_21CB85B04();
    v31 = sub_21CB83C94();
    sub_21CB81C14();

    v32 = v36;
    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v37 + 8))(v32, v38);
    v30 = v42;
  }

  v33 = *(v30 + 16);

  sub_21CB834F4();
  sub_21C722C50();
  sub_21CB84524();
  (*(v8 + 8))(v11, v7);
  return sub_21C6EA794(v18, &qword_27CDF0098, &qword_21CBAE260);
}

uint64_t sub_21C8D9444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v4 = *(*(v50 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v49 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v47 - v7;
  v8 = sub_21CB82644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v47 - v14;
  v16 = *a1;
  v17 = type metadata accessor for PMAccount(0);
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  v18 = type metadata accessor for PMNewGroupFlow(0);
  v19 = a2 + v18[6];
  *(v19 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v19 + 32) = &off_282E572E8;
  *(a2 + v18[5]) = v16;
  v47[1] = v18[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  v20 = *(type metadata accessor for PMNewGroupFlow.Step(0) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v52 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310);
  sub_21C71B768(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CB82654();
  (*(v9 + 16))(v13, v15, v8);
  sub_21CB84D44();
  (*(v9 + 8))(v15, v8);
  v24 = a2 + v18[8];
  v51 = 0;
  sub_21CB84D44();
  v25 = v53;
  *v24 = v52;
  *(v24 + 8) = v25;
  v26 = v18[9];
  v27 = type metadata accessor for MoveAccountFailureAlertData(0);
  v28 = v48;
  (*(*(v27 - 8) + 56))(v48, 1, 1, v27);
  sub_21C6EDBAC(v28, v49, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v28, &qword_27CDECBD8, &unk_21CBA5300);
  v29 = v18[10];
  *(a2 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v30 = v18[11];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v32 = (a2 + v30);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v52);

  type metadata accessor for PMAccountsState();
  sub_21C71B768(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v33 = sub_21CB82674();
  v35 = v34;

  *v32 = v33;
  v32[1] = v35;
  v36 = (a2 + v18[12]);
  type metadata accessor for PMPasswordManagerState();
  sub_21C71B768(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v36 = sub_21CB82B84();
  v36[1] = v37;
  v38 = (a2 + v18[13]);
  v39 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v39, v52);

  type metadata accessor for PMGroupsStore();
  sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v40 = sub_21CB82674();
  v42 = v41;

  *v38 = v40;
  v38[1] = v42;
  v43 = a2 + v18[14];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = v18[15];
  *(a2 + v44) = swift_getKeyPath();
  v45 = v18[16];
  result = swift_getKeyPath();
  *(a2 + v45) = result;
  return result;
}

uint64_t sub_21C8D9AC4@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for PMGeneratedPasswordsLogView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v14);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C71B768(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[8]);
  sub_21CB84D44();
  v11 = (a1 + v2[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  *v11 = v14;
  v12 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *(a1 + v12) = v14;
  swift_unknownObjectWeakAssign();

  *(a1 + v2[7]) = 0;
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  return result;
}

uint64_t sub_21C8D9CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  v8 = sub_21CB80BE4();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  swift_getKeyPath();
  v12 = a2;
  v13 = v7;
  v14 = a2;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();

  return sub_21C6EA794(v7, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C8D9EB4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C72A898(v1, v3);

  swift_getKeyPath();
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();
}

uint64_t sub_21C8D9FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootNavigationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - v11;
  if (a2)
  {
    v13 = sub_21CB858E4();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_21C72A2CC(v2, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRootNavigationView);
    sub_21CB858B4();

    v14 = v2;
    v15 = sub_21CB858A4();
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v15;
    *(v18 + 24) = v19;
    sub_21C72A334(v7, v18 + v16, type metadata accessor for PMAppRootNavigationView);
    *(v18 + v17) = a2;
    sub_21C98B308(0, 0, v12, &unk_21CBAE420, v18);

    v20 = *(v14 + *(v4 + 40));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v21 = sub_21C72A898(v20, v24);

    if (*(v21 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v23 - 2) = v21;
      *(&v23 - 1) = 0;
      v24 = v21;
      sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
      sub_21CB810C4();
    }
  }

  return result;
}

uint64_t sub_21C8DA32C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v45 - v4;
  v5 = type metadata accessor for PMAppRootNavigationView();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v46 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v52 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v51 = &v45 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v11, v7);
  v55 = v23;
  v56 = v25;
  v27 = v47;
  sub_21C72A2CC(v50, v47, type metadata accessor for PMAppRootNavigationView);
  v28 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v29 = swift_allocObject();
  sub_21C72A334(v27, v29 + v28, type metadata accessor for PMAppRootNavigationView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  v30 = sub_21CB81004();
  v32 = v31;
  v26(v11, v46);
  v55 = v30;
  v56 = v32;
  v33 = v53;
  sub_21CB81EF4();
  v34 = sub_21CB81F14();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = v49;
  sub_21CB84DC4();
  v36 = v13[2];
  v37 = v51;
  v38 = v22;
  v36(v51, v22, v12);
  v39 = v52;
  v40 = v35;
  v36(v52, v35, v12);
  v41 = v54;
  v36(v54, v37, v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v36(&v41[*(v42 + 48)], v39, v12);
  v43 = v13[1];
  v43(v40, v12);
  v43(v38, v12);
  v43(v39, v12);
  return (v43)(v37, v12);
}

uint64_t sub_21C8DA850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21CB818C4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(a1 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v8 = sub_21C72A898(v7, v12);

  swift_getKeyPath();
  v12 = v8;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v9 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert);

  sub_21C8D9FC4(v5, v9);

  return sub_21C6EA794(v5, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

__n128 sub_21C8DAA38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMImportView();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  sub_21C71B768(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);

  sub_21CB850A4();
  v10 = *(v5 + 28);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C72A334(v8, a2, type metadata accessor for PMImportView);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0108, &qword_21CBAE378) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_21C8DAC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *(a1 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v7 = sub_21C72A898(v6, v12);

  swift_getKeyPath();
  v12 = v7;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v8 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport);

  if (v8)
  {
    v10 = sub_21CB818C4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_21C8D9FC4(v5, v8);

    return sub_21C6EA794(v5, &qword_27CDEFFE8, &qword_21CBAE1B0);
  }

  return result;
}

uint64_t sub_21C8DADEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootNavigationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21C72A2CC(a2, v7, type metadata accessor for PMAppRootNavigationView);
  sub_21CB858B4();
  v13 = a1;
  v14 = sub_21CB858A4();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v13;
  sub_21C72A334(v7, v16 + v15, type metadata accessor for PMAppRootNavigationView);
  sub_21C98B308(0, 0, v11, &unk_21CBAE408, v16);
}

uint64_t sub_21C8DAFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_21CB818C4();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = sub_21CB80E34();
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  sub_21CB858B4();
  v5[26] = sub_21CB858A4();
  v14 = sub_21CB85874();
  v5[27] = v14;
  v5[28] = v13;

  return MEMORY[0x2822009F8](sub_21C8DB188, v14, v13);
}

uint64_t sub_21C8DB188()
{
  v1 = [*(v0 + 120) userInfo];
  if (!v1)
  {
    v13 = *(v0 + 208);

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21CB85474();

  *(v0 + 88) = sub_21CB81594();
  *(v0 + 96) = v4;
  sub_21CB86034();
  if (!*(v3 + 16) || (v5 = sub_21CB10D50(v0 + 16), (v6 & 1) == 0))
  {

    sub_21C8E1980(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_8;
  }

  sub_21C7A3394(*(v3 + 56) + 32 * v5, v0 + 56);
  sub_21C8E1980(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_8:
    v12 = *(v0 + 208);

LABEL_10:
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    sub_21C6EA794(v0 + 56, &qword_27CDF4D90, &qword_21CBA9F00);
    (*(v15 + 56))(v16, 1, 1, v14);
    goto LABEL_11;
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = swift_dynamicCast();
  (*(v8 + 56))(v9, v10 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = *(v0 + 208);

LABEL_11:
    sub_21C6EA794(*(v0 + 176), &qword_27CDEE120, &qword_21CBA95C0);
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);

    v22 = *(v0 + 8);

    return v22();
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  v24 = sub_21CB81924();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_21CB81914();
  v27 = *(MEMORY[0x277CBA868] + 4);
  v31 = (*MEMORY[0x277CBA868] + MEMORY[0x277CBA868]);
  v28 = swift_task_alloc();
  *(v0 + 240) = v28;
  *v28 = v0;
  v28[1] = sub_21C8DB498;
  v29 = *(v0 + 200);
  v30 = *(v0 + 168);

  return v31(v30, v29);
}

uint64_t sub_21C8DB498()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];

  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_21C8DB86C;
  }

  else
  {
    v8 = sub_21C8DB5EC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21C8DB5EC()
{
  v1 = v0[31];
  v2 = v0[26];
  v29 = v0[23];
  v30 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v27 = v3;
  v28 = v0[24];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v9 = v0[13];
  v10 = *(v5 + 16);
  v10(v4, v3, v8);
  v11 = v8;
  v26 = v8;
  v10(v6, v4, v8);
  v12 = [objc_opt_self() sharedStore];
  v13 = type metadata accessor for PMCredentialExchangeDataImportModel(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = PMCredentialExchangeDataImportModel.init(credentialData:accountStore:progressHandler:)(v6, v12, 0, 0);
  v17 = *(v5 + 8);
  v17(v4, v11);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v9;
  *(v18 + 24) = v16;
  v0[14] = v9;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();

  v17(v27, v26);
  (*(v28 + 8))(v30, v29);

  v19 = v0[25];
  v20 = v0[21];
  v21 = v0[22];
  v23 = v0[19];
  v22 = v0[20];

  v24 = v0[1];

  return v24();
}

uint64_t sub_21C8DB86C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  (*(v4 + 8))(v2, v3);
  if (qword_27CDEA3E8 != -1)
  {
    swift_once();
  }

  v5 = v0[31];
  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE18568);
  v7 = v5;
  v8 = sub_21CB81C64();
  v9 = sub_21CB85AF4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21C6E5000, v8, v9, "Error fetching data to import: %@", v12, 0xCu);
    sub_21C6EA794(v13, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v13, -1, -1);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[25];
  v17 = v0[21];
  v18 = v0[22];
  v20 = v0[19];
  v19 = v0[20];

  v21 = v0[1];

  return v21();
}

uint64_t sub_21C8DBA64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMCredentialExchangeDataImportModel(0);
  sub_21C71B768(&qword_27CDF0150, type metadata accessor for PMCredentialExchangeDataImportModel);

  sub_21CB850A4();
  v4 = *(type metadata accessor for PMImportView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C8DBB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C72A898(v4, v8);

  if (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8DBCC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a4 + *(type metadata accessor for PMAppRootNavigationView() + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C72AE7C(v5, v8);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21C71B768(&qword_27CDF0160, type metadata accessor for PMCredentialImporter);
  sub_21CB810C4();
}

uint64_t sub_21C8DBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_21CB80DD4() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_21CB818C4();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_21CB81444();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = sub_21CB80E34();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = type metadata accessor for PMAccount.Storage(0);
  v5[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v18 = type metadata accessor for PMAccount(0);
  v5[22] = v18;
  v19 = *(v18 - 8);
  v5[23] = v19;
  v20 = *(v19 + 64) + 15;
  v5[24] = swift_task_alloc();
  v21 = sub_21CB818E4();
  v5[25] = v21;
  v22 = *(v21 - 8);
  v5[26] = v22;
  v23 = *(v22 + 64) + 15;
  v5[27] = swift_task_alloc();
  v24 = sub_21CB81894();
  v5[28] = v24;
  v25 = *(v24 - 8);
  v5[29] = v25;
  v26 = *(v25 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  sub_21CB858B4();
  v5[32] = sub_21CB858A4();
  v28 = sub_21CB85874();
  v5[33] = v28;
  v5[34] = v27;

  return MEMORY[0x2822009F8](sub_21C8DC150, v28, v27);
}

uint64_t sub_21C8DC150()
{
  v1 = v0[8];
  v2 = *(v1 + *(type metadata accessor for PMAppRootNavigationView() + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C72A898(v2, v0[2]);

  sub_21CB81904();
  v4 = sub_21CB818F4();
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v0[3] = v3;
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810C4();

  sub_21CB86544();
  v6 = sub_21C72A898(v2, v0[4]);

  swift_getKeyPath();
  v0[5] = v6;
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
  v0[35] = v7;

  if (v7)
  {
    v8 = *(MEMORY[0x277CBA858] + 4);
    v23 = (*MEMORY[0x277CBA858] + MEMORY[0x277CBA858]);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = sub_21C8DC4B0;
    v10 = v0[27];

    return v23(v10, 0, 0);
  }

  else
  {
    v12 = v0[32];

    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[27];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[10];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_21C8DC4B0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_21C8DCE70;
  }

  else
  {
    v7 = sub_21C8DC5EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C8DC5EC()
{
  v1 = v0[31];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[9];
  sub_21CB818D4();
  (*(v3 + 8))(v2, v4);
  v0[38] = [objc_opt_self() sharedStore];
  v6 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v0[23];
    v9 = v0[24];
    v10 = *(v0[22] + 24);
    v11 = v0[9] + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v12 = *(v8 + 72);
    do
    {
      v13 = v0[24];
      v15 = v0[20];
      v14 = v0[21];
      sub_21C72A2CC(v11, v13, type metadata accessor for PMAccount);
      sub_21C72A2CC(v9 + v10, v14, type metadata accessor for PMAccount.Storage);
      sub_21C719300(v13, type metadata accessor for PMAccount);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = v0[21];
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C719300(v17, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v18 = *v17;
        MEMORY[0x21CF15300]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v6 = v23;
      }

      v11 += v12;
      --v7;
    }

    while (v7);
  }

  v0[39] = v6;
  v20 = *(MEMORY[0x277CBA898] + 4);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_21C8DC838;

  return MEMORY[0x28210CE10](v6);
}

uint64_t sub_21C8DC838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 328) = a1;

  v6 = *(v2 + 272);
  v7 = *(v2 + 264);

  return MEMORY[0x2822009F8](sub_21C8DC99C, v7, v6);
}

uint64_t sub_21C8DC99C()
{
  v1 = v0[41];
  v2 = v0[29];
  v21 = v0[28];
  v22 = v0[31];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v18 = v0[14];
  v23 = v0[13];
  v25 = v0[35];
  v19 = v0[10];
  v20 = v0[30];
  sub_21CB80E24();
  v8 = sub_21CB80DE4();
  v10 = v9;
  v0[42] = v8;
  v0[43] = v9;
  (*(v4 + 8))(v3, v5);
  sub_21C7A35D0(v8, v10);
  sub_21CB81434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0158, &qword_21CBAE478);
  v11 = *(v7 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CBA0690;
  (*(v7 + 16))(v13 + v12, v6, v18);
  (*(v2 + 16))(v20, v22, v21);
  sub_21CB80DA4();
  sub_21CB818A4();
  v14 = *(MEMORY[0x277CBA860] + 4);
  v24 = (*MEMORY[0x277CBA860] + MEMORY[0x277CBA860]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_21C8DCBD8;
  v16 = v0[13];

  return v24(v16);
}

uint64_t sub_21C8DCBD8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_21C8DD048;
  }

  else
  {
    v7 = sub_21C8DCD14;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C8DCD14()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v23 = v0[28];
  v24 = v0[31];
  v6 = v0[15];
  v22 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  sub_21C7A34C0(v1, v2);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v22, v7);
  (*(v5 + 8))(v24, v23);
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21C8DCE70()
{
  v1 = v0[35];
  v2 = v0[32];

  v3 = v0[37];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v5 = v0[6];
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v0[7] = v5;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();

  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_21C8DD048()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v27 = v0[28];
  v28 = v0[31];
  v6 = v0[15];
  v26 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  sub_21C7A34C0(v1, v2);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v26, v7);
  (*(v5 + 8))(v28, v27);
  v11 = v0[45];
  v12 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v13 = v0[6];
  swift_getKeyPath();
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  v0[7] = v13;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();

  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[10];

  v24 = v0[1];

  return v24();
}

id sub_21C8DD28C()
{
  v0 = [objc_opt_self() _applicationKeyWindow];

  return v0;
}

uint64_t sub_21C8DD2CC@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for PMAppRootNavigationView();
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = v4;
  v71 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB83BE4();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0340, &qword_21CBAE818);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0068, &qword_21CBAE218);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v58 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0348, &qword_21CBAE820);
  v76 = *(v65 - 8);
  v12 = *(v76 + 64);
  v13 = MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = *(v1 + *(v2 + 48));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2B8(v19, v83);

  type metadata accessor for PMGlobalSearchModel();
  sub_21C71B768(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
  sub_21CB850A4();
  v20 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v21 = sub_21CB82274();
  v61 = &v58;
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A0, &qword_21CBAE620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01D0, &qword_21CBAE638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02A0, &qword_21CBAE688);
  v74 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v25 = type metadata accessor for PMAppRootNavigationModel();
  v26 = type metadata accessor for PMAppSourceList();
  v27 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList);
  v83 = v26;
  v84 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v24;
  v84 = v25;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C8E1C9C();
  sub_21C7295E4();
  v29 = v73;
  sub_21CB83324();
  v30 = v63;
  v31 = v65;
  v62 = v18;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v32 = v76 + 8;
  v33 = *(v76 + 8);
  v33(v30, v31);
  v61 = v33;
  v76 = v32;
  v59 = v83;
  v60 = v84;
  v34 = v86;
  v63 = v85;
  v35 = v64;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v33(v35, v31);
  v36 = v80;
  v37 = v81;
  v38 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v39 = sub_21C8CEDC4();
  v41 = v40;

  v42 = &v29[*(v75 + 36)];
  v43 = v60;
  *v42 = v59;
  *(v42 + 1) = v43;
  *(v42 + 2) = v63;
  *(v42 + 3) = v34;
  *(v42 + 4) = v36;
  *(v42 + 5) = v37;
  v42[48] = v38;
  *(v42 + 7) = 0;
  *(v42 + 8) = 0;
  v42[72] = 0;
  *(v42 + 73) = 257;
  *(v42 + 10) = v39;
  *(v42 + 11) = v41;
  v77 = 0;

  sub_21CB84D44();
  v44 = v79;
  v42[96] = v78;
  *(v42 + 13) = v44;
  LOBYTE(v39) = sub_21CB81F94();
  v46 = v45;
  LOBYTE(v43) = v47;

  v42[112] = v39 & 1;
  *(v42 + 15) = v46;
  v42[128] = v43 & 1;
  v48 = *(type metadata accessor for PMSearchable() + 48);
  *&v42[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v49 = v66;
  sub_21CB83944();
  sub_21C8E09D0();
  sub_21C71B768(&qword_27CDF0088, MEMORY[0x277CDE4E0]);
  v51 = v72;
  v50 = v73;
  v52 = v68;
  sub_21CB84084();
  (*(v67 + 8))(v49, v52);
  sub_21C6EA794(v50, &qword_27CDF0068, &qword_21CBAE218);
  (v61)(v62, v31);
  v53 = v71;
  sub_21C72A2CC(v74, v71, type metadata accessor for PMAppRootNavigationView);
  v54 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v55 = swift_allocObject();
  sub_21C72A334(v53, v55 + v54, type metadata accessor for PMAppRootNavigationView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  v57 = (v51 + *(result + 36));
  *v57 = sub_21C8E2118;
  v57[1] = v55;
  v57[2] = 0;
  v57[3] = 0;
  return result;
}

uint64_t sub_21C8DDC34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01E8, &qword_21CBAE640);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_21C8DE420(&v5 - v2);
  sub_21C8E1D58();
  sub_21CB845C4();
  return sub_21C6EA794(v3, &qword_27CDF01E8, &qword_21CBAE640);
}

uint64_t sub_21C8DDD1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v7 = *(v14 + 64);
  swift_getKeyPath();
  v14 = v7;
  sub_21C71B768(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v7 + v8, v6, &qword_27CDEAC20, &qword_21CBAD710);

  v9 = type metadata accessor for PMAppSourceListModel.Source(0);
  v10 = *(v9 - 8);
  LODWORD(v8) = (*(v10 + 48))(v6, 1, v9);
  result = sub_21C6EA794(v6, &qword_27CDEAC20, &qword_21CBAD710);
  if (v8 == 1)
  {
    sub_21CB85084();
    v12 = *(v13 + 64);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v4, 0, 1, v9);
    sub_21C742C88(v4);
  }

  return result;
}

uint64_t sub_21C8DDF74@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  v36 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02A0, &qword_21CBAE688);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v29 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02E8, &qword_21CBAE6A8);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - v7;
  v33 = sub_21CB826C4();
  v30 = *(v33 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01E8, &qword_21CBAE640);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01D0, &qword_21CBAE638);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02F0, &qword_21CBAE6B0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v29 - v23;
  if (*v31)
  {
    sub_21C8E00A8(v5);
    sub_21C6EDBAC(v5, v8, &qword_27CDF02A0, &qword_21CBAE688);
    swift_storeEnumTagMultiPayload();
    v25 = sub_21C8E1C9C();
    v37 = v16;
    v38 = v33;
    v39 = v25;
    v40 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    sub_21CB83494();
    return sub_21C6EA794(v5, &qword_27CDF02A0, &qword_21CBAE688);
  }

  else
  {
    sub_21C8DE420(v15);
    sub_21C8E1D58();
    sub_21CB845C4();
    sub_21C6EA794(v15, &qword_27CDF01E8, &qword_21CBAE640);
    sub_21CB826B4();
    v27 = sub_21C8E1C9C();
    v28 = v33;
    sub_21CB849F4();
    (*(v30 + 8))(v11, v28);
    sub_21C6EA794(v19, &qword_27CDF01D0, &qword_21CBAE638);
    (*(v21 + 16))(v8, v24, v20);
    swift_storeEnumTagMultiPayload();
    v37 = v16;
    v38 = v28;
    v39 = v27;
    v40 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    sub_21CB83494();
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_21C8DE420@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v136 = type metadata accessor for PMWiFiList();
  v1 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v116 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for PMVerificationCodesList();
  v3 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v117 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02F8, &qword_21CBAE6B8);
  v5 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v135 = &v114 - v6;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0300, &qword_21CBAE6C0);
  v7 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v128 = &v114 - v8;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0278, &qword_21CBAE680);
  v9 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v130 = &v114 - v10;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0268, &qword_21CBAE678);
  v11 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v137 = &v114 - v12;
  v127 = type metadata accessor for PMAppSecurityRecommendationsList();
  v13 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v115 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v15 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v132 = (&v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0308, &unk_21CBAE6C8);
  v17 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v120 = &v114 - v18;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0248, &qword_21CBAE670);
  v19 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v121 = &v114 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v21 = *(*(v131 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v131);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v114 - v25;
  v27 = type metadata accessor for PMGroupInvitationsList();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0238, &qword_21CBAE668);
  v31 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v33 = &v114 - v32;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0310, &qword_21CBAE6D8);
  v34 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v145 = &v114 - v35;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0318, &qword_21CBAE6E0);
  v36 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v140 = &v114 - v37;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0320, &qword_21CBAE6E8);
  v38 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v40 = &v114 - v39;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0218, &qword_21CBAE658);
  v41 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v122 = &v114 - v42;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0208, &qword_21CBAE650);
  v43 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v141 = &v114 - v44;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0228, &qword_21CBAE660);
  v114 = *(v119 - 8);
  v45 = *(v114 + 64);
  MEMORY[0x28223BE20](v119);
  v47 = &v114 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v48 = v149;
  swift_getKeyPath();
  v149 = v48;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v49 = *(v48 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

  v50 = v49 >> 61;
  if ((v49 >> 61) <= 2)
  {
    v56 = v30;
    v137 = (v49 & 0x1FFFFFFFFFFFFFFFLL);
    v57 = v132;
    if (!v50)
    {

      v77 = v33;
      sub_21C867804(v33);
      v78 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_id;
      v79 = *(v124 + 52);
      v80 = sub_21CB80E34();
      (*(*(v80 - 8) + 16))(v77 + v79, v49 + v78, v80);
      sub_21C6EDBAC(v77, v40, &qword_27CDF0238, &qword_21CBAE668);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
      sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668);
      v81 = v122;
      sub_21CB83494();
      sub_21C6EDBAC(v81, v140, &qword_27CDF0218, &qword_21CBAE658);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v82 = v141;
      sub_21CB83494();
      sub_21C6EA794(v81, &qword_27CDF0218, &qword_21CBAE658);
      sub_21C6EDBAC(v82, v145, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v82, &qword_27CDF0208, &qword_21CBAE650);
      return sub_21C6EA794(v77, &qword_27CDF0238, &qword_21CBAE668);
    }

    v58 = v27;
    if (v50 == 1)
    {
      v59 = v56;
      *v56 = v137;
      type metadata accessor for PMPasswordManagerState();
      sub_21C71B768(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
      v59[1] = sub_21CB82B84();
      v59[2] = v60;
      v61 = v27;
      v62 = *(v27 + 24);
      *(v59 + v62) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
      swift_storeEnumTagMultiPayload();
      v63 = *(v58 + 28);
      v64 = sub_21CB85C44();
      (*(*(v64 - 8) + 56))(v26, 1, 1, v64);
      sub_21C6EDBAC(v26, v24, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CB84D44();
      sub_21C6EA794(v26, &unk_27CDF20B0, &unk_21CBA0090);
      v65 = v59 + *(v61 + 32);
      *v65 = swift_getKeyPath();
      v65[8] = 0;
      sub_21C72A2CC(v59, v120, type metadata accessor for PMGroupInvitationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
      sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView);
      v66 = v121;
      sub_21CB83494();
      sub_21C6EDBAC(v66, v140, &qword_27CDF0248, &qword_21CBAE670);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v67 = v141;
      sub_21CB83494();
      sub_21C6EA794(v66, &qword_27CDF0248, &qword_21CBAE670);
      sub_21C6EDBAC(v67, v145, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();
      sub_21C6EA794(v67, &qword_27CDF0208, &qword_21CBAE650);
      v68 = type metadata accessor for PMGroupInvitationsList;
    }

    else
    {
      type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
      sub_21C71B768(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);

      v59 = v57;
      *v57 = sub_21CB82674();
      v57[1] = v84;
      KeyPath = swift_getKeyPath();
      v86 = v121;
      v87 = v123;
      v88 = v120;
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7073E8(KeyPath, v149);

      type metadata accessor for PMGroupsStore();
      sub_21C71B768(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
      v89 = sub_21CB82674();
      v91 = v90;

      v59[2] = v89;
      v59[3] = v91;
      v92 = v87[6];
      *(v59 + v92) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
      swift_storeEnumTagMultiPayload();
      v93 = v87[7];
      *(v59 + v93) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
      swift_storeEnumTagMultiPayload();
      v94 = v87[8];
      *(v59 + v94) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v95 = v59 + v87[9];
      *v95 = swift_getKeyPath();
      v95[8] = 0;
      sub_21C72A2CC(v59, v88, type metadata accessor for PMAppRecentlyDeletedAccountsView);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList);
      sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView);
      sub_21CB83494();
      sub_21C6EDBAC(v86, v140, &qword_27CDF0248, &qword_21CBAE670);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1EF4();
      sub_21C729350();
      v96 = v141;
      sub_21CB83494();
      sub_21C6EA794(v86, &qword_27CDF0248, &qword_21CBAE670);
      sub_21C6EDBAC(v96, v145, &qword_27CDF0208, &qword_21CBAE650);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v96, &qword_27CDF0208, &qword_21CBAE650);
      v68 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    }

    v75 = v68;
    v76 = v59;
    return sub_21C719300(v76, v75);
  }

  if (v50 <= 4)
  {
    if (v50 == 3)
    {
      type metadata accessor for PMAppSecurityRecommendationsModel();
      sub_21C71B768(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

      v51 = v115;
      sub_21CB850A4();
      v52 = *(v127 + 20);
      *(v51 + v52) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      sub_21C72A2CC(v51, v128, type metadata accessor for PMAppSecurityRecommendationsList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList);
      sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList);
      v53 = v130;
      sub_21CB83494();
      sub_21C6EDBAC(v53, v135, &qword_27CDF0278, &qword_21CBAE680);
      swift_storeEnumTagMultiPayload();
      sub_21C7294F8();
      sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList);
      v54 = v137;
      sub_21CB83494();
      sub_21C6EA794(v53, &qword_27CDF0278, &qword_21CBAE680);
      sub_21C6EDBAC(v54, v145, &qword_27CDF0268, &qword_21CBAE678);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v54, &qword_27CDF0268, &qword_21CBAE678);
      v55 = type metadata accessor for PMAppSecurityRecommendationsList;
    }

    else
    {
      type metadata accessor for PMVerificationCodesListModel();
      sub_21C71B768(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);

      v51 = v117;
      sub_21CB850A4();
      v97 = v129;
      v98 = v51 + *(v129 + 20);
      v148 = 0;
      sub_21CB84D44();
      v99 = v150;
      *v98 = v149;
      *(v98 + 8) = v99;
      v100 = v51 + v97[6];
      *v100 = swift_getKeyPath();
      *(v100 + 8) = 0;
      *(v100 + 16) = 0;
      v101 = v97[7];
      *(v51 + v101) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
      swift_storeEnumTagMultiPayload();
      v102 = v97[8];
      *(v51 + v102) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v103 = v97[9];
      v104 = type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      sub_21CB81104();
      *(v51 + v103) = v107;
      sub_21C72A2CC(v51, v128, type metadata accessor for PMVerificationCodesList);
      swift_storeEnumTagMultiPayload();
      sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList);
      sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList);
      v108 = v130;
      sub_21CB83494();
      sub_21C6EDBAC(v108, v135, &qword_27CDF0278, &qword_21CBAE680);
      swift_storeEnumTagMultiPayload();
      sub_21C7294F8();
      sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList);
      v109 = v137;
      sub_21CB83494();
      sub_21C6EA794(v108, &qword_27CDF0278, &qword_21CBAE680);
      sub_21C6EDBAC(v109, v145, &qword_27CDF0268, &qword_21CBAE678);
      swift_storeEnumTagMultiPayload();
      sub_21C8E1E68();
      sub_21C72943C();
      sub_21CB83494();

      sub_21C6EA794(v109, &qword_27CDF0268, &qword_21CBAE678);
      v55 = type metadata accessor for PMVerificationCodesList;
    }

    v75 = v55;
    v76 = v51;
    return sub_21C719300(v76, v75);
  }

  if (v50 == 5)
  {
    type metadata accessor for PMWiFiListModel();
    sub_21C71B768(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);

    v69 = v116;
    sub_21CB850A4();
    v70 = v136;
    v71 = *(v136 + 20);
    *(v69 + v71) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
    swift_storeEnumTagMultiPayload();
    v72 = v69 + v70[6];
    *v72 = swift_getKeyPath();
    *(v72 + 8) = 0;
    v73 = v70[7];
    *(v69 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *(v69 + v70[8]) = 0;
    sub_21C72A2CC(v69, v135, type metadata accessor for PMWiFiList);
    swift_storeEnumTagMultiPayload();
    sub_21C7294F8();
    sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList);
    v74 = v137;
    sub_21CB83494();
    sub_21C6EDBAC(v74, v145, &qword_27CDF0268, &qword_21CBAE678);
    swift_storeEnumTagMultiPayload();
    sub_21C8E1E68();
    sub_21C72943C();
    sub_21CB83494();

    sub_21C6EA794(v74, &qword_27CDF0268, &qword_21CBAE678);
    v75 = type metadata accessor for PMWiFiList;
    v76 = v69;
    return sub_21C719300(v76, v75);
  }

  sub_21CB83774();
  v110 = v114;
  v111 = v119;
  (*(v114 + 16))(v40, v47, v119);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
  sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668);
  v112 = v122;
  sub_21CB83494();
  sub_21C6EDBAC(v112, v140, &qword_27CDF0218, &qword_21CBAE658);
  swift_storeEnumTagMultiPayload();
  sub_21C8E1EF4();
  sub_21C729350();
  v113 = v141;
  sub_21CB83494();
  sub_21C6EA794(v112, &qword_27CDF0218, &qword_21CBAE658);
  sub_21C6EDBAC(v113, v145, &qword_27CDF0208, &qword_21CBAE650);
  swift_storeEnumTagMultiPayload();
  sub_21C8E1E68();
  sub_21C72943C();
  sub_21CB83494();
  sub_21C6EA794(v113, &qword_27CDF0208, &qword_21CBAE650);
  return (*(v110 + 8))(v47, v111);
}

uint64_t sub_21C8DFF74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C8E00A8@<X0>(uint64_t a1@<X8>)
{
  v29 = type metadata accessor for PMMultipleAccountsDetailsView();
  v2 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0328, &qword_21CBAE7D8);
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v7 = (v28 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0330, &qword_21CBAE7E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02C0, &qword_21CBAE698);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v16 = v31;
  swift_getKeyPath();
  v31 = v16;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v17 = *(v16 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  if (v17 >> 62)
  {
    if (v17 >> 62 == 1)
    {
      *v7 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      swift_storeEnumTagMultiPayload();
      sub_21C729668();
      sub_21C7297A8();
      return sub_21CB83494();
    }

    else
    {
      v24 = [objc_opt_self() systemGroupedBackgroundColor];
      v25 = sub_21CB84A24();
      v26 = sub_21CB82934();
      v27 = sub_21CB83CE4();
      *v11 = v25;
      *(v11 + 1) = v26;
      v11[16] = v27;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02D0, &qword_21CBAE6A0);
      sub_21C729724();
      sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView);
      sub_21CB83494();
      sub_21C6EDBAC(v15, v7, &qword_27CDF02C0, &qword_21CBAE698);
      swift_storeEnumTagMultiPayload();
      sub_21C729668();
      sub_21C7297A8();
      sub_21CB83494();

      return sub_21C6EA794(v15, &qword_27CDF02C0, &qword_21CBAE698);
    }
  }

  else
  {
    v28[1] = v12;
    v28[2] = a1;
    type metadata accessor for PMMultipleAccountsDetailsModel(0);
    sub_21C71B768(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);

    sub_21CB850A4();
    v19 = &v4[*(v29 + 20)];
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v31);

    type metadata accessor for PMAccountsState();
    sub_21C71B768(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v21 = sub_21CB82674();
    v23 = v22;

    *v19 = v21;
    v19[1] = v23;
    sub_21C72A2CC(v4, v11, type metadata accessor for PMMultipleAccountsDetailsView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF02D0, &qword_21CBAE6A0);
    sub_21C729724();
    sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView);
    sub_21CB83494();
    sub_21C6EDBAC(v15, v7, &qword_27CDF02C0, &qword_21CBAE698);
    swift_storeEnumTagMultiPayload();
    sub_21C729668();
    sub_21C7297A8();
    sub_21CB83494();

    sub_21C6EA794(v15, &qword_27CDF02C0, &qword_21CBAE698);
    return sub_21C719300(v4, type metadata accessor for PMMultipleAccountsDetailsView);
  }
}

uint64_t sub_21C8E0710(uint64_t a1)
{
  v2 = sub_21CB81FE4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82BE4();
}

unint64_t sub_21C8E0800()
{
  result = qword_27CDF0040;
  if (!qword_27CDF0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
    sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208);
    sub_21C8E08B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0040);
  }

  return result;
}

unint64_t sub_21C8E08B8()
{
  result = qword_27CDF0058;
  if (!qword_27CDF0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0060, &qword_21CBAE210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0068, &qword_21CBAE218);
    sub_21CB83BE4();
    sub_21C8E09D0();
    sub_21C71B768(&qword_27CDF0088, MEMORY[0x277CDE4E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0058);
  }

  return result;
}

unint64_t sub_21C8E09D0()
{
  result = qword_27CDF0070;
  if (!qword_27CDF0070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0068, &qword_21CBAE218);
    sub_21C6EADEC(&qword_27CDF0078, &qword_27CDF0080, &qword_21CBAE220);
    sub_21C71B768(&qword_27CDEBF90, type metadata accessor for PMSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0070);
  }

  return result;
}

uint64_t sub_21C8E0AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8D8EEC(a1, v6, a2);
}

uint64_t sub_21C8E0B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E64();
  *a1 = result & 1;
  return result;
}

unint64_t sub_21C8E0B80()
{
  result = qword_27CDF00C0;
  if (!qword_27CDF00C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0018, &qword_21CBAE1E0);
    sub_21C8E0C3C();
    sub_21C71B768(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00C0);
  }

  return result;
}

unint64_t sub_21C8E0C3C()
{
  result = qword_27CDF00C8;
  if (!qword_27CDF00C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF00B0, &qword_21CBAE2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0010, &qword_21CBAE1D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0008, &qword_21CBAE1D0);
    type metadata accessor for PMGeneratedPasswordsLogView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0000, &qword_21CBAE1C8);
    type metadata accessor for PMNewGroupFlow(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF8, &qword_21CBAE1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0090, &qword_21CBAE258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
    type metadata accessor for PMAppRootNavigationModel();
    sub_21C8E0800();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
    sub_21CB83994();
    sub_21C722C50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C722D3C();
    sub_21C71B768(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
    swift_getOpaqueTypeConformance2();
    sub_21C71B768(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
    swift_getOpaqueTypeConformance2();
    sub_21C722D90();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00C8);
  }

  return result;
}

unint64_t sub_21C8E0FDC()
{
  result = qword_27CDF00E8;
  if (!qword_27CDF00E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C71B768(&qword_27CDF00F0, MEMORY[0x277CBA840]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00E8);
  }

  return result;
}

uint64_t sub_21C8E1090(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C8DBB38(a1, v4, v5, v6);
}

uint64_t sub_21C8E1104@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8DA32C(v4, a1);
}

uint64_t sub_21C8E1174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21C8E119C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t objectdestroy_57Tm_0()
{
  v1 = type metadata accessor for PMAppRootNavigationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v0 + v3 + v1[5];
  v9 = *(v8 + 8);

  v10 = *(v8 + 24);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v12 = v11[8];
  v13 = sub_21CB83AD4();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v8 + v11[9]);

  v15 = *(v8 + v11[10]);

  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  v20 = *(v6 + v1[7]);

  v21 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_21CB81FE4();
    (*(*(v22 - 8) + 8))(v6 + v21, v22);
  }

  else
  {
    v23 = *(v6 + v21);
  }

  v24 = *(v6 + v1[9] + 24);

  v25 = *(v6 + v1[10]);

  v26 = *(v6 + v1[11]);

  v27 = *(v6 + v1[12]);

  v28 = *(v6 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8E15CC(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C8DBCC0(a1, v4, v5, v6);
}

unint64_t sub_21C8E1640()
{
  result = qword_27CDF0110;
  if (!qword_27CDF0110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0020, &qword_21CBAE1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0018, &qword_21CBAE1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C8E0B80();
    sub_21C8E0FDC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF0118, &qword_27CDF00F8, &qword_21CBAE368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0110);
  }

  return result;
}

unint64_t sub_21C8E1778()
{
  result = qword_27CDF0140;
  if (!qword_27CDF0140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0138, &qword_21CBC0840);
    sub_21C722F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0140);
  }

  return result;
}

uint64_t sub_21C8E17FC(void *a1)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C8DADEC(a1, v4);
}

uint64_t sub_21C8E1888(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C8DAFE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21C8E19D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C8DBE28(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21C8E1BB4()
{
  result = qword_27CDF01C8;
  if (!qword_27CDF01C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A8, &qword_21CBAE628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01D0, &qword_21CBAE638);
    sub_21CB826C4();
    sub_21C8E1C9C();
    swift_getOpaqueTypeConformance2();
    sub_21C7295E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01C8);
  }

  return result;
}

unint64_t sub_21C8E1C9C()
{
  result = qword_27CDF01D8;
  if (!qword_27CDF01D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01D0, &qword_21CBAE638);
    sub_21C8E1D58();
    sub_21C71B768(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01D8);
  }

  return result;
}

unint64_t sub_21C8E1D58()
{
  result = qword_27CDF01E0;
  if (!qword_27CDF01E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01E8, &qword_21CBAE640);
    sub_21C8E1DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01E0);
  }

  return result;
}

unint64_t sub_21C8E1DDC()
{
  result = qword_27CDF01F0;
  if (!qword_27CDF01F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01F8, &qword_21CBAE648);
    sub_21C8E1E68();
    sub_21C72943C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01F0);
  }

  return result;
}

unint64_t sub_21C8E1E68()
{
  result = qword_27CDF0200;
  if (!qword_27CDF0200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0208, &qword_21CBAE650);
    sub_21C8E1EF4();
    sub_21C729350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0200);
  }

  return result;
}

unint64_t sub_21C8E1EF4()
{
  result = qword_27CDF0210;
  if (!qword_27CDF0210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0218, &qword_21CBAE658);
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
    sub_21C6EADEC(&qword_27CDF0230, &qword_27CDF0238, &qword_21CBAE668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0210);
  }

  return result;
}

unint64_t sub_21C8E1FD8()
{
  result = qword_27CDF02A8;
  if (!qword_27CDF02A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02B0, &qword_21CBAE690);
    sub_21C729668();
    sub_21C7297A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02A8);
  }

  return result;
}

uint64_t sub_21C8E2064@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8DDF74(a1, v6, a2);
}

uint64_t sub_21C8E2178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C8E21DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v22 = *(v1 + 4);
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  v19 = *(v1 + 4);
  v5 = sub_21C8E23BC();
  v7 = v6;
  v8 = swift_allocObject();
  v9 = v21;
  *(v8 + 16) = v20;
  *(v8 + 32) = v9;
  *(v8 + 48) = v22;
  v15 = v5;
  v16 = v7;
  sub_21C8E2FA8(&v20, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();

  v17 = v20;
  v18 = v21;
  v19 = v22;
  LOBYTE(v7) = sub_21C8E2AEC();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v7 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_21C735744;
  v13[2] = v11;
  return result;
}

uint64_t sub_21C8E23BC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (v6)
  {
    *(v6 + 16);
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_21C8E2500(uint64_t *a1)
{
  v39 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v36 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - v6);
  v38 = type metadata accessor for PMAccount(0);
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = a1[4];
  v34 = a1;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = *a1;
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v18, v41);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v17 = v41;
  }

  v19 = *(v17 + 16);

  v40 = v19;
  if (v19)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        swift_once();
        goto LABEL_31;
      }

      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v1 = *(v8 + 72);
      sub_21C80EABC(v17 + v22 + v1 * v20, v15, type metadata accessor for PMAccount);
      sub_21C80EABC(&v15[*(v38 + 24)], v7, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v7, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v19 = *v7;
        v23 = [*v7 canBeExportedViaCredentialExchange];

        if (v23)
        {
          sub_21C7D4AC0(v15, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21C7B0C4C(0, *(v21 + 16) + 1, 1);
            v21 = v41;
          }

          v19 = v21;
          v25 = *(v21 + 16);
          v26 = v19[3];
          if (v25 >= v26 >> 1)
          {
            sub_21C7B0C4C(v26 > 1, v25 + 1, 1);
            v19 = v41;
          }

          v19[2] = v25 + 1;
          sub_21C7D4AC0(v37, v19 + v22 + v25 * v1);
          v21 = v19;
          goto LABEL_10;
        }
      }

      sub_21C7190C0(v15, type metadata accessor for PMAccount);
LABEL_10:
      if (v40 == ++v20)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_20:
  v1 = v21;
  v27 = 0;
  v29 = v35;
  v28 = v36;
  while (1)
  {
    if (v40 == v27)
    {

      v31 = v34[1];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C72A898(v31, v41);

      sub_21C9903F0(v1);
    }

    if (v27 >= *(v17 + 16))
    {
      goto LABEL_34;
    }

    sub_21C80EABC(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v29, type metadata accessor for PMAccount);
    sub_21C80EABC(v29 + *(v38 + 24), v28, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    ++v27;
    v19 = *v28;
    v30 = [*v28 canBeExportedViaCredentialExchange];

    sub_21C7190C0(v29, type metadata accessor for PMAccount);
    if ((v30 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  sub_21C7190C0(v29, type metadata accessor for PMAccount);
  sub_21C7190C0(v28, type metadata accessor for PMAccount.Storage);
LABEL_30:
  v17 = v34[1];
  v19 = &unk_27CE18000;
  if (qword_27CDEA4C0 != -1)
  {
    goto LABEL_35;
  }

LABEL_31:
  v32 = v19[239];
  sub_21CB86544();
  sub_21C72A898(v17, v41);

  sub_21C9905E8(v1);
}

uint64_t sub_21C8E2AEC()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - v6);
  v8 = type metadata accessor for PMAccount(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v29 = *v0;
  v16 = v0[3];
  v15 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DB4();

  if (v31 != 1)
  {
    return 0;
  }

  if (!v15)
  {
    if (qword_27CDEA4C0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v11 = *(v15 + 16);
  if (!v11)
  {
    return 0;
  }

  v17 = 0;
  v18 = *(v8 + 24);
  v8 = v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  while (v17 < *(v15 + 16))
  {
    sub_21C80EABC(v8 + *(v30 + 72) * v17, v14, type metadata accessor for PMAccount);
    sub_21C80EABC(&v14[v18], v7, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7190C0(v14, type metadata accessor for PMAccount);
      sub_21C7190C0(v7, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v19 = *v7;
      v4 = [*v7 canBeExportedViaCredentialExchange];

      sub_21C7190C0(v14, type metadata accessor for PMAccount);
      if (v4)
      {
        return 1;
      }
    }

    if (v11 == ++v17)
    {
      return 0;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    sub_21CB86544();
    sub_21C7072A8(v29, v31);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v21 = v31;
    v22 = *(v31 + 16);
    if (!v22)
    {
      break;
    }

    v23 = 0;
    v24 = *(v8 + 24);
    v8 = v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    while (v23 < *(v21 + 16))
    {
      sub_21C80EABC(v8 + *(v30 + 72) * v23, v11, type metadata accessor for PMAccount);
      sub_21C80EABC(&v11[v24], v4, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v11, type metadata accessor for PMAccount);
        sub_21C7190C0(v4, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v25 = *v4;
        v26 = [*v4 canBeExportedViaCredentialExchange];

        sub_21C7190C0(v11, type metadata accessor for PMAccount);
        if (v26)
        {
          v27 = 1;
          goto LABEL_22;
        }
      }

      if (v22 == ++v23)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v27 = 0;
LABEL_22:

  return v27;
}

PasswordManagerUI::PMQuickAction_optional __swiftcall PMQuickAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PMQuickAction.rawValue.getter()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x777373615077656ELL;
  }
}

uint64_t sub_21C8E30A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x686372616573;
  v5 = 0x800000021CB89FB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000021CB89FB0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x777373615077656ELL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEB0000000064726FLL;
  }

  v8 = 0x686372616573;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x777373615077656ELL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB0000000064726FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

unint64_t sub_21C8E319C()
{
  result = qword_27CDF0350;
  if (!qword_27CDF0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0350);
  }

  return result;
}

uint64_t sub_21C8E31F0()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C8E329C()
{
  *v0;
  *v0;
  sub_21CB854C4();
}

uint64_t sub_21C8E3334()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21C8E33E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064726FLL;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021CB89FB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x777373615077656ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21C8E3494@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = sub_21CB85114();
  v53 = *(v55 - 8);
  v1 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v46 - v4;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0378, &qword_21CBAEB90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0380, &qword_21CBAEB98);
  v47 = *(v58 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v58);
  v19 = &v46 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0388, &qword_21CBAEBA0);
  v51 = *(v50 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v59 = &v46 - v21;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0390, &qword_21CBAEBA8);
  v22 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - v23;
  sub_21C8E3C20(v16);
  sub_21CB81014();
  sub_21CB81014();
  v24 = sub_21CB80FF4();
  v26 = v25;
  v27 = *(v6 + 8);
  v27(v9, v5);
  v27(v12, v5);
  v61 = v24;
  v62 = v26;
  v28 = sub_21C8EF670();
  v29 = sub_21C71F3FC();
  v30 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  sub_21C6EA794(v16, &qword_27CDF0378, &qword_21CBAEB90);
  sub_21CB85184();
  v60 = v57;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0480, &qword_21CBAEC30);
  v61 = v13;
  v62 = v30;
  v63 = v28;
  v64 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v58;
  v61 = v58;
  v62 = v30;
  v63 = OpaqueTypeConformance2;
  v64 = v29;
  v45 = swift_getOpaqueTypeConformance2();
  sub_21CB84974();
  (*(v47 + 8))(v19, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v33 = v61;
  swift_getKeyPath();
  v61 = v33;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v34 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v35 = v52;
  v36 = v53;
  v37 = v55;
  (*(v53 + 16))(v52, v33 + v34, v55);

  v38 = v54;
  (*(v36 + 104))(v54, *MEMORY[0x277CDF0D0], v37);
  sub_21CB850F4();
  v39 = *(v36 + 8);
  v39(v38, v37);
  v39(v35, v37);
  v61 = v58;
  v62 = MEMORY[0x277CE1350];
  v63 = v46;
  v64 = OpaqueTypeConformance2;
  v65 = MEMORY[0x277CE1340];
  v66 = v45;
  swift_getOpaqueTypeConformance2();
  v40 = v48;
  v41 = v50;
  v42 = v59;
  sub_21CB84674();
  (*(v51 + 8))(v42, v41);
  *(v40 + *(v49 + 36)) = 1;
  sub_21CB85084();
  v43 = v61;
  type metadata accessor for PMAppSecurityRecommendationsModel();
  sub_21CB81124();
  v61 = v43;
  sub_21C8EFFC4();
  sub_21CB84394();

  sub_21C6EA794(v40, &qword_27CDF0390, &qword_21CBAEBA8);
}

uint64_t sub_21C8E3C20@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0478, &unk_21CBB2E10);
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0490, &qword_21CBAECD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03B8, &qword_21CBAEBB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  sub_21CB85084();
  v13 = v20;
  swift_getKeyPath();
  v20 = v13;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v14 = *(v13 + 73);

  if (v14 == 1)
  {
    sub_21C8E3F88(v12);
    sub_21C6EDBAC(v12, v8, &qword_27CDF03B8, &qword_21CBAEBB8);
    swift_storeEnumTagMultiPayload();
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10);
    sub_21CB83494();
    return sub_21C6EA794(v12, &qword_27CDF03B8, &qword_21CBAEBB8);
  }

  else
  {
    sub_21CB82234();
    v16 = v18;
    (*(v18 + 16))(v8, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_21C8EF7AC();
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10);
    sub_21CB83494();
    return (*(v16 + 8))(v4, v1);
  }
}

uint64_t sub_21C8E3F88@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v2 = type metadata accessor for PMAppSecurityRecommendationsList();
  v3 = v2 - 8;
  v195 = *(v2 - 8);
  v4 = *(v195 + 64);
  MEMORY[0x28223BE20](v2);
  v200 = v5;
  v203 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  *&v202 = *(v201 - 8);
  v6 = *(v202 + 64);
  MEMORY[0x28223BE20](v201);
  v199 = &v162 - v7;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0458, &qword_21CBAEC18);
  v169 = *(v170 - 1);
  v8 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v162 - v9;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0450, &qword_21CBAEC10);
  v10 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v194 = (&v162 - v11);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0440, &qword_21CBAEC08);
  v12 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v174 = &v162 - v13;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0430, &qword_21CBAEC00);
  v14 = *(*(v172 - 1) + 64);
  MEMORY[0x28223BE20](v172);
  v175 = &v162 - v15;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0418, &qword_21CBAEBF8);
  v16 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v176 = &v162 - v17;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0408, &qword_21CBAEBE8);
  v179 = *(v180 - 8);
  v18 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = &v162 - v19;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0498, &qword_21CBAED08);
  v181 = *(v182 - 8);
  v20 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v198 = &v162 - v21;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0400, &qword_21CBAEBE0);
  v22 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v184 = &v162 - v23;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03F0, &qword_21CBAEBD8);
  v24 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v186 = &v162 - v25;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03E0, &qword_21CBAEBD0);
  v26 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v185 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v187 = &v162 - v29;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04A0, &qword_21CBAED10);
  v30 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v191 = &v162 - v31;
  v32 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v163 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for PMEmptyStateDetailView(0);
  v35 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v164 = (&v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04A8, &unk_21CBAED18);
  v166 = *(v190 - 8);
  v37 = *(v166 + 64);
  MEMORY[0x28223BE20](v190);
  v165 = &v162 - v38;
  v39 = sub_21CB83834();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v167 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v162 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  *&v196 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v162 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v162 - v55;
  v57 = *(v3 + 28);
  v204 = v1;
  sub_21C728D50(&v162 - v55);
  (*(v40 + 104))(v53, *MEMORY[0x277CE0558], v39);
  (*(v40 + 56))(v53, 0, 1, v39);
  v58 = *(v44 + 56);
  sub_21C6EDBAC(v56, v47, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v53, &v47[v58], &qword_27CDEC390, &qword_21CBA40E0);
  v59 = *(v40 + 48);
  if (v59(v47, 1, v39) != 1)
  {
    sub_21C6EDBAC(v47, v196, &qword_27CDEC390, &qword_21CBA40E0);
    if (v59(&v47[v58], 1, v39) != 1)
    {
      v60 = &v47[v58];
      v61 = v167;
      (*(v40 + 32))(v167, v60, v39);
      sub_21C8F132C(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v62 = v196;
      v63 = sub_21CB85574();
      v64 = *(v40 + 8);
      v64(v61, v39);
      sub_21C6EA794(v53, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v56, &qword_27CDEC390, &qword_21CBA40E0);
      v64(v62, v39);
      sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
      if ((v63 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v53, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v56, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v40 + 8))(v196, v39);
LABEL_6:
    sub_21C6EA794(v47, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_12;
  }

  sub_21C6EA794(v53, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v56, &qword_27CDEC390, &qword_21CBA40E0);
  if (v59(&v47[v58], 1, v39) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  sub_21CB85084();
  v65 = v205;
  swift_getKeyPath();
  *&v205 = v65;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v66 = *(v65 + 56);

  v67 = *(v66 + 16);

  if (!v67)
  {
    sub_21CB85084();
    v68 = v205;
    swift_getKeyPath();
    *&v205 = v68;
    sub_21CB810D4();

    v69 = *(v68 + 16);
    v70 = *(v68 + 24);

    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v71)
    {
      v149 = sub_21CB85C44();
      v150 = v163;
      (*(*(v149 - 8) + 56))(v163, 5, 6, v149);
      v151 = v164;
      v152 = sub_21C9E14F8(v150, 1, v164);
      MEMORY[0x28223BE20](v152);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C0, &qword_21CBAEBC0);
      v154 = sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
      v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
      v156 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8);
      *&v205 = v155;
      *(&v205 + 1) = v156;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v158 = v165;
      v159 = v188;
      sub_21CB84894();
      sub_21C8F0E2C(v151, type metadata accessor for PMEmptyStateDetailView);
      v160 = v166;
      v161 = v190;
      (*(v166 + 16))(v191, v158, v190);
      swift_storeEnumTagMultiPayload();
      *&v205 = v159;
      *(&v205 + 1) = v153;
      *&v206 = v154;
      *(&v206 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_21C8EF93C();
      sub_21CB83494();
      return (*(v160 + 8))(v158, v161);
    }
  }

LABEL_12:
  v72 = v199;
  v73 = v201;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v74 = v202 + 8;
  v75 = *(v202 + 8);
  v76 = v75(v72, v73);
  *&v202 = &v162;
  MEMORY[0x28223BE20](v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF04B0, &qword_21CBAED28);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF04B8, &qword_21CBAED30);
  v78 = sub_21C8F0198();
  v211 = v77;
  v212 = v78;
  swift_getOpaqueTypeConformance2();
  v79 = v168;
  sub_21CB83F14();
  sub_21C6EADEC(&qword_27CDF0460, &qword_27CDF0458, &qword_21CBAEC18);
  v80 = v194;
  v81 = v170;
  sub_21CB845F4();
  (*(v169 + 8))(v79, v81);
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  *&v202 = v74;
  v170 = v75;
  v75(v72, v73);
  v82 = v80;
  v196 = v205;
  v83 = v206;
  v84 = (v80 + *(v171 + 36));
  *v84 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v85 = type metadata accessor for PMContentListSearchable();
  v86 = v85[5];
  *(v84 + v86) = swift_getKeyPath();
  v87 = v85[6];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C8F132C(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  v88 = v204;
  sub_21CB821F4();
  v89 = (v84 + v85[7]);
  *v89 = v196;
  v89[1] = v83;
  sub_21CB85084();
  v90 = v205;
  swift_getKeyPath();
  *&v205 = v90;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v91 = *(v90 + 96);

  v92 = *(v91 + 16);

  if (v92)
  {
    v93 = v203;
    sub_21C8F1824(v88, v203, type metadata accessor for PMAppSecurityRecommendationsList);
    v94 = v195;
    v95 = (*(v195 + 80) + 16) & ~*(v195 + 80);
    v92 = swift_allocObject();
    sub_21C8F0DC4(v93, v92 + v95, type metadata accessor for PMAppSecurityRecommendationsList);
    v96 = sub_21C8F0508;
  }

  else
  {
    v96 = 0;
    v93 = v203;
    v94 = v195;
  }

  v97 = v174;
  sub_21C716934(v82, v174, &qword_27CDF0450, &qword_21CBAEC10);
  v98 = (v97 + *(v173 + 36));
  *v98 = v96;
  v98[1] = v92;
  KeyPath = swift_getKeyPath();
  v100 = v175;
  sub_21C716934(v97, v175, &qword_27CDF0440, &qword_21CBAEC08);
  v101 = (v100 + *(v172 + 9));
  *v101 = KeyPath;
  v101[1] = 0;
  *&v196 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F1824(v88, v93, type metadata accessor for PMAppSecurityRecommendationsList);
  v195 = *(v94 + 80);
  v102 = (v195 + 16) & ~v195;
  v103 = swift_allocObject();
  v194 = type metadata accessor for PMAppSecurityRecommendationsList;
  sub_21C8F0DC4(v93, v103 + v102, type metadata accessor for PMAppSecurityRecommendationsList);
  v104 = v100;
  v105 = v176;
  v106 = sub_21C716934(v104, v176, &qword_27CDF0430, &qword_21CBAEC00);
  v172 = &v162;
  v107 = (v105 + *(v197 + 36));
  *v107 = sub_21C8F0510;
  v107[1] = v103;
  v107[2] = 0;
  v107[3] = 0;
  MEMORY[0x28223BE20](v106);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF03C0, &qword_21CBAEBC0);
  v109 = sub_21C8EFCC0();
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF03C8, &qword_21CBAEBC8);
  v111 = sub_21C6EADEC(&qword_27CDF03D0, &qword_27CDF03C8, &qword_21CBAEBC8);
  *&v205 = v110;
  *(&v205 + 1) = v111;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v178;
  v114 = v197;
  v175 = v108;
  v115 = v109;
  v116 = v112;
  v174 = v112;
  sub_21CB84894();
  sub_21C6EA794(v105, &qword_27CDF0418, &qword_21CBAEBF8);
  v117 = v203;
  sub_21C8F1824(v88, v203, v196);
  v173 = v102;
  v118 = swift_allocObject();
  sub_21C8F0DC4(v117, v118 + v102, v194);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0410, &qword_21CBAEBF0);
  *&v205 = v114;
  *(&v205 + 1) = v108;
  *&v206 = v115;
  *(&v206 + 1) = v116;
  v197 = MEMORY[0x277CDEEF8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF0468, &qword_27CDF0410, &qword_21CBAEBF0);
  v119 = v180;
  sub_21CB84144();

  (*(v179 + 8))(v113, v119);
  v120 = swift_getKeyPath();
  v121 = v184;
  v122 = &v184[*(v177 + 36)];
  v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v124 = v199;
  v125 = v201;
  v126 = v204;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v127 = v170;
  (v170)(v124, v125);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v128 - 8) + 56))(v122 + v123, 0, 1, v128);
  *v122 = v120;
  (*(v181 + 32))(v121, v198, v182);
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v129 = v127(v124, v125);
  v130 = v211;
  v131 = v212;
  v132 = v213;
  MEMORY[0x28223BE20](v129);
  swift_getKeyPath();
  v208 = v130;
  v209 = v131;
  v210 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v201 = v206;
  v202 = v205;
  v133 = v207;

  v134 = v203;
  sub_21C8F1824(v126, v203, v196);
  v135 = v173;
  v136 = swift_allocObject();
  sub_21C8F0DC4(v134, v136 + v135, v194);
  v137 = v186;
  sub_21C716934(v121, v186, &qword_27CDF0400, &qword_21CBAEBE0);
  v138 = v137 + *(v183 + 36);
  v139 = v201;
  *v138 = v202;
  *(v138 + 16) = v139;
  *(v138 + 32) = v133;
  *(v138 + 40) = &unk_21CBAEED0;
  *(v138 + 48) = v136;
  v140 = sub_21CB85214();
  v142 = v141;
  v143 = v185;
  v144 = &v185[*(v192 + 36)];
  sub_21C8E990C(v144);
  v145 = (v144 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v145 = v140;
  v145[1] = v142;
  sub_21C716934(v137, v143, &qword_27CDF03F0, &qword_21CBAEBD8);
  v146 = v187;
  sub_21C716934(v143, v187, &qword_27CDF03E0, &qword_21CBAEBD0);
  sub_21C6EDBAC(v146, v191, &qword_27CDF03E0, &qword_21CBAEBD0);
  swift_storeEnumTagMultiPayload();
  v147 = sub_21C8F132C(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  *&v205 = v188;
  *(&v205 + 1) = v175;
  *&v206 = v147;
  *(&v206 + 1) = v174;
  swift_getOpaqueTypeConformance2();
  sub_21C8EF93C();
  sub_21CB83494();
  return sub_21C6EA794(v146, &qword_27CDF03E0, &qword_21CBAEBD0);
}

uint64_t sub_21C8E5AC0()
{
  sub_21C8E5BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0380, &qword_21CBAEB98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0378, &qword_21CBAEB90);
  sub_21C8EF670();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C8E5BAC()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v77 - v6;
  MEMORY[0x28223BE20](v7);
  v81 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - v13;
  MEMORY[0x28223BE20](v14);
  v87 = &v77 - v15;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v86 = v0;
  sub_21CB85084();
  v24 = v90;
  swift_getKeyPath();
  v90 = v24;
  v84 = sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v17 + 16))(v23, v24 + v25, v16);

  (*(v17 + 104))(v20, *MEMORY[0x277CDF0D0], v16);
  LOBYTE(v25) = sub_21CB850F4();
  v26 = *(v17 + 8);
  v26(v20, v16);
  v26(v23, v16);
  if (v25)
  {
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v80 = sub_21CB81034();
    v27 = *(v80 - 8);
    v28 = *(v27 + 72);
    v79 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    sub_21CB81014();
    v30 = v81;
    sub_21CB81014();
    v31 = v82;
    sub_21CB81014();
    v32 = v83;
    sub_21CB81014();
    v33 = v79;
    sub_21CB80FE4();
    v34 = *(v2 + 8);
    v34(v32, v1);
    v34(v31, v1);
    v34(v30, v1);
    v34(v11, v1);
    swift_setDeallocating();
    (*(v27 + 8))(v29 + v33, v80);
    swift_deallocClassInstance();
    v35 = v87;
    sub_21CB81004();
    v34(v88, v1);
    v34(v35, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v37 = v89;
    swift_getKeyPath();
    v89 = v37;
    sub_21CB810D4();

    v38 = *(v37 + 96);

    v39 = *(v38 + 16);

    v40 = MEMORY[0x277D83C10];
    *(v36 + 56) = MEMORY[0x277D83B88];
    *(v36 + 64) = v40;
    *(v36 + 32) = v39;
  }

  else
  {
    v41 = v81;
    v42 = v82;
    v79 = v2;
    v80 = v1;
    sub_21CB85084();
    v43 = v89;
    swift_getKeyPath();
    v89 = v43;
    sub_21CB810D4();

    v44 = *(v43 + 72);

    if (v44 == 1 && (sub_21CB85084(), v45 = sub_21C902F8C(), , v45 >= 1))
    {
      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v78 = sub_21CB81034();
      v46 = *(*(v78 - 8) + 72);
      v47 = (*(*(v78 - 8) + 80) + 32) & ~*(*(v78 - 8) + 80);
      v77 = swift_allocObject();
      sub_21CB81014();
      sub_21CB81014();
      v48 = v42;
      sub_21CB81014();
      v49 = v83;
      sub_21CB81014();
      sub_21CB80FE4();
      v50 = v80;
      v51 = *(v79 + 8);
      v51(v49, v80);
      v51(v48, v50);
      v51(v41, v50);
      v51(v11, v50);
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FE4();
      v51(v49, v50);
      v51(v48, v50);
      v51(v41, v50);
      v51(v11, v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v52 = v87;
      sub_21CB81004();
      v51(v88, v50);
      v51(v52, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_21CBA15B0;
      sub_21CB85084();
      v54 = v89;
      swift_getKeyPath();
      v89 = v54;
      sub_21CB810D4();

      v55 = *(v54 + 56);

      v56 = *(v55 + 16);

      v57 = MEMORY[0x277D83B88];
      v58 = MEMORY[0x277D83C10];
      *(v53 + 56) = MEMORY[0x277D83B88];
      *(v53 + 64) = v58;
      *(v53 + 32) = v56;
      sub_21CB85084();
      v59 = sub_21C902F8C();

      *(v53 + 96) = v57;
      *(v53 + 104) = v58;
      *(v53 + 72) = v59;
    }

    else
    {
      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v60 = sub_21CB81034();
      v61 = *(v60 - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB81014();
      v65 = v83;
      sub_21CB81014();
      sub_21CB80FE4();
      v66 = *(v79 + 8);
      v67 = v65;
      v68 = v80;
      v66(v67, v80);
      v66(v42, v68);
      v66(v41, v68);
      v66(v11, v68);
      swift_setDeallocating();
      (*(v61 + 8))(v64 + v63, v60);
      swift_deallocClassInstance();
      v69 = v87;
      sub_21CB81004();
      v66(v88, v68);
      v66(v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_21CBA0690;
      sub_21CB85084();
      v71 = v89;
      swift_getKeyPath();
      v89 = v71;
      sub_21CB810D4();

      v72 = *(v71 + 56);

      v73 = *(v72 + 16);

      v74 = MEMORY[0x277D83C10];
      *(v70 + 56) = MEMORY[0x277D83B88];
      *(v70 + 64) = v74;
      *(v70 + 32) = v73;
    }
  }

  v75 = sub_21CB85594();

  return v75;
}

uint64_t sub_21C8E6948@<X0>(uint64_t a1@<X8>)
{
  v158 = a1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0528, &qword_21CBAEED8);
  v2 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v115 - v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0530, &qword_21CBAEEE0);
  v4 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v115 - v5;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0538, &qword_21CBAEEE8);
  v140 = *(v155 - 8);
  v6 = *(v140 + 64);
  MEMORY[0x28223BE20](v155);
  v139 = &v115 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0540, &qword_21CBAEEF0);
  v136 = *(v138 - 8);
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v153 = &v115 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v134 = *(v152 - 8);
  v10 = *(v134 + 64);
  MEMORY[0x28223BE20](v152);
  v151 = &v115 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v133 = *(v150 - 8);
  v12 = *(v133 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = &v115 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0548, &qword_21CBAEEF8);
  v14 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v115 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0550, &unk_21CBAEF00);
  v132 = *(v154 - 8);
  v16 = *(v132 + 64);
  MEMORY[0x28223BE20](v154);
  v131 = &v115 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC030, &qword_21CBA3AB8);
  v128 = *(v130 - 8);
  v18 = *(v128 + 64);
  MEMORY[0x28223BE20](v130);
  v126 = &v115 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v124 = *(v125 - 8);
  v20 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v115 - v21;
  v22 = sub_21CB85114();
  v147 = *(v22 - 8);
  v148 = v22;
  v23 = *(v147 + 64);
  MEMORY[0x28223BE20](v22);
  v146 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v145 = &v115 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0558, &qword_21CBAEF18);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v160 = &v115 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v119 = *(v143 - 8);
  v30 = *(v119 + 64);
  MEMORY[0x28223BE20](v143);
  v32 = &v115 - v31;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0568, &qword_21CBAEF28);
  v33 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v35 = &v115 - v34;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0570, &qword_21CBAEF30);
  v117 = *(v142 - 8);
  v36 = *(v117 + 64);
  MEMORY[0x28223BE20](v142);
  v122 = &v115 - v37;
  v38 = sub_21CB822D4();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v120 = sub_21CB824D4();
  v118 = *(v120 - 8);
  v40 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21CB83604();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0578, &qword_21CBAEF38);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v115 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0580, &qword_21CBAEF40);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = &v115 - v53;
  v159 = v1;
  v55 = sub_21C8EC1C8();
  v144 = v54;
  v141 = v45;
  if (v55)
  {
    MEMORY[0x28223BE20](v55);
    *(&v115 - 2) = v159;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF05B8, &qword_21CBAEF50);
    sub_21C8F070C();
    sub_21CB82194();
    sub_21CB835E4();
    sub_21CB822C4();
    v56 = v116;
    sub_21CB824E4();
    v57 = *(v121 + 48);
    (*(v47 + 16))(v35, v50, v46);
    v119 = v46;
    v58 = v118;
    v59 = v120;
    (*(v118 + 16))(&v35[v57], v56, v120);
    v60 = v122;
    sub_21CB83394();
    v61 = sub_21C6EADEC(&qword_27CDF0590, &qword_27CDF0570, &qword_21CBAEF30);
    v62 = sub_21C8F0690();
    v161 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v162 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v142;
    MEMORY[0x21CF131F0](v60, v142, v143, v61, OpaqueTypeConformance2);
    (*(v117 + 8))(v60, v64);
    (*(v58 + 8))(v56, v59);
    (*(v47 + 8))(v50, v119);
  }

  else
  {
    v65 = sub_21C8F0690();
    MEMORY[0x21CF131E0](v65, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v65);
    v66 = sub_21C6EADEC(&qword_27CDF0590, &qword_27CDF0570, &qword_21CBAEF30);
    v161 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v162 = v65;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v143;
    MEMORY[0x21CF13200](v32, v142, v143, v66, v67);
    (*(v119 + 8))(v32, v68);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  v69 = v159;
  sub_21CB85084();
  v70 = v161;
  swift_getKeyPath();
  v161 = v70;
  sub_21C8F132C(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v71 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v73 = v147;
  v72 = v148;
  v74 = v145;
  (*(v147 + 16))(v145, v70 + v71, v148);

  v75 = v146;
  (*(v73 + 104))(v146, *MEMORY[0x277CDF0D8], v72);
  LOBYTE(v70) = sub_21CB850F4();
  v76 = *(v73 + 8);
  v76(v75, v72);
  v77 = (v76)(v74, v72);
  v78 = v69;
  if (v70)
  {
    MEMORY[0x28223BE20](v77);
    *(&v115 - 2) = v69;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C844588();
    v79 = v123;
    sub_21CB82194();
    sub_21CB835F4();
    sub_21CB831C4();
    sub_21C8F132C(&qword_27CDEC048, MEMORY[0x277CDDEB0]);
    v80 = v126;
    sub_21CB82AA4();
    v81 = *(v129 + 48);
    v82 = v124;
    v83 = v127;
    v84 = v125;
    (*(v124 + 16))(v127, v79, v125);
    v85 = v128;
    v86 = v130;
    (*(v128 + 16))(&v83[v81], v80, v130);
    v87 = v131;
    sub_21CB83394();
    v88 = sub_21C6EADEC(&qword_27CDF05A8, &qword_27CDF0550, &unk_21CBAEF00);
    v89 = sub_21C6EADEC(&qword_27CDF05B0, &qword_27CDF0538, &qword_21CBAEEE8);
    v90 = v154;
    MEMORY[0x21CF131F0](v87, v154, v155, v88, v89);
    (*(v132 + 8))(v87, v90);
    (*(v85 + 8))(v80, v86);
    v91 = v84;
    v92 = v144;
    (*(v82 + 8))(v79, v91);
  }

  else
  {
    v93 = sub_21CB83594();
    MEMORY[0x28223BE20](v93);
    *(&v115 - 2) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v94 = v149;
    sub_21CB82194();
    v95 = sub_21CB835D4();
    MEMORY[0x28223BE20](v95);
    *(&v115 - 2) = v69;
    type metadata accessor for PMPlatformRoleButton();
    sub_21C8F132C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    v96 = v151;
    sub_21CB82194();
    v97 = sub_21CB835F4();
    MEMORY[0x28223BE20](v97);
    *(&v115 - 2) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0598, &qword_21CBAEF48);
    sub_21C6EADEC(&qword_27CDF05A0, &qword_27CDF0598, &qword_21CBAEF48);
    v98 = v153;
    sub_21CB82AA4();
    v99 = *(v137 + 48);
    v100 = *(v137 + 64);
    v101 = v133;
    v102 = v135;
    (*(v133 + 16))(v135, v94, v150);
    v103 = v134;
    (*(v134 + 16))(&v102[v99], v96, v152);
    v104 = v136;
    v105 = v138;
    (*(v136 + 16))(&v102[v100], v98, v138);
    v106 = v139;
    v92 = v144;
    sub_21CB83394();
    v107 = sub_21C6EADEC(&qword_27CDF05A8, &qword_27CDF0550, &unk_21CBAEF00);
    v108 = sub_21C6EADEC(&qword_27CDF05B0, &qword_27CDF0538, &qword_21CBAEEE8);
    v109 = v155;
    MEMORY[0x21CF13200](v106, v154, v155, v107, v108);
    (*(v140 + 8))(v106, v109);
    (*(v104 + 8))(v153, v105);
    (*(v103 + 8))(v151, v152);
    (*(v101 + 8))(v149, v150);
  }

  v110 = v156;
  v111 = *(v157 + 48);
  sub_21C6EDBAC(v92, v156, &qword_27CDF0580, &qword_21CBAEF40);
  v112 = v110 + v111;
  v113 = v160;
  sub_21C6EDBAC(v160, v112, &qword_27CDF0558, &qword_21CBAEF18);
  sub_21CB83394();
  sub_21C6EA794(v113, &qword_27CDF0558, &qword_21CBAEF18);
  return sub_21C6EA794(v92, &qword_27CDF0580, &qword_21CBAEF40);
}