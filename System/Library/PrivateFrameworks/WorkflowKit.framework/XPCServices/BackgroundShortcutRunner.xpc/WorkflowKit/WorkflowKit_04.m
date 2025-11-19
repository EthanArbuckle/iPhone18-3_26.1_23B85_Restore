uint64_t sub_100059CEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v8 = *(*(v64 - 8) + 64);
  v9 = __chkstk_darwin(v64);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v63 = &v54 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v67 = a1;
  v66 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_100080B48(a2, v17 / v14, a4);
    v35 = a4 + v20 * v14;
    v36 = -v14;
    v37 = v35;
    v58 = a1;
    v59 = a4;
    v57 = -v14;
LABEL_37:
    v60 = a2;
    v61 = a2 + v36;
    v38 = a3;
    v39 = v37;
    v56 = v37;
    while (1)
    {
      if (v35 <= a4)
      {
        v67 = a2;
        v65 = v39;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v55 = v39;
      v40 = v38 + v36;
      v41 = v35 + v36;
      v42 = v63;
      v43 = v38;
      sub_10005B654(v35 + v36, v63);
      v44 = v35;
      v45 = v62;
      sub_10005B654(v61, v62);
      v46 = *(v64 + 24);
      v47 = *(v42 + v46);
      v48 = v45;
      v49 = *(v45 + v46);
      sub_10005B2EC(v48, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      sub_10005B2EC(v42, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v47 < v49)
      {
        v35 = v44;
        v52 = v43 < v60 || v40 >= v60;
        a3 = v40;
        if (v52)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v55;
          a1 = v58;
          a4 = v59;
          v36 = v57;
        }

        else
        {
          v37 = v55;
          v16 = v43 == v60;
          v53 = v61;
          a2 = v61;
          a1 = v58;
          a4 = v59;
          v36 = v57;
          if (!v16)
          {
            v37 = v55;
            swift_arrayInitWithTakeBackToFront();
            a2 = v53;
          }
        }

        goto LABEL_37;
      }

      v50 = v43 < v44 || v40 >= v44;
      v51 = v40;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v40;
        v35 = v41;
        v39 = v41;
        a4 = v59;
        a2 = v60;
        v36 = v57;
        a1 = v58;
        v37 = v56;
      }

      else
      {
        v39 = v41;
        v16 = v44 == v43;
        v38 = v40;
        v35 = v41;
        a4 = v59;
        a2 = v60;
        v36 = v57;
        a1 = v58;
        v37 = v56;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v51;
          v35 = v41;
          v39 = v41;
        }
      }
    }

    v67 = a2;
    v65 = v37;
  }

  else
  {
    sub_100080B48(a1, v15 / v14, a4);
    v60 = a3;
    v61 = a4 + v19 * v14;
    v65 = v61;
    while (a4 < v61 && a2 < a3)
    {
      v22 = v14;
      v23 = a1;
      v24 = v63;
      sub_10005B654(a2, v63);
      v25 = a4;
      v26 = a4;
      v27 = v62;
      sub_10005B654(v25, v62);
      v28 = *(v64 + 24);
      v29 = *(v24 + v28);
      v30 = a2;
      v31 = *(v27 + v28);
      sub_10005B2EC(v27, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      sub_10005B2EC(v24, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      if (v29 >= v31)
      {
        a2 = v30;
        v14 = v22;
        a4 = v26 + v22;
        v32 = v23;
        if (v23 < v26 || v23 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v60;
        }

        else
        {
          a3 = v60;
          if (v23 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v26 + v22;
      }

      else
      {
        a2 = v30 + v22;
        v32 = v23;
        v33 = v23 < v30 || v23 >= a2;
        a4 = v26;
        if (v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v60;
        }

        else
        {
          a3 = v60;
          if (v23 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v14 = v22;
      }

      a1 = v32 + v14;
      v67 = a1;
    }
  }

LABEL_59:
  sub_10005A7E8(&v67, &v66, &v65, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  return 1;
}

uint64_t sub_10005A1B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100089A08();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v65 - v15;
  result = __chkstk_darwin(v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_100080B60(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_1000899E8();
      v37 = v36;
      if (v35 == sub_1000899E8() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_10008AA68();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_100080B60(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_1000899E8();
    v55 = v54;
    if (v53 == sub_1000899E8() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_10008AA68();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_10005A7E8(&v78, &v77, &v76, &type metadata accessor for RuntimePlatform);
  return 1;
}

uint64_t sub_10005A7E8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = sub_100017A1C(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    sub_100012498();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100012498();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id *sub_10005A8BC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6600, &unk_10008E360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_10005A9BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = sub_10008A1B8().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t sub_10005AA58()
{
  sub_10005EC9C();
  sub_10006028C();
  v2 = sub_1000889E8();
  sub_10005E3B0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1000105E8;
  sub_10005E3A4();

  return sub_10001DCF0(v9, v10, v11, v6, v12);
}

uint64_t sub_10005AB3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005AB50(a1, a2);
  }

  return a1;
}

uint64_t sub_10005AB50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005ABA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005ABBC(a1, a2);
  }

  return a1;
}

uint64_t sub_10005ABBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005AC80()
{
  result = sub_1000899A8();
  if (v1 <= 0x3F)
  {
    result = sub_100088A68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_10005AD04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10005AD10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005AD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10005ADC0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005AE38(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005AE98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_10008A268();
  }

  return sub_1000125C0();
}

uint64_t sub_10005AEF4(void *a1)
{
  v2 = [a1 availabilityAnnotations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for LNPlatformName(0);
  sub_100011D84(0, &unk_1000A65B0, LNAvailabilityAnnotation_ptr);
  sub_10005AE38(&qword_1000A5B28, type metadata accessor for LNPlatformName);
  v3 = sub_10008A1C8();

  return v3;
}

uint64_t sub_10005AFC0()
{
  v0 = sub_10008A268();
  v2 = v1;
  if (v0 == sub_10008A268() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_10005EAE0();
    v5 = sub_10008AA68();
  }

  return v5 & 1;
}

uint64_t sub_10005B040(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B1BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10005B208()
{
  sub_100012604();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105E8;
  v6 = sub_1000124C8();

  return v7(v6);
}

uint64_t sub_10005B2EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100017A1C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10005B4C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011D84(255, a2, a3);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005B500(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10005B518(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10005B530(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10005B540()
{
  result = qword_1000A64D8;
  if (!qword_1000A64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A64D8);
  }

  return result;
}

uint64_t sub_10005B594(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

_BYTE **sub_10005B5CC(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_10005B610()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

void sub_10005B644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100081298();
}

uint64_t sub_10005B654(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v5 = v4(v3);
  sub_10001238C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000125C0();
  v9(v8);
  return a2;
}

uint64_t sub_10005B6A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v5 = v4(v3);
  sub_10001238C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000125C0();
  v9(v8);
  return a2;
}

uint64_t sub_10005B714()
{
  sub_100009B94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_10005ED48();
  return sub_10004A66C(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_10005B78C()
{
  sub_100009B94();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  sub_10005ED48();
  return sub_10004BBA0(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
}

unint64_t sub_10005B920()
{
  result = qword_1000A65F0;
  if (!qword_1000A65F0)
  {
    sub_100010924(&qword_1000A65E8, &qword_10008D958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F0);
  }

  return result;
}

uint64_t sub_10005B984(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v33 = &v30 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
    v19 = 0;
    a3 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = -1 << *(a4 + 32);
    v31 = a1;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v32 = a3;
    while (v18 < a3)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            a3 = v18;
            v15 = v30;
            a1 = v31;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v22);
          ++v19;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v22 = v19;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v34;
      v27 = *(v35 + 72);
      sub_10005B654(v25 + v27 * (v23 | (v22 << 6)), v34);
      v28 = v26;
      v29 = v33;
      sub_10005B6A8(v28, v33);
      result = sub_10005B6A8(v29, a2);
      a3 = v32;
      if (v21 == v32)
      {
        v19 = v22;
        v15 = v30;
        a1 = v31;
        a4 = v24;
        goto LABEL_20;
      }

      a2 += v27;
      v18 = v21;
      v19 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10005BBD8(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100089A08();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005BE98(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10005BEDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100003074();
}

uint64_t sub_10005BF68()
{
  sub_10005F538();
  v3 = sub_100008DC0(v1, v2);
  sub_10001238C(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000125C0();
  v7(v6);
  return v0;
}

uint64_t sub_10005BFBC()
{
  sub_10005F538();
  v3 = sub_100008DC0(v1, v2);
  sub_10001238C(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000125C0();
  v7(v6);
  return v0;
}

void sub_10005C09C()
{
  sub_100088A68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFLocalizationUsage(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005C130(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005C1FC()
{
  sub_10005C318(319, &qword_1000A6828, &type metadata accessor for ParameterRelationshipDefinition);
  if (v0 <= 0x3F)
  {
    sub_100089888();
    if (v1 <= 0x3F)
    {
      sub_100089C48();
      if (v2 <= 0x3F)
      {
        sub_10005C318(319, &qword_1000A6830, &type metadata accessor for SampleInvocationDefinition);
        if (v3 <= 0x3F)
        {
          sub_10005C368();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005C318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10005E028();
    v4 = sub_10008A378();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005C368()
{
  if (!qword_1000A6838)
  {
    v0 = sub_10008A378();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6838);
    }
  }
}

uint64_t sub_10005C3B8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10005C3D4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005C3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C46C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10005C494(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10005C4B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005C4C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C548(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10005C574()
{
  result = qword_1000A6888;
  if (!qword_1000A6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6888);
  }

  return result;
}

unint64_t sub_10005C660()
{
  result = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v2;
  v4 = *(v0 + 32);
  return result;
}

unint64_t sub_10005C688()
{
  *(v0 + 16) = v3;
  result = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v6 = *(v2 + 32);
  v7 = *(v4 - 224);
  return result;
}

void sub_10005C6D0()
{
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[170];
  v8 = v0[169];
  v9 = v0[166];
  v10 = v0[165];
  v11 = v0[162];
  v12 = v0[159];
  v13 = v0[156];
  v14 = v0[155];
  v15 = v0[152];
  v16 = v0[149];
  v17 = v0[148];
  v18 = v0[147];
  v19 = v0[144];
  v20 = v0[141];
  v21 = v0[140];
  v22 = v0[139];
  v23 = v0[138];
  v24 = v0[137];
  v25 = v0[136];
  v26 = v0[135];
  v27 = v0[134];
  v28 = v0[133];
  v29 = v0[132];
  v30 = v0[129];
  v31 = v0[126];
  v32 = v0[125];
  v33 = v0[124];
  v34 = v0[123];
  v35 = v0[122];
  v36 = v0[119];
  v37 = v0[118];
  v38 = v0[117];
  v39 = v0[114];
  v40 = v0[113];
  v41 = v0[112];
  v42 = v0[111];
  v43 = v0[108];
  v44 = v0[107];
  v45 = v0[104];
  v46 = v0[101];
  v47 = v0[100];
  v48 = v0[97];
  v4 = v0[96];
  v49 = v0[95];
}

unint64_t sub_10005C7F4()
{
  result = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_10005C85C(uint64_t result)
{
  *(result + 16) = sub_10005C5D8;
  *(result + 24) = v1;
  return result;
}

void sub_10005C94C(int a1@<W8>)
{
  *(v3 - 216) = a1;
  *(v3 - 224) = v2 + 32;
  *(v3 - 192) = v1;
}

uint64_t sub_10005C99C(uint64_t result)
{
  *(result + 16) = sub_10005C5E0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005C9B4(uint64_t result)
{
  *(result + 16) = sub_10005B6FC;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_10005CA10()
{
  result = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v2;
  v4 = *(v0 + 32);
  return result;
}

void sub_10005CAAC()
{
  *(v3 - 200) = v1;
  v4 = *(v2 + 1048);
  *(v3 - 168) = v0 & 0xC000000000000001;
}

void sub_10005CAC4(int a1@<W8>)
{
  *(v3 - 184) = a1;
  *(v3 - 192) = v2 + 32;
  *(v3 - 160) = v1;
}

void sub_10005CADC()
{
  v3 = v0[174];
  v4 = v0[173];
  v5 = v0[170];
  v6 = v0[169];
  v7 = v0[166];
  v8 = v0[165];
  v9 = v0[162];
  v10 = v0[159];
  v11 = v0[156];
  v12 = v0[155];
  v13 = v0[152];
  v14 = v0[149];
  v15 = v0[148];
  v16 = v0[147];
  v17 = v0[144];
  v18 = v0[141];
  v19 = v0[140];
  v20 = v0[139];
  v21 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[132];
  v28 = v0[129];
  v29 = v0[126];
  v30 = v0[125];
  v31 = v0[124];
  v32 = v0[123];
  v33 = v0[122];
  v34 = v0[119];
  v35 = v0[118];
  v36 = v0[117];
  v37 = v0[114];
  v38 = v0[113];
  v39 = v0[112];
  v40 = v0[111];
  v41 = v0[108];
  v42 = v0[107];
  v43 = v0[104];
  v44 = v0[101];
  v45 = v0[100];
  v46 = v0[97];
  v1 = v0[96];
  v2 = v0[95];
}

void sub_10005CC38()
{
  v5 = v0[145];
  v4 = v0[144];
  v1 = v0[143];
  v2 = v0[142];
  v6 = v0[141];
  v7 = v0[140];
  v8 = v0[139];
  v9 = v0[138];
  v10 = v0[137];
  v11 = v0[136];
  v12 = v0[135];
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[132];
  v16 = v0[129];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[124];
  v20 = v0[123];
  v21 = v0[122];
  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[114];
  v26 = v0[113];
  v27 = v0[112];
  v28 = v0[111];
  v29 = v0[108];
  v3 = v0[107];
  v30 = v0[104];
}

uint64_t sub_10005CD38(uint64_t result)
{
  *(result + 16) = sub_10005B70C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005CD7C()
{
  result = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  return result;
}

uint64_t sub_10005CDB4()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 216);
  return result;
}

uint64_t sub_10005CDDC()
{
  result = v0[116];
  v2 = v0[115];
  v3 = v0[112];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[104];
  v8 = v0[103];
  v9 = v0[102];
  v10 = v0[101];
  return result;
}

void sub_10005CE18()
{
  v2 = *(v0 + 1192);
  v3 = *(*(v1 - 184) + 1184);
  v4 = *(*(v1 - 184) + 1176);
  v5 = *(*(v1 - 184) + 1168);
  v6 = *(*(v1 - 184) + 1160);
}

void sub_10005CE40()
{
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[166];
  v9 = v0[165];
  v10 = v0[162];
  v11 = v0[159];
  v12 = v0[156];
  v13 = v0[155];
  v1 = v0[152];
}

void sub_10005CE94()
{
  v1 = v0[250];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[78];
}

unint64_t sub_10005CEBC()
{
  v3 = *(v2 - 208);
  result = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0;
  v5 = *(v3 + 32);
  return result;
}

uint64_t sub_10005CEE0()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 184);
  return result;
}

uint64_t sub_10005CEF4()
{
  v1 = v0[152];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[59];
  return v0[62];
}

uint64_t sub_10005CF2C()
{
  v1 = v0[152];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[59];
  return v0[62];
}

uint64_t sub_10005CF60@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

void sub_10005CFEC()
{
  v1 = *(*(v0 - 128) + 776);
  v2 = *(*(v0 - 128) + 768);
  v3 = *(*(v0 - 128) + 752);
  v4 = *(*(v0 - 128) + 736);
  v5 = *(*(v0 - 128) + 704);
  v6 = *(*(v0 - 128) + 696);
  v7 = *(v0 - 128);
}

void sub_10005D034()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];
}

void sub_10005D06C()
{
  v3 = v0[100];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v1 = v0[94];
  v7 = v0[93];
  STACK[0x200] = v0[90];
  v2 = v0[89];
}

uint64_t sub_10005D0B0()
{

  return sub_10008A228();
}

void sub_10005D15C()
{
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[184];
  v1 = v0[181];
  v7 = v0[180];
  v8 = v0[179];
  v2 = v0[178];
}

uint64_t sub_10005D18C(uint64_t result)
{
  *(result + 16) = sub_10005C5DC;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005D1A4(uint64_t result)
{
  *(result + 16) = sub_10005C5E0;
  *(result + 24) = v1;
  return result;
}

void sub_10005D1D4()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[252];
  v4 = v0[78];
  v5 = v0[254] + 1;
}

void sub_10005D1F0(int a1@<W8>)
{
  *(v3 - 216) = a1;
  *(v3 - 224) = v2 + 32;
  *(v3 - 192) = v1;
}

void sub_10005D20C()
{
  **(v1 - 248) = v0;
  v2 = *(v1 - 152);
  v3 = *(v1 - 200);
}

void sub_10005D220()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];
}

uint64_t sub_10005D23C()
{
  result = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  return result;
}

void sub_10005D250()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[252];
  v4 = v0[78];
  v5 = v0[254] + 1;
}

uint64_t sub_10005D308@<X0>(unsigned int *a1@<X8>)
{
  v2 = v1[101];
  v3 = v1[91];
  v4 = *a1;
  v5 = *(v1[92] + 104);
  return v1[93];
}

uint64_t sub_10005D330()
{
  result = v0[190];
  v2 = v0[189];
  v3 = v0[188];
  return result;
}

void sub_10005D350()
{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[78];
}

uint64_t sub_10005D370()
{

  return sub_10005B2EC(v0, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
}

void sub_10005D3C4()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
}

uint64_t sub_10005D3F8()
{

  return sub_10008A9C8();
}

void sub_10005D418()
{
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[140];
}

void sub_10005D428()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
}

uint64_t sub_10005D498()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10005D4E0()
{
  v1 = v0[250];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[78];
}

uint64_t sub_10005D510()
{
  v3 = v0[190];
  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[185];
  v7 = v0[184];
  v8 = v0[181];
  v9 = v0[180];
  v10 = v0[179];
  v11 = v0[178];
  v18 = v0[175];
  v19 = v0[174];
  v20 = v0[173];
  v21 = v0[170];
  v22 = v0[169];
  v23 = v0[166];
  v24 = v0[165];
  v25 = v0[162];
  v26 = v0[159];
  v27 = v0[156];
  v28 = v0[155];
  v29 = v0[152];
  v30 = v0[149];
  v31 = v0[148];
  v32 = v0[147];
  v33 = v0[144];
  v34 = v0[141];
  v35 = v0[140];
  v36 = v0[139];
  v37 = v0[138];
  v38 = v0[137];
  v39 = v0[136];
  v40 = v0[135];
  v41 = v0[134];
  v42 = v0[133];
  v43 = v0[132];
  v44 = v0[129];
  v45 = v0[126];
  v46 = v0[125];
  v47 = v0[124];
  v48 = v0[123];
  v49 = v0[122];
  v50 = v0[119];
  v51 = v0[118];
  v52 = v0[117];
  v53 = v0[114];
  v54 = v0[113];
  v55 = v0[112];
  v56 = v0[111];
  v57 = v0[108];
  v58 = v0[107];
  v59 = v0[104];
  v60 = v0[101];
  v61 = v0[100];
  v62 = v0[97];
  v63 = v0[96];
  STACK[0x200] = v0[94];
  STACK[0x208] = v0[93];
  STACK[0x210] = v0[90];
  STACK[0x218] = v0[89];
  STACK[0x220] = v0[88];
  STACK[0x228] = v0[85];
  v12 = v0[83];
  *(v1 - 256) = v0[84];
  *(v1 - 248) = v12;
  v13 = v0[81];
  *(v1 - 240) = v0[82];
  *(v1 - 232) = v13;
  v14 = v0[77];
  *(v1 - 224) = v0[80];
  *(v1 - 216) = v14;
  v15 = v0[74];
  *(v1 - 208) = v0[76];
  *(v1 - 200) = v15;
  v16 = v0[72];
  *(v1 - 192) = v0[73];
  *(v1 - 184) = v16;
}

uint64_t sub_10005D6C8@<X0>(uint64_t a1@<X8>)
{
  v11 = v1[139];
  v12 = v1[138];
  v13 = v1[137];
  v14 = v1[136];
  v15 = v1[135];
  v16 = v1[134];
  v17 = v1[133];
  v18 = v1[132];
  v19 = v1[129];
  v20 = v1[126];
  v21 = v1[125];
  v22 = v1[124];
  v23 = v1[123];
  v24 = v1[122];
  v25 = v1[119];
  v26 = v1[118];
  v27 = v1[117];
  v28 = v1[114];
  v29 = v1[113];
  v30 = v1[112];
  v31 = v1[111];
  v32 = v1[108];
  v33 = v1[107];
  v34 = v1[104];
  v4 = v1[101];
  v36 = v1[100];
  v37 = v1[97];
  v38 = v1[96];
  v39 = v1[95];
  STACK[0x200] = v1[94];
  STACK[0x208] = v1[93];
  STACK[0x210] = v1[90];
  STACK[0x218] = v1[89];
  STACK[0x220] = v1[88];
  STACK[0x228] = v1[85];
  v5 = v1[83];
  *(v3 - 256) = v1[84];
  *(v3 - 248) = v5;
  v6 = v1[81];
  *(v3 - 240) = v1[82];
  *(v3 - 232) = v6;
  v7 = v1[77];
  *(v3 - 224) = v1[80];
  *(v3 - 216) = v7;
  v8 = v1[74];
  *(v3 - 208) = v1[76];
  *(v3 - 200) = v8;
  *(v3 - 184) = v1[73];
  v35 = v1[72];
  v9 = *(a1 + 8);
  return v2;
}

void sub_10005D800(uint64_t a1@<X8>)
{
  v12 = v1[139];
  v13 = v1[138];
  v14 = v1[137];
  v15 = v1[136];
  v16 = v1[135];
  v17 = v1[134];
  v18 = v1[133];
  v19 = v1[132];
  v20 = v1[129];
  v21 = v1[126];
  v22 = v1[125];
  v23 = v1[124];
  v24 = v1[123];
  v25 = v1[122];
  v26 = v1[119];
  v27 = v1[118];
  v28 = v1[117];
  v29 = v1[114];
  v30 = v1[113];
  v31 = v1[112];
  v32 = v1[111];
  v33 = v1[108];
  v34 = v1[107];
  v35 = v1[104];
  v3 = v1[101];
  v37 = v1[100];
  v38 = v1[97];
  v39 = v1[96];
  v40 = v1[95];
  v4 = v1[93];
  *(v2 - 256) = v1[94];
  *(v2 - 248) = v4;
  v5 = v1[89];
  *(v2 - 240) = v1[90];
  *(v2 - 232) = v5;
  v6 = v1[85];
  *(v2 - 224) = v1[88];
  *(v2 - 216) = v6;
  v7 = v1[83];
  *(v2 - 208) = v1[84];
  *(v2 - 200) = v7;
  v8 = v1[81];
  *(v2 - 192) = v1[82];
  *(v2 - 184) = v8;
  v9 = v1[77];
  *(v2 - 176) = v1[80];
  *(v2 - 168) = v9;
  v10 = v1[74];
  *(v2 - 160) = v1[76];
  *(v2 - 152) = v10;
  *(v2 - 144) = v1[73];
  v36 = v1[72];
  v11 = *(a1 + 8);
}

void sub_10005D938()
{
  v1 = v0[107];
  v2 = v0[103];
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[94];
  v7 = v0[90];
}

uint64_t sub_10005D998()
{

  return sub_10008AA68();
}

void sub_10005D9E8()
{
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[132];
  v10 = v0[129];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[119];
  v17 = v0[118];
  v18 = v0[117];
  v19 = v0[114];
  v20 = v0[113];
  v21 = v0[112];
  v22 = v0[111];
  v23 = v0[108];
  v1 = v0[107];
  v24 = v0[104];
}

uint64_t sub_10005DA8C()
{
  v3 = v0[243];
  v4 = v0[237];
  *(v1 - 256) = v0[244];
  *(v1 - 248) = v4;
  *(v1 - 192) = v0[210];
  v5 = v0[197];
  v6 = v0[196];
  v7 = v0[195];
  v8 = v0[194];
  STACK[0x218] = v0[190];
  v9 = v0[189];
  STACK[0x210] = v0[188];
  v10 = v0[181];
  v11 = *(*(v1 - 184) + 1416);
  *(v1 - 208) = *(*(v1 - 184) + 1408);
  *(v1 - 200) = v10;
  v12 = *(*(v1 - 184) + 1216);
  v13 = *(*(v1 - 184) + 1208);
  *(v1 - 224) = *(*(v1 - 184) + 1200);
  *(v1 - 216) = v12;
  v14 = *(*(v1 - 184) + 1192);
  v15 = *(*(v1 - 184) + 1168);
  *(v1 - 240) = *(*(v1 - 184) + 1160);
  *(v1 - 232) = v14;
  STACK[0x228] = *(*(v1 - 184) + 1152);
  v16 = *(*(v1 - 184) + 1144);
  STACK[0x220] = *(*(v1 - 184) + 1136);
  v17 = *(*(v1 - 184) + 808);
}

uint64_t sub_10005DB5C()
{
  v3 = v0[243];
  v4 = v0[237];
  *(v1 - 232) = v0[244];
  *(v1 - 224) = v4;
  *(v1 - 168) = v0[210];
  v5 = v0[197];
  v6 = v0[196];
  v7 = v0[195];
  v8 = v0[194];
  *(v1 - 256) = v0[190];
  v9 = v0[189];
  STACK[0x208] = v0[188];
  v10 = v0[181];
  v11 = *(*(v1 - 152) + 1416);
  *(v1 - 184) = *(*(v1 - 152) + 1408);
  *(v1 - 176) = v10;
  v12 = *(*(v1 - 152) + 1216);
  v13 = *(*(v1 - 152) + 1208);
  *(v1 - 200) = *(*(v1 - 152) + 1200);
  *(v1 - 192) = v12;
  v14 = *(*(v1 - 152) + 1192);
  v15 = *(*(v1 - 152) + 1168);
  *(v1 - 216) = *(*(v1 - 152) + 1160);
  *(v1 - 208) = v14;
  v16 = *(*(v1 - 152) + 1152);
  v17 = *(*(v1 - 152) + 1144);
  *(v1 - 248) = *(*(v1 - 152) + 1136);
  *(v1 - 240) = v16;
  v18 = *(*(v1 - 152) + 808);
}

void sub_10005DC7C()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[36];
}

void sub_10005DC98(void *a1@<X8>)
{
  *a1 = v1;
  v3 = *(v2 - 184);
  v4 = *(v2 - 232);
}

void sub_10005DCB8(int a1@<W8>)
{
  *(v3 - 216) = a1;
  *(v3 - 224) = v1 + 32;
  *(v3 - 192) = v2;
}

uint64_t sub_10005DCD4()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[8];
  v10 = v0[7];
  v11 = v0[6];
}

uint64_t sub_10005DD04()
{
  v1 = v0[128];
  v2 = v0[122];
  result = v0[85];
  v4 = v0[65];
  return result;
}

char *sub_10005DD20(uint64_t a1)
{
  v5 = *(a1 + 48);
  *v3 = v1;
  v3[1] = v2;
  v6 = *(v4 + 32);
  return v3 + v5;
}

uint64_t sub_10005DD6C()
{
  result = v0[97];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[90];
  v5 = v0[87];
  v6 = v0[86];
  return result;
}

void sub_10005DD98(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48) + 24 * a1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(*(v1 + 56) + 8 * a1);
}

void sub_10005DDD0(uint64_t a1@<X8>)
{
  v3 = v1[181];
  v4 = v1[177];
  *(v2 - 208) = v1[176];
  *(v2 - 200) = v3;
  v5 = v1[152];
  v6 = *(*(v2 - 184) + 1208);
  *(v2 - 224) = *(*(v2 - 184) + 1200);
  *(v2 - 216) = v5;
  v7 = *(*(v2 - 184) + 1192);
  v8 = *(*(v2 - 184) + 1168);
  *(v2 - 240) = *(*(v2 - 184) + 1160);
  *(v2 - 232) = v7;
  v9 = *(*(v2 - 184) + 1152);
  v10 = *(*(v2 - 184) + 1144);
  *(v2 - 256) = *(*(v2 - 184) + 1136);
  *(v2 - 248) = v9;
  v11 = *(*(v2 - 184) + 808);
  v12 = *(a1 + 8);
}

void sub_10005DE40()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];
}

void *sub_10005DE50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[11] = v2;
  result[12] = a2;
  v4 = *(v3 - 208);
  result[13] = *(v3 - 216);
  result[14] = v4;
  v5 = STACK[0x200];
  result[15] = *(v3 - 200);
  result[16] = v5;
  return result;
}

uint64_t sub_10005DE6C()
{
  v1 = v0[85];
  result = v0[82];
  v3 = v0[81];
  v4 = v0[79];
  v5 = v0[78];
  return result;
}

uint64_t sub_10005DEA4()
{
  v2 = *(v1 + 624);
  v3 = *(v1 + 472);
  return v0;
}

uint64_t sub_10005DEC0()
{
  result = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  return result;
}

void sub_10005DED4()
{
  v1 = v0[131];
  v2 = v0[116];
  v3 = *(v0[121] + 16);
}

void sub_10005DEFC(uint64_t a1@<X8>)
{
  *(v2 - 216) = v1;
  v3 = *(v1 + 56);
  *(v2 - 240) = a1 + 16;
  *(v2 - 232) = v3;
}

uint64_t sub_10005DF10()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 216);
  return result;
}

uint64_t sub_10005DF38()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 216);
  return result;
}

void sub_10005DF4C()
{
  v10 = v0[94];
  v2 = v0[90];
  *(v1 - 256) = v0[93];
  *(v1 - 248) = v2;
  v3 = v0[88];
  *(v1 - 240) = v0[89];
  *(v1 - 232) = v3;
  v4 = v0[84];
  *(v1 - 224) = v0[85];
  *(v1 - 216) = v4;
  v5 = v0[82];
  *(v1 - 208) = v0[83];
  *(v1 - 200) = v5;
  v6 = v0[80];
  *(v1 - 192) = v0[81];
  *(v1 - 184) = v6;
  v7 = v0[76];
  *(v1 - 176) = v0[77];
  *(v1 - 168) = v7;
  v8 = v0[73];
  *(v1 - 160) = v0[74];
  *(v1 - 152) = v8;
  v9 = v0[72];
}

uint64_t sub_10005DFC4()
{
  v1 = v0[20];
  v2 = v0[18];
  result = v0[13];
  v4 = v0[10];
  return result;
}

uint64_t sub_10005E000()
{
  result = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  return result;
}

void sub_10005E014()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 216);
  v3 = *(v0 - 192);
}

void sub_10005E0C4(uint64_t a1@<X8>)
{
  STACK[0x208] = v1;
  v4 = v2[85];
  *(v3 - 256) = v2[88];
  *(v3 - 248) = v4;
  v5 = v2[83];
  *(v3 - 240) = v2[84];
  *(v3 - 232) = v5;
  v6 = v2[81];
  *(v3 - 224) = v2[82];
  *(v3 - 216) = v6;
  v7 = v2[77];
  *(v3 - 208) = v2[80];
  *(v3 - 200) = v7;
  *(v3 - 192) = v2[76];
  v8 = v2[73];
  *(v3 - 160) = v2[74];
  *(v3 - 152) = v8;
  v10 = v2[72];
  v9 = *(a1 + 8);
}

uint64_t sub_10005E15C()
{
  v1 = STACK[0x218];
  v2 = STACK[0x210];

  return sub_10008A3F8();
}

id sub_10005E178()
{
  v4 = *(v0 + 2000);
  *(v2 - 208) = *(v0 + 1984);
  *(v2 - 200) = v4;
  *(v2 - 216) = *(v0 + 1976);
  *(v2 - 192) = *(v0 + 1560);
  STACK[0x208] = *(v0 + 1448);
  v5 = *(v0 + 1216);
  STACK[0x210] = *(v0 + 1192);
  STACK[0x218] = *(v0 + 1152);
  v6 = *(v0 + 808);
  *(v2 - 224) = *(v0 + 544);
  v7 = *(v0 + 2100);
  v8 = *(v0 + 536);
  v9 = *(v0 + 512);
  v10 = *(v0 + 480);
  STACK[0x200] = *(v0 + 488);
  v11 = *(v0 + 472);
  *(v0 + 464) = v10;
  v12 = *(v1 + 2952);

  return [v11 v12];
}

uint64_t sub_10005E1FC(uint64_t a1)
{
  STACK[0x218] = *(*(v2 - 184) + 888);
  STACK[0x210] = *(*(v2 - 184) + 872);
  v3 = *(*(v2 - 184) + 816);
  v4 = *(v1 + 56) + *(STACK[0x208] + 72) * a1;
  v5 = *(STACK[0x208] + 16);
  result = *(*(v2 - 184) + 832);
  v7 = STACK[0x200];
  return result;
}

void sub_10005E250(uint64_t a1@<X8>)
{
  v4 = v2[181];
  v5 = v2[177];
  *(v3 - 200) = v2[176];
  *(v3 - 192) = v4;
  v6 = v2[152];
  v7 = v2[151];
  *(v3 - 216) = v2[150];
  *(v3 - 208) = v6;
  v8 = v2[149];
  v9 = v2[146];
  *(v3 - 232) = v2[145];
  *(v3 - 224) = v8;
  v10 = v2[144];
  v11 = v2[143];
  v12 = *(*(v3 - 152) + 1136);
  v13 = *(v3 - 152);
  *(v3 - 160) = v1;
  v14 = *(v13 + 808);
  v15 = *(a1 + 8);
}

uint64_t sub_10005E2B0()
{
  STACK[0x200] = v0[93];
  STACK[0x208] = v0[90];
  v3 = v0[88];
  *(v1 - 256) = v0[89];
  *(v1 - 248) = v3;
  v4 = v0[84];
  *(v1 - 240) = v0[85];
  *(v1 - 232) = v4;
  v5 = v0[82];
  *(v1 - 224) = v0[83];
  *(v1 - 216) = v5;
  v6 = v0[80];
  *(v1 - 208) = v0[81];
  *(v1 - 200) = v6;
  v7 = v0[76];
  *(v1 - 192) = v0[77];
  *(v1 - 184) = v7;
  v8 = v0[73];
  *(v1 - 176) = v0[74];
  *(v1 - 168) = v8;
  *(v1 - 152) = v0[72];
}

uint64_t sub_10005E324@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v5 = v2[93];
  *(v3 - 240) = v2[94];
  *(v3 - 232) = v5;
  v6 = v2[89];
  *(v3 - 224) = v2[90];
  *(v3 - 216) = v6;
  v7 = v2[85];
  *(v3 - 208) = v2[88];
  *(v3 - 200) = v7;
  v8 = v2[83];
  *(v3 - 192) = v2[84];
  *(v3 - 184) = v8;
  v9 = v2[81];
  *(v3 - 176) = v2[82];
  *(v3 - 168) = v9;
  v10 = v2[77];
  *(v3 - 160) = v2[80];
  *(v3 - 152) = v10;
  v11 = v2[74];
  *(v3 - 136) = v2[76];
  *(v3 - 128) = v11;
  v12 = v2[72];
  *(v3 - 120) = v2[73];
  *(v3 - 112) = v12;
}

void sub_10005E3E0(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000019;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_10008A2C8(v2);
}

void sub_10005E404(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000019;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_10008A2C8(v2);
}

uint64_t sub_10005E4AC()
{

  return sub_100088DA8();
}

void sub_10005E4D8(_WORD *a1@<X8>)
{
  *a1 = 258;
  *(v1 - 104) = a1 + 1;
  *(v1 - 96) = 0;
}

uint64_t sub_10005E4E8()
{
  v1 = v0[83];
  v2 = v0[82];
  result = v0[81];
  v4 = v0[78];
  return result;
}

void sub_10005E528()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
}

void sub_10005E540(unsigned int *a1@<X8>)
{
  v2 = *(v1 + 728);
  v3 = *a1;
  v4 = *(*(v1 + 736) + 104);
}

uint64_t sub_10005E558()
{
  v1 = v0[94];
  result = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  return result;
}

uint64_t sub_10005E5B8()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

void sub_10005E5C8()
{
  v1 = v0[64];
  v2 = v0[60];
  STACK[0x200] = v0[61];
  v3 = v0[59];
  v0[58] = v2;
}

void sub_10005E5E0()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
}

void sub_10005E5F0()
{
  v1 = v0[181];
  v2 = v0[177];
  v3 = v0[176];
}

void sub_10005E620(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10005E63C(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v2;
  *(result + 48) = v3 & 1;
  return result;
}

uint64_t sub_10005E654()
{
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[122];
  v5 = v0[120];
  v6 = v0[117];
  *(v1 - 200) = v0[115];
  *(v1 - 192) = v3;
  v7 = v0[114];
  v8 = v0;
  v9 = v0[113];
  v10 = v8[112];
  result = v4;
  v13 = *(v1 - 224);
  v12 = *(v1 - 216);
  return result;
}

uint64_t sub_10005E6A0()
{
  v6 = v0[89];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[76];
  v3 = v0[74];
  *(v1 - 152) = v0[75];
  *(v1 - 144) = v3;
  v4 = v0[70];
  *(v1 - 136) = v0[73];
  *(v1 - 128) = v4;
}

uint64_t sub_10005E6F8(uint64_t a1)
{
  v3 = v1;
  v4 = v1[132];
  v5 = v3[130];
  v6 = v3[122];
  v7 = v3[120];
  v8 = v3[117];
  *(v2 - 168) = v3[115];
  *(v2 - 160) = a1;
  v9 = v3[114];
  v10 = v3[113];
  v11 = v3[112];
  result = v6;
  v14 = *(v2 - 192);
  v13 = *(v2 - 184);
  return result;
}

uint64_t sub_10005E734(uint64_t a1)
{
  v4 = v2[111];
  *(v3 - 208) = v2[109];
  *(v3 - 200) = v4;
  v5 = v2[102];
  v6 = *(v3 - 216);
  v7 = *(v1 + 56) + *(v6 + 72) * a1;
  v8 = *(v6 + 16);
  result = v2[104];
  v10 = *(v3 - 232);
  return result;
}

uint64_t sub_10005E77C()
{
  *(v1 - 256) = v0 + 45;
  STACK[0x220] = (v0 + 50);
  *(v1 - 248) = v0 + 53;
  STACK[0x228] = (v0 + 55);
  result = v0[181];
  v3 = v0[180];
  v4 = v0[176];
  v5 = v0[59];
  v6 = *(v0[177] + 32);
  return result;
}

uint64_t sub_10005E7D0()
{

  return swift_slowAlloc();
}

uint64_t sub_10005E844()
{
  v7 = v0[83];
  v8 = v0[197];
  v4 = v0[250];
  v5 = v0[79];
  v6 = v0[78];
  v9 = v0[249];
  v10 = v0[71];
  STACK[0x200] = v0[74];
  v2 = v0[59];

  return sub_100010370();
}

uint64_t sub_10005E894()
{
  v7 = v0[83];
  v8 = v0[197];
  v4 = v0[250];
  v5 = v0[79];
  v6 = v0[78];
  v9 = v0[249];
  v10 = v0[71];
  STACK[0x200] = v0[74];
  v2 = v0[59];

  return sub_100010370();
}

uint64_t sub_10005E8E4(uint64_t result)
{
  *(result + 16) = sub_10005B704;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005E900(uint64_t result)
{
  *(result + 16) = sub_10005BEDC;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005E928(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

void sub_10005E958()
{
  v3 = v1[174];
  v4 = v1[172];
  v5 = v1[171];
}

uint64_t sub_10005E998(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_10005E9EC()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

void sub_10005EA14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_10005EA38()
{
  *(*(v2 - 152) + 2040) = *(v0 + 8);
  *(*(v2 - 152) + 2048) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  v4 = *(v2 - 152);
  return result;
}

uint64_t sub_10005EAB0(uint64_t result)
{
  *(result + 16) = sub_10005B64C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10005EB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 176) = a2;

  return sub_10004F51C(a1, sub_100081D98);
}

uint64_t sub_10005EB60()
{

  return sub_10008AA28();
}

uint64_t sub_10005EB7C()
{
  v2 = *(v0 - 256);
  v3 = STACK[0x228];

  return sub_10008A3F8();
}

id sub_10005EB98(uint64_t a1)
{
  *(a1 + 16) = sub_10005B6FC;
  *(a1 + 24) = v2;
  *(v3 - 168) = a1;

  return v1;
}

id sub_10005EBC4(uint64_t a1)
{
  *(a1 + 16) = sub_10005B6FC;
  *(a1 + 24) = v1;
  *(v3 - 200) = a1;

  return v2;
}

uint64_t sub_10005EBFC()
{
  v2 = *(v0 + 680);
  v3 = *(v0 + 624);

  return sub_10008AA38();
}

uint64_t sub_10005EC40()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

void sub_10005EC7C()
{
  v4 = *(v1 + 1392);
  v5 = *(v1 + 1376);
  v6 = *(*(v2 - 184) + 1368);
}

void sub_10005ECD8()
{
  v2 = v0[250];
  *(v1 - 176) = v0[248];
  *(v1 - 168) = v2;
  *(v1 - 184) = v0[247];
  *(v1 - 160) = v0[195];
  STACK[0x208] = v0[181];
  v3 = v0[152];
}

uint64_t sub_10005ED04()
{

  return swift_arrayDestroy();
}

__n128 sub_10005ED48()
{
  result = *(v0 + 72);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  return result;
}

uint64_t sub_10005ED74()
{
  v2 = v0[249];
  v3 = v0[243];
  v4 = v0[74];
  v5 = v0[59];
}

void sub_10005EDAC()
{
  v1 = v0[250];
  v2 = v0[83];
  v3 = v0[80];
}

void sub_10005EDBC()
{
  v1 = v0[250];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
}

uint64_t sub_10005EE14()
{
  v2 = **(v1 - 200);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

void sub_10005EE28(uint64_t a1@<X8>)
{
  *(v3 - 232) = v1 + 16;
  *(v3 - 224) = v2;
  *(v3 - 216) = v1;
  *(v3 - 240) = v1 + 8;
  *(v3 - 192) = a1 + 8;
  *(v3 - 184) = a1 + 32;
  v4 = *(v3 - 152);
}

uint64_t sub_10005EE50@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

void sub_10005EE8C()
{
  *(v5 - 192) = v1;
  *(v5 - 216) = v0 + 16;
  *(v5 - 208) = v0 + 32;
  *(v5 - 232) = v2;
  *(v5 - 224) = v0 + 8;
  *(v5 - 200) = v4;
  *(v5 - 184) = v3;
}

uint64_t sub_10005EEE0()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

id sub_10005EEF0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10005EF18@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(a1 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_10005EF50()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t sub_10005EF74()
{
  result = v0[79];
  v2 = v0[77];
  v3 = *(v0[78] + 8);
  return result;
}

BOOL sub_10005EF88(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_10005EFBC()
{
  v2 = v0[100];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v1 = v0[94];
  v6 = v0[93];
}

void sub_10005F024()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];
}

uint64_t sub_10005F034()
{
  result = v0[190];
  v2 = v0[189];
  v3 = v0[188];
  return result;
}

uint64_t sub_10005F068()
{
  result = v0[80];
  v2 = v0[77];
  v3 = *(v0[78] + 8);
  return result;
}

uint64_t sub_10005F09C()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
}

uint64_t sub_10005F0C8(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void sub_10005F108()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
}

uint64_t sub_10005F128()
{
  result = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  return result;
}

void sub_10005F158()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
}

uint64_t sub_10005F17C()
{
  v2 = *(v0 + 624);
  v3 = *(v0 + 472);
  return v1;
}

uint64_t sub_10005F18C()
{
  v3 = v0[250];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[78];
  *(v1 - 160) = v0[77];
  v8 = v0[75];
  *(v1 - 176) = v6;
  *(v1 - 168) = v8;

  return sub_100089138();
}

uint64_t sub_10005F1C4@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v1 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v2)))));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_10005F1FC()
{
  v3 = v0[250];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[78];
  *(v1 - 192) = v0[77];
  v8 = v0[75];
  *(v1 - 208) = v6;
  *(v1 - 200) = v8;

  return sub_100089138();
}

void sub_10005F234(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x218]) = v1;
  STACK[0x210] = v2 + 104;
  STACK[0x208] = a1 + 8;
  *(v3 - 208) = v2;
  STACK[0x200] = v2 + 32;
}

void sub_10005F264(uint64_t a1@<X8>)
{
  *(v3 - 216) = v1;
  *(v3 - 232) = a1 + 8;
  *(v3 - 224) = v2 + 104;
  *(v3 - 176) = v2;
  *(v3 - 240) = v2 + 32;
  v4 = *(v3 - 160);
}

uint64_t sub_10005F2A0()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t sub_10005F2D0()
{
  v1 = v0[169];
  v2 = v0[167];
  v3 = v0[166];
  v4 = *(v0[168] + 32);
  return v0[170];
}

void sub_10005F2F4()
{
  *(v2 - 232) = v1[176];
  *(v2 - 224) = v0;
  v3 = v1[152];
  v4 = v1[151];
  *(v2 - 248) = v1[150];
  *(v2 - 240) = v3;
  *(v2 - 256) = v1[149];
}

uint64_t sub_10005F318()
{
  v2 = v0[85];
  *(v1 - 176) = v0[250];
  *(v1 - 168) = v2;
  v3 = v0[83];
  v4 = v0[82];
  result = v0[81];
  v6 = v0[78];
  return result;
}

uint64_t sub_10005F390()
{
  v2 = v0[250];
  *(v1 - 200) = v0[85];
  v3 = v0[83];
  v4 = v0[82];
  result = v0[81];
  v6 = v0[78];
  return result;
}

uint64_t sub_10005F3EC()
{

  return swift_task_alloc();
}

uint64_t sub_10005F404()
{
  STACK[0x200] = v0[249];
  *(v1 - 184) = v0[197];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[59];
}

BOOL sub_10005F438(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10005F454()
{
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[8];
  v10 = v0[7];
  v11 = v0[6];
}

uint64_t sub_10005F488()
{
  STACK[0x200] = v0[249];
  *(v1 - 216) = v0[197];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[59];
}

id sub_10005F4BC()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10005F4D4()
{

  return swift_task_alloc();
}

uint64_t sub_10005F4EC()
{
  v1 = *(v0 - 184);
  v2 = v1[132];
  v3 = v1[130];
  result = v1[117];
  v5 = v1[115];
  v6 = *STACK[0x208];
  return result;
}

void sub_10005F544()
{
  *(v3 - 232) = v1;
  v4 = *(v2 + 1104);
  v5 = *(v2 + 1048);
  *(v3 - 184) = v0 & 0xC000000000000001;
}

void sub_10005F570(int a1@<W8>)
{
  *(v4 - 208) = a1;
  *(v4 - 216) = v3 + 32;
  v5 = *(v1 + 1864);
  *(v4 - 192) = v2;
}

uint64_t sub_10005F590@<X0>(uint64_t a1@<X8>)
{
  result = v3 + a1 + *(v1 + 72) * v2;
  v6 = *(v1 + 32);
  v7 = *(v4 - 200);
  return result;
}

void sub_10005F5C8()
{
  *(v0 + 2096) = *(*(v0 + 632) + 80);
  *(v0 + 2024) = v1;
  *(v2 - 232) = *(v0 + 1936);
}

uint64_t sub_10005F600()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[11];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0[24] + 96);
  return v0[25];
}

uint64_t sub_10005F680()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10005F698()
{
  v3 = v0[21];
  *(v1 - 104) = v0[20];
  *(v1 - 96) = v3;
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[4];
  v9 = *(v1 - 88);
}

BOOL sub_10005F6E4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10005F6FC(uint64_t a1)
{
  *(v1 - 176) = a1;
  v3 = *(v1 - 96);

  return sub_100050318(v3);
}

id sub_10005F71C()
{
  v4 = v2[125];
  v5 = v2[124];
  v6 = v2[120];
  v7 = *(v1 + v0);

  return v7;
}

uint64_t sub_10005F73C()
{
  v2 = *(v0 + 1040);

  return sub_100089B98();
}

void sub_10005F754(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10005F76C()
{
  v2 = *(v0 + 680);
  v3 = *(v0 + 624);

  return sub_10008AA38();
}

void sub_10005F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v22 = a20[33];
  v24 = a20[25];
  v23 = a20[26];
  v25 = a20[21];
}

uint64_t sub_10005F7AC()
{
}

uint64_t sub_10005F7CC()
{
  v2 = v0[249];
  v3 = v0[243];
  v4 = v0[74];
  v5 = v0[59];
}

uint64_t sub_10005F808()
{
}

uint64_t sub_10005F828()
{

  return swift_arrayDestroy();
}

uint64_t sub_10005F848()
{

  return sub_10008A7F8();
}

id sub_10005F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * a2)));

  return v4;
}

uint64_t sub_10005F888()
{
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);

  return sub_10008A3F8();
}

uint64_t sub_10005F8A0()
{
  v1 = v0[250];
  result = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[78];
  return result;
}

uint64_t sub_10005F8BC()
{

  return swift_slowAlloc();
}

uint64_t sub_10005F8D8()
{
  v2 = v0[127];
  v3 = v0[120];
  v4 = v0[119];
  v5 = *v1;
  return v0[129];
}

void *sub_10005F938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[11] = v2;
  result[12] = a2;
  v4 = *(v3 - 176);
  result[13] = *(v3 - 184);
  result[14] = v4;
  v5 = STACK[0x200];
  result[15] = *(v3 - 168);
  result[16] = v5;
  return result;
}

void sub_10005F954()
{
  *(v1 - 240) = v0 + 16;
  *(v1 - 232) = v0 + 32;
  STACK[0x218] = v0 + 8;
}

void sub_10005F970()
{
  v3 = v1[174];
  v4 = v1[172];
  v5 = v1[171];
}

uint64_t sub_10005F98C(void *a1)
{
  v3 = STACK[0x228];
  a1[17] = *(v1 - 224);
  a1[18] = v3;
  v4 = *(v1 - 192);
  a1[19] = STACK[0x220];
  a1[20] = v4;

  return sub_100089378();
}

uint64_t sub_10005F9B8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 224);
  v6 = *(v2 - 240);
  return result;
}

uint64_t sub_10005F9D4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v4 - 224) = a2;
  *(v4 - 208) = v2;
  *(v4 - 200) = result;
  *(v4 - 240) = v2 + 32;
  *(v4 - 232) = v2 + 104;
  *(v4 - 192) = v3;
  return result;
}

void sub_10005F9FC()
{
  v3 = *(v0 + 1024);
  v4 = *(v0 + 968);
  *(v2 - 192) = v1 & 0xC000000000000001;
}

uint64_t sub_10005FA30()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_10005FA54()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

uint64_t sub_10005FA60()
{
  result = v0[97];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[90];
  v5 = v0[87];
  v6 = v0[86];
  return result;
}

void sub_10005FA7C()
{
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  *(v1 - 200) = v0[165];
}

uint64_t sub_10005FAA4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10005FB38()
{

  return sub_10008A9D8();
}

uint64_t sub_10005FB54()
{
  v2 = v0[128];
  result = v0[122];
  v4 = v0[121];
  v5 = v0[101];
  *(v1 - 136) = v0[92];
  return result;
}

void sub_10005FB70()
{
  *(v3 - 192) = v1;
  v4 = *(v2 + 1048);
  *(v3 - 168) = v0 & 0xC000000000000001;
}

uint64_t sub_10005FB8C()
{
  result = sub_100011E9C();
  v2 = *(*(v0 + 400) + 16);
  return result;
}

uint64_t sub_10005FBC4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(v3 + 72) * a1;
  v5 = *(v3 + 16);
  return v2;
}

BOOL sub_10005FBE0()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 216);
  v4 = *(v0 - 192);

  return os_log_type_enabled(v4, v3);
}

uint64_t sub_10005FC14()
{
  v1 = v0[85];
  result = v0[82];
  v3 = v0[81];
  v4 = v0[79];
  v5 = v0[78];
  return result;
}

void sub_10005FC3C()
{
  v1._countAndFlagsBits = 35;
  v1._object = 0xE100000000000000;

  sub_10008A2C8(v1);
}

void sub_10005FC58()
{
  v2 = *(v1 - 184);
  v3 = *(v2 + 1104);
  v4 = *(v2 + 1048);
  *(v1 - 216) = v0 & 0xC000000000000001;
}

uint64_t sub_10005FC74()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

uint64_t sub_10005FC80(uint64_t a1)
{
  v3 = *(v1 - 208);
  *(v1 - 224) = a1;

  return sub_10008A808();
}

void sub_10005FCD0()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[252];
  v4 = v0[78];
  v5 = v0[254] + 1;
}

uint64_t sub_10005FCF8()
{
  v1 = v0[85];
  result = v0[82];
  v3 = v0[81];
  v4 = v0[79];
  v5 = v0[78];
  return result;
}

uint64_t sub_10005FD2C()
{

  return swift_dynamicCastObjCProtocolConditional();
}

uint64_t sub_10005FD48()
{
  v1 = v0[250];
  result = v0[84];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[78];
  return result;
}

uint64_t sub_10005FD64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1040);

  return sub_100089B98();
}

void sub_10005FD7C()
{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[78];
}

uint64_t sub_10005FD8C()
{
  v2 = *(v1 + 624);
  v3 = *(v1 + 472);
  return v0;
}

void sub_10005FDBC()
{
  v1 = v0[123];
  v2 = v0[120];
  v3 = v0[118];
}

void sub_10005FDDC()
{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[78];
}

void sub_10005FDEC()
{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[78];
}

id sub_10005FE1C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void sub_10005FE64()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
}

uint64_t sub_10005FE74()
{
  result = v0[97];
  v2 = v0[94];
  v3 = v0[86];
  return result;
}

uint64_t sub_10005FE84()
{
  result = v0[97];
  v2 = v0[96];
  v3 = v0[86];
  return result;
}

void sub_10005FEC4()
{
  v1 = v0[149];
  v2 = v0[146];
  v3 = v0[145];
}

uint64_t sub_10005FEE4()
{

  return swift_slowAlloc();
}

void sub_10005FEFC()
{
  v1 = v0[179];
  v2 = v0[177];
  v3 = v0[176];
}

uint64_t sub_10005FF4C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_10005FF5C()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t sub_10005FFCC()
{
  v2 = v0;
  v3 = *(v0 + 1032);
  v4 = *(v2 + 1016);

  return sub_100088B88();
}

uint64_t sub_10005FFF4()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 128) + 416;
  v5 = *(v0 - 128) + 296;

  return swift_getErrorValue();
}

void sub_10006001C(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4)
{
  v9 = *(v7 - 136);

  _os_signpost_emit_with_name_impl(a1, v9, a3, a4, v6, v5, v4, 2u);
}

uint64_t sub_100060044()
{
  *(v2 - 136) = v0;
  v4 = *(v1 + 1152);
  v5 = *(v1 + 640);
  v6 = *(v1 + 624);
  v7 = *(v1 + 616);
}

uint64_t sub_10006006C(void *a1)
{
  v4 = *(v2 - 192);
  a1[17] = v1;
  a1[18] = v4;
  v5 = *(v2 - 160);
  a1[19] = *(v2 - 208);
  a1[20] = v5;

  return sub_100089378();
}

uint64_t sub_100060094()
{
  v6 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  *(v1 - 104) = v0[8];
  *(v1 - 96) = v4;
  *(v1 - 88) = v3;
}

uint64_t sub_1000600BC()
{
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  return sub_10005BFBC();
}

uint64_t sub_1000600E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v22 = a20[28];
  v21 = a20[29];
  v24 = a20[26];
  v23 = a20[27];
  v26 = a20[24];
  v25 = a20[25];
  v27 = a20[23];
}

uint64_t sub_10006010C()
{
  v2 = *(*(v0 - 128) + 296);
  v3 = *(*(v0 - 128) + 304);
  v4 = *(*(v0 - 128) + 312);

  return sub_10008AAB8();
}

uint64_t sub_100060134()
{

  return sub_100088DB8();
}

uint64_t sub_10006015C()
{
  v2 = *(v0 - 184);
  v3 = *(v2 + 1032);
  v4 = *(v2 + 1016);

  return sub_100088B88();
}

uint64_t sub_100060184()
{
  *(v1 + 14) = v0;
}

void sub_10006019C(uint64_t a1@<X8>)
{
  *(v2 - 184) = v1;
  v3 = *(v1 + 56);
  *(v2 - 208) = a1 + 16;
  *(v2 - 200) = v3;
}

void sub_1000601C0()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

double sub_1000601D8()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t sub_100060220@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v4 - 192) = a2;
  *(v4 - 208) = v2 + 32;
  *(v4 - 200) = v2 + 104;
  *(v4 - 176) = result;
  *(v4 - 168) = v3;
  return result;
}

void sub_100060238()
{
  **(v1 - 248) = v0;
  v2 = *(v1 - 184);
  v3 = *(v1 - 224);
}

void sub_1000602A4()
{
  v3 = v0[100];
  v4 = v0[99];
  v1 = v0[98];
  v2 = v0[95];
}

uint64_t sub_1000602C8()
{
  v1 = v0[95];
  result = v0[89];
  v3 = v0[87];
  v4 = v0[86];
  return result;
}

uint64_t sub_100060328()
{
  v1 = v0[20];
  v2 = v0[17];
  result = v0[13];
  v4 = v0[10];
  v5 = v0[4];
  return result;
}

uint64_t sub_10006034C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[4];
  return v0[8];
}

uint64_t sub_100060364@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + *(v3 + 72) * a1;
  v5 = *(v3 + 16);
  return v2;
}

void sub_10006037C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
}

void sub_1000603AC()
{
  *(v1 - 216) = v0[247];
  *(v1 - 192) = v0[195];
  v2 = v0[181];
}

void sub_1000603C4()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
}

void sub_1000603DC()
{
  v2 = v0[243];
  *(v1 - 256) = v0[237];
  *(v1 - 200) = v0[210];
}

uint64_t sub_1000603F4()
{
  v2 = v0[18];
  result = v0[19];
  v3 = v0[17];
  return result;
}

uint64_t sub_100060460(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v5;
  *(result + 32) = v3;
  *(result + 40) = v4;
  *(result + 48) = v2 & 1;
  return result;
}

uint64_t sub_1000604A8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  v3 = *(a1 + 8);
  return v1;
}

uint64_t sub_1000604CC()
{
}

uint64_t sub_1000604E4()
{
  v3 = *(v0 - 256);
  v2 = *(v0 - 248);

  return sub_10008A3F8();
}

id sub_1000604FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

uint64_t sub_100060514(uint64_t a1)
{
  *(*(v1 - 184) + 1720) = a1;
}

uint64_t sub_100060538@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_10006054C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1112);
  v3 = *(a1 + 1040);

  return sub_100088C08();
}

uint64_t sub_100060568()
{
  v2 = v0[134];
  v3 = v0[108];
  v4 = v0[100];
  v5 = v0[91];

  return sub_100088D58();
}

uint64_t sub_10006058C()
{

  return sub_10008A808();
}

void sub_1000605B0()
{
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;

  sub_10008A2C8(v4);
}

uint64_t sub_1000605D4()
{
  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[7];
  v6 = v0[6];
}

uint64_t sub_1000605F8()
{
  v2 = v0;
  v3 = *(v0 + 680);
  v4 = *(v2 + 624);

  return sub_10008AA38();
}

uint64_t sub_10006061C()
{
  v2 = v0[30];
  v3 = v0[22];
  v4 = v0[15];
  v5 = v0[6];

  return swift_task_alloc();
}

uint64_t sub_100060640()
{
  v2 = *(*(v0 - 184) + 888);
  v3 = *(*(v0 - 184) + 872);
}

void sub_100060664()
{
  v3 = *(v1 + 1080);
  v4 = *(v1 + 1040);
}

void sub_100060680()
{
  v3 = *(v1 + 1064);
  v4 = *(v1 + 1040);
}

void sub_10006069C()
{
  v3 = *(v1 + 1088);
  v4 = *(v1 + 1040);
}

void sub_1000606B8()
{
  v3 = *(v1 + 1072);
  v4 = *(v1 + 1040);
}

void sub_1000606D4()
{
  v3 = *(v1 + 1096);
  v4 = *(v1 + 1040);
}

uint64_t sub_1000606F0()
{
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1192);
  v5 = *(*(v1 - 184) + 1160);
}

void sub_100060714()
{
  v3 = v0;
  v4 = v1[100];
  v5 = v1[96];
  v6 = v1[91];
  v7 = v1[87];
}

uint64_t sub_100060738()
{
  v3 = *(v1 - 240);
  v4 = *(v1 - 232);
  *(v1 - 192) = v0;

  return sub_1000893A8();
}

uint64_t sub_10006075C()
{

  return sub_100088F28();
}

uint64_t sub_100060774()
{

  return sub_10008AA28();
}

uint64_t sub_100060790()
{

  return sub_10008AA28();
}

uint64_t sub_1000607AC()
{
  *(v1 + 1904) = v0;
}

id sub_1000607C8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 + 48) + ((v1 << 9) | (8 * a1)));

  return v4;
}

uint64_t sub_1000607EC()
{
  v2 = v0[249];
  v3 = v0[243];
  v4 = v0;
  v5 = v0[74];
  v6 = v4[59];
}

uint64_t sub_100060810()
{

  return sub_1000897F8();
}

uint64_t sub_10006082C()
{
  v2 = *(v0 + 888);
  v3 = *(v0 + 872);
}

uint64_t sub_100060848@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1040);

  return sub_100089B98();
}

uint64_t sub_100060860()
{
  v3 = *v0;

  return sub_100049E84(v3, v1);
}

uint64_t sub_100060878()
{

  return sub_100049F9C(v0);
}

BOOL sub_100060890()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000608A8()
{
  v2 = *(*(v0 - 184) + 424);
}

uint64_t sub_1000608C0()
{

  return sub_100088F28();
}

uint64_t sub_1000608D8()
{
}

__n128 sub_100060948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9.n128_u32[0];
  return result;
}

void sub_100060954()
{
  *(v1 + 2024) = v0;
  v3 = *(v1 + 1936);
  *(v2 - 184) = v1 + 2024;
  *(v2 - 176) = v3;
}

void sub_100060994()
{
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1016);
  v4 = *(v1 - 192);
}

uint64_t sub_1000609A8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

double sub_100060A5C()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double sub_100060A68()
{
  result = 0.0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  return result;
}

void sub_100060A9C()
{
  *(v1 - 160) = v0 - 8;
  *(v1 - 176) = v0;
  *(v1 - 168) = v0 + 80;
}

uint64_t sub_100060B4C()
{
  *(v0 + 1864) = v1;
  result = *(v0 + 472);
  v4 = *(v2 - 256);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void sub_100060B60()
{
  v1 = *(v0 - 152);
  **(v0 - 248) = *(v0 - 160);
  v2 = *(v0 - 232);
}

uint64_t sub_100060B74()
{
  v1 = v0[6];
  result = v0[2];
  v3 = *(v0[5] + 16);
  return result;
}

uint64_t sub_100060B9C()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 192);
  return result;
}

uint64_t sub_100060BB0()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_100060BC4()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_100060BDC(uint64_t result)
{
  v2 = *(result + 48);
  v3 = *(v1 + 32);
  return result;
}

void sub_100060C40(__n128 a1, __n128 a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = v2[20].n128_u64[1];
}

uint64_t sub_100060C4C(uint64_t result)
{
  *(v1 + 2101) = result;
  v2 = *(v1 + 424);
  return result;
}

void *sub_100060C58()
{
  v4 = *(v3 + 2076);
  *v0 = v1;
  v5 = *(v2 + 104);
  return v0;
}

uint64_t sub_100060C78()
{
  v2 = *(v1 + 104);
  result = *(v0 + 1216);
  v4 = *(v0 + 1200);
  return result;
}

uint64_t sub_100060CA0()
{
  v2 = *(v1 + 104);
  result = *(v0 + 1152);
  v4 = *(v0 + 1136);
  return result;
}

void sub_100060D14(uint64_t a1@<X8>)
{
  *(v2 - 200) = a1;
  v3 = *(v2 - 160);
  *(v2 - 168) = v1;
}

void sub_100060D34(uint64_t a1@<X8>)
{
  *(v2 - 256) = v1;
  *(v2 - 248) = v1 + 32;
  *(v2 - 216) = a1;
}

void sub_100060D88()
{
  v1[208] = v2;
  v1[210] = v0;
  v1[211] = *(v3 - 192);
}

void *sub_100060DB4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[11] = v2;
  result[12] = a2;
  v4 = *(v3 - 128);
  result[13] = *(v3 - 136);
  result[14] = v4;
  v5 = *(v3 - 120);
  return result;
}

void sub_100060DE0()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[128];
  v4 = v0[108];
}

uint64_t sub_100060E20()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 200);
  return *(v1 - 192);
}

__n128 sub_100060E44()
{
  v1 = *(v0 - 184);
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  *(v1 + 304) = result;
  *(v1 + 320) = v3;
  v4 = *(v1 + 328);
  return result;
}

unint64_t sub_100060EB0(unint64_t result)
{
  STACK[0x208] = result;
  *(result + 16) = v1;
  return result;
}

void sub_100060EBC()
{
  *(v2 - 192) = *(v1 + 616);
  v3 = *(v1 + 600);
  *(v2 - 208) = v0;
  *(v2 - 200) = v3;
}

uint64_t sub_100060F00(uint64_t result)
{
  *(v1 + 2101) = result;
  v2 = *(v1 + 424);
  return result;
}

uint64_t sub_100060F0C(uint64_t result, uint64_t a2)
{
  *(v2 + 1992) = result;
  *(v2 + 2000) = a2;
  return result;
}

uint64_t sub_100060F18(uint64_t result, uint64_t a2)
{
  *(v2 + 1976) = result;
  *(v2 + 1984) = a2;
  return result;
}

uint64_t sub_100060F24(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 808);
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t sub_100060F48()
{
  result = *(v0 + 864);
  v3 = *(v0 + 840);
  v4 = **(v1 - 160);
  return result;
}

uint64_t sub_100060F5C()
{
  result = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  return result;
}

uint64_t sub_100060FC0()
{
  result = *(v0 + 936);
  v2 = *(v0 + 920);
  return result;
}

uint64_t sub_10006102C()
{
  STACK[0x208] = v0;
  v3 = *(v1 - 184);
}

uint64_t sub_10006104C()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[78];

  return sub_100089148();
}

uint64_t sub_10006106C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 448) = v2;
  *(v1 + 456) = a1;

  return swift_dynamicCastObjCProtocolConditional();
}

void *sub_10006108C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 8 * a1 + 32), (v2 + 32), 8 * v3);
}

void sub_1000610AC()
{

  sub_100080604();
}

id sub_1000610CC()
{
  v4 = v2[125];
  v5 = v2[124];
  v6 = v2[120];
  v7 = *(v0 + v1);

  return v7;
}

uint64_t sub_1000610EC()
{

  return sub_100049478(v2 + 272, v0, v1);
}

void sub_100061124()
{
  v3 = *(v1 - 184);
  v4 = *(v3 + 1104);
  v5 = *(v3 + 1040);
}

uint64_t sub_100061144()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100061164(uint64_t a1)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 136);

  return sub_100050318(v3);
}

void sub_100061184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1000491F0(a1, v20, a3, v21, v22, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

id sub_1000611BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * v1)));

  return v4;
}

uint64_t sub_1000611DC()
{
  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[4];
}

uint64_t sub_1000611FC()
{

  return swift_dynamicCast();
}

uint64_t sub_10006121C()
{

  return sub_100049478(v1 + 272, v2, v0);
}

uint64_t sub_10006123C(void *a1)
{
  a1[17] = v1;
  a1[18] = v2;
  v6 = *(v4 - 112);
  a1[19] = v3;
  a1[20] = v6;

  return sub_100089378();
}

void sub_10006125C()
{
  v2 = v0[195];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[142];
}

uint64_t sub_10006127C()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[59];
}

BOOL sub_10006129C()
{

  return sub_10008A9A8(v1, v0);
}

uint64_t sub_1000612BC()
{

  return sub_10008A7F8();
}

uint64_t sub_1000612DC()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[78];

  return sub_100089148();
}

id sub_1000612FC()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

BOOL sub_100061314()
{

  return os_log_type_enabled(v0, v1);
}

void sub_10006132C(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0xCu);
}

uint64_t sub_100061344()
{
  v2 = *(v0 + 472);
}

uint64_t sub_10006135C()
{

  return sub_100088F28();
}

uint64_t sub_100061374()
{
  v1 = STACK[0x200];
}

uint64_t sub_10006138C()
{

  return sub_100088F28();
}

uint64_t sub_1000613A4(uint64_t a1)
{
  *(v1 - 96) = a1;

  return sub_100088B98();
}

uint64_t sub_1000613BC()
{
  v2 = *(v0 + 1752);

  return sub_10008A3A8();
}

uint64_t sub_1000613D4()
{
  *(v1 + 1048) = v0;

  return sub_10008A3B8();
}

uint64_t sub_1000613EC()
{
  v2 = v0[97];
  v3 = v0[47];
  v4 = v0[48];

  return sub_1000891A8();
}

uint64_t sub_100061404()
{
  v2 = *(*(v0 - 184) + 368);
}

uint64_t sub_10006141C()
{
  v2 = *(*(v0 - 184) + 440);
}

uint64_t sub_100061434()
{
  v2 = *(v0 + 664);
  v3 = *(v0 + 536);

  return sub_10008391C(v3);
}

id sub_10006144C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100061464()
{
  v2 = *(v0 + 1000);
  v3 = *(v0 + 976);
}

id sub_10006147C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_100061494()
{
  v2 = *(v0 + 2008);
  v3 = *(v0 + 1568);
}

uint64_t sub_1000614AC()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_1000614C4()
{

  return sub_10008A278();
}

uint64_t sub_1000614DC()
{
  *(v1 - 224) = v0;
}

uint64_t sub_1000614F4(uint64_t a1)
{
  *(v1 + 2008) = a1;

  return sub_100083934(a1);
}

uint64_t sub_10006150C()
{
  v2 = *(v0 + 808);

  return sub_1000892E8();
}

uint64_t sub_100061524(uint64_t a1, unint64_t *a2)
{

  return sub_100011D84(0, a2, v2);
}

uint64_t sub_10006153C()
{
}

void sub_100061554(Swift::String a1)
{

  sub_10008A2C8(a1);
}

void sub_10006156C(Swift::String a1)
{

  sub_10008A2C8(a1);
}

uint64_t sub_100061584()
{

  return sub_10008AB38();
}

uint64_t sub_10006159C()
{
  v2 = *(v0 + 2008);
  v3 = *(v0 + 1568);
}

uint64_t sub_1000615DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v275 = a3;
  v251 = a4;
  v7 = 0xD00000000000001ALL;
  v266 = sub_100089208();
  v8 = sub_100012368(v266);
  v269 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000632B8();
  v255 = v12 - v13;
  sub_10005EC34();
  __chkstk_darwin(v14);
  sub_100063318();
  v258 = v15;
  sub_10005EC34();
  __chkstk_darwin(v16);
  sub_100063318();
  v265 = v17;
  sub_10005EC34();
  __chkstk_darwin(v18);
  sub_100063318();
  v273 = v19;
  sub_10005EC34();
  __chkstk_darwin(v20);
  sub_100063318();
  v272 = v21;
  sub_10005EC34();
  __chkstk_darwin(v22);
  v260 = &v248 - v23;
  v24 = sub_100008DC0(&qword_1000A6890, &qword_10008DD20);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  sub_1000632B8();
  v28 = (v26 - v27);
  __chkstk_darwin(v29);
  v267 = (&v248 - v30);
  v31 = sub_100089248();
  v32 = sub_100012368(v31);
  v250 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  v249 = &v248 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100008DC0(&qword_1000A6898, &qword_10008DE60);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  sub_1000632B8();
  v277 = v39 - v40;
  sub_10005EC34();
  __chkstk_darwin(v41);
  sub_100063318();
  v276 = v42;
  sub_10005EC34();
  __chkstk_darwin(v43);
  v252 = (&v248 - v44);
  v253 = v31;
  sub_100009158(&v248 - v44, 1, 1, v31);
  sub_10005E980();
  isUniquelyReferenced_nonNull_native = 0xD00000000000001BLL;
  v47 = a1 == 0xD00000000000001BLL && v45 == a2;
  v48 = &static NSBundle._current;
  v49 = objc_msgSend_setQueryItems_;
  v270 = v28;
  if (!v47)
  {
    v4 = v28;
    if ((sub_100063120() & 1) == 0)
    {
      sub_10005E980();
      v75 = 0xD000000000000022;
      v148 = a1 == 0xD000000000000022 && v147 == a2;
      if (!v148 && (sub_100063120() & 1) == 0)
      {
        sub_10005E980();
        v159 = a1 == 0xD000000000000035 && v158 == a2;
        v49 = &unk_10008D000;
        if (!v159 && (sub_100063120() & 1) == 0)
        {
          goto LABEL_83;
        }

        sub_10008A298();
        sub_10006305C();
        if (!v47)
        {
          sub_10000AA34();
        }

        sub_100063210();
        sub_1000631AC();
        sub_100063300();
        v160 = sub_10006309C();

        v161 = sub_10008A268();
        sub_1000633D8(v161, v162);
        v163 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
        v164 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
        sub_1000630CC(v164);
        v166 = *(v165 + 72);
        v167 = sub_1000630F8();
        v268 = v167;
        *(v167 + 16) = xmmword_10008D610;
        v168 = (v167 - 0x2FFFFFFFFFFFFFE5);
        v169 = v28[14];
        *v168 = 0x74706D6F7270;
        v168[1] = 0xE600000000000000;
        sub_10008A298();
        sub_1000633A8();
        sub_100063260();
        v170 = sub_1000633C0();
        v171 = sub_10006313C(v170, *(a1 + 3720));

        sub_10008A268();
        sub_100063390();
        sub_10005E088();
        sub_1000891E8();
        v28 = &enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:);
        v172 = sub_10006327C();
        enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:)(v172);
        v173 = (v168 + v166);
        v174 = v4[14];
        *v173 = 0x656C797473;
        v173[1] = 0xE500000000000000;
        sub_10008A298();
        sub_100063204();
        sub_10008A238();
        sub_1000631D8();
        v175 = sub_100063324();
        v176 = sub_10006315C(v175, "localizedStringForKey:value:table:");
        goto LABEL_80;
      }

      sub_10008A298();
      sub_10006305C();
      if (!v47)
      {
        sub_10000AA34();
      }

      sub_100063210();
      sub_1000631AC();
      sub_100063300();
      v28 = &ContainerIndexer;
      v149 = sub_10006333C();
      v151 = sub_100063190(v149, v150);

      sub_10008A268();
      v54 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
      v152 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
      sub_100063348(v152);
      v154 = *(v153 + 72);
      v155 = sub_1000632D8();
      *(v155 + 16) = xmmword_10008C980;
      v59 = (v155 - 0x2FFFFFFFFFFFFFE6);
      v60 = enum case for LNConfigurableQueryRequest.Query.allEntities(_:);
      *v59 = 0x747069726353;
      *(v59 + 1) = 0xE600000000000000;
      sub_10008A298();
      sub_100063204();
      sub_10008A238();
      sub_1000631D8();
      sub_100063324();
      v156 = sub_10006333C();
      v63 = sub_100063248(v156, v157, v4);
      goto LABEL_9;
    }
  }

  sub_10008A298();
  sub_10006305C();
  if (!v47)
  {
    goto LABEL_113;
  }

  while (2)
  {
    v50 = *v48;
    sub_100063210();
    sub_1000631AC();
    sub_100063300();
    v28 = &ContainerIndexer;
    v51 = sub_10006333C();
    v53 = sub_100063190(v51, v52);

    sub_10008A268();
    v54 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
    v55 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
    sub_100063348(v55);
    v57 = *(v56 + 72);
    v58 = sub_1000632D8();
    *(v58 + 16) = *(v49 + 152);
    v59 = (v58 + v7);
    v60 = *(&enum case for LNConfigurableQueryRequest.Query.allEntities(_:) + v48 - 0x1000A8918);
    *v59 = 0x797469746E65;
    *(v59 + 1) = 0xE600000000000000;
    sub_10008A298();
    sub_100063204();
    sub_10008A238();
    sub_1000631D8();
    sub_100063324();
    v61 = sub_10006333C();
    v63 = sub_100063248(v61, v62, v4);
LABEL_9:
    v64 = v63;

    sub_10008A268();
    sub_1000633F0();
    sub_100063384();
    sub_1000891E8();
    (*(v269 + 104))(&v59[v60], enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:), v266);
    sub_10008A1E8();
    sub_1000631C8();
LABEL_10:
    while (1)
    {
      sub_100089218();
      v65 = v253;
      v4 = v270;
LABEL_11:
      isUniquelyReferenced_nonNull_native = v252;
      sub_100062F8C(v252);
      sub_100009158(v28, 0, 1, v65);
      sub_100062FF4(v28, isUniquelyReferenced_nonNull_native, &qword_1000A6898, &qword_10008DE60);
LABEL_12:
      a2 = v277;
      sub_100062F1C(isUniquelyReferenced_nonNull_native, v277);
      if (sub_100008E78(a2, 1, v65) == 1)
      {
        sub_100062F8C(isUniquelyReferenced_nonNull_native);
        sub_100062F8C(a2);
        v66 = v251;
        v67 = 1;
        v68 = v65;
        return sub_100009158(v66, v67, 1, v68);
      }

      (*(v250 + 32))(v249, a2, v65);
      v271 = sub_100089238();
      v28 = v275;
      v69 = sub_100089238();
      v7 = 0;
      v71 = v69 + 64;
      v70 = *(v69 + 64);
      v259 = v69;
      v72 = 1 << *(v69 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      a1 = v73 & v70;
      v74 = (v72 + 63) >> 6;
      v275 = (v269 + 32);
      v264 = (v269 + 88);
      v263 = enum case for ToolInvocationSummary.ParameterSummary.value(_:);
      v257 = enum case for ToolInvocationSummary.ParameterSummary.values(_:);
      v254 = enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:);
      v274 = (v269 + 8);
      v256 = v269 + 40;
      v48 = v266;
      v75 = v272;
      v261 = v74;
      v262 = v69 + 64;
      v276 = (v269 + 16);
      v49 = v4;
      if (a1)
      {
        goto LABEL_17;
      }

      do
      {
LABEL_18:
        v76 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_83:
          sub_10005E980();
          v179 = a1 == v7 + 7 && v178 == a2;
          if (v179 || (sub_100063120() & 1) != 0)
          {
            sub_10008A298();
            sub_10006305C();
            if (!v47)
            {
              sub_10000AA34();
            }

            v180 = *v48;
            sub_100063210();
            sub_1000631AC();
            sub_100063300();
            v181 = sub_10006309C();

            v182 = sub_10008A268();
            sub_1000633D8(v182, v183);
            v184 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
            v185 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
            sub_1000630CC(v185);
            v187 = *(v186 + 72);
            v188 = sub_1000630F8();
            v268 = v188;
            *(v188 + 16) = *(v49 + 97);
            v189 = (isUniquelyReferenced_nonNull_native + v188);
            v190 = v4[14];
            *v189 = 0x697461636F4C4657;
            v189[1] = 0xEA00000000006E6FLL;
            sub_10008A298();
            sub_1000633A8();
            sub_100063260();
            v191 = sub_1000633C0();
            v192 = sub_10006313C(v191, *(a1 + 3720));

            sub_10008A268();
            sub_100063390();
            sub_10005E088();
            sub_1000891E8();
            v193 = enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:);
            v28 = *(v269 + 104);
            v194 = v266;
            (v28)(v189 + v190, enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:), v266);
            v195 = v189 + v187;
            v196 = v4[14];
            strcpy(v195, "WFDestination");
            *(v195 + 7) = -4864;
            sub_10008A298();
            sub_100063204();
            sub_10008A238();
            sub_1000631D8();
            v197 = sub_100063324();
            v198 = sub_10006315C(v197, "localizedStringForKey:value:table:");

            sub_10008A268();
            sub_1000633F0();
            sub_100063384();
            sub_1000891E8();
            (v28)(&v195[v196], v193, v194);
          }

          else
          {
            sub_10005E980();
            v200 = a1 == v7 && v199 == a2;
            if (!v200 && (sub_100063120() & 1) == 0)
            {
              goto LABEL_103;
            }

            sub_10008A298();
            sub_10006305C();
            if (!v47)
            {
              sub_10000AA34();
            }

            v201 = *v48;
            sub_100063210();
            sub_1000631AC();
            sub_100063300();
            v202 = sub_10006309C();

            v203 = sub_10008A268();
            sub_1000633D8(v203, v204);
            v205 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
            v206 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
            sub_1000630CC(v206);
            v208 = *(v207 + 72);
            v209 = sub_1000630F8();
            v268 = v209;
            *(v209 + 16) = *(v49 + 97);
            v210 = (isUniquelyReferenced_nonNull_native + v209);
            v211 = v4[14];
            *v210 = 0x646F4D4D4C4C4657;
            v210[1] = 0xEA00000000006C65;
            sub_10008A298();
            sub_1000633A8();
            sub_100063260();
            v212 = sub_1000633C0();
            v171 = sub_10006313C(v212, *(a1 + 3720));

            sub_10008A268();
            sub_100063390();
            sub_10005E088();
            sub_1000891E8();
            v28 = &enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:);
            v213 = sub_10006327C();
            enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:)(v213);
            v173 = (v210 + v208);
            v174 = v4[14];
            *v173 = 0x6F72504D4C4C4657;
            v173[1] = 0xEB0000000074706DLL;
            sub_10008A298();
            sub_100063204();
            sub_10008A238();
            sub_1000631D8();
            v214 = sub_100063324();
            v176 = sub_10006315C(v214, "localizedStringForKey:value:table:");
LABEL_80:
            v177 = v176;

            sub_10008A268();
            sub_1000633F0();
            sub_100063384();
            sub_1000891E8();
            enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:)(v173 + v174);
          }

LABEL_81:
          sub_10008A1E8();
          sub_1000631C8();
          goto LABEL_10;
        }

        if (v76 >= v74)
        {
          v124 = sub_100008DC0(&qword_1000A68A0, &qword_10008DD28);
          sub_100009158(v49, 1, 1, v124);
          a1 = 0;
          goto LABEL_23;
        }

        a1 = *(v71 + 8 * v76);
        ++v7;
      }

      while (!a1);
      v7 = v76;
LABEL_22:
      v77 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v78 = v77 | (v76 << 6);
      v79 = v260;
      v80 = (*(v259 + 48) + 16 * v78);
      v82 = *v80;
      v81 = v80[1];
      v83 = v269;
      (*(v269 + 16))(v260, *(v259 + 56) + *(v269 + 72) * v78, v48);
      v84 = sub_100008DC0(&qword_1000A68A0, &qword_10008DD28);
      v85 = *(v84 + 48);
      v86 = v270;
      *v270 = v82;
      *(v86 + 1) = v81;
      v49 = v86;
      (*(v83 + 32))(v86 + v85, v79, v48);
      sub_100009158(v49, 0, 1, v84);

      v75 = v272;
LABEL_23:
      v87 = v49;
      v88 = v267;
      sub_100062FF4(v87, v267, &qword_1000A6890, &qword_10008DD20);
      v89 = sub_100008DC0(&qword_1000A68A0, &qword_10008DD28);
      if (sub_100008E78(v88, 1, v89) == 1)
      {

        v142 = v249;
        sub_100089228();
        v143 = v251;
        sub_100089218();
        v144 = v142;
        v145 = v253;
        (*(v250 + 8))(v144, v253);
        sub_100062F8C(v252);
        v66 = v143;
        v67 = 0;
        v68 = v145;
        return sub_100009158(v66, v67, 1, v68);
      }

      v90 = v88[1];
      v277 = *v88;
      v91 = v88 + *(v89 + 48);
      v268 = *v275;
      v268(v75, v91, v48);
      isUniquelyReferenced_nonNull_native = *v276;
      a2 = v273;
      (*v276)(v273, v75, v48);
      v92 = *v264;
      v93 = sub_10005E088();
      v95 = v94(v93);
      v49 = (v274 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v96 = v271;
      if (v95 != v263)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native(v265, v75, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v96;
      v75 = v277;
      v4 = v90;
      v97 = v90;
      v28 = v96;
      v98 = sub_100081308(v277, v97);
      sub_10006317C(v98, v99);
      if (v102)
      {
        __break(1u);
        goto LABEL_100;
      }

      a2 = v100;
      v48 = v101;
      sub_100008DC0(&qword_1000A68A8, &qword_10008DD30);
      if (!sub_100063228())
      {
        if ((v48 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_58;
      }

      v28 = v278;
      sub_100081308(v75, v4);
      sub_1000632C8();
      if (!v47)
      {
        goto LABEL_130;
      }

      a2 = v103;
      if (v48)
      {
        goto LABEL_58;
      }

LABEL_30:
      sub_100063070();
      *v104 = v75;
      v104[1] = v4;
      sub_1000631F4(*(isUniquelyReferenced_nonNull_native + 7));
      v48 = v266;
      sub_100063298();
      v105();
      v106 = sub_1000630E0();
      (a2)(v106);
      v107 = *(isUniquelyReferenced_nonNull_native + 2);
      v102 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (!v102)
      {
LABEL_54:
        v271 = isUniquelyReferenced_nonNull_native;
        *(isUniquelyReferenced_nonNull_native + 2) = v108;
        goto LABEL_59;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      sub_10005E980();
      v216 = a1 == v75 && v215 == a2;
      if (v216 || (sub_100063120() & 1) != 0)
      {
        sub_10008A298();
        sub_10006305C();
        if (!v47)
        {
          sub_10000AA34();
        }

        v217 = *v48;
        sub_100063210();
        sub_1000631AC();
        sub_100063300();
        v264 = v217;
        v218 = sub_100063190(v217, "localizedStringForKey:value:table:");

        v219 = sub_10008A268();
        sub_1000633D8(v219, v220);
        v221 = sub_100008DC0(&qword_1000A68B0, &qword_10008DD38);
        v222 = sub_100008DC0(&qword_1000A68B8, &unk_10008DD40);
        sub_1000630CC(v222);
        v224 = *(v223 + 72);
        v226 = (*(v225 + 80) + 32) & ~*(v225 + 80);
        v227 = swift_allocObject();
        v228 = *(v49 + 97);
        v268 = v227;
        *(v227 + 16) = v228;
        v229 = (v227 + v226);
        v230 = v4[14];
        *v229 = v7 - 7;
        v229[1] = 0x800000010008EC00;
        sub_10008A298();
        sub_1000633A8();
        sub_100063260();
        v231 = sub_1000633C0();
        v232 = sub_10006313C(v231, "localizedStringForKey:value:table:");

        sub_10008A268();
        sub_100063390();
        sub_10005E088();
        sub_1000891E8();
        v263 = enum case for ToolInvocationSummary.ParameterSummary.placeholder(_:);
        v28 = *(v269 + 104);
        v233 = v266;
        (v28)(v229 + v230);
        v234 = (v229 + v224);
        v235 = v4[14];
        *v234 = v7 - 6;
        v234[1] = 0x800000010008EC20;
        sub_10008A298();
        sub_100063204();
        sub_10008A238();
        sub_1000631D8();
        v236 = sub_100063324();
        v237 = sub_10006315C(v236, "localizedStringForKey:value:table:");

        sub_10008A268();
        sub_1000633F0();
        sub_100063384();
        sub_1000891E8();
        (v28)(v234 + v235, v263, v233);
        goto LABEL_81;
      }

      sub_10005E980();
      v239 = a1 == isUniquelyReferenced_nonNull_native && v238 == a2;
      if (v239 || (sub_100063120() & 1) != 0)
      {
        sub_10008A298();
        sub_10006305C();
        if (!v47)
        {
          sub_10000AA34();
        }

        v240 = *v48;
        v241 = sub_100063210();
        sub_100063210();
        sub_100063300();
        v242 = sub_100063248(v240, "localizedStringForKey:value:table:", v241);

        sub_10008A268();
        sub_100063204();

        sub_10008A1E8();
        sub_1000631C8();
        sub_100089218();
        v65 = v253;
        goto LABEL_11;
      }

      sub_10005E980();
      v244 = a1 == v7 && v243 == a2;
      v65 = v253;
      isUniquelyReferenced_nonNull_native = v252;
      if (!v244 && (sub_100063120() & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_10008A298();
      sub_10006305C();
      if (!v47)
      {
        sub_10000AA34();
      }

      v245 = *v48;
      v246 = sub_100063210();
      sub_100063210();
      sub_100063300();
      v247 = sub_100063248(v245, "localizedStringForKey:value:table:", v246);

      sub_10008A268();
      sub_100063204();

      sub_10008A1E8();
      sub_1000631C8();
    }

    a2 = v48;
    v48 = v277;
    if (v95 == v257)
    {
      v49 = *v274;
      (*v274)(v273, a2);
      isUniquelyReferenced_nonNull_native(v258, v75, a2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v96;
      v75 = v48;
      v4 = v90;
      v109 = v90;
      v28 = v96;
      v110 = sub_100081308(v48, v109);
      sub_10006317C(v110, v111);
      if (v102)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      a2 = v112;
      v48 = v113;
      sub_100008DC0(&qword_1000A68A8, &qword_10008DD30);
      if (sub_100063228())
      {
        sub_100081308(v75, v4);
        sub_1000632C8();
        if (!v47)
        {
          goto LABEL_130;
        }

        a2 = v114;
        v28 = v272;
        if ((v48 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v272;
        if ((v48 & 1) == 0)
        {
LABEL_39:
          sub_100063070();
          *v115 = v75;
          v115[1] = v4;
          v116 = *(isUniquelyReferenced_nonNull_native + 7);
          v117 = *(v269 + 72);
          v48 = v266;
          sub_100063298();
          v118();
          v119 = sub_10006335C();
          v49(v119);
          v120 = *(isUniquelyReferenced_nonNull_native + 2);
          v102 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (!v102)
          {
            v271 = isUniquelyReferenced_nonNull_native;
            *(isUniquelyReferenced_nonNull_native + 2) = v121;
            goto LABEL_60;
          }

          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          sub_10000AA34();
          continue;
        }
      }

      sub_1000632A8();
      v134 = *(v269 + 72);
      v135 = *(v269 + 40);
      sub_100063370();
      v136();
      v137 = sub_10006335C();
      v49(v137);
LABEL_60:
      v49 = v270;
      v74 = v261;
      v71 = v262;
      if (!a1)
      {
        goto LABEL_18;
      }

LABEL_17:
      v76 = v7;
      goto LABEL_22;
    }

    break;
  }

  v48 = a2;
  if (v95 != v254)
  {
    goto LABEL_131;
  }

  v4 = v90;
  if (*(v271 + 16))
  {

    v122 = v90;
    v28 = v96;
    sub_100081308(v277, v122);
    v75 = v272;
    a2 = v123;

    if (a2)
    {
      a2 = *v274;
      (*v274)(v75, v48);

      (a2)(v273, v48);
      goto LABEL_60;
    }
  }

  isUniquelyReferenced_nonNull_native(v255, v75, v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v278 = v96;
  v28 = v96;
  v125 = sub_100081308(v277, v4);
  sub_10006317C(v125, v126);
  if (v102)
  {
    goto LABEL_102;
  }

  a2 = v127;
  v48 = v128;
  sub_100008DC0(&qword_1000A68A8, &qword_10008DD30);
  if (!sub_100063228())
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  v28 = v278;
  sub_100081308(v277, v4);
  sub_1000632C8();
  if (v47)
  {
    a2 = v129;
    if ((v48 & 1) == 0)
    {
LABEL_53:
      sub_100063070();
      *v130 = v277;
      v130[1] = v4;
      sub_1000631F4(*(isUniquelyReferenced_nonNull_native + 7));
      v48 = v266;
      sub_100063298();
      v131();
      v132 = sub_1000630E0();
      (a2)(v132);
      v133 = *(isUniquelyReferenced_nonNull_native + 2);
      v102 = __OFADD__(v133, 1);
      v108 = v133 + 1;
      if (!v102)
      {
        goto LABEL_54;
      }

      goto LABEL_112;
    }

LABEL_58:

    sub_1000632A8();
    sub_1000631F4(v138);
    v139 = *(v28 + 5);
    sub_100063370();
    v140();
    v141 = sub_1000630E0();
    (a2)(v141);
LABEL_59:
    (a2)(v273, v48);
    goto LABEL_60;
  }

LABEL_130:
  sub_10008AAA8();
  __break(1u);
LABEL_131:
  result = sub_10008AA58();
  __break(1u);
  return result;
}

uint64_t sub_100062F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A6898, &qword_10008DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062F8C(uint64_t a1)
{
  v2 = sub_100008DC0(&qword_1000A6898, &qword_10008DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100062FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008DC0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_100063070()
{
  v2 = *(v1 - 96);
  *(v2 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v3 = *(v2 + 48) + 16 * v0;
}

id sub_10006309C()
{
  *(v3 - 208) = v0;

  return [v0 localizedStringForKey:v2 value:v1 table:0];
}

uint64_t sub_1000630E0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_1000630F8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100063120()
{

  return sub_10008AA68();
}

id sub_10006313C(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_10006315C(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 208);

  return [v6 a2];
}

id sub_100063190(id a1, SEL a2)
{

  return [a1 a2];
}

NSString sub_1000631AC()
{

  return sub_10008A238();
}

NSString sub_1000631D8()
{

  return sub_10008A238();
}

NSString sub_100063210()
{

  return sub_10008A238();
}

BOOL sub_100063228()
{

  return sub_10008A9A8(v0, v1);
}

id sub_100063248(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

NSString sub_100063260()
{

  return sub_10008A238();
}

uint64_t sub_10006327C()
{
  v3 = *(*(v2 - 168) + 104);
  result = v0 + v1;
  v5 = *(v2 - 192);
  return result;
}

void sub_1000632A8()
{
  v1 = *(v0 - 96);
  *(v0 - 152) = v1;
  v2 = *(v1 + 56);
}

uint64_t sub_1000632D8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100063300()
{
}

uint64_t sub_100063324()
{
}

uint64_t sub_10006335C()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

void sub_100063390()
{
}

NSString sub_1000633A8()
{

  return sub_10008A238();
}

uint64_t sub_1000633C0()
{
}

void sub_1000633D8(uint64_t a1, uint64_t a2)
{
  *(v3 - 128) = a1;
  *(v3 - 152) = a2;
}

void sub_1000633F0()
{
}

uint64_t sub_100063408(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v7 == v6)
    {
      return v8;
    }

    if (v6 >= v7)
    {
      break;
    }

    v9 = sub_1000897A8();
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    result = v5(&v17, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {

      return v8;
    }

    v13 = v17;
    ++v6;
    if (v17)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100080A18(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = (v15 + 1);
      if (v15 >= v14 >> 1)
      {
        result = sub_100080A18((v14 > 1), v15 + 1, 1, v8);
        v16 = (v15 + 1);
        v8 = result;
      }

      v8[2] = v16;
      v8[v15 + 4] = v13;
      v6 = v12;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10006357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100083740(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_10008377C(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_1000899A8();

  return sub_100009158(a2, v7, 1, v8);
}

uint64_t sub_100063614@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    sub_10005D92C(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return sub_100009158(a3, v9, 1, v7);
}

BOOL sub_1000636BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10008AB08();
  sub_10008A2B8();
  sub_10008AB28();
  v7 = *(a3 + 32);
  sub_10005EB04();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = sub_10008AA68();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

BOOL sub_1000637A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000899A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_10008388C(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v18 = a1;
  v10 = sub_10008A208();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_10008388C(&qword_1000A6C80, &type metadata accessor for TypeIdentifier);
    v16 = sub_10008A228();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t sub_1000639A8()
{
  sub_10005F538();
  v2 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  v3 = sub_10005E3B0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = sub_10008A3D8();
  sub_100084E94(v7, v9, v10, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008E1E0;
  v12[5] = v11;
  sub_10007FB6C(0, 0, v7, &unk_10008E1F0, v12);
}

uint64_t sub_100063B10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t WFToolKitTypedValueContent.resolve(with:)()
{
  sub_100012404();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100008DC0(&qword_1000A68D0, &qword_10008DD78);
  sub_10005E3B0(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_10005F4D4();
  v6 = sub_100088C98();
  v1[5] = v6;
  sub_100017A0C(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = sub_10005F4D4();
  v10 = sub_1000897A8();
  v1[8] = v10;
  sub_100017A0C(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = sub_10005F4D4();
  v14 = sub_10005CFA0();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100063C80()
{
  sub_1000851F0();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 24) encodedTypedValue];
  sub_1000889D8();

  sub_100083A6C();
  sub_10008388C(v4, v5);
  sub_10005EDA0();
  sub_100088918();
  v6 = sub_10005DC58();
  sub_10005ABBC(v6, v7);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = sub_100089CF8();
  sub_100084E94(v9, v12, v13, v11);
  sub_100088CB8();
  swift_unknownObjectRetain();
  sub_100088CA8();
  sub_100088C88();
  v14 = async function pointer to TypedValue.resolve(in:)[1];
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_100063E90;
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);

  return TypedValue.resolve(in:)(v17);
}

uint64_t sub_100063E90()
{
  sub_100012604();
  v3 = v2;
  sub_100012474();
  v5 = v4;
  sub_100083D94();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_10001237C();
  *v10 = v9;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_1000840CC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100063F98()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v5 = *(v2 + 8);
  v6 = sub_100012498();
  v7(v6);

  v8 = v0[1];
  v9 = v0[13];
  sub_1000615B4();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10006404C()
{
  sub_100012604();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v4 = *(v2 + 8);
  v5 = sub_100012498();
  v6(v5);
  v7 = v0[12];
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[4];

  sub_10001248C();

  return v11();
}

Swift::Int sub_1000641BC(unsigned __int8 a1)
{
  sub_10008AB08();
  sub_10008AB18(a1);
  return sub_10008AB28();
}

Swift::Int sub_10006422C()
{
  sub_10008AB08();
  sub_10008AB18(0);
  return sub_10008AB28();
}

uint64_t sub_100064270(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100064334;

  return WFToolKitTypedValueContent.resolve(with:)();
}

uint64_t sub_100064334()
{
  sub_10005EC9C();
  sub_100085158();
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;
  sub_10001237C();
  *v8 = v7;

  swift_unknownObjectRelease();

  v9 = *(v3 + 32);
  if (v0)
  {
    sub_100088968();
    sub_10005D9B8();

    (v9)[2](v9, 0, v1);

    _Block_release(v9);
  }

  else
  {
    v10 = v9[2];
    v11 = sub_10005E470();
    v12(v11);
    _Block_release(v9);
  }

  v13 = *(v7 + 8);

  return v13();
}

Swift::Int sub_100064504()
{
  sub_10008AB08();
  sub_10008AB18(0);
  return sub_10008AB28();
}

id ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.getter()
{
  v1 = OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_actionIdentifier;
  sub_10005E4A0();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ToolKitHelper.DynamicEnumerationDefinition.actionIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_actionIdentifier;
  sub_100084CC8();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ToolKitHelper.DynamicEnumerationDefinition.parameterKey.getter()
{
  v1 = OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_parameterKey;
  sub_10005E4A0();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ToolKitHelper.DynamicEnumerationDefinition.parameterKey.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_parameterKey;
  sub_100084CC8();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ToolKitHelper.DynamicEnumerationDefinition.__allocating_init(actionIdentifier:parameterKey:)()
{
  v0 = objc_allocWithZone(sub_100084F54());
  sub_10005E810();
  return ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)();
}

id ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)()
{
  sub_100084F54();
  ObjectType = swift_getObjectType();
  sub_10005E810();
  v3 = sub_10008A238();

  *&v0[OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_actionIdentifier] = v3;
  sub_10005EAE0();
  sub_10008A238();
  sub_100060C1C();

  *&v0[OBJC_IVAR___WFToolKitDynamicEnumerationDefinition_parameterKey] = v1;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t ToolKitHelper.ContentPropertyPossibleValuesDefinition.contentItemClass.getter()
{
  v1 = OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_contentItemClass;
  sub_10005E4A0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ToolKitHelper.ContentPropertyPossibleValuesDefinition.contentItemClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_contentItemClass;
  result = sub_100084CC8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ToolKitHelper.ContentPropertyPossibleValuesDefinition.propertyName.getter()
{
  v1 = (v0 + OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_propertyName);
  sub_10005E4A0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_100012498();
}

uint64_t ToolKitHelper.ContentPropertyPossibleValuesDefinition.propertyName.setter()
{
  sub_100085264();
  v3 = (v1 + OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_propertyName);
  swift_beginAccess();
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v0;
}

id sub_100064CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_contentItemClass;
  *&v4[OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_contentItemClass] = 0;
  v10 = sub_100089FE8();
  swift_beginAccess();
  *&v4[v9] = v10;
  v11 = &v4[OBJC_IVAR___WFToolKitContentPropertyPossibleValuesDefinition_propertyName];
  *v11 = a2;
  *(v11 + 1) = a3;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "init");
  v13 = sub_100089FF8();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

unint64_t ToolKitHelper.ValueSetType.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_100064E4C(Swift::UInt a1)
{
  sub_10008AB08();
  sub_10008AB18(a1);
  return sub_10008AB28();
}

Swift::Int sub_100064ECC(uint64_t a1, Swift::UInt a2)
{
  sub_10008AB08();
  sub_10008AB18(a2);
  return sub_10008AB28();
}

unint64_t sub_100064F10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ToolKitHelper.ValueSetType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static ToolKitHelper.createAction(encodedToolInvocation:fetchingDefaultValues:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_10005CFA0();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100064F7C()
{
  sub_100012604();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100088B28();
  v3 = sub_1000125C0();
  sub_10005AB50(v3, v4);
  sub_1000125C0();
  *(v0 + 32) = sub_100088AE8();
  *(v0 + 40) = [objc_opt_self() sharedRegistry];
  v5 = async function pointer to ToolInvocationBox.createAction(given:fetchingDefaultValues:)[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1000650A4;
  v7 = *(v0 + 72);
  v8 = sub_100084664();

  return ToolInvocationBox.createAction(given:fetchingDefaultValues:)(v8);
}

uint64_t sub_1000650A4()
{
  sub_100012604();
  v3 = v2;
  sub_100012474();
  v5 = v4;
  sub_100083D94();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_10001237C();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (!v0)
  {

    *(v5 + 64) = v3;
  }

  sub_1000840CC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000651B4()
{
  sub_100012404();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100065218()
{
  sub_100012404();
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  sub_10001248C();

  return v3();
}

uint64_t sub_10006530C(void *a1, char a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v6 = a1;
  v7 = sub_1000889D8();
  v9 = v8;

  v3[3] = v7;
  v3[4] = v9;
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_1000653E0;

  return static ToolKitHelper.createAction(encodedToolInvocation:fetchingDefaultValues:)(v7, v9, a2);
}

uint64_t sub_1000653E0()
{
  sub_100012604();
  sub_100085158();
  sub_1000851A8();
  v4 = v2[5];
  v5 = *v3;
  sub_10001237C();
  *v6 = v5;

  sub_1000850E4();
  v8 = v2[3];
  v9 = v2[2];
  sub_10005ABBC(v8, *(v7 + 32));
  if (v0)
  {
    sub_100088968();
    sub_10005D9B8();

    v10 = sub_100084804(v9);
    v11(v10, 0, v1);

    _Block_release(v9);
  }

  else
  {
    v12 = v9[2];
    v13 = sub_10005E428();
    v14(v13);
    _Block_release(v9);
  }

  v15 = *(v5 + 8);

  return v15();
}

uint64_t static ToolKitHelper.produceVariable(encodedReference:)()
{
  v1 = sub_100089798();
  v2 = sub_100012368(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000123E8();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v7 = qword_1000A68C0;
  sub_10008388C(&qword_1000A6900, &type metadata accessor for TypedValue.ID);
  sub_10005EDA0();
  sub_100088918();
  if (!v0)
  {
    v7 = sub_100089788();
    v9 = *(v4 + 8);
    v10 = sub_10005F36C();
    v11(v10);
  }

  return v7;
}

uint64_t static ToolKitHelper.decodeValueSetType(encodedDefinition:)()
{
  v0 = sub_100089B68();
  v1 = sub_100012368(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1000123E8();
  v8 = v7 - v6;
  v9 = sub_100089B88();
  v10 = sub_100012368(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_1000123E8();
  sub_1000850CC();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  sub_100083A54();
  sub_10008388C(v15, v16);
  sub_100084BDC();
  sub_1000848B4();
  sub_100088918();
  sub_100085304();
  sub_100089B78();
  v17 = v3[11];
  v18 = sub_100084C74();
  v20 = v19(v18);
  if (v20 == enum case for RestrictionContext.ValueSetDefinition.Inner.dynamicEnumeration(_:))
  {
    v21 = *(v12 + 8);
    v22 = sub_10005DEB4();
    v23(v22);
    v24 = v3[1];
    v25 = sub_100084C74();
    v26(v25);
    return 1;
  }

  else if (v20 == enum case for RestrictionContext.ValueSetDefinition.Inner.contentPropertyPossibleValues(_:))
  {
    v28 = *(v12 + 8);
    v29 = sub_10005DEB4();
    v30(v29);
    v31 = v3[12];
    v32 = sub_100084C74();
    v33(v32);
    v34 = *(v8 + *(sub_100008DC0(&qword_1000A6910, &qword_10008DD88) + 48) + 8);

    v35 = sub_100089FF8();
    sub_100017A1C(v35);
    (*(v36 + 8))(v8);
    return 2;
  }

  else if (v20 == enum case for RestrictionContext.ValueSetDefinition.Inner.linkQuery(_:) || v20 == enum case for RestrictionContext.ValueSetDefinition.Inner.linkQueryOnParameter(_:))
  {
    v38 = *(v12 + 8);
    v39 = sub_10005DEB4();
    v40(v39);
    v41 = v3[1];
    v42 = sub_100084C74();
    v43(v42);
    return 3;
  }

  else if (v20 == enum case for RestrictionContext.ValueSetDefinition.Inner.dynamicEnumerationOnTrigger(_:))
  {
    v44 = *(v12 + 8);
    v45 = sub_10005DEB4();
    v46(v45);
    v47 = v3[1];
    v48 = sub_100084C74();
    v49(v48);
    return 4;
  }

  else
  {
    result = sub_10008AA58();
    __break(1u);
  }

  return result;
}

void static ToolKitHelper.decodeDynamicEnumerationDefinition(encodedDefinition:)()
{
  sub_1000602E0();
  v1 = sub_100088908();
  v39 = sub_100012368(v1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v39);
  sub_1000123E8();
  v4 = sub_100089B68();
  v5 = sub_100012368(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000123E8();
  v12 = (v11 - v10);
  v13 = sub_100089B88();
  v14 = sub_100012368(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000123E8();
  sub_1000850CC();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  sub_100083A54();
  sub_10008388C(v17, v18);
  sub_100084BDC();
  sub_100088918();
  if (!v0)
  {
    sub_100089B78();
    v19 = v7[11];
    v20 = sub_100084AD0();
    if (v21(v20) == enum case for RestrictionContext.ValueSetDefinition.Inner.dynamicEnumeration(_:))
    {
      v22 = v7[12];
      v23 = sub_100084AD0();
      v24(v23);
      v25 = *v12;
      v26 = v12[1];
      v27 = v12[2];
      v28 = v12[3];
      v29 = objc_allocWithZone(type metadata accessor for ToolKitHelper.DynamicEnumerationDefinition());
      sub_100084004();
      ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)();
    }

    else
    {
      v32 = v7[1];
      v33 = sub_100084AD0();
      v34(v33);
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v35, v36);
      sub_100088958();
      sub_1000888F8();
      sub_100084F90();
      v37 = sub_100084074();
      v38(v37);
      swift_willThrow();
    }

    v30 = sub_100084DD0();
    v31(v30, v13);
  }

  sub_1000601E4();
}

void static ToolKitHelper.decodeContentPropertyPossibleValuesDefinition(encodedDefinition:)()
{
  sub_1000602E0();
  v62 = v1;
  v63 = v0;
  v2 = sub_100088908();
  v3 = sub_100012368(v2);
  v59 = v4;
  v60 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_1000123E8();
  sub_100085338(v7);
  v8 = sub_100089B68();
  v9 = sub_100012368(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1000123E8();
  v16 = v15 - v14;
  v17 = sub_100089FF8();
  v18 = sub_100012368(v17);
  v57 = v19;
  v58 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v18);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  v27 = sub_100089B88();
  v28 = sub_100012368(v27);
  v61 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_1000123E8();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  sub_100083A54();
  sub_10008388C(v32, v33);
  sub_10005EDA0();
  v34 = v63;
  sub_100088918();
  if (!v34)
  {
    sub_100084EAC();
    sub_100089B78();
    v35 = v11[11];
    v36 = sub_10005F62C();
    if (v37(v36) == enum case for RestrictionContext.ValueSetDefinition.Inner.contentPropertyPossibleValues(_:))
    {
      v38 = v11[12];
      v39 = sub_10005F62C();
      v40(v39);
      v41 = (v16 + *(sub_100008DC0(&qword_1000A6910, &qword_10008DD88) + 48));
      v42 = *v41;
      v63 = v41[1];
      v44 = v57;
      v43 = v58;
      (*(v57 + 32))(v26, v16, v58);
      (*(v44 + 16))(v24, v26, v43);
      v45 = objc_allocWithZone(type metadata accessor for ToolKitHelper.ContentPropertyPossibleValuesDefinition());
      v46 = sub_10005E470();
      sub_100064CEC(v46, v47, v63);
      (*(v44 + 8))(v26, v43);
    }

    else
    {
      v50 = v11[1];
      v51 = sub_10005F62C();
      v52(v51);
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v53, v54);
      sub_1000852F0();
      sub_100088958();
      sub_1000888F8();
      v55 = sub_10008527C();
      v56(v55);
      swift_willThrow();
    }

    sub_100084F90();
    v48 = sub_100084074();
    v49(v48);
  }

  sub_1000601E4();
}

void static ToolKitHelper.linkQueryValueSetAsDynamicEnumeration(_:)()
{
  sub_1000602E0();
  v1 = sub_100089B68();
  v2 = sub_100012368(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000123E8();
  v9 = (v8 - v7);
  v10 = sub_100089B88();
  v11 = sub_100012368(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_1000123E8();
  sub_1000850CC();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  sub_100083A54();
  sub_10008388C(v14, v15);
  sub_100084BDC();
  sub_100088918();
  if (!v0)
  {
    sub_100089B78();
    v16 = v4[11];
    v17 = sub_10005E810();
    if (v18(v17) == enum case for RestrictionContext.ValueSetDefinition.Inner.linkQueryOnParameter(_:))
    {
      v19 = v4[12];
      v20 = sub_10005E810();
      v21(v20);
      v22 = *v9;
      v23 = v9[1];
      v24 = v9[2];
      v25 = v9[3];
      v26 = v9[5];

      v27 = objc_allocWithZone(type metadata accessor for ToolKitHelper.DynamicEnumerationDefinition());
      ToolKitHelper.DynamicEnumerationDefinition.init(actionIdentifier:parameterKey:)();
      v28 = sub_100084DD0();
      v29(v28, v10);
    }

    else
    {
      sub_1000801D4();
      sub_10005ECC0();
      swift_allocError();
      swift_willThrow();
      v30 = sub_100084DD0();
      v31(v30, v10);
      v32 = v4[1];
      v33 = sub_10005E810();
      v34(v33);
    }
  }

  sub_1000601E4();
}

id sub_100066460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a3;
  sub_100084DA8();
  sub_1000889D8();

  v8 = sub_10005DC4C();
  v9 = a5(v8);
  v10 = sub_10005DC4C();
  sub_10005ABBC(v10, v11);

  return v9;
}

uint64_t static ToolKitHelper.runLinkQuery(_:encodedValueSet:encodedOptions:)()
{
  sub_100012404();
  v0[38] = v1;
  v0[39] = v2;
  v0[36] = v3;
  v0[37] = v4;
  v0[34] = v5;
  v0[35] = v6;
  v7 = sub_10008A128();
  v0[40] = v7;
  sub_100017A0C(v7);
  v0[41] = v8;
  v10 = *(v9 + 64);
  v0[42] = sub_10005F4D4();
  v11 = sub_10008A568();
  v0[43] = v11;
  sub_100017A0C(v11);
  v0[44] = v12;
  v14 = *(v13 + 64);
  v0[45] = sub_10005F4D4();
  v15 = sub_10008A708();
  v0[46] = v15;
  sub_100017A0C(v15);
  v0[47] = v16;
  v18 = *(v17 + 64);
  v0[48] = sub_10005F3EC();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v19 = sub_100008DC0(&qword_1000A6520, &unk_10008D910);
  sub_10005E3B0(v19);
  v21 = *(v20 + 64);
  v0[53] = sub_10005F4D4();
  v22 = sub_1000897A8();
  v0[54] = v22;
  sub_100017A0C(v22);
  v0[55] = v23;
  v25 = *(v24 + 64);
  v0[56] = sub_10005F3EC();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v26 = sub_1000899A8();
  v0[60] = v26;
  sub_100017A0C(v26);
  v0[61] = v27;
  v29 = *(v28 + 64);
  v0[62] = sub_10005F3EC();
  v0[63] = swift_task_alloc();
  v30 = sub_100089BF8();
  v0[64] = v30;
  sub_100017A0C(v30);
  v0[65] = v31;
  v33 = *(v32 + 64);
  v0[66] = sub_10005F4D4();
  v34 = sub_100088C38();
  v0[67] = v34;
  sub_100017A0C(v34);
  v0[68] = v35;
  v37 = *(v36 + 64);
  v0[69] = sub_10005F4D4();
  v38 = sub_100088B68();
  v0[70] = v38;
  sub_100017A0C(v38);
  v0[71] = v39;
  v41 = *(v40 + 64);
  v0[72] = sub_10005F4D4();
  v42 = sub_100089D48();
  v0[73] = v42;
  sub_100017A0C(v42);
  v0[74] = v43;
  v45 = *(v44 + 64);
  v0[75] = sub_10005F4D4();
  v46 = sub_100008DC0(&qword_1000A6930, &qword_10008DDA0);
  v0[76] = v46;
  sub_100017A0C(v46);
  v0[77] = v47;
  v49 = *(v48 + 64);
  v0[78] = sub_10005F4D4();
  v50 = sub_100089F08();
  v0[79] = v50;
  sub_100017A0C(v50);
  v0[80] = v51;
  v53 = *(v52 + 64);
  v0[81] = sub_10005F4D4();
  v54 = sub_100089A48();
  v0[82] = v54;
  sub_100017A0C(v54);
  v0[83] = v55;
  v57 = *(v56 + 64);
  v0[84] = sub_10005F4D4();
  v58 = sub_100089EA8();
  v0[85] = v58;
  sub_100017A0C(v58);
  v0[86] = v59;
  v61 = *(v60 + 64);
  v0[87] = sub_10005F4D4();
  v62 = sub_100089858();
  v0[88] = v62;
  sub_100017A0C(v62);
  v0[89] = v63;
  v65 = *(v64 + 64);
  v0[90] = sub_10005F4D4();
  v66 = sub_10008A718();
  v0[91] = v66;
  sub_100017A0C(v66);
  v0[92] = v67;
  v69 = *(v68 + 64);
  v0[93] = sub_10005F3EC();
  v0[94] = swift_task_alloc();
  v70 = sub_100088908();
  v0[95] = v70;
  sub_100017A0C(v70);
  v0[96] = v71;
  v73 = *(v72 + 64);
  v0[97] = sub_10005F4D4();
  v74 = sub_10008A178();
  v0[98] = v74;
  sub_100017A0C(v74);
  v0[99] = v75;
  v77 = *(v76 + 64);
  v0[100] = sub_10005F3EC();
  v0[101] = swift_task_alloc();
  v78 = sub_100089B68();
  v0[102] = v78;
  sub_100017A0C(v78);
  v0[103] = v79;
  v81 = *(v80 + 64);
  v0[104] = sub_10005F3EC();
  v0[105] = swift_task_alloc();
  v0[106] = swift_task_alloc();
  v82 = sub_10008A078();
  v0[107] = v82;
  sub_100017A0C(v82);
  v0[108] = v83;
  v85 = *(v84 + 64);
  v0[109] = sub_10005F4D4();
  v86 = sub_100089B88();
  v0[110] = v86;
  sub_100017A0C(v86);
  v0[111] = v87;
  v89 = *(v88 + 64);
  v0[112] = sub_10005F4D4();
  sub_100012554();

  return _swift_task_switch(v90, v91, v92);
}

uint64_t sub_100066C68()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedProvider];
  v0[113] = v2;
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v3 = v0[112];
  v4 = v0[110];
  v6 = v1[36];
  v5 = v1[37];
  sub_100083A54();
  sub_10008388C(v7, v8);
  sub_100088918();
  v582 = v1;
  v9 = v1[109];
  v10 = v1[107];
  v12 = v1[38];
  v11 = v1[39];
  sub_100083E2C();
  sub_10008388C(v13, v14);
  sub_100088918();
  v29 = v1[112];
  v30 = sub_100089B58();
  v1[114] = v30;
  v1[115] = v31;
  v32 = v1[112];
  if (!v31)
  {
    v44 = v1[111];
    v572 = v1[110];
    sub_100085110();
    v45 = v1[96];
    sub_100085194();
    *(v47 + 1128) = v46;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v48, v49);
    sub_1000852E4();
    sub_1000841A4();
    sub_10008509C();
    sub_1000888F8();
    v50 = sub_100084AEC();
    v51(v50);
    sub_100084FF0();

    v52 = sub_100083EC8();
    v53(v52);
    (*(v44 + 8))(v32, v572);
    goto LABEL_4;
  }

  v33 = v1[106];
  v34 = v1[103];
  v35 = v1[102];
  sub_100089B78();
  v1[116] = *(v34 + 88);
  v1[117] = (v34 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v36 = sub_1000124C8();
  v38 = v37(v36);
  v39 = enum case for RestrictionContext.ValueSetDefinition.Inner.linkQuery(_:);
  *(v1 + 290) = enum case for RestrictionContext.ValueSetDefinition.Inner.linkQuery(_:);
  if (v38 == v39)
  {
    v40 = v1[106];
    v41 = *(v1[103] + 96);
    v41(v40, v1[102]);
    v43 = *v40;
    v42 = v40[1];
  }

  else
  {
    v54 = v1[106];
    v55 = v1[102];
    if (v38 != enum case for RestrictionContext.ValueSetDefinition.Inner.linkQueryOnParameter(_:))
    {

      v68 = sub_10008485C();
      v69(v68, v55);
      goto LABEL_20;
    }

    v41 = *(v1[103] + 96);
    v41(v1[106], v1[102]);
    v56 = v54[1];
    v57 = v54[3];
    v58 = v54[4];
    v59 = v54[5];
  }

  v1[118] = v41;
  sub_10005E470();
  v60 = sub_10008A238();

  v61 = sub_10008A238();
  v62 = [v2 queryWithQueryIdentifier:v60 fromBundleIdentifier:v61];
  v1[119] = v62;

  if (!v62)
  {

LABEL_20:
    sub_100084D40();
    v70 = v1[111];
    v71 = v1[110];
    sub_100085110();
    v72 = v1[96];
    sub_100085194();
    *(v74 + 1132) = v73;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v75, v76);
    sub_1000852E4();
    sub_1000841A4();
    sub_10008509C();
    sub_1000888F8();
    v77 = *(v72 + 8);
    v78 = sub_10005E98C();
    v79(v78);
    sub_100084FF0();

    v80 = sub_100083EC8();
    v81(v80);
    v82 = *(v70 + 8);
    v83 = v570;
    v84 = v71;
LABEL_21:
    v82(v83, v84);
    goto LABEL_4;
  }

  v63 = [v62 resultValueType];
  objc_opt_self();
  sub_10005E028();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = [v64 identifier];
    if (!v65)
    {
      sub_10008A268();
      sub_10008A238();
      sub_100084664();
    }

    v66 = sub_10008A238();
    v67 = [v2 entityWithIdentifier:v65 fromBundleIdentifier:v66];
  }

  else
  {

    v67 = 0;
  }

  v1[120] = v67;
  v85 = v1[35];
  if (v85 >> 60 == 15)
  {
    if ([v62 capabilities])
    {
      v99 = v1[101];
      v1[26] = sub_100089848();
      v1[27] = sub_10008388C(&qword_1000A6980, &type metadata accessor for AllPredicate);
      sub_100082710(v1 + 23);
      sub_100089838();
    }

    else
    {
      if (([v62 capabilities] & 2) == 0)
      {
        sub_100084D40();
        v86 = v1[111];
        v547 = v1[109];
        v557 = v1[110];
        v565 = v67;
        v87 = v1[108];
        v539 = v1[107];
        v88 = v1[97];
        v89 = v1[96];
        v90 = v1[95];

        *(v1 + 284) = 22;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v91, v92);
        sub_1000841A4();
        sub_100088958();
        sub_1000888F8();
        v93 = sub_100084570();
        v94(v93, v90);
        sub_100084FF0();

        (*(v87 + 8))(v547, v539);
        (*(v86 + 8))(v570, v557);
        goto LABEL_4;
      }

      v104 = v1[101];
      v1[21] = sub_100089BC8();
      v1[22] = sub_10008388C(&qword_1000A6940, &type metadata accessor for SuggestedPredicate);
      sub_100082710(v1 + 18);
      sub_100089BB8();
    }

    sub_10008A158();
  }

  else
  {
    v95 = v1[100];
    v96 = v1[98];
    sub_10005AB50(v1[34], v85);
    sub_1000847EC();
    sub_10008388C(v97, v98);
    sub_10005EDA0();
    sub_100088918();
    v100 = v1[101];
    v101 = v1[100];
    v102 = v1[99];
    v103 = v1[98];
    sub_10005ABA8(v1[34], v1[35]);
    (*(v102 + 32))(v100, v101, v103);
  }

  v105 = v1[101];
  v106 = v1[90];
  v107 = v1[89];
  v108 = v1[88];
  sub_10008A168();
  v109 = *(v107 + 88);
  v110 = sub_10005F36C();
  v112 = v111(v110);
  v113 = v112 == enum case for AnyPredicate.comparison(_:) || v112 == enum case for AnyPredicate.compound(_:);
  if (v113)
  {
    v114 = v1[101];
    (*(v1[89] + 8))(v1[90], v1[88]);
    v149 = sub_10008A138();
    v150 = v1[101];
    v151 = v1[94];
    v152 = v1[92];
    v153 = v1[91];
    sub_100012554();
    v154 = sub_100088B38();
    v155 = sub_10008A148();
    LOBYTE(v150) = v156;

    *v151 = v154;
    *(v151 + 8) = v155;
    *(v151 + 16) = v150 & 1;
    *(v151 + 24) = 0;
    v157 = *(v152 + 104);
    v158 = sub_100084C08();
    v161(v158, v159, v160);
    goto LABEL_54;
  }

  if (v112 == enum case for AnyPredicate.stringSearch(_:))
  {
    v115 = v1[94];
    v116 = v1[92];
    v117 = v1[91];
    sub_1000848F8();
    v118 = v1[87];
    v119 = v1[86];
    v120 = v582[85];
    v122 = sub_1000846F8(v121);
    v123(v122);
    v124 = *(v119 + 32);
    v125 = sub_10005E428();
    v126(v125);
    v127 = sub_100089E98();
    v129 = v128;
    v130 = *(v119 + 8);
    v131 = sub_10005DB50();
    v132(v131);
    v1 = v582;
    *v115 = v127;
    v115[1] = v129;
    (*(v116 + 104))(v115, enum case for LNConfigurableQueryRequest.Query.string(_:), v117);
    goto LABEL_54;
  }

  if (v112 == enum case for AnyPredicate.idSearch(_:))
  {
    sub_1000848F8();
    v133 = v1[84];
    v134 = v1[83];
    v135 = v1[82];
    v137 = sub_1000846F8(v136);
    v138(v137);
    v139 = *(v134 + 32);
    sub_100084BB0();
    v140();
    v141 = sub_100089A38();
    v142 = *(v141 + 16);
    if (v142)
    {
      sub_10008A968();
      v143 = (v141 + 40);
      do
      {
        v144 = *(v143 - 1);
        v145 = *v143;

        v146 = [v62 entityType];
        sub_10008A268();

        v147 = objc_allocWithZone(LNEntityIdentifier);
        sub_10005E51C();
        sub_10007F8DC();
        sub_10008A948();
        v148 = _swiftEmptyArrayStorage[2];
        sub_10008A978();
        sub_1000848B4();
        sub_10008A988();
        sub_10008A958();
        v143 += 2;
        --v142;
      }

      while (v142);
      (*(v1[83] + 8))(v1[84], v1[82]);
    }

    else
    {
      v186 = v1[84];
      v187 = v1[83];
      v188 = v1[82];

      v189 = sub_10008485C();
      v190(v189, v188);
    }

    v191 = v1[92];
    v192 = v1[91];
    *v1[94] = _swiftEmptyArrayStorage;
    (*(v191 + 104))();
LABEL_54:
    v1[128] = 0;
    v200 = *(v1 + 290);
    v201 = v1[117];
    v202 = v1[116];
    v203 = v1[112];
    v204 = v1[105];
    v205 = v1[102];
    sub_100089B78();
    v206 = sub_10005F36C();
    v207 = v202(v206);
    if (v207 != v200)
    {
      if (v207 != enum case for RestrictionContext.ValueSetDefinition.Inner.linkQueryOnParameter(_:))
      {
        v234 = v1[115];
        v496 = v1[113];
        v505 = v1[119];
        v566 = v1[112];
        v235 = v1[111];
        v540 = v1[109];
        v548 = v1[110];
        v236 = v1[108];
        v526 = v1[120];
        v532 = v1[107];
        v573 = v1[105];
        v237 = v582[103];
        v558 = v582[102];
        v238 = v582[101];
        sub_100085170();
        v240 = *(v239 + 792);
        v514 = v582[98];
        sub_100084F24();
        v242 = *(v241 + 760);
        v488 = v582[94];
        v243 = v582[92];
        v244 = v582[91];

        *(v582 + 286) = 22;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v245, v246);
        sub_1000852E4();
        sub_100084054();
        sub_1000888F8();
        (v201[1])(v200, v242);
        sub_100084FF0();

        (*(v243 + 8))(v488, v244);
        (*(v240 + 8))(v520, v514);
        (*(v236 + 8))(v540, v532);
        (*(v235 + 8))(v566, v548);
        (*(v237 + 8))(v573, v558);
        v1 = v582;
        goto LABEL_4;
      }

      v216 = v1[119];
      v217 = v1[105];
      v218 = v1[103] + 96;
      (v1[118])(v217, v1[102]);
      v219 = *v217;
      v220 = v217[1];
      v221 = v1;
      v223 = v217[2];
      v222 = v217[3];
      v224 = v217[5];

      v225 = [v216 inputValueType];
      if (v225)
      {
        v226 = v221[119];
        v201 = v221 + 49;
        v227 = v221[49];
        v228 = v221[46];
        v229 = v221[47];

        *v227 = v226;
        v230 = *(v229 + 104);
        v231 = sub_100084FD8();
        v232(v231);
        v233 = v226;
      }

      else
      {
        v249 = v221[115];
        v250 = v221[114];
        v251 = v221[113];
        sub_100084C74();
        v252 = sub_10008A238();

        sub_1000848B4();
        v253 = sub_10008A238();
        v254 = [v251 actionWithIdentifier:v252 fromBundleIdentifier:v253];

        if (!v254)
        {
          v522 = v221[119];
          v529 = v221[120];
          v352 = v221[115];
          v517 = v221[113];
          v576 = v221[112];
          v353 = v221[111];
          v561 = v221[109];
          v568 = v221[110];
          v354 = v221[108];
          v543 = v221[101];
          v551 = v221[107];
          v355 = v221[99];
          v535 = v221[98];
          v356 = v221[97];
          v357 = v221[96];
          v358 = v221[95];
          v359 = v221[92];
          v500 = v221[91];
          v509 = v221[94];

          *(v221 + 287) = 22;
          sub_100080024(_swiftEmptyArrayStorage);
          sub_100083944();
          sub_10008388C(v360, v361);
          sub_100084CE8();
          sub_1000888F8();
          v362 = *(v357 + 8);
          v363 = sub_10005DC4C();
          v364(v363);
          swift_willThrow();

          (*(v359 + 8))(v509, v500);
          (*(v355 + 8))(v543, v535);
          (*(v354 + 8))(v561, v551);
          v365 = *(v353 + 8);
          v366 = sub_10008514C();
          v367(v366);
          v1 = v221;
          goto LABEL_4;
        }

        v201 = v221 + 49;
        v255 = v221[49];
        v256 = v221[46];
        v257 = v221[47];
        *v255 = v254;
        v255[1] = v223;
        v255[2] = v222;
        (*(v257 + 104))();
      }

      v1 = v221;
      goto LABEL_67;
    }

    v208 = v1[120];
    (*(v1[103] + 8))(v1[105], v1[102]);
    if (v208)
    {
      v209 = v1[119];
      v210 = v1[120];
      v211 = [v209 inputValueType];
      if (!v211)
      {
        v247 = sub_100085290();
        (*(v248 + 104))(v247, enum case for LNConfigurableQueryRequest.Query.Target.defaultQuery(_:));
        goto LABEL_67;
      }
    }

    v212 = v1[119];
    v213 = sub_100085290();
    (*(v214 + 104))(v213, enum case for LNConfigurableQueryRequest.Query.Target.anyQuery(_:));
    v215 = v212;
LABEL_67:
    v580 = *(v1 + 290);
    v574 = v1[117];
    v258 = v1[116];
    v259 = v1[112];
    v260 = v1[104];
    v261 = v1[102];
    v262 = v1[52];
    v263 = v1[46];
    v264 = v1[47];
    v266 = *(v264 + 32);
    v265 = v264 + 32;
    (v266)(v1[51], *v201, v263);
    v267 = sub_10005DB50();
    v266(v267);
    sub_100089B78();
    v268 = sub_10005F36C();
    v269 = v258(v268);
    if (v269 == v580)
    {
      v270 = v1[120];
      (*(v1[103] + 8))(v1[104], v1[102]);
      if (!v270)
      {
        goto LABEL_71;
      }

      v271 = v1[119];
      v272 = v1[120];
      v273 = [v271 inputValueType];
      if (v273)
      {

LABEL_71:
        v274 = [objc_opt_self() policyWithEntityQueryMetadata:v1[119]];
        v1[32] = 0;
        v275 = [v274 connectionWithError:v1 + 32];
        v276 = v1[32];
        if (v275)
        {
LABEL_72:
          v277 = v275;
          v278 = v276;
LABEL_84:
          v1[129] = v277;
          v339 = v1[94];
          v340 = v1[93];
          v341 = v1[92];
          v342 = v1[91];
          v560 = v1[52];
          v343 = v1[47];
          v344 = v1[48];
          v345 = v1[46];

          sub_100011D84(0, &qword_1000A6948, LNConfigurableQueryRequest_ptr);
          v346 = *(v341 + 16);
          v347 = v277;
          v348 = sub_10005DEB4();
          v346(v348);
          (*(v343 + 16))(v344, v560, v345);
          [objc_allocWithZone(LNQueryRequestOptions) init];
          v349 = sub_10008A728();
          v1[130] = v349;
          v1[2] = v1;
          v1[7] = v1 + 29;
          v1[3] = sub_10006B004;
          v350 = swift_continuation_init();
          v1[17] = sub_100008DC0(&qword_1000A6950, &qword_10008DDA8);
          v1[10] = _NSConcreteStackBlock;
          v1[11] = 1107296256;
          v1[12] = sub_100083940;
          v1[13] = &unk_10009F5B0;
          v1[14] = v350;
          [v347 performConfigurableQuery:v349 completionHandler:?];
          sub_100061010();

          return _swift_continuation_await();
        }

        goto LABEL_76;
      }

      v274 = [objc_opt_self() policyWithEntityMetadata:v272];
      v1[33] = 0;
      v325 = [v274 connectionWithError:v1 + 33];
      v326 = v1[33];
      if (!v325)
      {
        v528 = v1[119];
        v327 = v1[115];
        v491 = v1[113];
        sub_100084D40();
        v328 = v1[111];
        sub_100084510();
        v329 = v1[108];
        sub_10008471C();
        v499 = v330;
        v508 = v331;
        v332 = v326;

        sub_100088978();

        v1 = v582;
        swift_willThrow();

        (*(v265 + 8))(v508, v499);
        (*(v263 + 8))();
        (*(v261 + 8))();
        (*(v329 + 8))();
LABEL_90:
        v399 = *(v328 + 8);
        v83 = sub_10008514C();
        goto LABEL_21;
      }

      goto LABEL_83;
    }

    if (v269 == enum case for RestrictionContext.ValueSetDefinition.Inner.linkQueryOnParameter(_:))
    {
      v1 = v582;
      v279 = v582[119];
      v280 = v582[104];
      v281 = v582[103] + 96;
      (v582[118])(v280, v582[102]);
      v283 = *v280;
      v282 = v280[1];
      v284 = v280[3];
      v285 = v280[5];

      v286 = [v279 inputValueType];
      if (v286)
      {
        v287 = v582[119];

        v274 = [objc_opt_self() policyWithEntityQueryMetadata:v287];
        v582[31] = 0;
        v275 = [v274 connectionWithError:v582 + 31];
        v276 = v582[31];
        if (v275)
        {
          goto LABEL_72;
        }

LABEL_76:
        sub_100084E34();
        v506 = v288;
        v289 = v1[115];
        v290 = v1[113];
        sub_100084D40();
        v291 = v1[111];
        sub_100084510();
        v292 = v582[108];
        v549 = v582[107];
        v541 = v582[101];
        v293 = v582[99];
        v533 = v582[98];
        v294 = v582[94];
        sub_100085170();
        v296 = *(v295 + 736);
        v515 = v582[91];
        v497 = v582[52];
        v297 = v582[47];
        v489 = v582[46];
        v298 = v276;

        sub_100088978();

        swift_willThrow();
        v307 = sub_100084FCC(v299, v300, v301, v302, v303, v304, v305, v306, v455, v457, v459, v461, v463, v465, v467, v470, v474, v478, v482, v489, v497);
        v308(v307);
        (*(v296 + 8))(v520, v515);
        (*(v293 + 8))(v541, v533);
        (*(v292 + 8))(v555, v549);
        v1 = v582;
LABEL_77:
        v309 = *(v291 + 8);
        v310 = sub_10008514C();
        v311(v310);
        goto LABEL_4;
      }

      v333 = v582[115];
      v334 = v582[114];
      v335 = v582[113];
      sub_10005E470();
      v336 = sub_10008A238();

      sub_10005EAE0();
      v337 = sub_10008A238();
      v272 = [v335 actionWithIdentifier:v336 fromBundleIdentifier:v337];

      if (!v272)
      {
        sub_100084E34();
        v518 = v368;
        v369 = v582[115];
        v501 = v582[113];
        sub_100084D40();
        v291 = v582[111];
        sub_100084510();
        v370 = v582[108];
        v544 = v582[101];
        v552 = v582[107];
        v371 = v582[99];
        v536 = v582[98];
        sub_100084F24();
        v373 = *(v372 + 760);
        v374 = v582[94];
        sub_100085170();
        v376 = *(v375 + 736);
        v510 = v582[91];
        v492 = v582[52];
        v377 = v582[47];
        v378 = v582[46];

        *(v582 + 289) = 14;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v379, v380);
        sub_1000852E4();
        sub_1000841A4();
        sub_100088958();
        sub_1000888F8();
        v381 = sub_10005EAE0();
        v382(v381);
        sub_100084FF0();

        (*(v377 + 8))(v492, v378);
        (*(v376 + 8))(v520, v510);
        (*(v371 + 8))(v544, v536);
        v1 = v582;
        (*(v370 + 8))(v555, v552);
        goto LABEL_77;
      }

      v274 = [objc_opt_self() policyWithActionMetadata:v272];
      v582[28] = 0;
      v325 = [v274 connectionWithError:v582 + 28];
      v326 = v582[28];
      if (!v325)
      {
        sub_100084E34();
        v511 = v383;
        v384 = v582[115];
        v485 = v582[113];
        sub_100084D40();
        v328 = v582[111];
        sub_100084510();
        v385 = v582[108];
        sub_10008471C();
        v493 = v386;
        v502 = v387;
        v388 = v326;

        sub_100088978();

        v1 = v582;
        swift_willThrow();

        v397 = sub_100084F78(v389, v390, v391, v392, v393, v394, v395, v396, v455, v457, v459, v461, v463, v465, v467, v470, v474, v478, v485, v493, v502);
        v398(v397);
        (*(v263 + 8))();
        (*(v333 + 8))();
        (*(v385 + 8))();
        goto LABEL_90;
      }

LABEL_83:
      v277 = v325;
      v338 = v326;

      goto LABEL_84;
    }

    v1 = v582;
    v498 = v582[119];
    v507 = v582[120];
    v312 = v582[115];
    v480 = v582[113];
    v567 = v582[112];
    v313 = v582[111];
    v550 = v582[110];
    v314 = v582[108];
    v527 = v582[107];
    v534 = v582[109];
    v575 = v582[104];
    v542 = v582[103];
    v559 = v582[102];
    v315 = v582[99];
    v516 = v582[98];
    v521 = v582[101];
    v316 = v582[97];
    v317 = v582[96];
    v318 = v582[95];
    v319 = v582[92];
    v484 = v582[91];
    v490 = v582[94];
    v320 = v582[47];
    v472 = v582[46];
    v476 = v582[52];

    *(v582 + 288) = 47;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v321, v322);
    sub_100084034();
    sub_1000888F8();
    v323 = sub_100083E84();
    v324(v323);
    sub_100084FF0();

    (*(v320 + 8))(v476, v472);
    (*(v319 + 8))(v490, v484);
    (*(v315 + 8))(v521, v516);
    (*(v314 + 8))(v534, v527);
    (*(v313 + 8))(v567, v550);
    (*(v542 + 8))(v575, v559);
LABEL_4:
    v15 = v1[112];
    v16 = v1[109];
    v17 = v582[106];
    v18 = v582[105];
    v19 = v582[104];
    v20 = v582[101];
    v21 = v582[100];
    v22 = v582[97];
    v23 = v582[94];
    v24 = v582[93];
    v456 = v582[90];
    v458 = v582[87];
    v460 = v582[84];
    v462 = v582[81];
    v464 = v582[78];
    v466 = v582[75];
    v468 = v582[72];
    v471 = v582[69];
    v475 = v582[66];
    v479 = v582[63];
    v483 = v582[62];
    v487 = v582[59];
    v495 = v582[58];
    v504 = v582[57];
    v513 = v582[56];
    v25 = v582[53];
    sub_100085170();
    v525 = *(v26 + 416);
    v531 = v582[51];
    v538 = v582[50];
    v546 = v582[49];
    v556 = v582[48];
    v564 = v582[45];
    v571 = v582[42];

    sub_100083EB8();
    sub_100061010();

    __asm { BRAA            X1, X16 }
  }

  if (v112 == enum case for AnyPredicate.searchableItem(_:))
  {
    v162 = v1[94];
    v163 = v1[92];
    v579 = v1[91];
    sub_1000848F8();
    v164 = v1[81];
    v165 = v1[80];
    v166 = v1[79];
    v167 = v1[78];
    v168 = v1[77];
    v169 = v1[76];
    v171 = sub_1000846F8(v170);
    v172(v171);
    sub_100084F6C();
    v173 = sub_10005E428();
    v174(v173);
    sub_100008DC0(&qword_1000A6978, &qword_10008DDB8);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_10008DD50;
    sub_1000850C0();
    sub_100089EF8();
    v176 = sub_100089898();
    v177 = *(v168 + 8);
    v178 = sub_10005DC58();
    v179(v178);
    *(v175 + 32) = v176;
    v180 = *(v165 + 8);
    v181 = sub_10005DB50();
    v182(v181);
    *v162 = v175;
    v1 = v582;
    (*(v163 + 104))(v162, enum case for LNConfigurableQueryRequest.Query.searchableItems(_:), v579);
    goto LABEL_54;
  }

  if (v112 == enum case for AnyPredicate.all(_:))
  {
    v183 = v1[94];
    v184 = v1[92];
    sub_1000852B0();
    (*(v185 + 104))();
LABEL_53:
    v198 = sub_10008485C();
    v199(v198, v106);
    goto LABEL_54;
  }

  if (v112 == enum case for AnyPredicate.valid(_:) || v112 == enum case for AnyPredicate.suggested(_:))
  {
    v193 = v1[94];
    v194 = v1[92];
    sub_1000852B0();
    v196 = *v195;
    (*(v197 + 104))();
    goto LABEL_53;
  }

  if (v112 == enum case for AnyPredicate.valueSearch(_:))
  {
    v569 = v67;
    sub_1000848F8();
    v400 = v1[75];
    v401 = v1[74];
    v402 = v1[73];
    v553 = v1[72];
    v577 = v1[69];
    v403 = v1[66];
    v404 = v1[65];
    v562 = v1[64];
    v406 = sub_1000846F8(v405);
    v407(v406);
    v408 = *(v401 + 32);
    v409 = sub_10005E428();
    v410(v409);
    sub_100088B58();
    (*(v404 + 104))(v403, enum case for ContainerDefinition.Device.local(_:), v562);
    sub_100088C78();
    sub_100088C68();
    v411 = [objc_opt_self() defaultContext];
    sub_100088C28();
    v578 = v62;
    v412 = [v62 inputValueType];
    v1[121] = v412;
    if (v412)
    {
      v413 = v412;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v414 = v1[63];
        sub_10008A448();
        v437 = v1[75];
        v438 = v1[62];
        v439 = v1[63];
        v440 = v1[60];
        v441 = v1[61];
        v442 = v1[59];
        v443 = v1[55];
        v581 = v1[54];
        sub_100089738();
        v444 = swift_allocBox();
        v445 = *(v441 + 16);
        v446 = sub_100084C74();
        v447(v446);
        sub_100089D38();
        sub_100089718();
        *v442 = v444;
        (*(v443 + 104))(v442, enum case for TypedValue.collection(_:), v581);
        v448 = async function pointer to TypedValueTransformer.transform(input:with:)[1];
        v449 = swift_task_alloc();
        v1[122] = v449;
        *v449 = v1;
        v449[1] = sub_10006928C;
        v450 = v1[72];
        v451 = v1[69];
        v452 = v1[59];
LABEL_102:
        sub_100061010();

        return TypedValueTransformer.transform(input:with:)();
      }
    }

    v417 = v1[75];
    v418 = v1[53];
    v419 = v1[54];
    v420 = sub_100089D38();
    sub_100063614(v420, &type metadata accessor for TypedValue, v418);

    sub_10005DC64(v418, 1, v419);
    if (v113)
    {
      v421 = v1[111];
      v554 = v1[110];
      v563 = v1[112];
      v537 = v1[107];
      v545 = v1[109];
      v523 = v1[101];
      v530 = v1[108];
      v512 = v1[99];
      v519 = v1[98];
      v422 = v1[97];
      v423 = v1[96];
      v424 = v1[95];
      v494 = v1[73];
      v503 = v1[75];
      v481 = v1[72];
      v486 = v1[74];
      v425 = v1[71];
      v473 = v1[69];
      v477 = v1[70];
      v426 = v1[68];
      v469 = v1[67];
      v427 = v1[53];

      sub_100017954(v427, &qword_1000A6520, &unk_10008D910);
      *(v1 + 285) = 22;
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v428, v429);
      sub_100084034();
      sub_1000888F8();
      v430 = sub_100083E84();
      v431(v430);
      sub_100084FF0();

      (*(v426 + 8))(v473, v469);
      (*(v425 + 8))(v481, v477);
      (*(v486 + 8))(v503, v494);
      (*(v512 + 8))(v523, v519);
      (*(v530 + 8))(v545, v537);
      (*(v421 + 8))(v563);
      goto LABEL_4;
    }

    (*(v1[55] + 32))(v1[58], v1[53], v1[54]);
    v432 = async function pointer to TypedValueTransformer.transform(input:with:)[1];
    v433 = swift_task_alloc();
    v1[125] = v433;
    *v433 = v1;
    v433[1] = sub_10006A164;
    v434 = v1[72];
    v435 = v1[69];
    v436 = v1[58];
    goto LABEL_102;
  }

  v415 = v1[88];
  sub_100061010();

  return sub_10008AA58();
}

uint64_t sub_10006928C()
{
  sub_100012604();
  v3 = v2;
  v4 = *v1;
  sub_100083D94();
  *v5 = v4;
  v7 = *(v6 + 976);
  v8 = *v1;
  sub_10001237C();
  *v9 = v8;
  v4[123] = v0;

  if (v0)
  {
    v10 = v4[115];
  }

  else
  {
    v4[124] = v3;
  }

  sub_100012554();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10006A164()
{
  sub_100012604();
  v3 = v2;
  v4 = *v1;
  sub_100083D94();
  *v5 = v4;
  v7 = *(v6 + 1000);
  v8 = *v1;
  sub_10001237C();
  *v9 = v8;
  v4[126] = v0;

  if (v0)
  {
    v10 = v4[115];
  }

  else
  {
    v4[127] = v3;
  }

  sub_100012554();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10006B004()
{
  sub_100012404();
  v1 = *v0;
  sub_10005D3E8();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 1048) = v5;
  if (v5)
  {
    v6 = *(v2 + 920);
  }

  sub_100012554();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006B138()
{
  v1 = v0[129];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[29];
  v0[132] = v4;

  v5 = [v4 value];
  v6 = [v5 valueType];

  v7 = [v4 value];
  sub_10005EAE0();
  sub_10008A238();
  sub_100060C1C();

  v8 = sub_100084B1C();
  v10 = [v8 v9];
  v0[133] = v10;

  v11 = [v10 items];
  sub_100011D84(0, &qword_1000A6958, WFContentItem_ptr);
  sub_10005E028();
  v12 = sub_10008A328();
  v0[134] = v12;

  v13 = sub_10001BEBC(v12);
  v0[135] = v13;
  v14 = v0[128];
  v0[136] = _swiftEmptyArrayStorage;
  v15 = v0[134];
  if (!v13)
  {
    v23 = v0[134];

    if (qword_1000A5958 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    sub_100083988();
LABEL_9:
    v0[30] = _swiftEmptyArrayStorage;
    sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
    sub_10008279C();
    sub_100088948();
    sub_100085124();
    v24 = v0[129];
    sub_100084ED0();
    v25 = v0[111];
    sub_1000852D0();
    v27 = v0[108];
    v106 = v28;
    v108 = v0[107];
    if (v14)
    {
      v29 = v0[99];
      v91 = v0[98];
      v94 = v0[101];
      v88 = v0[94];
      v30 = v0[92];
      v31 = v0[91];
      v32 = v0[52];
      v34 = v0[46];
      v33 = v0[47];

      v35 = *(v33 + 8);
      v36 = sub_10005F62C();
      v37(v36);
      (*(v30 + 8))(v88, v31);
      (*(v29 + 8))(v94, v91);
      (*(v27 + 8))(v110, v108);
      (*(v25 + 8))();
      sub_100083F08();
      sub_1000851C0();
      v38 = v0[101];
      v39 = v0[100];
      v40 = v0[97];
      sub_1000841C4();
      v70 = v0[84];
      v72 = v0[81];
      v74 = v0[78];
      v76 = v0[75];
      v78 = v0[72];
      v80 = v0[69];
      v82 = v0[66];
      v84 = v0[63];
      v86 = v0[62];
      v89 = v0[59];
      v92 = v0[58];
      v95 = v0[57];
      v99 = v0[56];
      v101 = v0[53];
      v103 = v0[52];
      v105 = v0[51];
      v107 = v0[50];
      v109 = v0[49];
      v111 = v0[48];
      v112 = v0[45];
      v113 = v0[42];

      sub_100083EB8();
      sub_10008534C();

      __asm { BRAA            X1, X16 }
    }

    v55 = v0[106];
    v56 = v0[105];
    v57 = v0[104];
    v58 = v0[100];
    v43 = v0[99];
    v53 = v0[98];
    v54 = v0[101];
    v52 = v0[94];
    v59 = v0[97];
    v60 = v0[93];
    v44 = v0[92];
    v45 = v0[91];
    v61 = v0[90];
    v62 = v0[87];
    v63 = v0[84];
    v64 = v0[81];
    v65 = v0[78];
    v66 = v0[75];
    v67 = v0[72];
    v68 = v0[69];
    v69 = v0[66];
    v71 = v0[63];
    v73 = v0[62];
    v75 = v0[59];
    v77 = v0[58];
    v79 = v0[57];
    v81 = v0[56];
    v46 = v0[52];
    v83 = v0[53];
    v85 = v0[51];
    v87 = v0[50];
    v90 = v0[49];
    v93 = v0[48];
    v48 = v0[46];
    v47 = v0[47];
    v96 = v0[45];
    v97 = v0[42];

    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v52, v45);
    (*(v43 + 8))(v54, v53);
    (*(v27 + 8))(v110, v108);
    (*(v25 + 8))();

    sub_1000843DC();
    sub_10008534C();

    __asm { BRAA            X3, X16 }
  }

  v16 = sub_10008A928();
LABEL_5:
  v0[137] = v16;
  v0[138] = 1;
  sub_100085008();
  sub_10008A558();
  v17 = sub_100083F74();
  v18(v17);
  v19 = async function pointer to WFContentItem.resolve(with:)[1];
  swift_task_alloc();
  sub_100012480();
  v0[139] = v20;
  *v20 = v21;
  sub_100084520(v20);
  sub_100084F00();
  sub_10008534C();

  return WFContentItem.resolve(with:)();
}

uint64_t sub_10006B958()
{
  sub_100012604();
  v2 = *v1;
  sub_100083D94();
  *v3 = v2;
  v5 = *(v4 + 1112);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  v2[140] = v0;

  if (v0)
  {
    v8 = v2[136];
    v9 = v2[134];
    (*(v2[44] + 8))(v2[45], v2[43]);
  }

  else
  {
    (*(v2[44] + 8))(v2[45], v2[43]);
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10006BAD0()
{
  v1 = *(v0 + 1088);
  (*(*(v0 + 440) + 16))(*(v0 + 448), *(v0 + 456), *(v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1088);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v70 = *(v3 + 16);
    sub_100083E44();
    v71 = sub_10005CBF0();
    sub_100080510(v71, v72, v73, v3, v74, v75, v76);
    v3 = v77;
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_100080510(v4 > 1, v5 + 1, 1, v3, sub_10004F830, &type metadata accessor for TypedValue, &type metadata accessor for TypedValue);
    v3 = v78;
  }

  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);

  v10 = *(v9 + 8);
  v11 = sub_10005EDA0();
  v12(v11);
  *(v3 + 16) = v5 + 1;
  v13 = *(v9 + 32);
  v9 += 32;
  v14 = *(v9 + 48);
  sub_10005E0A0();
  v17 = v16(v3 + v15 + *(v9 + 40) * v5, v7, v8);
  v18 = *(v0 + 1120);
  v19 = *(v0 + 1104);
  *(v0 + 1088) = v3;
  v20 = *(v0 + 1072);
  if (v19 == *(v0 + 1080))
  {
    v21 = *(v0 + 1072);

    if (qword_1000A5958 != -1)
    {
      sub_100083988();
    }

    *(v0 + 240) = v3;
    sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
    sub_10008279C();
    sub_100088948();
    sub_100085124();
    v22 = *(v0 + 1032);
    sub_100084ED0();
    v23 = *(v0 + 888);
    sub_1000852D0();
    v27 = *(v0 + 864);
    v139 = v28;
    v140 = *(v0 + 856);
    if (v18)
    {
      v29 = *(v0 + 792);
      v124 = *(v0 + 784);
      v127 = *(v0 + 808);
      v30 = *(v0 + 736);
      v118 = *(v0 + 728);
      v121 = *(v0 + 752);
      v31 = *(v0 + 416);
      v33 = *(v0 + 368);
      v32 = *(v0 + 376);

      v34 = *(v32 + 8);
      v35 = sub_1000851CC();
      v36(v35);
      (*(v30 + 8))(v121, v118);
      (*(v29 + 8))(v127, v124);
      v37 = sub_1000850D8();
      v38(v37);
      (*(v23 + 8))();
      sub_100083F08();
      sub_1000851C0();
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);
      v41 = *(v0 + 776);
      sub_1000841C4();
      v102 = *(v0 + 672);
      v104 = *(v0 + 648);
      v106 = *(v0 + 624);
      v108 = *(v0 + 600);
      v110 = *(v0 + 576);
      v112 = *(v0 + 552);
      v114 = *(v0 + 528);
      v116 = *(v0 + 504);
      v119 = *(v0 + 496);
      v122 = *(v0 + 472);
      v125 = *(v0 + 464);
      v128 = *(v0 + 456);
      v132 = *(v0 + 448);
      v134 = *(v0 + 424);
      v42 = *(v0 + 400);
      v136 = *(v0 + 416);
      v138 = *(v0 + 408);
      sub_100084E6C();

      sub_100083EB8();
      sub_1000853BC();

      __asm { BRAA            X1, X16 }
    }

    v81 = v25;
    v82 = v24;
    v87 = *(v0 + 848);
    v88 = *(v0 + 840);
    v89 = *(v0 + 832);
    v90 = *(v0 + 800);
    v55 = *(v0 + 792);
    v85 = *(v0 + 784);
    v86 = *(v0 + 808);
    v91 = *(v0 + 776);
    v92 = *(v0 + 744);
    v56 = *(v0 + 736);
    v83 = *(v0 + 728);
    v84 = *(v0 + 752);
    v93 = *(v0 + 720);
    v94 = *(v0 + 696);
    v95 = *(v0 + 672);
    v96 = *(v0 + 648);
    v97 = *(v0 + 624);
    v98 = *(v0 + 600);
    v99 = *(v0 + 576);
    v100 = *(v0 + 552);
    v101 = *(v0 + 528);
    v103 = *(v0 + 504);
    v105 = *(v0 + 496);
    v107 = *(v0 + 472);
    v109 = *(v0 + 464);
    v111 = *(v0 + 456);
    v113 = *(v0 + 448);
    v57 = *(v0 + 416);
    v115 = *(v0 + 424);
    v117 = *(v0 + 408);
    v120 = *(v0 + 400);
    v123 = *(v0 + 392);
    v126 = *(v0 + 384);
    v59 = *(v0 + 368);
    v58 = *(v0 + 376);
    v129 = *(v0 + 360);
    v130 = *(v0 + 336);

    (*(v58 + 8))(v57, v59);
    (*(v56 + 8))(v84, v83);
    (*(v55 + 8))(v86, v85);
    (*(v27 + 8))(v141, v140);
    (*(v23 + 8))();

    sub_1000843DC();
    sub_1000852C4(v60, v61, v62, v63, v64, v65, v66, v67, v80, v81, v82);
    sub_1000853BC();

    __asm { BRAA            X3, X16 }
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v48 = sub_10008A928();
  }

  else
  {
    sub_10005D988(v17, v20);
    if (v47)
    {
      goto LABEL_24;
    }

    v48 = sub_1000604FC(v45, v46);
  }

  *(v0 + 1096) = v48;
  *(v0 + 1104) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
  }

  sub_100085008();
  sub_10008A558();
  v49 = sub_100083F74();
  v50(v49);
  v51 = async function pointer to WFContentItem.resolve(with:)[1];
  swift_task_alloc();
  sub_100012480();
  *(v0 + 1112) = v52;
  *v52 = v53;
  sub_100084520();
  sub_100084F00();
  sub_1000853BC();

  return WFContentItem.resolve(with:)();
}

uint64_t sub_10006C2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100084B94();
  sub_100084D34();
  v72 = v38[120];
  v69 = v38[121];
  v70 = v38[119];
  sub_100084C54();
  v39 = v38[108];
  v79 = v38[101];
  v80 = v38[107];
  v40 = v38[99];
  v77 = v38[75];
  v78 = v38[98];
  v41 = v38[74];
  sub_1000850B4();
  v75 = v42;
  v76 = v43;
  v44 = v38[71];
  v73 = v38[69];
  v74 = v38[70];
  v45 = v38[68];
  v71 = v38[67];
  v46 = v38[61];
  v67 = v38[60];
  v68 = v38[63];
  v47 = v38[59];
  v49 = v38[54];
  v48 = v38[55];

  v51 = *(v48 + 8);
  v52 = sub_10005E51C();
  v53(v52);
  (*(v46 + 8))(v68, v67);
  (*(v45 + 8))(v73, v71);
  (*(v44 + 8))(v75, v74);
  (*(v41 + 8))(v77, v76);
  v54 = *(v40 + 8);
  v55 = sub_100084850();
  v56(v55);
  (*(v39 + 8))(a30, v80);
  (*(a31 + 8))(a33, a32);
  v57 = v38[123];
  sub_100083BD8();
  sub_100083C6C();

  sub_100083EB8();
  sub_100084834();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10006C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100084B94();
  sub_100084D34();
  v69 = v38[119];
  v70 = v38[120];
  sub_100084C54();
  v39 = v38[108];
  v76 = v38[101];
  v77 = v38[107];
  v40 = v38[99];
  v74 = v38[75];
  v75 = v38[98];
  v41 = v38[74];
  sub_1000850B4();
  v72 = v42;
  v73 = v43;
  v44 = v38[71];
  v71 = v38[70];
  v68 = v38[69];
  v45 = v38[68];
  v46 = v38[67];
  v47 = v38[58];
  v48 = v38[54];
  v49 = v38[55];

  v51 = sub_100083F74();
  v52(v51);
  (*(v45 + 8))(v68, v46);
  (*(v44 + 8))(v72, v71);
  (*(v41 + 8))(v74, v73);
  v53 = *(v40 + 8);
  v54 = sub_100084850();
  v55(v54);
  v56 = sub_1000850D8();
  v57(v56);
  (*(a31 + 8))(a33, a32);
  v58 = v38[126];
  sub_100083BD8();
  sub_100083C6C();

  sub_100083EB8();
  sub_100084834();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10006C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100084B94();
  sub_100084D34();
  v39 = v38[131];
  v40 = v38[130];
  v41 = v38[129];
  sub_1000845B4();
  v80 = v43;
  v82 = v42;
  v44 = v38[113];
  v45 = v38[112];
  v46 = v38[111];
  sub_100083FF4();
  v47 = v38[108];
  sub_100083C08();
  v48 = v38[92];
  v84 = v38[91];
  v86 = v38[94];
  v78 = v38[52];
  v49 = v38[46];
  v50 = v38[47];
  swift_willThrow();

  (*(v50 + 8))(v78, v49);
  (*(v48 + 8))(v86, v84);
  v51 = sub_10008457C();
  v52(v51);
  (*(v47 + 8))(a30, a29);
  (*(v46 + 8))(a32, a31);

  v53 = v38[131];
  sub_100083BD8();
  v66 = v55;
  v67 = v54;
  v68 = v38[87];
  v69 = v38[84];
  v70 = v38[81];
  v71 = v38[78];
  v72 = v38[75];
  v73 = v38[72];
  v74 = v38[69];
  v75 = v38[66];
  v76 = v38[63];
  v77 = v38[62];
  v79 = v38[59];
  v81 = v38[58];
  v83 = v38[57];
  v85 = v38[56];
  v87 = v38[53];
  v88 = v38[52];
  v56 = v38[50];
  v89 = v38[51];
  sub_100084E6C();

  sub_100083EB8();
  sub_100084834();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v79, v81, v83, v85, v87, v88, v89, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10006CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100084B94();
  sub_100084D34();
  v39 = *(v38 + 1096);
  v40 = *(v38 + 1064);
  v59 = *(v38 + 1056);
  v60 = *(v38 + 1040);
  v41 = *(v38 + 1032);
  v64 = *(v38 + 960);
  v61 = *(v38 + 952);
  v42 = *(v38 + 888);
  v69 = *(v38 + 880);
  v70 = *(v38 + 896);
  v43 = *(v38 + 864);
  v67 = *(v38 + 856);
  v68 = *(v38 + 872);
  v44 = *(v38 + 792);
  v65 = *(v38 + 784);
  v66 = *(v38 + 808);
  v45 = *(v38 + 736);
  v62 = *(v38 + 728);
  v63 = *(v38 + 752);
  v58 = *(v38 + 416);
  v46 = *(v38 + 368);
  v47 = *(v38 + 376);

  (*(v47 + 8))(v58, v46);
  (*(v45 + 8))(v63, v62);
  (*(v44 + 8))(v66, v65);
  (*(v43 + 8))(v68, v67);
  (*(v42 + 8))(v70, v69);
  v48 = *(v38 + 1120);
  sub_100083BD8();
  sub_100083C6C();

  sub_100083EB8();
  sub_100084834();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, a34, a35, a36, a37, a38);
}

uint64_t sub_10006CDB0()
{
  sub_10005F538();
  sub_100008DC0(&qword_1000A5E80, &qword_10008CA10);
  sub_10005ECC0();
  v2 = swift_allocError();
  *v3 = v0;

  return _swift_continuation_throwingResumeWithError(v1, v2);
}

uint64_t sub_10006CEB4(void *a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    a1 = sub_1000889D8();
    v12 = v11;
  }

  else
  {
    v13 = a2;
    v14 = a3;
    v12 = 0xF000000000000000;
  }

  v4[3] = a1;
  v4[4] = v12;
  v15 = sub_1000889D8();
  v17 = v16;

  v4[5] = v15;
  v4[6] = v17;
  v18 = sub_1000889D8();
  v20 = v19;

  v4[7] = v18;
  v4[8] = v20;
  v21 = swift_task_alloc();
  v4[9] = v21;
  *v21 = v4;
  v21[1] = sub_10006CFF4;

  return static ToolKitHelper.runLinkQuery(_:encodedValueSet:encodedOptions:)();
}

uint64_t sub_10006CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  sub_100083C3C();
  sub_10001237C();
  *v15 = v14;
  v16 = v14[9];
  *v15 = *v13;

  sub_100084D58();
  v18 = v14[6];
  v19 = v14[5];
  v20 = v14[4];
  v21 = v14[3];
  sub_10005ABBC(v14[7], *(v17 + 64));
  v22 = sub_10005F5E8();
  sub_10005ABBC(v22, v23);
  sub_10005ABA8(v21, v20);
  if (v12)
  {
    sub_100088968();
    sub_100084DA8();

    v24 = v21;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v26 = sub_100084074();
    sub_10005ABBC(v26, v27);
    v24 = isa;
  }

  v28 = v14[2];
  v29 = sub_100083E70();
  v30(v29);

  _Block_release(v28);
  sub_1000840DC();
  sub_100012640();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

void static ToolKitHelper.decodeSearchString(in:)()
{
  sub_1000602E0();
  v1 = sub_100088908();
  v45 = sub_100012368(v1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v45);
  sub_1000123E8();
  sub_100085338(v4);
  v5 = sub_100089858();
  v6 = sub_100012368(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_1000123E8();
  v13 = v12 - v11;
  v14 = sub_100089EA8();
  v15 = sub_100012368(v14);
  v44 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_1000123E8();
  v21 = v20 - v19;
  v22 = sub_10008A178();
  v23 = sub_100012368(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_1000123E8();
  sub_1000850CC();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  sub_1000847EC();
  sub_10008388C(v26, v27);
  sub_100084BDC();
  sub_100084074();
  sub_100088918();
  if (!v0)
  {
    sub_10008A168();
    v28 = v8[11];
    v29 = sub_100085164();
    if (v30(v29) == enum case for AnyPredicate.stringSearch(_:))
    {
      v31 = v8[12];
      v32 = sub_100085164();
      v33(v32);
      sub_100084F6C();
      v34(v21, v13, v14);
      sub_100089E98();
      (*(v44 + 8))(v21, v14);
    }

    else
    {
      v37 = v8[1];
      v38 = sub_100085164();
      v39(v38);
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v40, v41);
      sub_1000852F0();
      sub_100088958();
      sub_1000888F8();
      v42 = sub_10008527C();
      v43(v42);
      swift_willThrow();
    }

    sub_100084F90();
    v35 = sub_10005DEB4();
    v36(v35);
  }

  sub_1000601E4();
}

uint64_t static ToolKitHelper.produceEncodedTypedValue(collection:for:)()
{
  sub_100012404();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1000897A8();
  v0[5] = v4;
  sub_100017A0C(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_10005F4D4();
  v8 = sub_100008DC0(&qword_1000A6990, &qword_10008DDC8);
  sub_10005E3B0(v8);
  v10 = *(v9 + 64);
  v0[8] = sub_10005F4D4();
  v11 = sub_10008A128();
  sub_10005E3B0(v11);
  v13 = *(v12 + 64);
  v0[9] = sub_10005F4D4();
  v14 = sub_100089888();
  sub_10005E3B0(v14);
  v16 = *(v15 + 64);
  v0[10] = sub_10005F4D4();
  v17 = sub_10008A6C8();
  v0[11] = v17;
  sub_100017A0C(v17);
  v0[12] = v18;
  v20 = *(v19 + 64);
  v0[13] = sub_10005F4D4();
  v21 = sub_10008A058();
  v0[14] = v21;
  sub_100017A0C(v21);
  v0[15] = v22;
  v24 = *(v23 + 64);
  v0[16] = sub_10005F4D4();
  v25 = sub_10005CFA0();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10006D7DC()
{
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  sub_100084810();
  sub_10008388C(v5, v6);
  sub_100084460();
  if (v3)
  {
    sub_100085450();

    sub_10001248C();

    return v7();
  }

  else
  {
    v9 = v0[16];
    v10 = v0[13];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    sub_10008A028();
    sub_10008A108();
    sub_100088CB8();
    sub_100088CA8();
    sub_100088C78();
    sub_100088C68();
    sub_10008A048();
    sub_10005DC4C();
    sub_10008A6B8();
    v14 = async function pointer to WFContentCollection.resolve(with:)[1];
    swift_task_alloc();
    sub_100012480();
    v0[17] = v15;
    *v15 = v16;
    v15[1] = sub_10006D9E4;
    v17 = v0[13];
    v18 = v0[7];
    v19 = v0[2];

    return WFContentCollection.resolve(with:)(v18, v17);
  }
}

uint64_t sub_10006D9E4()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10006DADC()
{
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[5];
  sub_100083A6C();
  sub_10008388C(v4, v5);
  sub_100084074();
  sub_100088948();
  if (v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
    v9 = *(v7 + 8);
    v10 = sub_100012498();
    v11(v10);
    sub_100085450();

    sub_10001248C();

    return v12();
  }

  else
  {
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    v27 = v0[10];
    v28 = v0[9];
    v29 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v20 = *(v19 + 8);
    v21 = sub_10005DC58();
    v22(v21);
    v23 = sub_100084080();
    v24(v23);

    sub_1000843DC();
    v25 = sub_100012498();

    return v26(v25);
  }
}

uint64_t sub_10006DD04()
{
  sub_10005EC9C();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v5 = *(v3 + 8);
  v6 = sub_1000124C8();
  v7(v6);
  v8 = v0[16];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v13 = v0[7];
  v12 = v0[8];

  sub_10001248C();

  return v14();
}

uint64_t sub_10006DDF4(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = sub_1000889D8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_100083928;

  return static ToolKitHelper.produceEncodedTypedValue(collection:for:)();
}

uint64_t static ToolKitHelper.produceEncodedTypedPossibleValues(contentProperty:encodedOptions:)()
{
  sub_100012404();
  v0[25] = v1;
  v0[26] = v2;
  v0[24] = v3;
  v4 = sub_100088908();
  v0[27] = v4;
  sub_100017A0C(v4);
  v0[28] = v5;
  v7 = *(v6 + 64);
  v0[29] = sub_10005F4D4();
  v8 = sub_10008A128();
  v0[30] = v8;
  sub_100017A0C(v8);
  v0[31] = v9;
  v11 = *(v10 + 64);
  v0[32] = sub_10005F4D4();
  v12 = sub_10008A568();
  v0[33] = v12;
  sub_100017A0C(v12);
  v0[34] = v13;
  v15 = *(v14 + 64);
  v0[35] = sub_10005F4D4();
  v16 = sub_1000897A8();
  v0[36] = v16;
  sub_100017A0C(v16);
  v0[37] = v17;
  v19 = *(v18 + 64);
  v0[38] = sub_10005F4D4();
  v20 = sub_10008A078();
  v0[39] = v20;
  sub_100017A0C(v20);
  v0[40] = v21;
  v23 = *(v22 + 64);
  v0[41] = sub_10005F4D4();
  v24 = sub_10005CFA0();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_10006E0AC()
{
  sub_100012604();
  v1 = [*(v0 + 192) possibleValues];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_10006E1E4;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_100008DC0(&unk_1000A69A0, &qword_10008DDD8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10006ECB8;
  *(v0 + 104) = &unk_10009F5D8;
  *(v0 + 112) = v2;
  [v1 getValuesWithCompletionBlock:v0 + 80];
  swift_unknownObjectRelease();

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10006E1E4()
{
  sub_100012404();
  v7 = *v0;
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;
  sub_100012554();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10005E828();
  sub_10005EAC8();
  v15 = *(v14 + 176);
  *(v14 + 336) = v15;
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v16 = *(v14 + 328);
  v17 = *(v14 + 312);
  v19 = *(v14 + 200);
  v18 = *(v14 + 208);
  sub_100083E2C();
  sub_10008388C(v20, v21);
  sub_10005E494();
  sub_100088918();
  v31 = *(v15 + 16);
  *(v14 + 352) = 0;
  *(v14 + 360) = _swiftEmptyArrayStorage;
  *(v14 + 344) = v31;
  v32 = *(v14 + 336);
  if (v31)
  {
    if (*(v32 + 16))
    {
      sub_100011D84(0, &qword_1000A6958, WFContentItem_ptr);
      sub_10000A650(v32 + 32, v14 + 144);
      v33 = sub_10006ED64((v14 + 144));
      *(v14 + 368) = v33;
      v34 = *(v14 + 328);
      if (v33)
      {
        v35 = *(v14 + 280);
        v37 = *(v14 + 248);
        v36 = *(v14 + 256);
        v38 = *(v14 + 240);
        v39 = *(v14 + 328);
        sub_10008A068();
        sub_10008A558();
        v40 = *(v37 + 8);
        v41 = sub_10005DC58();
        v42(v41);
        v43 = async function pointer to WFContentItem.resolve(with:)[1];
        swift_task_alloc();
        sub_100012480();
        *(v14 + 376) = v44;
        *v44 = v45;
        sub_1000844B0(v44);
        sub_100012640();

        return WFContentItem.resolve(with:)(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
      }

      else
      {
        v58 = *(v14 + 336);
        v59 = *(v14 + 312);
        v60 = *(v14 + 320);
        v62 = *(v14 + 224);
        v61 = *(v14 + 232);
        v63 = *(v14 + 216);

        *(v14 + 392) = 22;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v64, v65);
        sub_1000841A4();
        sub_100088958();
        sub_1000888F8();
        v66 = *(v62 + 8);
        v67 = sub_10005E494();
        v68(v67);
        swift_willThrow();
        v69 = *(v60 + 8);
        v70 = sub_10005E088();
        v71(v70);
        sub_100084988();

        sub_10001248C();
        sub_100012640();

        return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
      }
    }

    __break(1u);
  }

  else
  {
    v54 = *(v14 + 336);

    if (qword_1000A5958 == -1)
    {
      goto LABEL_14;
    }
  }

  sub_100083988();
LABEL_14:
  *(v14 + 184) = _swiftEmptyArrayStorage;
  sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
  sub_10008279C();
  sub_100088948();
  v56 = *(v14 + 320);
  v55 = *(v14 + 328);
  v57 = *(v14 + 312);
  v72 = *(v14 + 304);
  v73 = *(v14 + 280);
  v74 = *(v14 + 256);
  v75 = *(v14 + 232);

  v76 = sub_100084570();
  v77(v76, v57);

  sub_1000843DC();
  sub_10005E088();
  sub_100012640();

  return v81(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12);
}