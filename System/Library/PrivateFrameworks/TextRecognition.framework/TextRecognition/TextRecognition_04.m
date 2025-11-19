unint64_t sub_1B4126014@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B429FD58();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B4126500(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B4126500((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B429FD48();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B429FC78();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B429FC78();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B429FD58();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B4126500(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B429FD58();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B4126500(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B4126500((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B429FC78();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B41263D4(char *a1, int64_t a2, char a3)
{
  result = sub_1B41263F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B41263F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4126500(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B412660C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1B41269F8(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));

  return v9;
}

uint64_t sub_1B412666C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v54 = *(a2 + 16);
  v55 = *(a1 + 16);
  if (v54 >= v55)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v63 = MEMORY[0x1E69E7CC0];
  sub_1B41263D4(0, v5, 0);
  result = v63;
  v51 = a1;
  v52 = a2;
  v56 = v5;
  if (v5)
  {
    v7 = (a1 + 56);
    v8 = (a2 + 56);
    v9 = v5;
    do
    {
      v59 = v9;
      v61 = result;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      v14 = *(v8 - 1);
      v15 = *v8;
      v17 = *(v8 - 3);
      v16 = *(v8 - 2);

      if (!v13)
      {
        goto LABEL_25;
      }

      v18 = a3(v10, v11, v12, v13, v17, v16, v14, v15);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      result = v61;
      v26 = *(v61 + 16);
      v25 = *(v61 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B41263D4((v25 > 1), v26 + 1, 1);
        result = v61;
      }

      v8 += 4;
      *(result + 16) = v26 + 1;
      v27 = (result + 32 * v26);
      v27[4] = v18;
      v27[5] = v20;
      v27[6] = v22;
      v27[7] = v24;
      v7 += 4;
      v9 = v59 - 1;
    }

    while (v59 != 1);
  }

  v29 = v54;
  v28 = v55;
  if (v55 > v54)
  {
    v30 = v56;
    v53 = 32 * v56;
    v31 = v51;
    v32 = v52;
    while (v30 < v28)
    {
      if (__OFADD__(v30, 1))
      {
        goto LABEL_22;
      }

      if (v29 == v30)
      {
        return result;
      }

      if (v30 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_24;
      }

      v60 = v30 + 1;
      v62 = result;
      v57 = v30;
      v34 = *(v31 + v53 + 32);
      v33 = *(v31 + v53 + 40);
      v35 = *(v31 + v53 + 48);
      v36 = *(v31 + v53 + 56);
      v37 = *(v32 + v53 + 48);
      v38 = *(v32 + v53 + 56);
      v40 = *(v32 + v53 + 32);
      v39 = *(v32 + v53 + 40);

      v41 = a3(v34, v33, v35, v36, v40, v39, v37, v38);
      v43 = v42;
      v45 = v44;
      v47 = v46;

      result = v62;
      v49 = *(v62 + 16);
      v48 = *(v62 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B41263D4((v48 > 1), v49 + 1, 1);
        result = v62;
      }

      *(result + 16) = v49 + 1;
      v50 = (result + 32 * v49);
      v50[4] = v41;
      v50[5] = v43;
      v50[6] = v45;
      v50[7] = v47;
      v28 = v55;
      v30 = v57 + 1;
      v31 += 32;
      v32 += 32;
      v29 = v54;
      if (v60 == v55)
      {
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4126930()
{
  result = qword_1ED95E6E8;
  if (!qword_1ED95E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E6E8);
  }

  return result;
}

unint64_t sub_1B4126994()
{
  result = qword_1ED95E710;
  if (!qword_1ED95E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E710);
  }

  return result;
}

unint64_t sub_1B41269F8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = sub_1B42A02A8();
  if (v14)
  {
    result = a2;
  }

  v28 = a2 >> 14;
  if (a2 >> 14 < result >> 14)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = a5;
  v15 = sub_1B42A02F8();
  v17 = v16;
  result = sub_1B42A02B8();
  if (__OFSUB__(result, 1))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  result = sub_1B42A02A8();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = result;
  }

  if (v19 >> 14 < v15 >> 14)
  {
    goto LABEL_29;
  }

  sub_1B42A02F8();

  sub_1B4126994();
  sub_1B40EEE90();
  v20 = sub_1B42A0338();

  v21 = a5;
  if ((v20 & 1) == 0 && (sub_1B4125CD8(0x2F2F3A70747468, 0xE700000000000000, a1, a2) & 1) == 0 && (sub_1B4125CD8(0x2F2F3A7370747468, 0xE800000000000000, a1, a2) & 1) == 0 || (v22 = sub_1B42A02B8(), sub_1B42A02B8() < v22))
  {
    while (v28 != a1 >> 14)
    {
      v23 = sub_1B42A02D8();
      sub_1B42A02C8();
      if (utf16CheckIsDigit(v23))
      {
        while ((v27 ^ a6) >= 0x4000)
        {
          v24 = sub_1B42A02D8();
          sub_1B42A02C8();
          if (utf16CheckIsLatin(v24))
          {
            return v21;
          }
        }

        break;
      }
    }

    if ((a9 & 1) != 0 || sub_1B429FD28() < 10)
    {
      return a1;
    }

    else
    {
      while (v28 != a1 >> 14)
      {
        v25 = sub_1B42A02D8();
        sub_1B42A02C8();
        if (!utf16CheckIsEnglishCapital(v25))
        {
          return a1;
        }
      }

      while ((v27 ^ a6) >= 0x4000)
      {
        v26 = sub_1B42A02D8();
        sub_1B42A02C8();
        if (!utf16CheckIsEnglishCapital(v26))
        {
          return a1;
        }
      }
    }
  }

  return v21;
}

CRNormalizedQuad __swiftcall CRNormalizedQuad.transformed(_:)(CGAffineTransform *a1)
{
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  tx = a1->tx;
  ty = a1->ty;
  [v1 topLeft];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v8 = CGPointApplyAffineTransform(v23, &v22);
  [v1 topRight];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v9 = CGPointApplyAffineTransform(v24, &v22);
  [v1 bottomLeft];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v10 = CGPointApplyAffineTransform(v25, &v22);
  [v1 bottomRight];
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  v11 = CGPointApplyAffineTransform(v26, &v22);
  [v1 normalizationSize];
  v13 = v12;
  v15 = v14;
  v22.a = a;
  v22.b = b;
  v22.c = c;
  v22.d = d;
  v22.tx = tx;
  v22.ty = ty;
  CGAffineTransformInvert(&v21, &v22);
  v22 = v21;
  v27.width = v13;
  v27.height = v15;
  v16 = CGSizeApplyAffineTransform(v27, &v22);
  v17 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v8.x topRight:v8.y bottomRight:v9.x bottomLeft:v9.y size:{v11.x, v11.y, v10.x, v10.y, *&v16.width, *&v16.height}];
  result._normalizationSize.height = v20;
  result._normalizationSize.width = v19;
  result._denormalizedQuad = v18;
  result.super.isa = v17;
  return result;
}

BOOL sub_1B4126F44(uint64_t a1)
{
  v3 = sub_1B429F868();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v16 - v11;
  [v1 boundingBox];
  sub_1B429F878();
  (*(v4 + 16))(v7, a1, v3);
  sub_1B429F828();
  v13 = sub_1B429F858();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v12, v3);
  return (v13 & 1) == 0;
}

id sub_1B4127090(CGAffineTransform *a1)
{
  v2 = v1;
  v4 = [v1 boundingQuad];
  if (v4)
  {
    v5 = v4;
    v6 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v6 = 0;
  }

  [v2 setBoundingQuad_];

  v7 = [v2 polygon];
  if (v7)
  {
    v9 = v7;
    CRNormalizedPolyline.transformed(_:)(v8, a1);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [v2 setPolygon_];

  v12 = [v2 originalBoundingQuad];
  if (v12)
  {
    v13 = v12;
    v14 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v14 = 0;
  }

  [v2 setOriginalBoundingQuad_];

  v15 = [v2 boundingQuadAtOCRDispatch];
  if (v15)
  {
    v16 = v15;
    v17 = CRNormalizedQuad.transformed(_:)(a1);
  }

  else
  {
    v17 = 0;
  }

  [v2 setBoundingQuadAtOCRDispatch_];

  [v2 setGeometryInfo_];
  v18 = [v2 children];
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v20 = sub_1B429FDF8();

  if (v20 >> 62)
  {
    goto LABEL_134;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {

    if (i)
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1B8C72CD0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_119;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        sub_1B4127090(a1);

        ++v22;
        if (v25 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_25:
    swift_bridgeObjectRelease_n();
LABEL_26:
    v26 = [v2 candidates];
    if (v26)
    {
      v27 = v26;
      sub_1B40E27B4(0, &qword_1ED95EE70);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v28 = sub_1B42A0518();
      }

      else
      {
        v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28)
      {
        v29 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1B8C72CD0](v29, v20);
          }

          else
          {
            if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v30 = *(v20 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v29;
          if (v32 == v28)
          {
            goto LABEL_38;
          }
        }

LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_38:
      swift_bridgeObjectRelease_n();
    }

    v33 = [v2 dataDetectorRegions];
    if (v33)
    {
      v34 = v33;
      sub_1B40E27B4(0, &qword_1EB885198);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v35 = sub_1B42A0518();
      }

      else
      {
        v35 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v35)
      {
        v36 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1B8C72CD0](v36, v20);
          }

          else
          {
            if (v36 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_123;
            }

            v37 = *(v20 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v36;
          if (v39 == v35)
          {
            goto LABEL_51;
          }
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

LABEL_51:
      swift_bridgeObjectRelease_n();
    }

    v40 = [v2 dataDetectorGroupRegions];
    if (v40)
    {
      v41 = v40;
      sub_1B40E27B4(0, &qword_1EB885190);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v42 = sub_1B42A0518();
      }

      else
      {
        v42 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42)
      {
        v43 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x1B8C72CD0](v43, v20);
          }

          else
          {
            if (v43 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v44 = *(v20 + 8 * v43 + 32);
          }

          v45 = v44;
          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v43;
          if (v46 == v42)
          {
            goto LABEL_64;
          }
        }

LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

LABEL_64:
      swift_bridgeObjectRelease_n();
    }

    v47 = [v2 paragraphRegions];
    if (v47)
    {
      v48 = v47;
      sub_1B40E27B4(0, &qword_1ED95EE70);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v49 = sub_1B42A0518();
      }

      else
      {
        v49 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v49)
      {
        v50 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x1B8C72CD0](v50, v20);
          }

          else
          {
            if (v50 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_127;
            }

            v51 = *(v20 + 8 * v50 + 32);
          }

          v52 = v51;
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v50;
          if (v53 == v49)
          {
            goto LABEL_77;
          }
        }

LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

LABEL_77:
      swift_bridgeObjectRelease_n();
    }

    v54 = [v2 listRegions];
    if (v54)
    {
      v55 = v54;
      sub_1B40E27B4(0, &qword_1EB885188);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v56 = sub_1B42A0518();
      }

      else
      {
        v56 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v56)
      {
        v57 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1B8C72CD0](v57, v20);
          }

          else
          {
            if (v57 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_129;
            }

            v58 = *(v20 + 8 * v57 + 32);
          }

          v59 = v58;
          v60 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v57;
          if (v60 == v56)
          {
            goto LABEL_90;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

LABEL_90:
      swift_bridgeObjectRelease_n();
    }

    v61 = [v2 tableRegions];
    if (v61)
    {
      v62 = v61;
      sub_1B40E27B4(0, &unk_1ED95E690);
      v20 = sub_1B429FDF8();

      if (v20 >> 62)
      {
        v63 = sub_1B42A0518();
      }

      else
      {
        v63 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v63)
      {
        v64 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x1B8C72CD0](v64, v20);
          }

          else
          {
            if (v64 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_131;
            }

            v65 = *(v20 + 8 * v64 + 32);
          }

          v66 = v65;
          v67 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          sub_1B4127090(a1);

          ++v64;
          if (v67 == v63)
          {
            goto LABEL_103;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

LABEL_103:
      swift_bridgeObjectRelease_n();
    }

    result = [v2 formFieldRegions];
    if (!result)
    {
      return result;
    }

    v69 = result;
    sub_1B40E27B4(0, &qword_1EB884810);
    v2 = sub_1B429FDF8();

    v20 = v2 >> 62 ? sub_1B42A0518() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v20)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x1B8C72CD0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v71 = *(v2 + 8 * j + 32);
      }

      v72 = v71;
      v73 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1B4127090(a1);

      if (v73 == v20)
      {
        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    ;
  }

  return swift_bridgeObjectRelease_n();
}

id sub_1B41279D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 recognizedLocale];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B429FB98();
    v10 = v9;

    v11 = [v5 boundingQuad];
    if (!v11)
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = v11;
    [v11 area];
    v14 = v13;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = *(a3 + 16);
    v34 = a2;
    *(a3 + 16) = 0x8000000000000000;
    v16 = sub_1B40F0030(v8, v10);
    v18 = *(a2 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v5 = v17;
      if (*(a2 + 24) < v21)
      {
        sub_1B4128170(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_1B40F0030(v8, v10);
        if ((v5 & 1) != (v22 & 1))
        {
          sub_1B42A06E8();
          __break(1u);
          goto LABEL_7;
        }

LABEL_20:
        *(a3 + 16) = a2;
        if ((v5 & 1) == 0)
        {
          *(a2 + 8 * (v16 >> 6) + 64) |= 1 << v16;
          v29 = (*(a2 + 48) + 16 * v16);
          *v29 = v8;
          v29[1] = v10;
          *(*(a2 + 56) + 8 * v16) = 0;
          v30 = *(a2 + 16);
          v20 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v20)
          {
            __break(1u);
            goto LABEL_28;
          }

          v32 = v16;
          *(a2 + 16) = v31;

          v16 = v32;
        }

        *(*(a2 + 56) + 8 * v16) = v14 + *(*(a2 + 56) + 8 * v16);
        swift_endAccess();
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    v33 = v16;
    sub_1B4128414();
    v16 = v33;
    goto LABEL_20;
  }

LABEL_8:
  result = [v5 children];
  if (!result)
  {
    return result;
  }

  v24 = result;
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v10 = sub_1B429FDF8();

  if (a2 > 2)
  {
    goto LABEL_29;
  }

  result = [v5 type];
  if (result == 8)
  {
    goto LABEL_29;
  }

  if (v10 >> 62)
  {
LABEL_28:
    result = sub_1B42A0518();
    v25 = result;
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
LABEL_13:
    if (v25 < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v25; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B8C72CD0](i, v10);
      }

      else
      {
        v27 = *(v10 + 8 * i + 32);
      }

      v28 = v27;
      sub_1B41279D8(v27, a2 + 1, a3);
    }
  }

LABEL_29:
}

void sub_1B4127D68()
{
  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 recognizedLocale];
    if (v3)
    {
      v4 = v3;
      sub_1B429FB98();

      v5 = objc_opt_self();
LABEL_4:
      v6 = sub_1B429FB88();

      goto LABEL_30;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B412857C(MEMORY[0x1E69E7CC0]);
    sub_1B41279D8(v0, 0, v7);
    swift_beginAccess();
    v8 = *(v7 + 16);
    if (*(v8 + 16))
    {
      v9 = 1 << *(v8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v8 + 64);
      if (v11)
      {
        v12 = 0;
        v13 = __clz(__rbit64(v11));
        v14 = (v11 - 1) & v11;
        v15 = (v9 + 63) >> 6;
LABEL_17:
        v18 = *(*(v8 + 48) + 16 * v13 + 8);
        v19 = *(*(v8 + 56) + 8 * v13);
        swift_bridgeObjectRetain_n();

        if (!v14)
        {
          goto LABEL_20;
        }

        do
        {
LABEL_18:
          while (1)
          {
            v20 = __clz(__rbit64(v14));
            v14 &= v14 - 1;
            v21 = v20 | (v12 << 6);
            v22 = *(*(v8 + 56) + 8 * v21);
            if (v19 < v22)
            {
              break;
            }

            if (!v14)
            {
              goto LABEL_20;
            }
          }

          v28 = *(*(v8 + 48) + 16 * v21 + 8);

          v18 = v28;
          v19 = v22;
        }

        while (v14);
        while (1)
        {
LABEL_20:
          v23 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            return;
          }

          if (v23 >= v15)
          {
            break;
          }

          v14 = *(v8 + 64 + 8 * v23);
          ++v12;
          if (v14)
          {
            v12 = v23;
            goto LABEL_18;
          }
        }

        v5 = objc_opt_self();
        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      v16 = 0;
      v15 = (v9 + 63) >> 6;
      while (v15 - 1 != v11)
      {
        v12 = v11 + 1;
        v17 = *(v8 + 72 + 8 * v11);
        v16 -= 64;
        ++v11;
        if (v17)
        {
          v14 = (v17 - 1) & v17;
          v13 = __clz(__rbit64(v17)) - v16;
          goto LABEL_17;
        }
      }
    }

    v5 = objc_opt_self();
LABEL_29:
    v6 = 0;
LABEL_30:
    v24 = [v0 transcriptComponents];
    if (v24)
    {
      v25 = v24;
      sub_1B40E27B4(0, &qword_1EB8851A0);
      sub_1B429FDF8();
    }

    sub_1B40E27B4(0, &qword_1EB8851A0);
    v26 = sub_1B429FDE8();

    v27 = [v5 computeDataDetectorRegionsForText:v2 locale:v6 transcriptComponents:v26 ddQOS:2];

    [v0 setDataDetectorRegions_];
    return;
  }

  [v0 setDataDetectorRegions_];
}

uint64_t sub_1B4128170(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8);
  v33 = a2;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1B4128414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8);
  v2 = *v0;
  v3 = sub_1B42A05C8();
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

unint64_t sub_1B412857C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8851A8);
    v3 = sub_1B42A05F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B40F0030(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B41287BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  return sub_1B40DDA80(v1 + v3, a1);
}

uint64_t sub_1B4128954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  sub_1B41289B4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B41289B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4128B00()
{
  v1 = (v0 + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B4128BC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B4128DDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1B4128EE0()
{
  v1 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B4128F8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B412908C()
{
  v1 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B4129124(char a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B4129208(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  v5 = sub_1B429F6D8();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = &v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad] = 0;
  v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup] = 0;
  v50 = a1;
  v48 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1B42A0698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
    v9 = swift_dynamicCastMetatype();
    v10 = a1;
    if (!v9)
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = a1;
      if (v32)
      {
        v33 = v8 + 32;
        while (1)
        {
          v52 = &unk_1F2C037E0;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v33 += 8;
          if (!--v32)
          {
            v10 = a1;
            goto LABEL_3;
          }
        }

        v10 = v8 | 1;
      }
    }

LABEL_3:
    *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions] = v10;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v11;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_30:
    v31 = 0.0;
LABEL_31:
    swift_beginAccess();
    v34 = *&v2[v7];
    *&v2[v7] = 0;

    if (v11)
    {
      v35 = 0;
      v36 = a1 & 0xC000000000000001;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v36)
        {
          v40 = MEMORY[0x1B8C72CD0](v35, a1);
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v35 >= *(v37 + 16))
          {
            goto LABEL_46;
          }

          v40 = *(a1 + 8 * v35 + 32);
          swift_unknownObjectRetain();
          v41 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v42 = *&v2[v7];
        if (v42)
        {
          v43 = v42;
          v44 = [v40 boundingQuad];
          if (!v44)
          {
            goto LABEL_49;
          }

          v46 = v44;
          *&v45 = v31;
          v38 = [v43 unionWithNormalizedQuad:v44 baselineAngle:v45];
          swift_unknownObjectRelease();

          v11 = v49;
          a1 = v50;
        }

        else
        {
          v38 = [v40 boundingQuad];
          swift_unknownObjectRelease();
        }

        v39 = *&v2[v7];
        *&v2[v7] = v38;

        ++v35;
      }

      while (v41 != v11);
    }

    v51.receiver = v2;
    v51.super_class = type metadata accessor for CRLayoutParagraph();
    objc_msgSendSuper2(&v51, sel_init);
    return;
  }

LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  *&v2[OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions] = sub_1B42A0558();
  v11 = sub_1B42A0518();
  v49 = v11;
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_4:
  v12 = 0;
  v13 = a1 & 0xC000000000000001;
  a1 &= 0xFFFFFFFFFFFFFF8uLL;
  v47 = v13;
  v14 = 0.0;
  while (1)
  {
    if (v47)
    {
      v15 = MEMORY[0x1B8C72CD0](v12, v50);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v31 = v14;
        v11 = v49;
        a1 = v50;
        goto LABEL_31;
      }
    }

    else
    {
      if (v12 >= *(a1 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = *(v50 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_19;
      }
    }

    v17 = [v15 boundingQuad];
    if (!v17)
    {
      goto LABEL_47;
    }

    v18 = v17;
    [v17 baselineAngle];
    v20 = v19;

    v14 = weightedAverageAngleFromEuclideanSpace(v20, v14, 1.0, v12);
    v21 = [v15 text];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    v23 = sub_1B429FB98();
    v25 = v24;

    swift_beginAccess();
    MEMORY[0x1B8C72530](v23, v25);
    swift_endAccess();

    if (v48)
    {
      v26 = sub_1B42A0518();
    }

    else
    {
      v26 = *(a1 + 16);
    }

    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v12 < v26 - 1)
    {
      v27 = [objc_opt_self() joiningDelimiterForLine_];
      v28 = sub_1B429FB98();
      v30 = v29;

      swift_beginAccess();
      MEMORY[0x1B8C72530](v28, v30);
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v16 == v49)
    {
      goto LABEL_20;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t type metadata accessor for CRLayoutParagraph()
{
  result = qword_1EB895AC0;
  if (!qword_1EB895AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4129870()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_1B42A0518();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8C72CD0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_6:

    v3 = [v2 layoutDirection];
    swift_unknownObjectRelease();
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1B41299AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLayoutParagraph();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4129A5C()
{
  sub_1B4124B78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B4129B18(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1B412A4BC(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = sub_1B429FC28();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = sub_1B42A0448();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1B429FC18();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1B42A0448();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4129D84(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() joiningDelimiterForLine:a1 useLineSeparatorAsLineBreak:0];
  v2 = sub_1B429FB98();

  return v2;
}

uint64_t sub_1B4129E64(unint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D10);
  v5 = sub_1B429FDE8();
  [v2 predictLineWrappingTypesForAllLinesInGroups:v5 useHandwritingConfig:a2 & 1];

  v30 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v29 = a1 & 0xC000000000000001;
    v25 = a1 + 32;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x1E69E7CC0];
    v27 = v6;
    v28 = a1;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x1B8C72CD0](v8, a1);
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_41;
        }

        v10 = *(v25 + 8 * v8);
        swift_unknownObjectRetain();
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v6 = sub_1B42A0518();
          goto LABEL_3;
        }
      }

      v12 = [v10 subregions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
      v13 = sub_1B429FDF8();

      v14 = sub_1B412A294(v13);

      if (v14)
      {
        if (v14 >> 62)
        {
          v15 = sub_1B42A0518();
          if (!v15)
          {
LABEL_32:
            swift_unknownObjectRelease();

            goto LABEL_6;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
            goto LABEL_32;
          }
        }

        if (v15 < 1)
        {
          goto LABEL_40;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1B8C72CD0](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          v18 = swift_unknownObjectRetain();
          MEMORY[0x1B8C72680](v18);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          v7 = v30;
          if ([v17 lineWrappingType] == 1 || !objc_msgSend(v17, sel_lineWrappingType))
          {
            type metadata accessor for CRLayoutParagraph();

            sub_1B41291D4(v19);
            v21 = v20;
            MEMORY[0x1B8C72680]();
            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B429FE08();
            }

            sub_1B429FE38();
            swift_unknownObjectRelease();

            v9 = v31;

            v7 = MEMORY[0x1E69E7CC0];
            v30 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();

        v6 = v27;
        a1 = v28;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_6:
      if (v8 == v6)
      {
        goto LABEL_34;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_34:
  if (v7 >> 62)
  {
    if (sub_1B42A0518())
    {
      goto LABEL_36;
    }

LABEL_44:

    return v9;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_36:
  type metadata accessor for CRLayoutParagraph();
  sub_1B41291D4(v7);
  v23 = v22;
  MEMORY[0x1B8C72680]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B429FE08();
  }

  sub_1B429FE38();

  return v31;
}

uint64_t sub_1B412A294(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B42A0518();
    sub_1B42A0488();
    v2 = sub_1B42A0518();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B42A0488();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C72CD0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if (!swift_dynamicCastObjCProtocolConditional())
        {
          goto LABEL_13;
        }

        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

unint64_t sub_1B412A4BC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B412A554(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B412A5C8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B412A554(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B412A6EC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B412A5C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B42A0448();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B412A6EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B429FD08();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C72570](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1B412A768(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B412A800(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B412A5C8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B412A800(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B412A6EC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B412A874(void *a1, char a2)
{
  v4 = sub_1B429F578();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B429F768();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v51 - v21;
  v23 = [a1 lineWrappingType];
  if (v23 <= 5 && ((1 << v23) & 0x23) != 0)
  {
    if (a2)
    {
      return 11043042;
    }

    else
    {
      return 10;
    }
  }

  v51 = v5;
  v25 = v23;
  v26 = [a1 locale];
  if (v26)
  {
    v27 = v26;
    sub_1B429F728();

    (*(v10 + 56))(v22, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v22, 1, 1, v9);
  }

  sub_1B412AF74(v22, v17);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_1B412AFE4(v22);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v28._countAndFlagsBits = sub_1B429F6F8();
    CRLocale.init(rawValue:)(v28);
    (*(v10 + 8))(v13, v9);
    sub_1B412AFE4(v22);
    v29 = v55;
    if (v55 != 30)
    {
      CRLocale.script.getter(&v54);
      v53 = v54;
      v52 = 2;
      sub_1B410D624();
      if (sub_1B429FB58())
      {
        return 0;
      }

      LOBYTE(v55) = v29;
      CRLocale.script.getter(&v54);
      v53 = v54;
      v52 = 3;
      if (sub_1B429FB58())
      {
        return 0;
      }
    }
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      return sub_1B429FB98();
    }

    else
    {
      return 32;
    }
  }

  result = [a1 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  v30 = result;
  v31 = [result _crEndsWithHyphen];

  v32 = v51;
  if (!v31)
  {
    return 0;
  }

  result = [a1 text];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v33 = result;
  sub_1B429FB98();

  v34 = sub_1B429FC68();

  if (v34 < 2)
  {
    return 0;
  }

  result = [a1 text];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = result;
  v36 = sub_1B429FB98();
  v38 = v37;

  result = [a1 text];
  if (!result)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = sub_1B429FB98();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40;
  }

  v44 = 7;
  if (((v42 >> 60) & ((v40 & 0x800000000000000) == 0)) != 0)
  {
    v44 = 11;
  }

  v45 = sub_1B4129B18(v44 | (v43 << 16), -2, v36, v38);

  result = [a1 text];
  if (!result)
  {
    goto LABEL_44;
  }

  v46 = result;
  v47 = sub_1B429FB98();
  v49 = v48;

  sub_1B412A768(v45, v47, v49);
  if ((v49 & 0x1000000000000000) != 0)
  {
    sub_1B42A03F8();
LABEL_30:

    goto LABEL_36;
  }

  if ((v49 & 0x2000000000000000) == 0)
  {
    if ((v47 & 0x1000000000000000) == 0)
    {
      sub_1B42A0448();
    }

    goto LABEL_30;
  }

  v55 = v47;
  v56 = v49 & 0xFFFFFFFFFFFFFFLL;
LABEL_36:
  sub_1B429F4E8();
  v50 = sub_1B429F568();
  (*(v32 + 8))(v8, v4);
  if (v50)
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B412AF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B412AFE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B412B1E0(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v157 = sub_1B429FA68();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v10);
  v158 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v154 = a1;
  v13 = sub_1B429FB88();
  v14 = [v12 modelLocaleForLocale_];

  v15 = sub_1B429FB98();
  v17 = v16;

  v18 = 0xD000000000000011;
  if ((a3 & 1) == 0)
  {
    v18 = 0x697461756C617665;
  }

  v155 = v18;
  if (a3)
  {
    v19 = 0x80000001B42B44B0;
  }

  else
  {
    v19 = 0xEA00000000006E6FLL;
  }

  result = lineWrappingConfig();
  if (!result)
  {
    __break(1u);
    goto LABEL_197;
  }

  v21 = result;
  v22 = sub_1B429FAF8();

  v160 = v15;
  v161 = v17;

  sub_1B42A03B8();
  if (!*(v22 + 16))
  {
    goto LABEL_15;
  }

  v23 = sub_1B4100E08(v162);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1B40E2888(*(v22 + 56) + 32 * v23, v163);
  sub_1B41012A0(v162);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v164 = 0u;
    v165 = 0u;
    goto LABEL_17;
  }

  v25 = v160;
  v163[0] = v155;
  v163[1] = v19;

  sub_1B42A03B8();
  if (!*(v25 + 16) || (v26 = sub_1B4100E08(v162), (v27 & 1) == 0))
  {
LABEL_15:

    sub_1B41012A0(v162);
    goto LABEL_16;
  }

  sub_1B40E2888(*(v25 + 56) + 32 * v26, &v164);
  sub_1B41012A0(v162);

  if (!*(&v165 + 1))
  {
LABEL_17:
    sub_1B410F21C(&v164);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v166 = 0;
  }

  if (a4)
  {
    result = lineWrappingConfig();
    if (result)
    {
      v28 = result;
      v29 = sub_1B429FAF8();

      v160 = v15;
      v161 = v17;
      sub_1B42A03B8();
      if (*(v29 + 16) && (v30 = sub_1B4100E08(v162), (v31 & 1) != 0))
      {
        sub_1B40E2888(*(v29 + 56) + 32 * v30, v163);
        sub_1B41012A0(v162);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852D0);
        v32 = swift_dynamicCast();
        v33 = v157;
        v34 = v158;
        if (v32)
        {
          v35 = v160;
          strcpy(v163, "evaluation-hw");
          HIWORD(v163[1]) = -4864;
          sub_1B42A03B8();
          v36 = v156;
          if (*(v35 + 16))
          {
            v37 = sub_1B4100E08(v162);
            if (v38)
            {
              sub_1B40E2888(*(v35 + 56) + 32 * v37, &v164);
              sub_1B41012A0(v162);

              if (*(&v165 + 1))
              {
                if (swift_dynamicCast())
                {
                  v166 = v162[0];

                  v39 = v166;
                  if (!v166)
                  {
                    goto LABEL_141;
                  }

LABEL_32:

                  v163[0] = 0xD000000000000015;
                  v163[1] = 0x80000001B42B4150;
                  sub_1B42A03B8();
                  if (*(v39 + 16) && (v40 = sub_1B4100E08(v162), (v41 & 1) != 0))
                  {
                    sub_1B40E2888(*(v39 + 56) + 32 * v40, &v164);
                    sub_1B41012A0(v162);
                    sub_1B40E27B4(0, &qword_1ED95EE90);
                    if (swift_dynamicCast())
                    {
                      v42 = v163[0];
                      [v163[0] floatValue];
                      v44 = v43;

LABEL_38:
                      *&v5[OBJC_IVAR___CRLineWrappingParameters_heightSimilarityRatio] = v44;
                      v163[0] = 0xD00000000000001DLL;
                      v163[1] = 0x80000001B42B4170;
                      sub_1B42A03B8();
                      if (*(v39 + 16) && (v45 = sub_1B4100E08(v162), (v46 & 1) != 0))
                      {
                        sub_1B40E2888(*(v39 + 56) + 32 * v45, &v164);
                        sub_1B41012A0(v162);
                        sub_1B40E27B4(0, &qword_1ED95EE90);
                        if (swift_dynamicCast())
                        {
                          v47 = v163[0];
                          [v163[0] floatValue];
                          v49 = v48;

LABEL_44:
                          *&v5[OBJC_IVAR___CRLineWrappingParameters_leadingDistanceRatioTolerance] = v49;
                          v163[0] = 0xD00000000000001DLL;
                          v163[1] = 0x80000001B42B4190;
                          sub_1B42A03B8();
                          if (*(v39 + 16) && (v50 = sub_1B4100E08(v162), (v51 & 1) != 0))
                          {
                            sub_1B40E2888(*(v39 + 56) + 32 * v50, &v164);
                            sub_1B41012A0(v162);
                            sub_1B40E27B4(0, &qword_1ED95EE90);
                            if (swift_dynamicCast())
                            {
                              v52 = v163[0];
                              [v163[0] floatValue];
                              v54 = v53;

LABEL_50:
                              *&v5[OBJC_IVAR___CRLineWrappingParameters_verticalSpacingRatioTolerance] = v54;
                              v163[0] = 0xD000000000000028;
                              v163[1] = 0x80000001B42B41B0;
                              sub_1B42A03B8();
                              if (*(v39 + 16) && (v55 = sub_1B4100E08(v162), (v56 & 1) != 0))
                              {
                                sub_1B40E2888(*(v39 + 56) + 32 * v55, &v164);
                                sub_1B41012A0(v162);
                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                if (swift_dynamicCast())
                                {
                                  v57 = v163[0];
                                  [v163[0] floatValue];
                                  v59 = v58;

LABEL_56:
                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_newParagraphIndentDistanceRatioTolerance] = v59;
                                  v163[0] = 0xD000000000000029;
                                  v163[1] = 0x80000001B42B41E0;
                                  sub_1B42A03B8();
                                  if (*(v39 + 16) && (v60 = sub_1B4100E08(v162), (v61 & 1) != 0))
                                  {
                                    sub_1B40E2888(*(v39 + 56) + 32 * v60, &v164);
                                    sub_1B41012A0(v162);
                                    sub_1B40E27B4(0, &qword_1ED95EE90);
                                    if (swift_dynamicCast())
                                    {
                                      v62 = v163[0];
                                      [v163[0] floatValue];
                                      v64 = v63;

LABEL_62:
                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_oversegmentedDistanceHeightRatioTolerance] = v64;
                                      v163[0] = 0xD000000000000023;
                                      v163[1] = 0x80000001B42B4210;
                                      sub_1B42A03B8();
                                      if (*(v39 + 16) && (v65 = sub_1B4100E08(v162), (v66 & 1) != 0))
                                      {
                                        sub_1B40E2888(*(v39 + 56) + 32 * v65, &v164);
                                        sub_1B41012A0(v162);
                                        sub_1B40E27B4(0, &qword_1ED95EE90);
                                        if (swift_dynamicCast())
                                        {
                                          v67 = v163[0];
                                          [v163[0] floatValue];
                                          v69 = v68;

LABEL_68:
                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_smallestVerticalDistanceHeightRatio] = v69;
                                          v163[0] = 0xD000000000000022;
                                          v163[1] = 0x80000001B42B4240;
                                          sub_1B42A03B8();
                                          if (*(v39 + 16) && (v70 = sub_1B4100E08(v162), (v71 & 1) != 0))
                                          {
                                            sub_1B40E2888(*(v39 + 56) + 32 * v70, &v164);
                                            sub_1B41012A0(v162);
                                            sub_1B40E27B4(0, &qword_1ED95EE90);
                                            if (swift_dynamicCast())
                                            {
                                              v72 = v163[0];
                                              [v163[0] floatValue];
                                              v74 = v73;

LABEL_74:
                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_maximumVerticalDistanceGrowthRatio] = v74;
                                              v163[0] = 0xD000000000000018;
                                              v163[1] = 0x80000001B42B4270;
                                              sub_1B42A03B8();
                                              if (*(v39 + 16) && (v75 = sub_1B4100E08(v162), (v76 & 1) != 0))
                                              {
                                                sub_1B40E2888(*(v39 + 56) + 32 * v75, &v164);
                                                sub_1B41012A0(v162);
                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                if (swift_dynamicCast())
                                                {
                                                  v77 = v163[0];
                                                  [v163[0] floatValue];
                                                  v79 = v78;

LABEL_80:
                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_angleSimilarityThreshold] = v79;
                                                  v163[0] = 0xD000000000000010;
                                                  v163[1] = 0x80000001B42B4290;
                                                  sub_1B42A03B8();
                                                  if (*(v39 + 16) && (v80 = sub_1B4100E08(v162), (v81 & 1) != 0))
                                                  {
                                                    sub_1B40E2888(*(v39 + 56) + 32 * v80, &v164);
                                                    sub_1B41012A0(v162);
                                                    sub_1B40E27B4(0, &qword_1ED95EE90);
                                                    if (swift_dynamicCast())
                                                    {
                                                      v82 = v163[0];
                                                      [v163[0] floatValue];
                                                      v84 = v83;

LABEL_86:
                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_widthGrowthLimit] = v84;
                                                      v163[0] = 0xD000000000000017;
                                                      v163[1] = 0x80000001B42B42B0;
                                                      sub_1B42A03B8();
                                                      if (*(v39 + 16) && (v85 = sub_1B4100E08(v162), (v86 & 1) != 0))
                                                      {
                                                        sub_1B40E2888(*(v39 + 56) + 32 * v85, &v164);
                                                        sub_1B41012A0(v162);
                                                        sub_1B40E27B4(0, &qword_1ED95EE90);
                                                        if (swift_dynamicCast())
                                                        {
                                                          v87 = v163[0];
                                                          v88 = [v163[0] integerValue];

LABEL_92:
                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_tokenCountIncreaseLimit] = v88;
                                                          v163[0] = 0xD000000000000031;
                                                          v163[1] = 0x80000001B42B42D0;
                                                          sub_1B42A03B8();
                                                          if (*(v39 + 16) && (v89 = sub_1B4100E08(v162), (v90 & 1) != 0))
                                                          {
                                                            sub_1B40E2888(*(v39 + 56) + 32 * v89, &v164);
                                                            sub_1B41012A0(v162);
                                                            sub_1B40E27B4(0, &qword_1ED95EE90);
                                                            if (swift_dynamicCast())
                                                            {
                                                              v91 = v163[0];
                                                              [v163[0] floatValue];
                                                              v93 = v92;

LABEL_98:
                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_oversegmentedDistanceHeightRatioListItemTolerance] = v93;
                                                              *&v164 = 0xD000000000000016;
                                                              *(&v164 + 1) = 0x80000001B42B4310;
                                                              sub_1B42A03B8();
                                                              if (*(v39 + 16) && (v94 = sub_1B4100E08(v162), (v95 & 1) != 0))
                                                              {
                                                                sub_1B40E2888(*(v39 + 56) + 32 * v94, &v164);
                                                                sub_1B41012A0(v162);
                                                                v96 = swift_dynamicCast();
                                                                v97 = v96 == 0;
                                                                if (v96)
                                                                {
                                                                  v98 = v163[0];
                                                                }

                                                                else
                                                                {
                                                                  v98 = 0;
                                                                }

                                                                if (v97)
                                                                {
                                                                  v99 = 0;
                                                                }

                                                                else
                                                                {
                                                                  v99 = v163[1];
                                                                }
                                                              }

                                                              else
                                                              {
                                                                sub_1B41012A0(v162);
                                                                v98 = 0;
                                                                v99 = 0;
                                                              }

                                                              v100 = sub_1B412D3F8(v98, v99);

                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_correctionMode] = v100;
                                                              v163[0] = 0xD000000000000013;
                                                              v163[1] = 0x80000001B42B4330;
                                                              sub_1B42A03B8();
                                                              if (*(v39 + 16) && (v101 = sub_1B4100E08(v162), (v102 & 1) != 0))
                                                              {
                                                                sub_1B40E2888(*(v39 + 56) + 32 * v101, &v164);
                                                                sub_1B41012A0(v162);
                                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                if (swift_dynamicCast())
                                                                {
                                                                  v103 = v163[0];
                                                                  [v163[0] floatValue];
                                                                  v105 = v104;

LABEL_113:
                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_confidenceThreshold] = v105;
                                                                  v163[0] = 0xD00000000000001ALL;
                                                                  v163[1] = 0x80000001B42B4350;
                                                                  sub_1B42A03B8();
                                                                  if (*(v39 + 16) && (v106 = sub_1B4100E08(v162), (v107 & 1) != 0))
                                                                  {
                                                                    sub_1B40E2888(*(v39 + 56) + 32 * v106, &v164);
                                                                    sub_1B41012A0(v162);
                                                                    sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                    if (swift_dynamicCast())
                                                                    {
                                                                      v108 = v163[0];
                                                                      [v163[0] floatValue];
                                                                      v110 = v109;

LABEL_119:
                                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_contextConfidenceThreshold] = v110;
                                                                      v163[0] = 0xD000000000000010;
                                                                      v163[1] = 0x80000001B42B4370;
                                                                      sub_1B42A03B8();
                                                                      if (*(v39 + 16) && (v111 = sub_1B4100E08(v162), (v112 & 1) != 0))
                                                                      {
                                                                        sub_1B40E2888(*(v39 + 56) + 32 * v111, &v164);
                                                                        sub_1B41012A0(v162);
                                                                        sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                        if (swift_dynamicCast())
                                                                        {
                                                                          v113 = v163[0];
                                                                          [v163[0] doubleValue];
                                                                          v115 = v114;

LABEL_125:
                                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_lmScoreThreshold] = v115;
                                                                          v163[0] = 0xD000000000000012;
                                                                          v163[1] = 0x80000001B42B4390;
                                                                          sub_1B42A03B8();
                                                                          if (*(v39 + 16) && (v116 = sub_1B4100E08(v162), (v117 & 1) != 0))
                                                                          {
                                                                            sub_1B40E2888(*(v39 + 56) + 32 * v116, &v164);
                                                                            sub_1B41012A0(v162);
                                                                            sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                            if (swift_dynamicCast())
                                                                            {
                                                                              v118 = v163[0];
                                                                              [v163[0] doubleValue];
                                                                              v120 = v119;

LABEL_131:
                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_lmScoreEOSMinRatio] = v120;
                                                                              strcpy(v163, "lmContextSize");
                                                                              HIWORD(v163[1]) = -4864;
                                                                              sub_1B42A03B8();
                                                                              if (*(v39 + 16) && (v121 = sub_1B4100E08(v162), (v122 & 1) != 0))
                                                                              {
                                                                                sub_1B40E2888(*(v39 + 56) + 32 * v121, &v164);
                                                                              }

                                                                              else
                                                                              {
                                                                                v164 = 0u;
                                                                                v165 = 0u;
                                                                              }

                                                                              sub_1B41012A0(v162);
                                                                              if (*(&v165 + 1))
                                                                              {
                                                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                if (swift_dynamicCast())
                                                                                {
                                                                                  v123 = v163[0];
                                                                                  v124 = [v163[0] integerValue];

LABEL_145:
                                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_lmContextSize] = v124;
                                                                                  v163[0] = 0xD000000000000014;
                                                                                  v163[1] = 0x80000001B42B43B0;
                                                                                  sub_1B42A03B8();
                                                                                  if (*(v39 + 16) && (v132 = sub_1B4100E08(v162), (v133 & 1) != 0))
                                                                                  {
                                                                                    sub_1B40E2888(*(v39 + 56) + 32 * v132, &v164);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v164 = 0u;
                                                                                    v165 = 0u;
                                                                                  }

                                                                                  sub_1B41012A0(v162);
                                                                                  if (*(&v165 + 1))
                                                                                  {
                                                                                    sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                    if (swift_dynamicCast())
                                                                                    {
                                                                                      v134 = v163[0];
                                                                                      [v163[0] floatValue];
                                                                                      v136 = v135;

LABEL_154:
                                                                                      *&v5[OBJC_IVAR___CRLineWrappingParameters_probabilityThreshold] = v136;
                                                                                      v163[0] = 0xD00000000000001BLL;
                                                                                      v163[1] = 0x80000001B42B43D0;
                                                                                      sub_1B42A03B8();
                                                                                      if (*(v39 + 16) && (v137 = sub_1B4100E08(v162), (v138 & 1) != 0))
                                                                                      {
                                                                                        sub_1B40E2888(*(v39 + 56) + 32 * v137, &v164);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v164 = 0u;
                                                                                        v165 = 0u;
                                                                                      }

                                                                                      sub_1B41012A0(v162);
                                                                                      if (*(&v165 + 1))
                                                                                      {
                                                                                        sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                        if (swift_dynamicCast())
                                                                                        {
                                                                                          v139 = v163[0];
                                                                                          v140 = [v163[0] integerValue];

LABEL_163:
                                                                                          *&v5[OBJC_IVAR___CRLineWrappingParameters_wrappingEvaluationThreshold] = v140;
                                                                                          v163[0] = 0xD00000000000001DLL;
                                                                                          v163[1] = 0x80000001B42B43F0;
                                                                                          sub_1B42A03B8();
                                                                                          if (*(v39 + 16) && (v141 = sub_1B4100E08(v162), (v142 & 1) != 0))
                                                                                          {
                                                                                            sub_1B40E2888(*(v39 + 56) + 32 * v141, &v164);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v164 = 0u;
                                                                                            v165 = 0u;
                                                                                          }

                                                                                          sub_1B41012A0(v162);
                                                                                          if (*(&v165 + 1))
                                                                                          {
                                                                                            sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                            if (swift_dynamicCast())
                                                                                            {
                                                                                              v143 = v163[0];
                                                                                              v144 = [v163[0] integerValue];

LABEL_172:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_noWrappingEvaluationThreshold] = v144;
                                                                                              v163[0] = 0xD000000000000025;
                                                                                              v163[1] = 0x80000001B42B4410;
                                                                                              sub_1B42A03B8();
                                                                                              if (*(v39 + 16) && (v145 = sub_1B4100E08(v162), (v146 & 1) != 0))
                                                                                              {
                                                                                                sub_1B40E2888(*(v39 + 56) + 32 * v145, &v164);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v164 = 0u;
                                                                                                v165 = 0u;
                                                                                              }

                                                                                              sub_1B41012A0(v162);
                                                                                              if (*(&v165 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v147 = v163[0];
                                                                                                  v148 = [v163[0] integerValue];

                                                                                                  goto LABEL_181;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v164);
                                                                                              }

                                                                                              v148 = 10;
LABEL_181:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_caseWrappingScoreWithNoCapitalization] = v148;
                                                                                              v163[0] = 0xD000000000000025;
                                                                                              v163[1] = 0x80000001B42B4440;
                                                                                              sub_1B42A03B8();
                                                                                              sub_1B412CB94(v162, v39, &v164);
                                                                                              sub_1B41012A0(v162);
                                                                                              if (*(&v165 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v149 = v163[0];
                                                                                                  v150 = [v163[0] integerValue];

                                                                                                  goto LABEL_186;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v164);
                                                                                              }

                                                                                              v150 = 10;
LABEL_186:
                                                                                              *&v5[OBJC_IVAR___CRLineWrappingParameters_punctuationWrappingScoreWithEndingMOS] = v150;
                                                                                              v163[0] = 0xD000000000000030;
                                                                                              v163[1] = 0x80000001B42B4470;
                                                                                              sub_1B42A03B8();
                                                                                              sub_1B412CB94(v162, v39, &v164);

                                                                                              sub_1B41012A0(v162);
                                                                                              if (*(&v165 + 1))
                                                                                              {
                                                                                                sub_1B40E27B4(0, &qword_1ED95EE90);
                                                                                                if (swift_dynamicCast())
                                                                                                {
                                                                                                  v151 = v163[0];
                                                                                                  v152 = [v163[0] integerValue];

LABEL_191:
                                                                                                  *&v5[OBJC_IVAR___CRLineWrappingParameters_punctuationWrappingScoreWithNoClosingPunctuation] = v152;

                                                                                                  v159.receiver = v5;
                                                                                                  v159.super_class = CRLineWrappingParameters;
                                                                                                  return objc_msgSendSuper2(&v159, sel_init);
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1B410F21C(&v164);
                                                                                              }

                                                                                              v152 = 10;
                                                                                              goto LABEL_191;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1B410F21C(&v164);
                                                                                          }

                                                                                          v144 = -6;
                                                                                          goto LABEL_172;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1B410F21C(&v164);
                                                                                      }

                                                                                      v140 = 2;
                                                                                      goto LABEL_163;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1B410F21C(&v164);
                                                                                  }

                                                                                  v136 = 0.5;
                                                                                  goto LABEL_154;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1B410F21C(&v164);
                                                                              }

                                                                              v124 = 0;
                                                                              goto LABEL_145;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1B41012A0(v162);
                                                                          }

                                                                          v120 = 0;
                                                                          goto LABEL_131;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1B41012A0(v162);
                                                                      }

                                                                      v115 = 0;
                                                                      goto LABEL_125;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_1B41012A0(v162);
                                                                  }

                                                                  v110 = 0;
                                                                  goto LABEL_119;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                sub_1B41012A0(v162);
                                                              }

                                                              v105 = 0;
                                                              goto LABEL_113;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            sub_1B41012A0(v162);
                                                          }

                                                          v93 = 0;
                                                          goto LABEL_98;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        sub_1B41012A0(v162);
                                                      }

                                                      v88 = 0;
                                                      goto LABEL_92;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    sub_1B41012A0(v162);
                                                  }

                                                  v84 = 0;
                                                  goto LABEL_86;
                                                }
                                              }

                                              else
                                              {
                                                sub_1B41012A0(v162);
                                              }

                                              v79 = 0;
                                              goto LABEL_80;
                                            }
                                          }

                                          else
                                          {
                                            sub_1B41012A0(v162);
                                          }

                                          v74 = 0;
                                          goto LABEL_74;
                                        }
                                      }

                                      else
                                      {
                                        sub_1B41012A0(v162);
                                      }

                                      v69 = 0;
                                      goto LABEL_68;
                                    }
                                  }

                                  else
                                  {
                                    sub_1B41012A0(v162);
                                  }

                                  v64 = 0;
                                  goto LABEL_62;
                                }
                              }

                              else
                              {
                                sub_1B41012A0(v162);
                              }

                              v59 = 0;
                              goto LABEL_56;
                            }
                          }

                          else
                          {
                            sub_1B41012A0(v162);
                          }

                          v54 = 0;
                          goto LABEL_50;
                        }
                      }

                      else
                      {
                        sub_1B41012A0(v162);
                      }

                      v49 = 0;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    sub_1B41012A0(v162);
                  }

                  v44 = 0;
                  goto LABEL_38;
                }

                goto LABEL_31;
              }

LABEL_140:
              sub_1B410F21C(&v164);
              v39 = v166;
              if (v166)
              {
                goto LABEL_32;
              }

              goto LABEL_141;
            }
          }

          sub_1B41012A0(v162);
        }

        else
        {
          v36 = v156;
        }
      }

      else
      {

        sub_1B41012A0(v162);
        v33 = v157;
        v36 = v156;
        v34 = v158;
      }

      v164 = 0u;
      v165 = 0u;
      goto LABEL_140;
    }

LABEL_197:
    __break(1u);
    return result;
  }

  v33 = v157;
  v36 = v156;
  v34 = v158;
LABEL_31:
  v39 = v166;
  if (v166)
  {
    goto LABEL_32;
  }

LABEL_141:
  v125 = sub_1B4125430();
  (*(v36 + 16))(v34, v125, v33);

  v126 = sub_1B429FA48();
  v127 = sub_1B42A0148();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v162[0] = v129;
    *v128 = 136315394;
    v130 = sub_1B40DDE8C(v154, a2, v162);

    *(v128 + 4) = v130;
    *(v128 + 12) = 2080;
    v131 = sub_1B40DDE8C(v155, v19, v162);

    *(v128 + 14) = v131;
    _os_log_impl(&dword_1B40D2000, v126, v127, "Failed to load line wrapping config for locale %s and category %s", v128, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v129, -1, -1);
    MEMORY[0x1B8C74FA0](v128, -1, -1);

    (*(v36 + 8))(v158, v157);
  }

  else
  {

    (*(v36 + 8))(v34, v33);
  }

  type metadata accessor for CRLineWrappingParameters(v153);
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_1B412CB94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1B4100E08(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1B40E2888(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t CRLineWrappingParameters.description.getter()
{
  sub_1B42A0408();
  MEMORY[0x1B8C72530](0xD000000000000017, 0x80000001B42B44D0);
  [v0 heightSimilarityRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B44F0);
  [v0 leadingDistanceRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B4520);
  [v0 verticalSpacingRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000002BLL, 0x80000001B42B4550);
  [v0 newParagraphIndentDistanceRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000002CLL, 0x80000001B42B4580);
  [v0 oversegmentedDistanceHeightRatioTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000026, 0x80000001B42B45B0);
  [v0 smallestVerticalDistanceHeightRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000025, 0x80000001B42B45E0);
  [v0 maximumVerticalDistanceGrowthRatio];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001BLL, 0x80000001B42B4610);
  [v0 angleSimilarityThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000013, 0x80000001B42B4630);
  [v0 widthGrowthLimit];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001ALL, 0x80000001B42B4650);
  [v0 tokenCountIncreaseLimit];
  v1 = sub_1B42A0648();
  MEMORY[0x1B8C72530](v1);

  MEMORY[0x1B8C72530](0xD000000000000034, 0x80000001B42B4670);
  [v0 oversegmentedDistanceHeightRatioListItemTolerance];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000019, 0x80000001B42B46B0);
  [v0 correctionMode];
  type metadata accessor for CRWrappingCorrectionMode(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000016, 0x80000001B42B46D0);
  [v0 confidenceThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001DLL, 0x80000001B42B46F0);
  [v0 contextConfidenceThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD000000000000013, 0x80000001B42B4710);
  [v0 lmScoreThreshold];
  sub_1B42A0038();
  MEMORY[0x1B8C72530](0xD000000000000015, 0x80000001B42B4730);
  [v0 lmScoreEOSMinRatio];
  sub_1B42A0038();
  MEMORY[0x1B8C72530](0xD000000000000010, 0x80000001B42B4750);
  [v0 lmContextSize];
  v2 = sub_1B42A0648();
  MEMORY[0x1B8C72530](v2);

  MEMORY[0x1B8C72530](0xD000000000000017, 0x80000001B42B4770);
  [v0 probabilityThreshold];
  sub_1B42A0058();
  MEMORY[0x1B8C72530](0xD00000000000001ELL, 0x80000001B42B4790);
  [v0 wrappingEvaluationThreshold];
  type metadata accessor for CRWrapEvaluation(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000020, 0x80000001B42B47B0);
  [v0 noWrappingEvaluationThreshold];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000028, 0x80000001B42B47E0);
  [v0 caseWrappingScoreWithNoCapitalization];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000028, 0x80000001B42B4810);
  [v0 punctuationWrappingScoreWithEndingMOS];
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000033, 0x80000001B42B4840);
  [v0 punctuationWrappingScoreWithNoClosingPunctuation];
  sub_1B42A04E8();
  return 0;
}

void __swiftcall CRLineWrappingParameters.init()(CRLineWrappingParameters *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B412D3F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B429FA68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  if (!a2)
  {
    v14 = sub_1B4125430();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_1B429FA48();
    v16 = sub_1B42A0148();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      MEMORY[0x1B8C74FA0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  if (a1 == 0x737961776C61 && a2 == 0xE600000000000000 || (sub_1B42A0678() & 1) != 0)
  {
    return 2;
  }

  if ((a1 != 0xD000000000000012 || 0x80000001B42B4D50 != a2) && (sub_1B42A0678() & 1) == 0)
  {
    if ((a1 != 0x64656C6261736964 || a2 != 0xE800000000000000) && (sub_1B42A0678() & 1) == 0)
    {
      v18 = sub_1B4125430();
      (*(v5 + 16))(v12, v18, v4);

      v19 = sub_1B429FA48();
      v20 = sub_1B42A0148();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1B40DDE8C(a1, a2, &v24);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B8C74FA0](v22, -1, -1);
        MEMORY[0x1B8C74FA0](v21, -1, -1);
      }

      (*(v5 + 8))(v12, v4);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1B412D774()
{
  result = sub_1B41300CC(MEMORY[0x1E69E7CC0]);
  dword_1ED95F4A8 = 0;
  qword_1ED95F4B0 = result;
  return result;
}

unint64_t sub_1B412D7A4()
{
  result = sub_1B41300CC(MEMORY[0x1E69E7CC0]);
  dword_1ED95F4C0 = 0;
  qword_1ED95F4C8 = result;
  return result;
}

uint64_t sub_1B412D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38 - v16;
  v18 = *a4;
  if (!*(*a4 + 16) || (sub_1B412E6FC(a1), (v19 & 1) == 0))
  {
    v4 = sub_1B41302A8(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *a4;
    sub_1B412FF24(v4, a1, isUniquelyReferenced_nonNull_native);
    v18 = v41;
    *a4 = v41;
  }

  sub_1B40E6464(a1, v17, &unk_1EB884870);
  if (!*(v18 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = sub_1B412E6FC(a1);
  if ((v22 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(*(v18 + 56) + 8 * v21);
  if (*(v23 + 16))
  {

    v24 = sub_1B40F0030(a2, a3);
    if (v25)
    {
      v4 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  a1 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_26;
  }

  v38 = v9;
  v39 = v10;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B40E6464(v17, v13, &unk_1EB884870);
  v41 = *a4;
  v27 = v41;
  v9 = sub_1B412E6FC(v13);
  v29 = *(v27 + 16);
  v30 = (v28 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v4) = v28;
  if (*(v27 + 24) >= v31)
  {
    if (v26)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_28:
    sub_1B412FB90();
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  sub_1B412F000(v31, v26);
  v32 = sub_1B412E6FC(v13);
  if ((v4 & 1) != (v33 & 1))
  {
LABEL_30:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v9 = v32;
  if ((v4 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_20:
  v34 = v41;
  v35 = *(*(v41 + 56) + 8 * v9);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v35;
  sub_1B412FDC0(a1, a2, a3, v36);
  if (v40)
  {
    *(*(v34 + 56) + 8 * v9) = v40;

    sub_1B40E26E8(v13, &unk_1EB884870);
    sub_1B40E26E8(v17, &unk_1EB884870);
  }

  else
  {
    sub_1B40E26E8(*(v34 + 48) + *(v39 + 72) * v9, &unk_1EB884870);
    sub_1B412F540(v9, v34);
    sub_1B40E26E8(v13, &unk_1EB884870);
    result = sub_1B40E26E8(v17, &unk_1EB884870);
  }

  *a4 = v34;
  return result;
}

void static CRLoadCounter.record(unload:owner:)(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412DBFC(a2, v3, v5);

  os_unfair_lock_unlock(&dword_1ED95F4A8);
}

uint64_t sub_1B412DBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  p_info = &OBJC_METACLASS___CRDetectionResult.info;
  v16 = qword_1ED95F4B0;
  if (!*(qword_1ED95F4B0 + 16) || (sub_1B412E6FC(a1), (v17 & 1) == 0))
  {
    v18 = sub_1B41302A8(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = qword_1ED95F4B0;
    sub_1B412FF24(v18, a1, isUniquelyReferenced_nonNull_native);
    v16 = v41;
    qword_1ED95F4B0 = v41;
  }

  sub_1B40E6464(a1, v14, &unk_1EB884870);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v20 = sub_1B412E6FC(a1);
  if ((v21 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = *(*(v16 + 56) + 8 * v20);
  if (*(v22 + 16))
  {

    v23 = sub_1B40F0030(a2, a3);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  a1 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_26;
  }

  v39 = v7;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B40E6464(v14, v10, &unk_1EB884870);
  v27 = qword_1ED95F4B0;
  v41 = qword_1ED95F4B0;
  p_info = sub_1B412E6FC(v10);
  v29 = *(v27 + 16);
  v30 = (v28 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  LOBYTE(v7) = v28;
  if (*(v27 + 24) >= v31)
  {
    if (v26)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_28:
    sub_1B412FB90();
    if ((v7 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  sub_1B412F000(v31, v26);
  v32 = sub_1B412E6FC(v10);
  if ((v7 & 1) != (v33 & 1))
  {
LABEL_30:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  p_info = v32;
  if ((v7 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_20:
  v34 = v41;
  v35 = *(*(v41 + 56) + 8 * p_info);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v35;
  sub_1B412FDC0(a1, a2, a3, v36);
  if (v40)
  {
    *(*(v34 + 56) + 8 * p_info) = v40;

    sub_1B40E26E8(v10, &unk_1EB884870);
    sub_1B40E26E8(v14, &unk_1EB884870);
  }

  else
  {
    sub_1B40E26E8(*(v34 + 48) + *(v39 + 72) * p_info, &unk_1EB884870);
    sub_1B412F540(p_info, v34);
    sub_1B40E26E8(v10, &unk_1EB884870);
    result = sub_1B40E26E8(v14, &unk_1EB884870);
  }

  qword_1ED95F4B0 = v34;
  return result;
}

uint64_t sub_1B412DFC8(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4, uint64_t *a5)
{
  swift_getMetatypeMetadata();
  v9 = sub_1B429FBE8();
  v11 = v10;
  if (*a3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(a4);
  v12 = *a5;
  if (*(*a5 + 16) && (v13 = sub_1B412E6FC(a2), (v14 & 1) != 0) && (v15 = *(*(v12 + 56) + 8 * v13), *(v15 + 16)) && (, v16 = sub_1B40F0030(v9, v11), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {

    v19 = 0;
  }

  os_unfair_lock_unlock(a4);
  return v19;
}

void static CRLoadCounter.resetTotal(owner:)()
{
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  if (*(qword_1ED95F4C8 + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v0 = qword_1ED95F4C8;
    qword_1ED95F4C8 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852E8);
    sub_1B42A04F8();
    qword_1ED95F4C8 = v0;
  }

  os_unfair_lock_unlock(&dword_1ED95F4C0);
}

uint64_t static CRLoadCounter.debugDescription.getter()
{
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  sub_1B42A0408();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8852F0);
  sub_1B41304B0();
  v0 = sub_1B429FB08();
  v2 = v1;

  MEMORY[0x1B8C72530](v0, v2);

  MEMORY[0x1B8C72530](0xA3A6C61746F540ALL, 0xE800000000000000);
  v3 = sub_1B429FB08();
  MEMORY[0x1B8C72530](v3);

  os_unfair_lock_unlock(&dword_1ED95F4C0);
  os_unfair_lock_unlock(&dword_1ED95F4A8);
  return 0xA3A657669746341;
}

CRLoadCounterFacade __swiftcall CRLoadCounterFacade.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1B412E6FC(uint64_t a1)
{
  v2 = sub_1B429F6D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  sub_1B42A0778();
  sub_1B40E6464(a1, v10, &unk_1EB884870);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1B42A0798();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1B42A0798();
    sub_1B4130670(&unk_1EB884860);
    sub_1B429FB38();
    (*(v3 + 8))(v6, v2);
  }

  v11 = sub_1B42A07A8();
  return sub_1B412E8F8(a1, v11);
}

unint64_t sub_1B412E8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885310);
  MEMORY[0x1EEE9AC00](v41, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870) - 8;
  MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v32 - v18;
  v43 = v3;
  v20 = -1 << *(v3 + 32);
  v21 = a2 & ~v20;
  v40 = v3 + 64;
  if ((*(v3 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = (v6 + 48);
    v24 = *(v16 + 72);
    v38 = v17;
    v39 = v24;
    v32 = (v6 + 48);
    v33 = (v6 + 32);
    v36 = (v6 + 8);
    v37 = ~v20;
    while (1)
    {
      sub_1B40E6464(*(v43 + 48) + v39 * v21, v19, &unk_1EB884870);
      v25 = *(v41 + 48);
      sub_1B40E6464(v19, v11, &unk_1EB884870);
      sub_1B40E6464(v42, &v11[v25], &unk_1EB884870);
      v26 = *v23;
      if ((*v23)(v11, 1, v5) == 1)
      {
        break;
      }

      v27 = v38;
      sub_1B40E6464(v11, v38, &unk_1EB884870);
      if (v26(&v11[v25], 1, v5) == 1)
      {
        sub_1B40E26E8(v19, &unk_1EB884870);
        (*v36)(v27, v5);
        v22 = v37;
LABEL_4:
        sub_1B40E26E8(v11, &qword_1EB885310);
        goto LABEL_5;
      }

      v28 = &v11[v25];
      v29 = v34;
      (*v33)(v34, v28, v5);
      sub_1B4130670(&unk_1EB884850);
      v35 = sub_1B429FB58();
      v30 = *v36;
      (*v36)(v29, v5);
      sub_1B40E26E8(v19, &unk_1EB884870);
      v30(v27, v5);
      v23 = v32;
      sub_1B40E26E8(v11, &unk_1EB884870);
      v22 = v37;
      if (v35)
      {
        return v21;
      }

LABEL_5:
      v21 = (v21 + 1) & v22;
      if (((*(v40 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return v21;
      }
    }

    sub_1B40E26E8(v19, &unk_1EB884870);
    if (v26(&v11[v25], 1, v5) == 1)
    {
      sub_1B40E26E8(v11, &unk_1EB884870);
      return v21;
    }

    goto LABEL_4;
  }

  return v21;
}

uint64_t sub_1B412ED60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318);
  v34 = a2;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B412F000(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1B429F6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v50 = &v45 - v14;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308);
  v57 = a2;
  result = sub_1B42A05D8();
  v17 = result;
  if (*(v15 + 16))
  {
    v54 = v5;
    v46 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v52 = (v6 + 48);
    v48 = (v6 + 32);
    v47 = (v6 + 8);
    v24 = result + 64;
    v53 = v15;
    v25 = v50;
    v51 = result;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v28 = (v22 - 1) & v22;
LABEL_15:
      v31 = v27 | (v18 << 6);
      v32 = *(v15 + 48);
      v59 = *(v56 + 72);
      v60 = v28;
      v33 = v32 + v59 * v31;
      if (v57)
      {
        sub_1B40E3B64(v33, v25);
        v58 = *(*(v15 + 56) + 8 * v31);
      }

      else
      {
        sub_1B40E6464(v33, v25, &unk_1EB884870);
        v58 = *(*(v15 + 56) + 8 * v31);
      }

      sub_1B42A0778();
      v34 = v55;
      sub_1B40E6464(v25, v55, &unk_1EB884870);
      v35 = v54;
      if ((*v52)(v34, 1, v54) == 1)
      {
        sub_1B42A0798();
      }

      else
      {
        v36 = v49;
        (*v48)(v49, v34, v35);
        sub_1B42A0798();
        sub_1B4130670(&unk_1EB884860);
        sub_1B429FB38();
        v25 = v50;
        (*v47)(v36, v35);
      }

      result = sub_1B42A07A8();
      v17 = v51;
      v37 = -1 << *(v51 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v15 = v53;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_1B40E3B64(v25, v17[6] + v59 * v26);
      *(v17[7] + 8 * v26) = v58;
      ++v17[2];
      v22 = v60;
    }

    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v30 = v19[v18];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v57 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_37;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

void sub_1B412F540(int64_t a1, uint64_t a2)
{
  v4 = sub_1B429F6D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v16 = a2 + 64;
  v17 = -1 << *(a2 + 32);
  v18 = (a1 + 1) & ~v17;
  if ((*(a2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v48 = v4;
    v19 = ~v17;
    v20 = sub_1B42A0388();
    v21 = *(v8 + 72);
    v22 = v19;
    v45 = (v5 + 48);
    v46 = v21;
    v41 = (v5 + 8);
    v42 = (v5 + 32);
    v23 = v21;
    v43 = v15;
    v47 = (v20 + 1) & v19;
    do
    {
      v24 = v23 * v18;
      sub_1B40E6464(*(a2 + 48) + v23 * v18, v15, &unk_1EB884870);
      sub_1B42A0778();
      sub_1B40E6464(v15, v11, &unk_1EB884870);
      v25 = v48;
      if ((*v45)(v11, 1, v48) == 1)
      {
        sub_1B42A0798();
      }

      else
      {
        v26 = a1;
        v27 = a2;
        v28 = v22;
        v29 = v16;
        v30 = v44;
        (*v42)(v44, v11, v25);
        sub_1B42A0798();
        sub_1B4130670(&unk_1EB884860);
        sub_1B429FB38();
        v31 = v30;
        v16 = v29;
        v22 = v28;
        a2 = v27;
        a1 = v26;
        v15 = v43;
        (*v41)(v31, v25);
      }

      v32 = sub_1B42A07A8();
      sub_1B40E26E8(v15, &unk_1EB884870);
      v33 = v32 & v22;
      if (a1 >= v47)
      {
        v23 = v46;
        if (v33 < v47)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = v46;
        if (v33 >= v47)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v33)
      {
LABEL_13:
        if (v23 * a1 < v24 || *(a2 + 48) + v23 * a1 >= (*(a2 + 48) + v24 + v23))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 * a1 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v18);
        if (a1 != v18 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v18;
        }
      }

LABEL_4:
      v18 = (v18 + 1) & v22;
    }

    while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B412F97C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  result = sub_1B40E3B64(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

void *sub_1B412FA28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318);
  v2 = *v0;
  v3 = sub_1B42A05C8();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1B412FB90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308);
  v6 = *v0;
  v7 = sub_1B42A05C8();
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
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1B40E6464(*(v6 + 48) + v22, v5, &unk_1EB884870);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_1B40E3B64(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
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

unint64_t sub_1B412FDC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B40F0030(a2, a3);
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
      sub_1B412ED60(v16, a4 & 1);
      result = sub_1B40F0030(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B42A06E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B412FA28();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1B412FF24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  v12 = *v3;
  v14 = sub_1B412E6FC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B412FB90();
      goto LABEL_7;
    }

    sub_1B412F000(v17, a3 & 1);
    v22 = sub_1B412E6FC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B40E6464(a2, v11, &unk_1EB884870);
      return sub_1B412F97C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_1B41300CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885300);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885308);
    v8 = sub_1B42A05F8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B40E6464(v10, v6, &qword_1EB885300);
      result = sub_1B412E6FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
      result = sub_1B40E3B64(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B41302A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885318);
    v3 = sub_1B42A05F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B40F0030(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void _s15TextRecognition13CRLoadCounterV6record4load5owneryypXp_10Foundation4UUIDVSgtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412D7D8(a2, v3, v5, &qword_1ED95F4B0);
  os_unfair_lock_unlock(&dword_1ED95F4A8);
  if (qword_1ED95F4B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4C0);
  sub_1B412D7D8(a2, v3, v5, &qword_1ED95F4C8);

  os_unfair_lock_unlock(&dword_1ED95F4C0);
}

unint64_t sub_1B41304B0()
{
  result = qword_1EB8852F8;
  if (!qword_1EB8852F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884870);
    sub_1B4130670(&unk_1EB884860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8852F8);
  }

  return result;
}

void sub_1B4130550(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v3 = sub_1B429FBE8();
  v5 = v4;
  if (qword_1ED95F4A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F4A8);
  sub_1B412DBFC(a2, v3, v5);

  os_unfair_lock_unlock(&dword_1ED95F4A8);
}

unint64_t type metadata accessor for CRLoadCounterFacade()
{
  result = qword_1EB895AD8[0];
  if (!qword_1EB895AD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB895AD8);
  }

  return result;
}

uint64_t sub_1B4130670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B429F6D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B41306B4()
{
  result = qword_1ED95E050;
  if (!qword_1ED95E050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E050);
  }

  return result;
}

uint64_t sub_1B4130700(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B4130BB4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8C72CD0](0, a1);
    result = sub_1B42A0218();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1B42A0218();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B41308CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B42A0488();
    v4 = a1 + 40;
    do
    {
      sub_1B42A0208();
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void __swiftcall CRNormalizedPolyline.transformed(_:)(CRNormalizedPolyline *__return_ptr retstr, CGAffineTransform *a2)
{
  v3 = v2;
  a = a2->a;
  b = a2->b;
  c = a2->c;
  d = a2->d;
  tx = a2->tx;
  ty = a2->ty;
  v10 = [v2 pointValues];
  sub_1B41306B4();
  v11 = sub_1B429FDF8();

  v12 = sub_1B4130700(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    *&v29.a = MEMORY[0x1E69E7CC0];
    sub_1B4130BB4(0, v13, 0);
    v14 = v29.a;
    v15 = v12 + 40;
    do
    {
      v31 = *(v15 - 8);
      v30.a = a;
      v30.b = b;
      v30.c = c;
      v30.d = d;
      v30.tx = tx;
      v30.ty = ty;
      v18 = CGPointApplyAffineTransform(v31, &v30);
      y = v18.y;
      x = v18.x;
      v29.a = v14;
      v20 = *(*&v14 + 16);
      v19 = *(*&v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4130BB4((v19 > 1), v20 + 1, 1);
        y = v18.y;
        x = v18.x;
        v14 = v29.a;
      }

      *(*&v14 + 16) = v20 + 1;
      v21 = *&v14 + 16 * v20;
      *(v21 + 32) = x;
      *(v21 + 40) = y;
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  [v3 normalizationSize];
  v23 = v22;
  v25 = v24;
  v30.a = a;
  v30.b = b;
  v30.c = c;
  v30.d = d;
  v30.tx = tx;
  v30.ty = ty;
  CGAffineTransformInvert(&v29, &v30);
  v30 = v29;
  v32.width = v23;
  v32.height = v25;
  v26 = CGSizeApplyAffineTransform(v32, &v30);
  sub_1B41308CC(*&v14);

  v27 = objc_allocWithZone(CRNormalizedPolyline);
  v28 = sub_1B429FDE8();

  [v27 initWithNormalizedPointValues:v28 size:{v26.width, v26.height}];
}

char *sub_1B4130BB4(char *a1, int64_t a2, char a3)
{
  result = sub_1B4130BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4130BD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1B4130CD8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextOrientationModelV1.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextOrientationModelV1.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextOrientationModelV1();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextOrientationModelV1.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextOrientationModelV1.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4131468(a1, a2);

  return v3;
}

id CRTextOrientationModelV1.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextOrientationModelV1();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4131468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextOrientationModelV1();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B4131628()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelArabicV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelArabicV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelArabicV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelArabicV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelArabicV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4131D08(a1, a2);

  return v3;
}

id CRTextRecognizerModelArabicV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelArabicV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4131D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelArabicV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B4131EC8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelChineseV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelChineseV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelChineseV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelChineseV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelChineseV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B413255C(a1, a2);

  return v3;
}

id CRTextRecognizerModelChineseV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelChineseV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B413255C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelChineseV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B413271C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelJapaneseV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelJapaneseV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelJapaneseV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelJapaneseV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4132DFC(a1, a2);

  return v3;
}

id CRTextRecognizerModelJapaneseV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4132DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelJapaneseV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B4132FBC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelKoreanV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelKoreanV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelKoreanV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelKoreanV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B41336D8(a1, a2);

  return v3;
}

id CRTextRecognizerModelKoreanV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B41336D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelKoreanV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B4133898()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelLatinCyrillicV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelLatinCyrillicV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelLatinCyrillicV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelLatinCyrillicV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4133F68(a1, a2);

  return v3;
}

id CRTextRecognizerModelLatinCyrillicV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4133F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

void sub_1B4134128()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1B429FB88();
  v3 = sub_1B429FB88();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    sub_1B429FB98();

    sub_1B429F5D8();
  }

  else
  {
    __break(1u);
  }
}

id CRTextRecognizerModelThaiV3.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRTextRecognizerModelThaiV3.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelThaiV3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRTextRecognizerModelThaiV3.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_1B429F6A8();
    (*(v7 + 8))(a2, v6);
  }

  v13[0] = 0;
  v9 = [objc_allocWithZone(v3) initWithConfiguration:a1 owner:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v9;
}

id CRTextRecognizerModelThaiV3.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = sub_1B4134844(a1, a2);

  return v3;
}

id CRTextRecognizerModelThaiV3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRTextRecognizerModelThaiV3();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B4134844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  sub_1B40DDA80(a2, &v18 - v8);
  v10 = sub_1B429F6D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1B429F6A8();
    (*(v11 + 8))(v9, v10);
  }

  v19[0] = 0;
  v13 = type metadata accessor for CRTextRecognizerModelThaiV3();
  v18.receiver = v3;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_owner_error_, a1, v12, v19);

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_1B429F598();

    swift_willThrow();
  }

  sub_1B40EF494(a2);
  return v14;
}

id CREngineFast.confidenceThresholdProvider.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CREngineFast.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineFast.init(configuration:owner:)(a1, a2);
  return v4;
}

uint64_t CREngineFast.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v61 = a2;
  v60 = sub_1B429F9B8();
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v55 - v10;
  v12 = sub_1B429F9E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  v62 = v2;
  *(v2 + 72) = 0;
  v17 = sub_1B410F8A0();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_1B410F91C();
  v19 = *v18;
  v59 = *(v18 + 16);
  sub_1B429F9A8();
  v20 = sub_1B429F9C8();
  v58 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v55 = v16;
  v56 = v7;
  v57 = a1;
  if (v59)
  {
    if (!(v19 >> 32))
    {
      if ((v19 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v19 >> 16 <= 0x10)
      {
        v22 = v20;
        v19 = &v66;
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v19)
  {
    __break(1u);
    goto LABEL_20;
  }

  v22 = v20;
LABEL_9:
  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v22, v58, v24, v19, "", v23, 2u);
  MEMORY[0x1B8C74FA0](v23, -1, -1);
  v7 = v56;
  a1 = v57;
  v20 = v22;
  v16 = v55;
LABEL_10:

  v25 = v60;
  (*(v4 + 16))(v7, v11, v60);
  sub_1B429FA28();
  swift_allocObject();
  sub_1B429FA18();
  (*(v4 + 8))(v11, v25);
  (*(v13 + 8))(v16, v12);
  v26 = v62;
  sub_1B40E33EC(a1, v62 + 32);
  *(v26 + 80) = 0;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v27);
  if ((*(v28 + 312))(v27, v28))
  {
    v29 = objc_opt_self();
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v30);
    (*(v31 + 560))(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    v32 = sub_1B429FAE8();

    v33 = [v29 languageSetFromOptionsDictionary_];

    v34 = [v33 firstObject];
    if (v34)
    {
      sub_1B42A0348();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v65[0] = v63;
    v65[1] = v64;
    if (*(&v64 + 1))
    {
      if (swift_dynamicCast())
      {
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_0(a1, v35);
        v60 = (*(v36 + 24))(v35, v36);
        v37 = a1;
        v38 = a1[3];
        v39 = a1[4];
        __swift_project_boxed_opaque_existential_0(v37, v38);
        (*(v39 + 432))(v38, v39);
        v40 = v37[3];
        v41 = v37[4];
        __swift_project_boxed_opaque_existential_0(v37, v40);
        v42 = (*(v41 + 560))(v40, v41);
        sub_1B40EFB78(v42);

        v43 = objc_allocWithZone(CRLanguageCorrectionFacade);
        v44 = sub_1B429FB88();

        v45 = sub_1B429FDE8();

        v26 = v62;
        v46 = sub_1B429FAE8();
        a1 = v37;

        v47 = [v43 initWithRevision:v60 localeCode:v44 customWords:v45 numberResultsNeeded:12 options:v46];

        v48 = *(v26 + 72);
        *(v26 + 72) = v47;
      }
    }

    else
    {
      sub_1B40E26E8(v65, &unk_1EB885330);
    }
  }

  v49 = objc_allocWithZone(CRPerformanceStatistics);
  v50 = sub_1B429FB88();
  v51 = [v49 initWithName:v50 measureRecentPeak:0];

  *(v26 + 24) = v51;
  type metadata accessor for CRConfidenceThresholdProviderFacade();
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = sub_1B40ED1D8(sub_1B4135CE0, v52);
  v54 = *(v26 + 16);
  *(v26 + 16) = v53;

  sub_1B4135158();

  sub_1B40E26E8(v61, &unk_1EB884870);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v26;
}

uint64_t sub_1B4135158()
{
  v0 = sub_1B429F9F8();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B429F9E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B410F8A0();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_1B410F91C();
  v30 = *v14;
  v15 = *(v14 + 16);
  v16 = sub_1B429F9C8();
  sub_1B429FA08();
  v26 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  v25 = v4;
  if ((v15 & 1) == 0)
  {
    if (v30)
    {
      v18 = v29;
LABEL_9:

      sub_1B429FA38();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v18, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v18, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v16, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1B8C74FA0](v22, -1, -1);
      v4 = v25;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v30 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    v18 = v29;
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t CREngineFast.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B40DD740;

  return (sub_1B4135D8C)(a1, a2, a3, a5, a6);
}

void sub_1B41355A8(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v4(a3);
}

void CREngineFast.smallestImageSizeForText(withRelativeHeight:originalImageSize:)(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }
}

uint64_t CREngineFast.computeDevice()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = v0[7];
  v6 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 4, v5);
  (*(v6 + 96))(v5, v6);
  v7 = sub_1B429FA88();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1B40E26E8(v4, &unk_1EB884C80);
    return 0;
  }

  else
  {
    v10 = sub_1B40EFE04();
    (*(v8 + 8))(v4, v7);
    return v10;
  }
}

uint64_t static CREngineFast.supportedComputeDevices(revision:)()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v3 = sub_1B429FDF8();

  return v3;
}

id *CREngineFast.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 4));

  return v0;
}

uint64_t CREngineFast.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 4));

  return swift_deallocClassInstance();
}

uint64_t sub_1B4135928(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineFast.init(configuration:owner:)(a1, a2);
  return v4;
}

uint64_t sub_1B4135980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B40E28F0;

  return (sub_1B4135D8C)(a1, a2, a3, a5, a6);
}

void sub_1B4135A5C(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }
}

uint64_t sub_1B4135A7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = v0[7];
  v6 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 4, v5);
  (*(v6 + 96))(v5, v6);
  v7 = sub_1B429FA88();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1B40E26E8(v4, &unk_1EB884C80);
    return 0;
  }

  else
  {
    v10 = sub_1B40EFE04();
    (*(v8 + 8))(v4, v7);
    return v10;
  }
}

uint64_t sub_1B4135BE0()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v3 = sub_1B429FDF8();

  return v3;
}

id sub_1B4135CE0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = objc_allocWithZone(CRConfidenceThresholds);
    LODWORD(v1) = 0.25;
    LODWORD(v2) = 1.0;
    v3 = [v0 initWithMediumThreshold:v1 highThreshold:v2];

    return v3;
  }

  else
  {
    v5 = [objc_opt_self() defaultConfidenceThresholds];

    return v5;
  }
}

uint64_t sub_1B4135D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a1;
  v6[15] = *v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4135E4C, 0, 0);
}

void sub_1B4135E4C()
{
  v155 = v0;
  v1 = v0;
  v154[3] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 112);
  if (*(v2 + 80))
  {
    sub_1B429FEC8();
    sub_1B4105D4C();
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();
    goto LABEL_18;
  }

  v3 = v0 + 72;
  v4 = *(v0 + 120);
  *(v1 + 72) = 0;
  *v149 = *(v1 + 80);
  v152 = *(v1 + 96);
  v5 = sub_1B410F97C();
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = *v149;
  *(v8 + 40) = v152;
  *(v8 + 56) = v4;
  sub_1B40FFA20(v6, v7, sub_1B413753C, v8, MEMORY[0x1E69E7CA8]);
  v9 = 0;
  v153 = v2;
  v10 = *(v1 + 88);

  inst_meths = v10->inst_meths;
  class_meths = v10->class_meths;
  __swift_project_boxed_opaque_existential_0(v10, inst_meths);
  if ((class_meths[51])(inst_meths, class_meths) <= 0.0)
  {
    v151 = 0;
  }

  else
  {
    v13 = *v3;
    if (!*v3)
    {
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v14 = [*v3 detectorResults];
    if (v14 && (v15 = v14, v16 = [v14 textFeatures], v15, v16))
    {
      sub_1B40E27B4(0, &qword_1ED95E6D8);
      *v150 = *(v1 + 80);
      v17 = sub_1B429FDF8();

      v2 = swift_task_alloc();
      *(v2 + 16) = *v150;
      v18 = sub_1B40F06F0(sub_1B4137668, v2, v17);
      v9 = 0;

      v151 = 0;
    }

    else
    {
      v151 = 0;
      v18 = 0;
    }

    v19 = [v13 detectorResults];
    if (v19)
    {
      v20 = v19;
      if (v18)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        v21 = sub_1B429FDE8();
      }

      else
      {
        v21 = 0;
      }

      [v20 setTextFeatures_];
    }

    else
    {
    }
  }

  if (*(v153 + 80))
  {
    sub_1B429FEC8();
    sub_1B4105D4C();
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();

    goto LABEL_18;
  }

  v23 = v10->inst_meths;
  v24 = v10->class_meths;
  __swift_project_boxed_opaque_existential_0(*(v1 + 88), v23);
  v25 = (v24[24])(v23, v24);
  v26 = 0x1E7BC4000;
  if (v25)
  {
    if (*v3)
    {
      v27 = *v3;
      v28 = [v27 detectorResults];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 textFeatures];

        if (v30)
        {
          sub_1B40E27B4(0, &qword_1ED95E6D8);
          v31 = sub_1B429FDF8();

          goto LABEL_26;
        }
      }

      goto LABEL_40;
    }

    goto LABEL_166;
  }

  aBlock = (v1 + 16);
  v32 = *(*(v1 + 112) + 72);
  if (v32)
  {
    v34 = v10->inst_meths;
    v33 = v10->class_meths;
    __swift_project_boxed_opaque_existential_0(*(v1 + 88), v34);
    v35 = v33[69];
    v36 = v32;
    v35(v154, v34, v33);
    v37 = LOBYTE(v154[0]);

    v38 = *(v1 + 72);
    if (v37 != 1)
    {
      if (v38)
      {
        v97 = v38;
        v98 = [(__objc2_prot *)v97 detectorResults];
        v151 = v36;
        if (v98 && (v99 = v98, v100 = [v98 textFeatures], v99, v100))
        {
          v101 = v97;
          sub_1B40E27B4(0, &qword_1ED95E6D8);
          sub_1B429FDF8();
        }

        else
        {
          v101 = v97;
        }

        v110 = *(v1 + 96);
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        v111 = sub_1B429FDE8();

        if (v110)
        {
          v112 = *(v1 + 96);
          v113 = *(v1 + 104);
          v114 = swift_allocObject();
          *(v114 + 16) = v112;
          *(v114 + 24) = v113;
          v115 = swift_allocObject();
          v3 = sub_1B4137600;
          *(v115 + 16) = sub_1B4137600;
          *(v115 + 24) = v114;
          *(v1 + 48) = sub_1B4137628;
          *(v1 + 56) = v115;
          *(v1 + 16) = MEMORY[0x1E69E9820];
          *(v1 + 24) = 1107296256;
          *(v1 + 32) = sub_1B41355A8;
          *(v1 + 40) = &block_descriptor_4;
          v116 = _Block_copy(aBlock);
        }

        else
        {
          v116 = 0;
          v3 = 0;
        }

        v27 = v101;
        v123 = [v151 applyLanguageCorrectionToResults:v111 image:*(v1 + 80) latticeResults:0 progressHandler:v116];
        _Block_release(v116);

        v31 = sub_1B429FDF8();
        v2 = 0;
        v26 = 0x1E7BC4000;
        goto LABEL_121;
      }

      goto LABEL_169;
    }

    if (v38)
    {
      v39 = v38;
      v40 = [(__objc2_prot *)v39 detectorResults];
      if (v40 && (v41 = v40, v42 = [v40 textFeatures], v41, v42))
      {
        v43 = v39;
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        sub_1B429FDF8();
      }

      else
      {
        v43 = v39;
      }

      v102 = *(v1 + 96);
      sub_1B40E27B4(0, &qword_1ED95E6D8);
      v103 = sub_1B429FDE8();

      if (v102)
      {
        v104 = *(v1 + 96);
        v105 = *(v1 + 104);
        v106 = swift_allocObject();
        *(v106 + 16) = v104;
        *(v106 + 24) = v105;
        v107 = swift_allocObject();
        v146 = sub_1B4137780;
        *(v107 + 16) = sub_1B4137780;
        *(v107 + 24) = v106;
        *(v1 + 48) = sub_1B413777C;
        *(v1 + 56) = v107;
        v108 = (v1 + 16);
        *(v1 + 16) = MEMORY[0x1E69E9820];
        *(v1 + 24) = 1107296256;
        *(v1 + 32) = sub_1B41355A8;
        *(v1 + 40) = &block_descriptor_25;
        v109 = _Block_copy(aBlock);
      }

      else
      {
        v109 = 0;
        v146 = 0;
        v108 = (v1 + 16);
      }

      v117 = *(v1 + 80);
      *(v1 + 16) = 0;
      v118 = [v36 applyLanguageCorrectionToResults:v103 image:v117 latticeResults:v108 progressHandler:v109];
      _Block_release(v109);

      v119 = *(v1 + 16);
      v31 = sub_1B429FDF8();
      v120 = v119;

      v27 = v43;
      v121 = [(__objc2_prot *)v43 recognizerResults];
      if (v121)
      {
        v122 = v121;
        [v121 setLatticeResults_];
      }

      else
      {
      }

      v3 = 0;
      v26 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
      v2 = v146;
      goto LABEL_121;
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    return;
  }

  if (!*v3)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v27 = *v3;
  v44 = [v27 detectorResults];
  if (!v44)
  {
LABEL_40:
    v2 = 0;
    v3 = 0;
    v31 = 0;
    goto LABEL_121;
  }

  v45 = v44;
  v31 = [v44 textFeatures];

  if (!v31)
  {
    goto LABEL_26;
  }

  sub_1B40E27B4(0, &qword_1ED95E6D8);
  v46 = sub_1B429FDF8();

  v154[0] = MEMORY[0x1E69E7CC0];
  if (v46 >> 62)
  {
    goto LABEL_163;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {

    if (!i)
    {
      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_148;
    }

    v48 = 0;
    v141 = v46 & 0xFFFFFFFFFFFFFF8;
    v142 = v46 & 0xC000000000000001;
    v140 = v46 + 32;
    v139 = *(v1 + 112);
    v148 = v27;
    v137 = i;
    v138 = v46;
    do
    {
      if (v142)
      {
        v49 = MEMORY[0x1B8C72CD0](v48, v46);
      }

      else
      {
        if (v48 >= *(v141 + 16))
        {
          goto LABEL_155;
        }

        v49 = *(v140 + 8 * v48);
      }

      v26 = v49;
      v50 = __OFADD__(v48, 1);
      v51 = v48 + 1;
      if (v50)
      {
        goto LABEL_154;
      }

      v52 = [v49 stringValue];
      v145 = v26;
      if (v52)
      {
        v53 = v52;
        v54 = sub_1B429FB98();
        v56 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1B42ACFB0;
        *(v57 + 32) = v54;
        *(v57 + 40) = v56;
        v26 = v145;
      }

      v58 = sub_1B429FDE8();

      [v26 setStringValueCandidates_];

      v59 = [v26 subFeatures];
      if (v59)
      {
        v60 = v59;
        v61 = sub_1B429FDF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B8);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1B42ACFB0;
        *(v62 + 32) = v61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B0);
      v63 = sub_1B429FDE8();

      [v26 setSubFeatureCandidates_];

      v64 = [v26 subFeatures];
      if (v64)
      {
        v65 = v64;
        v3 = sub_1B429FDF8();
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      if (v3 >> 62)
      {
        v46 = sub_1B42A0518();
        v144 = v51;
        if (!v46)
        {
          goto LABEL_74;
        }

LABEL_56:
        if (v46 < 1)
        {
          __break(1u);
          goto LABEL_162;
        }

        v27 = v1;
        v1 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x1B8C72CD0](v1, v3);
          }

          else
          {
            v67 = *(v3 + 8 * v1 + 32);
          }

          v26 = v67;
          v68 = [v67 candidateProbs];
          v2 = sub_1B40E27B4(0, &qword_1ED95EE90);
          v69 = sub_1B429FDF8();

          if (v69 >> 62)
          {
            if (!sub_1B42A0518())
            {
LABEL_58:

              v66 = sub_1B42A0228();
              goto LABEL_59;
            }
          }

          else if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          if ((v69 & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x1B8C72CD0](0, v69);
          }

          else
          {
            if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v70 = *(v69 + 32);
          }

          v66 = v70;

LABEL_59:
          ++v1;
          [v26 setConfidence_];

          if (v46 == v1)
          {
            goto LABEL_75;
          }
        }
      }

      v46 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v144 = v51;
      if (v46)
      {
        goto LABEL_56;
      }

LABEL_74:
      v27 = v1;
LABEL_75:

      v2 = v145;
      v71 = [v145 subFeatures];
      if (v71)
      {
        v72 = v71;
        v73 = sub_1B429FDF8();

        v1 = v27;
        if (v73 >> 62)
        {
          v74 = sub_1B42A0518();
          if (v74)
          {
LABEL_78:
            v26 = 0;
            v27 = (v73 & 0xC000000000000001);
            v75 = 0.0;
            while (1)
            {
              if (v27)
              {
                v76 = MEMORY[0x1B8C72CD0](v26, v73);
              }

              else
              {
                if (v26 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_152;
                }

                v76 = *(v73 + 8 * v26 + 32);
              }

              v2 = v76;
              v77 = (v26 + 1);
              if (__OFADD__(v26, 1))
              {
                break;
              }

              v3 = [v76 confidence];
              [v3 doubleValue];
              v79 = v78;

              v75 = v75 + v79;
              ++v26;
              if (v77 == v74)
              {
                goto LABEL_88;
              }
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v74)
          {
            goto LABEL_78;
          }
        }

LABEL_88:

        v48 = v144;
        v2 = v145;
      }

      else
      {
        v1 = v27;
        v48 = v144;
      }

      v80 = [v2 subFeatures];
      v27 = v148;
      if (v80)
      {
        v81 = v80;
        v82 = sub_1B429FDF8();

        if (v82 >> 62)
        {
          sub_1B42A0518();
          v27 = v148;
        }
      }

      v83 = sub_1B42A0018();
      [v2 setConfidence_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1B42AC090;
      *(v84 + 32) = [v2 confidence];
      sub_1B40E27B4(0, &qword_1ED95EE90);
      v85 = sub_1B429FDE8();

      [v2 setCandidateProbs_];

      v86 = [v2 confidence];
      [v86 doubleValue];
      v88 = v87;

      inst_props = v139->inst_props;
      v90 = *&v139->cb;
      __swift_project_boxed_opaque_existential_0(&v139->class_meths, inst_props);
      v91 = (*(v90 + 560))(inst_props, v90);
      v92 = sub_1B429FB98();
      if (!*(v91 + 16))
      {

LABEL_99:

        v96 = 0.0;
        v26 = 0x1E7BC4000;
        if (v151)
        {
          goto LABEL_144;
        }

        goto LABEL_100;
      }

      v94 = sub_1B40F0030(v92, v93);
      v2 = v95;

      if ((v2 & 1) == 0)
      {
        goto LABEL_99;
      }

      sub_1B40E2888(*(v91 + 56) + 32 * v94, aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      v26 = 0x1E7BC4000;
      if (swift_dynamicCast())
      {
        if (v151)
        {
          goto LABEL_144;
        }

        v96 = *(v1 + 64);
      }

      else
      {
        v96 = 0.0;
        if (v151)
        {
LABEL_144:

          return;
        }
      }

LABEL_100:
      if (v96 > v88)
      {
      }

      else
      {
        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
      }

      v46 = v138;
    }

    while (v48 != v137);
    v31 = v154[0];
LABEL_148:
    swift_bridgeObjectRelease_n();
LABEL_26:
    v2 = 0;
    v3 = 0;
LABEL_121:
    v148 = v27;
    v124 = [v27 *(v26 + 928)];
    if (v124)
    {
      v125 = v124;
      if (v31)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        v126 = sub_1B429FDE8();
      }

      else
      {
        v126 = 0;
      }

      [v125 setTextFeatures_];
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      sub_1B40E27B4(0, &qword_1ED95E6D8);
      v127 = sub_1B429FDE8();
      v26 = v31;
    }

    else
    {
      v127 = 0;
      v26 = MEMORY[0x1E69E7CC0];
    }

    [v27 setTextFeatures_];

    if (*(v153 + 80))
    {
      break;
    }

    if (!(v26 >> 62))
    {
      v46 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_157;
      }

      goto LABEL_133;
    }

LABEL_156:
    v46 = sub_1B42A0518();
    if (!v46)
    {
LABEL_157:

LABEL_158:
      v131 = *(v1 + 80);
      v132 = objc_opt_self();
      sub_1B40E27B4(0, &qword_1EB8853A8);
      v133 = sub_1B429FDE8();
      [(__objc2_prot *)v131 size];
      v134 = [v132 documentWithLines:v133 title:0 confidence:2 imageSize:?];

      v135 = [v27 detectorResults];
      [v134 setDetectorResults_];

      sub_1B40D6000(v2);
      sub_1B40D6000(v3);
      v136 = *(v1 + 8);

      (v136)(v134);
      return;
    }

LABEL_133:
    v153 = v26;
    aBlock = v3;
    v147 = v2;
    v154[0] = v9;
    sub_1B42A0488();
    if ((v46 & 0x8000000000000000) == 0)
    {
      v26 = v1;
      v3 = *(v1 + 112);
      v9 = objc_opt_self();
      v1 = 0;
      v151 = (v153 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v27 = (v1 + 1);
        if (__OFADD__(v1, 1))
        {
          __break(1u);
          goto LABEL_150;
        }

        if ((v153 & 0xC000000000000001) != 0)
        {
          v128 = MEMORY[0x1B8C72CD0](v1, v153);
        }

        else
        {
          if (v1 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_153;
          }

          v128 = *(v153 + 8 * v1 + 32);
        }

        v129 = v128;
        [*(v26 + 80) size];
        v130 = *(v3 + 16);
        if (!v130)
        {
          break;
        }

        v2 = [v9 lineWithTextFeature:v129 subfeatureType:32 imageSize:v130 confidenceThresholdProvider:0 injectSpaceCharacter:?];

        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        ++v1;
        if (v27 == v46)
        {

          v1 = v26;
          v2 = v147;
          v27 = v148;
          v3 = aBlock;
          goto LABEL_158;
        }
      }

      __break(1u);
      goto LABEL_165;
    }

LABEL_162:
    __break(1u);
LABEL_163:
    ;
  }

  sub_1B429FEC8();
  sub_1B4105D4C();
  swift_allocError();
  sub_1B429FAD8();
  swift_willThrow();

  sub_1B40D6000(v2);
  sub_1B40D6000(v3);
LABEL_18:
  v22 = *(v1 + 8);

  v22();
}

id sub_1B41373FC(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [objc_opt_self() supportedLanguagesForRevision:a1 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1B429FDF8();
    v5 = v2;
  }

  else
  {
    v4 = v7[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v4;
}

void sub_1B413753C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_1B40D5FF0(v5);
  v8 = sub_1B4137860();
  v9 = sub_1B4137868(v2, v4, 12, v8, sub_1B4137738, v7);

  if (!v1)
  {
    v10 = *v3;
    *v3 = v9;
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1B4137668(id *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  [*a1 calculateTextBoxHeightForImageWidth:objc_msgSend(v3 imageHeight:{sel_width), objc_msgSend(v3, sel_height)}];
  v5 = v4 / [v3 height];
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v6);
  return (*(v7 + 408))(v6, v7) <= v5;
}

uint64_t sub_1B4137738(double a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(a1 * 0.7);
  }

  return result;
}

BOOL CROrderedIndexSet.isEmpty.getter()
{
  v1 = [v0 indices];
  sub_1B4137814();
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    v3 = sub_1B42A0518();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 0;
}

unint64_t sub_1B4137814()
{
  result = qword_1ED95EE90;
  if (!qword_1ED95EE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95EE90);
  }

  return result;
}

uint64_t sub_1B4137868(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, double), uint64_t a6)
{
  v222 = a6;
  v228 = a5;
  v229 = a3;
  v234[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1B429F698();
  v224 = *(v10 - 8);
  v225 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v223 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v227 = &v200 - v15;
  v16 = sub_1B429FA68();
  v231 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v200 - v22);
  v24 = a2[3];
  v25 = a2[4];
  v230 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v24);
  v26 = (*(v25 + 192))(v24, v25);
  v27 = [objc_allocWithZone(MEMORY[0x1E699FD60]) initWithDimensions_];
  if (!v27)
  {
    sub_1B40DF594();
    swift_allocError();
    *v43 = 5;
    *(v43 + 4) = 1;
    swift_willThrow();
    return v19;
  }

  v28 = v27;
  v226 = v6;
  [v27 setReturnSubFeatures_];
  [v28 setMinimizeFalseDetections_];
  v29 = &selRef_bytesPerPixelForColorSpace_;
  v30 = [a1 height];
  v31 = [a1 width];
  if (v31 >= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  v34 = fmax(v33 * 0.005, 5.0);
  if (v34 == INFINITY)
  {
    __break(1u);
    goto LABEL_167;
  }

  if (v34 <= -2147483650.0)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v34 >= 2147483650.0)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  [v28 setMinimumCharacterHeight_];
  [v28 setDetectDiacritics_];
  [v28 setThresholdingAlgorithm_];
  if ((v26 & 1) == 0)
  {
    v35 = sub_1B41395F4(v230);
    sub_1B4122F3C(v35);

    v36 = sub_1B429FDE8();
    v29 = &selRef_bytesPerPixelForColorSpace_;

    [v28 setRecognitionLanguages_];
  }

  if (a4 >= 1)
  {
    if (!(a4 >> 31))
    {
      [v28 setMergeSettings_];
      goto LABEL_13;
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_13:
  v37 = [a1 imageByConvertingToColorSpace_];
  if (!v37)
  {
    sub_1B40DF594();
    swift_allocError();
    *v44 = 3;
    *(v44 + 4) = 1;
    swift_willThrow();

    return v19;
  }

  a4 = v37;
  v219 = v26;
  v234[0] = 0;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v221 = v28;
  if (v38)
  {
    v39 = [a4 pixelBuffer];
    v234[0] = v39;
    v40 = v39;
    v29 = v226;
    if (v39)
    {
      v41 = v40;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v40);

      if (PixelFormatType == 1278226488)
      {
        v23 = v39;
        goto LABEL_36;
      }

      v233[0] = v41;
      type metadata accessor for CVBuffer();
      v58 = v41;
      v57 = sub_1B429FBE8();
      v56 = v59;
    }

    else
    {
      v56 = 0x80000001B42B5190;
      v57 = 0xD000000000000012;
    }

    v60 = sub_1B41252AC();
    v61 = v231;
    (*(v231 + 2))(v23, v60, v16);

    v62 = sub_1B429FA48();
    v19 = sub_1B42A0138();

    if (os_log_type_enabled(v62, v19))
    {
      v63 = swift_slowAlloc();
      v217 = a4;
      v64 = v63;
      v65 = swift_slowAlloc();
      v233[0] = v65;
      *v64 = 136315138;
      v66 = sub_1B40DDE8C(v57, v56, v233);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_1B40D2000, v62, v19, "Unexpected pixel format: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1B8C74FA0](v65, -1, -1);
      v67 = v64;
      a4 = v217;
      MEMORY[0x1B8C74FA0](v67, -1, -1);
    }

    else
    {
    }

    (*(v61 + 1))(v23, v16);
LABEL_31:
    sub_1B40DF594();
    swift_allocError();
    *v68 = 3;
    *(v68 + 4) = 1;
    swift_willThrow();

LABEL_32:
    goto LABEL_33;
  }

  v45 = [a4 width];
  v46 = [a4 height];
  result = [a4 vImage];
  v48 = v233[0];
  if (!v233[0])
  {
    __break(1u);
LABEL_181:
    __break(1u);
    return result;
  }

  [a4 vImage];
  v49 = CVPixelBufferCreateWithBytes(0, v45, v46, 0x4C303038u, v48, v233[3], 0, 0, 0, v234);
  v29 = v226;
  if (v49)
  {
    v50 = v49;
    v51 = sub_1B41252AC();
    v52 = v231;
    (*(v231 + 2))(v19, v51, v16);
    v53 = sub_1B429FA48();
    v54 = sub_1B42A0138();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = v50;
      _os_log_impl(&dword_1B40D2000, v53, v54, "Failed to create pixel buffer with error: %d", v55, 8u);
      MEMORY[0x1B8C74FA0](v55, -1, -1);
    }

    (*(v52 + 1))(v19, v16);
    goto LABEL_31;
  }

  v23 = v234[0];
LABEL_36:
  v69 = v221;
  v70 = v228;
  if (!v23)
  {
    sub_1B40DF594();
    swift_allocError();
    *v72 = 3;
    *(v72 + 4) = 1;
    swift_willThrow();

    goto LABEL_32;
  }

  if (v228)
  {
    v71 = v23;
    v70(0, 0.2);
  }

  else
  {
    v73 = v23;
  }

  v74 = v227;
  sub_1B429F688();
  v233[0] = 0;
  v75 = [v69 detectFeaturesInBuffer:v23 error:v233];
  v76 = v233[0];
  if (!v75)
  {
    v145 = v233[0];
    sub_1B429F598();

    swift_willThrow();
    (*(v224 + 8))(v74, v225);
    goto LABEL_33;
  }

  v77 = v75;
  v78 = sub_1B429FDF8();
  v79 = v76;

  v80 = sub_1B41393EC(v78, &qword_1EB8853E0);

  if (!v80)
  {
    sub_1B40DF594();
    swift_allocError();
    *v146 = 5;
    *(v146 + 4) = 1;
    swift_willThrow();

    (*(v224 + 8))(v227, v225);
    goto LABEL_33;
  }

  sub_1B429F688();
  v32 = (v80 & 0xFFFFFFFFFFFFFF8);
  v207 = v80;
  v81 = v80 >> 62;
  v26 = v221;
  if (!v81)
  {
    v82 = v32[2];
    goto LABEL_45;
  }

LABEL_175:
  v199 = v32;
  v82 = sub_1B42A0518();
  v32 = v199;
LABEL_45:
  v210 = v23;
  v217 = a4;
  if (!v82)
  {
LABEL_126:

    v19 = [objc_allocWithZone(CRTextResults) init];
    v147 = [objc_allocWithZone(CRTextDetectorResults) init];
    [v19 setDetectorResults_];

    v148 = [v19 detectorResults];
    if (v148)
    {
      v149 = v148;
      v150 = sub_1B429F678();
      [v149 setStartTime_];
    }

    v151 = [v19 detectorResults];
    if (v151)
    {
      v152 = v151;
      v153 = sub_1B429F678();
      [v152 setEndTime_];
    }

    v154 = [v19 detectorResults];
    if (v154)
    {
      v155 = v154;
      v156 = v230[3];
      v157 = v230[4];
      __swift_project_boxed_opaque_existential_0(v230, v156);
      v158 = *(v157 + 560);
      v159 = v157;
      v23 = v210;
      v158(v156, v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
      v160 = sub_1B429FAE8();

      [v155 setInputOptions_];
    }

    v161 = [v19 detectorResults];
    v162 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
    if (v161)
    {
      v163 = v161;
      sub_1B40E27B4(0, &qword_1ED95E6D8);
      v164 = sub_1B429FDE8();
      [v163 setTextFeatures_];
    }

    if (v219)
    {

      v165 = [v19 detectorResults];
      if (!v165 || (v166 = v165, v167 = [v165 textFeatures], v166, !v167))
      {
        v167 = 0;
      }

      v168 = v221;
      v169 = v217;
      v170 = v228;
    }

    else
    {
      v174 = [objc_allocWithZone(CRTextRecognizerResults) init];
      [v19 setRecognizerResults_];

      v175 = [v19 recognizerResults];
      if (v175)
      {
        v176 = v175;
        v177 = sub_1B429F678();
        [v176 setStartTime_];
      }

      v178 = [v19 recognizerResults];
      if (v178)
      {
        v179 = v178;
        v180 = sub_1B429F678();
        [v179 setEndTime_];
      }

      v181 = [v19 recognizerResults];
      v169 = v217;
      if (v181)
      {
        v182 = v181;
        v183 = sub_1B429FDE8();
        [v182 setCodeMaps_];
      }

      v184 = [v19 recognizerResults];
      if (v184)
      {
        v185 = v184;
        sub_1B40E27B4(0, &qword_1ED95E6D8);
        v186 = sub_1B429FDE8();

        [v185 setTextFeatures_];
      }

      else
      {
      }

      v168 = v221;
      v170 = v228;
      v190 = [v19 recognizerResults];
      if (v190)
      {
        v191 = v190;
        v192 = [v19 detectorResults];
        if (v192)
        {
          v193 = v192;
          v194 = [v192 inputOptions];

          if (v194)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
            sub_1B429FAF8();

            v23 = v210;
            v194 = sub_1B429FAE8();
          }

          v162 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
        }

        else
        {
          v194 = 0;
        }

        [v191 setInputOptions_];

        v168 = v221;
        v170 = v228;
      }

      v195 = [v19 recognizerResults];
      if (!v195 || (v196 = v195, v167 = [v195 textFeatures], v196, v170 = v228, v168 = v221, !v167))
      {
        v167 = 0;
      }
    }

    [v19 v162[72]];

    if (v170)
    {
      v170(0, 1.0);
    }

    v197 = *(v224 + 8);
    v198 = v225;
    v197(v223, v225);
    v197(v227, v198);

    return v19;
  }

  v201 = v32;
  v233[0] = MEMORY[0x1E69E7CC0];
  sub_1B42A0488();
  if (v82 < 0)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  v83 = 0;
  v203 = v207 & 0xC000000000000001;
  v200 = v207 + 32;
  v19 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
  v84 = off_1E7BC1000;
  v202 = v82;
  while (1)
  {
    v32 = (v83 + 1);
    if (__OFADD__(v83, 1))
    {
      goto LABEL_174;
    }

    v204 = v83 + 1;
    if (v203)
    {
      v85 = MEMORY[0x1B8C72CD0]();
    }

    else
    {
      if (v83 >= v201[2])
      {
        goto LABEL_178;
      }

      v85 = *(v200 + 8 * v83);
    }

    v86 = v85;
    [v85 *(v19 + 3936)];
    v206 = [objc_allocWithZone(v84[29]) initWithTopLeft:v89 topRight:v90 bottomLeft:v89 + v87 bottomRight:{v90, v89, v90 + v88, v89 + v87, v90 + v88}];
    if ((v219 & 1) == 0)
    {
      v91 = [v86 text];
      [v206 setStringValue_];
    }

    v205 = v86;
    v92 = [v86 subFeatures];
    if (!v92 || (v93 = v92, v94 = sub_1B429FDF8(), v93, v95 = sub_1B41393EC(v94, &qword_1EB8853E0), v26 = v221, , !v95))
    {

      sub_1B40DF594();
      swift_allocError();
      *v187 = 5;
      *(v187 + 4) = 1;
      swift_willThrow();

      v188 = *(v224 + 8);
      v189 = v225;
      v188(v223, v225);
      v188(v227, v189);
      goto LABEL_141;
    }

    v96 = v95 & 0xFFFFFFFFFFFFFF8;
    v214 = v95;
    if (v95 >> 62)
    {
      v97 = sub_1B42A0518();
      v96 = v95 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v219;
    if (v97)
    {
      break;
    }

LABEL_121:

    sub_1B40E27B4(0, &qword_1ED95E6D8);
    v144 = sub_1B429FDE8();

    [v206 setSubFeatures_];

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    v83 = v204;
    v26 = v221;
    if (v204 == v202)
    {
      goto LABEL_126;
    }
  }

  v209 = v96;
  v232 = MEMORY[0x1E69E7CC0];
  v216 = v97;
  sub_1B42A0488();
  if (v216 < 0)
  {
    __break(1u);
    goto LABEL_177;
  }

  v98 = 0;
  v215 = v214 & 0xC000000000000001;
  v32 = &v235;
  v208 = v214 + 32;
  while (1)
  {
    if (__OFADD__(v98, 1))
    {
      goto LABEL_170;
    }

    v32 = &v236;
    v218 = (v98 + 1);
    if (v215)
    {
      v99 = MEMORY[0x1B8C72CD0]();
    }

    else
    {
      if (v98 >= *(v209 + 16))
      {
        goto LABEL_173;
      }

      v99 = *(v208 + 8 * v98);
    }

    v220 = v99;
    [v99 *(v19 + 3936)];
    v104 = [objc_allocWithZone(v84[29]) initWithTopLeft:v102 topRight:v103 bottomLeft:v102 + v100 bottomRight:{v103, v102, v103 + v101, v102 + v100, v103 + v101}];
    if (v26)
    {
      goto LABEL_91;
    }

    v105 = v220;
    v106 = [v220 text];
    [v104 setStringValue_];

    v107 = [v105 candidates];
    if (!v107)
    {
      break;
    }

    v108 = v107;
    v109 = sub_1B429FDF8();

    v19 = sub_1B41393EC(v109, &qword_1EB8853D0);

    if (!v19)
    {
      break;
    }

    if (v229 < 0)
    {
      goto LABEL_171;
    }

    v213 = v104;
    v26 = v19 >> 62;
    if (v19 >> 62)
    {
      v142 = sub_1B42A0518();
      result = sub_1B42A0518();
      if (result < 0)
      {
        goto LABEL_181;
      }

      if (v142 >= v229)
      {
        v143 = v229;
      }

      else
      {
        v143 = v142;
      }

      if (v142 < 0)
      {
        v143 = v229;
      }

      if (v229)
      {
        v112 = v143;
      }

      else
      {
        v112 = 0;
      }

      if (sub_1B42A0518() < v112)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v110 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v229;
      if (v110 >= v229)
      {
        v111 = v229;
      }

      else
      {
        v111 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v229)
      {
        v112 = v111;
      }

      else
      {
        v112 = 0;
      }

      if (v110 < v112)
      {
        goto LABEL_172;
      }
    }

    v212 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      if (v112)
      {
        sub_1B40E27B4(0, &qword_1EB8853D0);

        v113 = 0;
        do
        {
          v114 = v113 + 1;
          sub_1B42A0418();
          v113 = v114;
        }

        while (v112 != v114);
        if (v26)
        {
LABEL_88:

          v116 = sub_1B42A05B8();
          v117 = v118;
          v115 = v119;
          v112 = v120 >> 1;
          goto LABEL_89;
        }
      }

      else
      {

        if (v26)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
    }

    v115 = 0;
    v116 = v19 & 0xFFFFFFFFFFFFFF8;
    v117 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_89:
    v211 = v116;
    swift_unknownObjectRetain();
    v121 = MEMORY[0x1E69E7CC0];
    v231 = MEMORY[0x1E69E7CC0];
    v122 = v112 - v115;
    if (v112 != v115)
    {
      if (v112 <= v115)
      {
        v126 = v115;
      }

      else
      {
        v126 = v112;
      }

      v127 = (v117 + 8 * v115);
      v23 = (v126 - v115);
      v121 = MEMORY[0x1E69E7CC0];
      v231 = MEMORY[0x1E69E7CC0];
      while (v23)
      {
        v128 = *v127;
        [v128 confidence];
        v130 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1B41394F0(0, *(v121 + 2) + 1, 1, v121);
        }

        v132 = *(v121 + 2);
        v131 = *(v121 + 3);
        if (v132 >= v131 >> 1)
        {
          v121 = sub_1B41394F0((v131 > 1), v132 + 1, 1, v121);
        }

        *(v121 + 2) = v132 + 1;
        *&v121[4 * v132 + 32] = v130;
        v133 = [v128 text];
        if (!v133)
        {
          goto LABEL_179;
        }

        v134 = v133;
        v135 = sub_1B429FB98();
        v137 = v136;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v231 = sub_1B41232C0(0, *(v231 + 2) + 1, 1, v231);
        }

        v139 = *(v231 + 2);
        v138 = *(v231 + 3);
        if (v139 >= v138 >> 1)
        {
          v231 = sub_1B41232C0((v138 > 1), v139 + 1, 1, v231);
        }

        v140 = v231;
        *(v231 + 2) = v139 + 1;
        v141 = &v140[16 * v139];
        *(v141 + 4) = v135;
        *(v141 + 5) = v137;
        ++v127;
        v23 = (v23 - 1);
        if (!--v122)
        {
          goto LABEL_90;
        }
      }

      __break(1u);
      goto LABEL_126;
    }

LABEL_90:
    swift_unknownObjectRelease_n();

    sub_1B4139230(v121);

    sub_1B40E27B4(0, &qword_1ED95EE90);
    v123 = sub_1B429FDE8();

    v124 = v213;
    [v213 setCandidateProbs_];

    v125 = sub_1B429FDE8();

    [v124 setStringValueCandidates_];

    v29 = v226;
    a4 = v217;
    v23 = v210;
    v26 = v219;
    v19 = 0x1E7BC4000;
    v84 = off_1E7BC1000;
LABEL_91:
    if (v29)
    {
      goto LABEL_140;
    }

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    v32 = v218;
    v98 = v218;
    if (v218 == v216)
    {
      goto LABEL_121;
    }
  }

  sub_1B40DF594();
  swift_allocError();
  *v171 = 5;
  *(v171 + 4) = 1;
  swift_willThrow();

LABEL_140:

  v172 = *(v224 + 8);
  v173 = v225;
  v172(v223, v225);
  v172(v227, v173);

LABEL_141:

LABEL_33:

  return v19;
}

uint64_t sub_1B4139230(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B42A0488();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_1B42A0048();
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1B41392D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B40FE1A8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B40E2888(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B40FE1A8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B41393EC(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_1B42A0488();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1B40E2888(i, v7);
    sub_1B40E27B4(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

char *sub_1B41394F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B41395F4(void *a1)
{
  v47 = sub_1B429F748();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B429F768();
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853E8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v40 - v10;
  v12 = sub_1B429F5B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v17);
  if ((*(v18 + 312))(v17, v18))
  {
    v40 = v13;
    v41 = v12;
    v45 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
    v19 = objc_opt_self();
    v21 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v21);
    (*(v20 + 560))(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    v22 = sub_1B429FAE8();

    v23 = [v19 languageSetFromOptionsDictionary_];

    sub_1B42A0108();
    sub_1B429F5A8();
    if (v50)
    {
      v24 = (v42 + 8);
      v25 = (v43 + 8);
      v44 = v7;
      do
      {
        sub_1B40E28EC(&v49, &v48);
        if (swift_dynamicCast())
        {
          sub_1B429F6E8();
          sub_1B429F758();
          (*v24)(v7, v46);
          sub_1B429F738();
          (*v25)(v4, v47);
          v27 = sub_1B429F718();
          v28 = *(v27 - 8);
          if ((*(v28 + 48))(v11, 1, v27) == 1)
          {
            sub_1B4139C18(v11);
          }

          else
          {
            sub_1B429F708();
            (*(v28 + 8))(v11, v27);
            v26 = sub_1B429FB88();
            v7 = v44;

            [v45 addObject_];
          }
        }

        sub_1B429F5A8();
      }

      while (v50);
    }

    (*(v40 + 8))(v16, v41);
    v36 = v45;
    v37 = [v45 array];
    v38 = sub_1B429FDF8();

    v39 = sub_1B41392D8(v38);

    if (v39)
    {
      return v39;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v29);
    result = (*(v30 + 456))(v29, v30);
    if (!*(result + 2))
    {
      v32 = result;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        result = v32;
      }

      else
      {
        result = sub_1B41232C0(0, 1, 1, v32);
      }

      v34 = *(result + 2);
      v33 = *(result + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_1B41232C0((v33 > 1), v34 + 1, 1, result);
      }

      *(result + 2) = v34 + 1;
      v35 = &result[16 * v34];
      *(v35 + 4) = 28261;
      *(v35 + 5) = 0xE200000000000000;
    }
  }

  return result;
}

void type metadata accessor for CVBuffer()
{
  if (!qword_1EB8853C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB8853C8);
    }
  }
}

uint64_t sub_1B4139C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of CRTextRecognizerModelInputProvider.inputBatch(lineRegions:image:regionWidth:configuration:rectifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v18 = (*(a6 + 8) + **(a6 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B40E6368;
  v16.n128_f64[0] = a7;

  return v18(a1, a2, a3, a4, a5, a6, v16);
}

BOOL sub_1B4139E48(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  CRLocale.init(rawValue:)(v4);
  if (v7 == 30)
  {
    return 0;
  }

  v6[1] = v7;
  CRLocale.script.getter(v6);
  return v6[0] < 6u;
}

uint64_t ImageReader.Pipeline.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

uint64_t ImageReader.Prioritization.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

uint64_t sub_1B413A0BC(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + 112);
  sub_1B40D5F90(a1, v1 + 112);
  return swift_endAccess();
}

uint64_t sub_1B413A114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B413A160(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1B413A208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return swift_unknownObjectRelease();
}

uint64_t ImageReader.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
  v4 = sub_1B429F6D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImageReader.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImageReader.init(configuration:)(a1);
  return v2;
}

uint64_t ImageReader.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B429FA68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  sub_1B429F6C8();
  sub_1B40E33EC(a1, v1 + 112);
  v9 = sub_1B41252AC();
  (*(v5 + 16))(v8, v9, v4);
  sub_1B40E33EC(a1, v23);
  v10 = sub_1B429FA48();
  v11 = sub_1B42A0158();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1B40DDE8C(0xD000000000000014, 0x80000001B42B51D0, &v22);
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    v15 = sub_1B42A0688();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(v23);
    v18 = sub_1B40DDE8C(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1B40D2000, v10, v11, "%s: config=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v14, -1, -1);
    MEMORY[0x1B8C74FA0](v13, -1, -1);

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v5 + 8))(v8, v21);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return v2;
}

uint64_t sub_1B413A5B8()
{
  result = (*(*v0 + 176))();
  if (!v1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B413A608()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v21[-v6];
  result = (*(*v0 + 136))(v5);
  if (!result)
  {
    v9 = *(*v0 + 112);
    v9(&v21[8]);
    v10 = v22;
    v11 = v23;
    __swift_project_boxed_opaque_existential_0(&v21[8], v22);
    (*(v11 + 72))(&v21[7], v10, v11);
    __swift_destroy_boxed_opaque_existential_0(&v21[8]);
    v12 = ImageReader.Pipeline.engineClass.getter();
    v14 = v13;
    v9(&v21[8]);
    v15 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
    v16 = sub_1B429F6D8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v7, v2 + v15, v16);
    (*(v17 + 56))(v7, 0, 1, v16);
    result = (*(v14 + 8))(&v21[8], v7, v12, v14);
    if (!v1)
    {
      v18 = *(*v2 + 144);
      v19 = result;
      v20 = swift_unknownObjectRetain();
      v18(v20, v14);
      return v19;
    }
  }

  return result;
}

uint64_t static ImageReader.preheat(configuration:extendedTimeoutBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B413A868, 0, 0);
}

uint64_t sub_1B413A868()
{
  v21 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  (*(v5 + 72))(&v20, v4, v5);
  BYTE1(v20) = v20;
  v6 = ImageReader.Pipeline.engineClass.getter();
  v8 = v7;
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v9);
  v11 = (*(v10 + 560))(v9, v10);
  v0[5] = v11;
  v12 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v12);
  v14 = (*(v13 + 24))(v12, v13);
  if (v2)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  v19 = (*(v8 + 64) + **(v8 + 64));
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1B413AA6C;
  v17 = v0[3];

  return v19(v11, v14, v17, v15, v6, v8);
}