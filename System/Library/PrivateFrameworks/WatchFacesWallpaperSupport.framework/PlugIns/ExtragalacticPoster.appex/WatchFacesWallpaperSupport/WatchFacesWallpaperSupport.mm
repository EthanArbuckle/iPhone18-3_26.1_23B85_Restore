__n128 sub_100001A28(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001A4C(uint64_t a1, int a2)
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

uint64_t sub_100001A6C(uint64_t result, int a2, int a3)
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

__n128 sub_100001AD0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_100001AF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100001B3C()
{
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  sub_100013928(v1);
  type metadata accessor for UIRectCorner(0);
  sub_100013B88();
  v2._countAndFlagsBits = 2633001;
  v2._object = 0xE300000000000000;
  sub_100013928(v2);
  type metadata accessor for CGPoint(0);
  sub_100013B88();
  v3._countAndFlagsBits = 2633001;
  v3._object = 0xE300000000000000;
  sub_100013928(v3);
  v4._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_100013928(v5);
  return 0;
}

uint64_t sub_100001C50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  result = sub_100001B3C();
  *a1 = result;
  a1[1] = v8;
  return result;
}

BOOL sub_100001CD4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100001D04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100001D30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100001E1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100002028(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100001EF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIRectEdge(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100001FAC(uint64_t a1)
{
  result = sub_100001FD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100001FD4()
{
  result = qword_100022918;
  if (!qword_100022918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022918);
  }

  return result;
}

uint64_t sub_100002028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100002060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000020DC()
{
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_100002138()
{
  v1 = [objc_allocWithZone(UIBezierPath) init];
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 + 32;
    v7 = 1;
    do
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_27:
        result = sub_100013BD8();
        __break(1u);
        return result;
      }

      sub_1000024A0(v6, v18);
      if (v7)
      {
        sub_1000024A0(v18, v17);
        sub_100002504(&qword_1000229D0, &qword_100015CC0);
        type metadata accessor for PolygonPathPointStep();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        [v1 moveToPoint:{v13[1].x, v13[1].y}];

        v4 = v13;
      }

      else
      {
        sub_1000024A0(v18, v17);
        sub_100002504(&qword_1000229D0, &qword_100015CC0);
        type metadata accessor for PolygonPathPointStep();
        if (swift_dynamicCast())
        {
          x = v13[1].x;
          y = v13[1].y;
          [v1 currentPoint];
          v21.x = x;
          v21.y = y;
          if (!CGPointEqualToPoint(v19, v21))
          {
            [v1 addLineToPoint:{x, y}];
          }
        }

        else
        {
          sub_1000024A0(v18, v17);
          if (swift_dynamicCast())
          {
            if (v13 == 1)
            {
              v11 = 4.71238898;
              v10 = 3.14159265;
            }

            else if (v13 == 2)
            {
              v11 = 0.0;
              v10 = 4.71238898;
            }

            else
            {
              v10 = 0.0;
              v11 = 1.57079633;
              if (v13 != 8)
              {
                v11 = 3.14159265;
                v10 = 1.57079633;
              }
            }

            [v1 addArcWithCenter:1 radius:v14 startAngle:v15 endAngle:v16 clockwise:{v10, v11}];
          }
        }
      }

      ++v5;
      sub_10000254C(v18);
      v7 = 0;
      v6 += 40;
    }

    while (v3 != v5);
    if (v4)
    {

      [v1 currentPoint];
      if (!CGPointEqualToPoint(v20, v4[1]))
      {
        [v1 addLineToPoint:{v4[1].x, v4[1].y}];
      }
    }

    [v1 closePath];
  }

  return v1;
}

double sub_10000245C()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 40);
  return result;
}

double sub_100002490()
{
  result = *(*v0 + 48);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  return result;
}

uint64_t sub_1000024A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002504(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000254C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100002598(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  v6 = a3.n128_f64[0];
  v7 = a2.n128_f64[0];
  v8 = a1.n128_f64[0];
  if (*(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners + 8))
  {
    v9 = [objc_opt_self() bezierPathWithRect:{a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0]}];
  }

  else
  {
    v10 = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners);
    a1.n128_u64[0] = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius);
    a2.n128_u64[0] = a1.n128_u64[0];
    v11 = nullsub_1(a1, a2, a3, a4);
    v9 = [objc_opt_self() bezierPathWithRoundedRect:v10 byRoundingCorners:v8 cornerRadii:{v7, v6, v5, v11, v12}];
  }

  return v9;
}

id sub_1000026B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RectangleDescriptor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000270C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame + 16);
  v5 = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame + 24);
  a2.n128_f64[0] = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration + 16) * 0.5;
  v7 = (v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges);
  if (*(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges + 8))
  {
    v8 = 0;
    LODWORD(v9) = 0;
    a3.n128_f64[0] = v6 - a2.n128_f64[0] - a2.n128_f64[0];
    v10 = v5 - a2.n128_f64[0];
LABEL_3:
    a4.n128_f64[0] = v10 - a2.n128_f64[0];
    goto LABEL_14;
  }

  v11 = *v7;
  v9 = (*v7 >> 1) & 1;
  if ((v11 & 2) != 0)
  {
    v12 = v6 + a2.n128_f64[0];
    if ((v11 & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v6 - a2.n128_f64[0];
    if ((v11 & 8) != 0)
    {
LABEL_6:
      a3.n128_f64[0] = a2.n128_f64[0] + v12;
      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v10 = v5 + a2.n128_f64[0];
      if ((v11 & 4) == 0)
      {
        v8 = 1;
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  a3.n128_f64[0] = v12 - a2.n128_f64[0];
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = v5 - a2.n128_f64[0];
  if ((v11 & 4) == 0)
  {
    v8 = 0;
    goto LABEL_3;
  }

LABEL_13:
  v8 = v11 & 1;
  a4.n128_f64[0] = a2.n128_f64[0] + v10;
LABEL_14:
  if (v9)
  {
    a1.n128_f64[0] = -a2.n128_f64[0];
  }

  else
  {
    a1.n128_f64[0] = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration + 16) * 0.5;
  }

  if (v8)
  {
    a2.n128_f64[0] = -a2.n128_f64[0];
  }

  nullsub_1(a1, a2, a3, a4);
  v13 = *((swift_isaMask & *v4) + 0x88);

  return v13();
}

double sub_100002824()
{
  v1 = *v0 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame;
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

double sub_100002864()
{
  v1 = *v0 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration;
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  return result;
}

id sub_100002884()
{
  result = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft weight:858.0];
  qword_1000255B0 = result;
  return result;
}

void sub_1000028DC()
{
  sub_100002504(&unk_1000231A0, &qword_100015E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100015930;
  v1 = PRTimeFontIdentifierSoft;
  v2 = objc_allocWithZone(PRTimeFontConfiguration);
  v3 = v1;
  v4 = [v2 initWithTimeFontIdentifier:v3 weight:276.0];

  *(v0 + 32) = v4;
  if (qword_100022880 != -1)
  {
    swift_once();
  }

  v5 = qword_1000255B0;
  *(v0 + 40) = qword_1000255B0;
  v6 = PRTimeFontIdentifierRounded;
  v7 = objc_allocWithZone(PRTimeFontConfiguration);
  v8 = v5;
  v9 = v6;
  v10 = [v7 initWithTimeFontIdentifier:v9 weight:858.0];

  *(v0 + 48) = v10;
  v11 = PRTimeFontIdentifierStencil;
  v12 = objc_allocWithZone(PRTimeFontConfiguration);
  v13 = v11;
  v14 = [v12 initWithTimeFontIdentifier:v13 weight:858.0];

  *(v0 + 56) = v14;
  qword_1000255B8 = v0;
}

id sub_100002A64()
{
  v1 = *(v0 + 48) * 0.5;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v23.origin.x = sub_100002C38();
  v24 = CGRectInset(v23, v1, v1);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v9.n128_u64[0] = CGRectGetMidX(v25);
  v10.n128_f64[0] = MidX;
  v13 = nullsub_1(v10, v9, v11, v12);
  v15 = v14;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v16 = CGRectGetWidth(v26) * 0.5;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (v15 <= CGRectGetMidY(v27))
  {
    v21 = [objc_opt_self() bezierPathWithArcCenter:0 radius:v13 startAngle:v15 endAngle:v16 clockwise:{0.0, 6.28318531}];

    return v21;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxY = CGRectGetMaxY(v28);
    v18 = asin((MaxY - v15) / v16);
    v19 = [objc_allocWithZone(UIBezierPath) init];
    [v19 addArcWithCenter:0 radius:v13 startAngle:v15 endAngle:v16 clockwise:{v18, 3.14159265 - v18}];
    [v19 closePath];
    return v19;
  }
}

double sub_100002C1C()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

double sub_100002C2C()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return result;
}

__n128 sub_100002C4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100002C68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002C88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_100002CD0()
{
  v1 = v0[7];

  sub_10000254C(v0 + 8);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_100002D3C@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_1000032C0(*a1, *a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_100002D6C(char a1, uint64_t *a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    sub_100003508();
    v12 = a4;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = 0;
    v22 = v12 * 0.5;
  }

  else
  {
    sub_100003508();
    v14 = v23;
    v16 = v24;
    v18 = v25;
    v22 = a3;
    v20 = v26;
    v21 = 3;
  }

  v27 = type metadata accessor for LetterURectangleDescriptor();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
  *v29 = v14;
  *(v29 + 1) = v16;
  *(v29 + 2) = v18;
  *(v29 + 3) = v20;
  v30 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
  *v30 = 0;
  v30[8] = 1;
  *&v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = v22;
  v31 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
  v32 = a5;
  *v31 = a5;
  v31[1] = a6;
  v31[2] = a7;
  v33 = &v28[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
  *v33 = v21;
  v33[8] = 0;
  v34 = type metadata accessor for RectangleDescriptor();
  v81.receiver = v28;
  v81.super_class = v34;
  v75 = objc_msgSendSuper2(&v81, "init");
  if (a1)
  {
    v36 = a4;
    v35 = a3;
    sub_100003508();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = objc_allocWithZone(v34);
    v46 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_frame];
    *v46 = v38;
    *(v46 + 1) = v40;
    v32 = a5;
    *(v46 + 2) = v42;
    *(v46 + 3) = v44;
    v47 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_roundedCorners];
    *v47 = 0;
    v47[8] = 1;
    *&v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius] = 0;
    v48 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_configuration];
    *v48 = a5;
    v48[1] = a6;
    v48[2] = a7;
    v49 = &v45[OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_excludingEdges];
    *v49 = 9;
    v49[8] = 0;
    v77.receiver = v45;
    v77.super_class = v34;
    v50 = objc_msgSendSuper2(&v77, "init");
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000159E0;
    *(v51 + 56) = v27;
    *(v51 + 64) = &off_10001D2C8;
    *(v51 + 32) = v75;
    v52 = a2[3];
    v53 = a2[4];
    sub_100003518(a2, v52);
    v54 = *(v53 + 40);
    v55 = v75;
    v56 = v54(v52, v53);
    *(v51 + 104) = v34;
    *(v51 + 112) = &off_10001D2C8;
    *(v51 + 72) = v56;
    *(v51 + 80) = v50;
    v57 = a2[3];
    v58 = a2[4];
    sub_100003518(a2, v57);
    v59 = *(v58 + 32);
    v60 = v50;
    *(v51 + 120) = v59(v57, v58);

    v61 = 0xE400000000000000;
    v62 = 1702195828;
  }

  else
  {
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000159D0;
    *(v51 + 56) = v27;
    *(v51 + 64) = &off_10001D2C8;
    *(v51 + 32) = v75;
    v63 = a2[3];
    v64 = a2[4];
    sub_100003518(a2, v63);
    v65 = *(v64 + 40);
    v66 = v75;
    *(v51 + 72) = v65(v63, v64);
    v62 = 0x65736C6166;
    v61 = 0xE500000000000000;
    v36 = a4;
    v35 = a3;
  }

  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;
  sub_100013B08(26);
  v82._countAndFlagsBits = 2633045;
  v82._object = 0xE300000000000000;
  sub_100013928(v82);
  v83._countAndFlagsBits = v62;
  v83._object = v61;
  sub_100013928(v83);

  v84._countAndFlagsBits = 2633001;
  v84._object = 0xE300000000000000;
  sub_100013928(v84);
  v79 = v35;
  v80 = v36;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v85._countAndFlagsBits = 2633001;
  v85._object = 0xE300000000000000;
  sub_100013928(v85);
  v86._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v86);

  v87._countAndFlagsBits = 2633001;
  v87._object = 0xE300000000000000;
  sub_100013928(v87);
  v88._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v88);

  v89._countAndFlagsBits = 2633001;
  v89._object = 0xE300000000000000;
  sub_100013928(v89);
  v67 = a2[4];
  sub_100003518(a2, a2[3]);
  v68 = *(v67 + 8);
  sub_100013C68();
  v90._countAndFlagsBits = 41;
  v90._object = 0xE100000000000000;
  sub_100013928(v90);

  v69 = v78[0];
  sub_1000024A0(a2, v78);
  type metadata accessor for LetterUDescriptor();
  v70 = swift_allocObject();
  *(v70 + 120) = 0;
  *(v70 + 40) = v35;
  *(v70 + 48) = v36;
  *(v70 + 16) = v32;
  *(v70 + 24) = a6;
  *(v70 + 32) = a7;
  *(v70 + 56) = v51;
  *(v70 + 104) = v69;
  sub_10000345C(v78, v70 + 64);
  *(v70 + 120) = a1 & 1;
  sub_10000254C(a2);
  return v70;
}

uint64_t sub_1000032C0(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2[5];
  v9 = a2[6];
  sub_100013A68();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  sub_100013588();
  v21 = v20;
  sub_100013588();
  v23 = v22;
  sub_100013588();
  v25 = v24;
  sub_1000024A0(a1 + 64, v32);
  sub_1000024A0((a2 + 8), v31);
  if (a3 <= 0.0)
  {
    sub_10000254C(v31);
    v27 = v32;
LABEL_6:
    sub_10000345C(v27, v33);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v32);
    v27 = v31;
    goto LABEL_6;
  }

  v33[3] = &type metadata for InterpolatedColorProvider;
  v33[4] = sub_100003474();
  v26 = swift_allocObject();
  v33[0] = v26;
  sub_1000024A0(v32, v26 + 16);
  sub_1000024A0(v31, v26 + 56);
  *(v26 + 96) = a3;
  sub_10000254C(v31);
  sub_10000254C(v32);
LABEL_7:
  v28 = *(a1 + 120);
  sub_1000024A0(v33, v32);
  v29 = sub_100002D6C(v28, v32, v11, v13, v21, v23, v25);
  sub_10000254C(v33);
  return v29;
}

uint64_t sub_10000345C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100003474()
{
  result = qword_100022B78;
  if (!qword_100022B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022B78);
  }

  return result;
}

uint64_t sub_1000034C8()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

void *sub_100003518(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000355C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for PathConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000035D4(uint64_t *a1, int a2)
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

uint64_t sub_10000361C(uint64_t result, int a2, int a3)
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

void sub_10000366C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v5 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  }

  else
  {
    type metadata accessor for BackgroundContentView();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v8 = *(v2 + v4);
    *(v2 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  [a1 bounds];
  v13 = v12;
  v15 = v14;
  if (v10 > v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v11;
  }

  if (v11 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v11;
  }

  v23 = v6;
  [v23 setFrame:{v13, v15, v17, v16}];
  v18 = (v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  *v18 = v17;
  v18[1] = v16;
  v19 = [v23 superview];

  if (!v19 || (sub_100003EFC(), v20 = a1, v21 = sub_100013A98(), v19, v20, (v21 & 1) == 0))
  {
    [a1 addSubview:v23];
  }

  v22 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator);
  sub_100003F48(&qword_100022CD0, type metadata accessor for ExtragalacticPosterController);
  swift_unknownObjectRetain();
  sub_100013748();
}

void sub_10000383C()
{
  v1 = sub_1000137B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000136E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v12 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (!v12)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  v14 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  if (v13 > v14)
  {
    v15 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize);
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  }

  if (v14 < v13)
  {
    v13 = *(v0 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize + 8);
  }

  v16 = &v12[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
  *v16 = v13;
  *(v16 + 1) = v15;
  v17 = [v12 superview];
  if (!v17)
  {
LABEL_10:
    v21 = *(v0 + v11);
    if (v21)
    {
      v22 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
      swift_beginAccess();
      sub_1000024A0(v0 + v22, v27);
      v23 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
      swift_beginAccess();
      (*(v7 + 16))(v10, v0 + v23, v6);
      v24 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_progress;
      swift_beginAccess();
      (*(v2 + 16))(v5, v0 + v24, v1);
      v25 = v21;
      sub_100010DB0(v27, v10, v5);

      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v10, v6);
      sub_10000254C(v27);
      return;
    }

    goto LABEL_13;
  }

  v18 = *(v0 + v11);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    [v19 center];
    [v20 setCenter:?];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

id sub_100003B10()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView] = 0;
  v2 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator;
  v3 = sub_100013768();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = sub_100013758();
  sub_100013688();
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_contentSize] = CGSizeZero;
  v6 = &v0[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider];
  v7 = type metadata accessor for ColorPalette();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  v6[3] = v7;
  v6[4] = sub_100003F48(&qword_100022CE0, type metadata accessor for ColorPalette);
  *v6 = v8;
  sub_100013788();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ExtragalacticPosterController();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_100003C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ExtragalacticPosterController()
{
  result = qword_100022CC0;
  if (!qword_100022CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003DFC()
{
  result = sub_1000136E8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000137B8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_100003EFC()
{
  result = qword_100022CD8;
  if (!qword_100022CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022CD8);
  }

  return result;
}

uint64_t sub_100003F48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t *sub_100003FDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100013BE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = &_swiftEmptyArrayStorage;
  result = sub_100004514(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_100013B18();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100004514((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for PolygonPathPointStep();
        v15 = sub_10000566C();
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_10000345C(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_100004514((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for PolygonPathPointStep();
        v15 = sub_10000566C();
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_10000345C(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_10000418C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100013BE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100004534(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100013B18();
        sub_10000571C();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100004534((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100005768(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000571C();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004534((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100005768(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100004358()
{
  v1 = v0[7];

  sub_10000254C(v0 + 8);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_1000043C4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_100005414(*a1, *a2, a4);
  *a3 = result;
  return result;
}

char *sub_1000043F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&qword_100022B80, &unk_100015A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100004514(void *a1, int64_t a2, char a3)
{
  result = sub_100004554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004534(char *a1, int64_t a2, char a3)
{
  result = sub_10000469C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004554(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002504(&qword_100022F10, &qword_100015CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002504(&qword_1000229D0, &qword_100015CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000469C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&qword_100022F28, &qword_100015CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100005414(void *a1, uint64_t a2, double a3)
{
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_100013A68();
  v11 = v10;
  v13 = v12;
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  sub_100013588();
  v21 = v20;
  sub_100013588();
  v23 = v22;
  sub_100013588();
  v25 = v24;
  sub_1000024A0((a1 + 8), v36);
  sub_1000024A0(a2 + 64, v35);
  if (a3 <= 0.0)
  {
    sub_10000254C(v35);
    v27 = v36;
LABEL_6:
    sub_10000345C(v27, v37);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v36);
    v27 = v35;
    goto LABEL_6;
  }

  v37[3] = &type metadata for InterpolatedColorProvider;
  v37[4] = sub_100003474();
  v26 = swift_allocObject();
  v37[0] = v26;
  sub_1000024A0(v36, v26 + 16);
  sub_1000024A0(v35, v26 + 56);
  *(v26 + 96) = a3;
  sub_10000254C(v35);
  sub_10000254C(v36);
LABEL_7:
  v28 = a1[15];
  v29 = *(a2 + 120);
  sub_100013588();
  v31 = v30;
  v32 = *(a2 + 128);
  sub_1000024A0(v37, v36);
  v33 = sub_1000047AC(v32, v36, v11, v13, v21, v23, v25, v31);
  sub_10000254C(v37);
  return v33;
}

uint64_t sub_1000055D0()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10000566C()
{
  result = qword_100022F18;
  if (!qword_100022F18)
  {
    type metadata accessor for PolygonPathPointStep();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022F18);
  }

  return result;
}

unint64_t sub_10000571C()
{
  result = qword_100022F20;
  if (!qword_100022F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022F20);
  }

  return result;
}

_OWORD *sub_100005768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000577C()
{
  v0 = sub_100013668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_100013678();
  sub_100013648();
  (*(v1 + 104))(v5, enum case for PosterLayout.LayoutType.maglev(_:), v0);
  v8 = sub_100013658();
  v9 = *(v1 + 8);
  v9(v5, v0);
  result = (v9)(v7, v0);
  byte_1000255E0 = v8 & 1;
  return result;
}

id sub_1000058C8(double a1)
{
  v20 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v2 = a1 / 100.0;
  if ([v1 getHue:&v19 saturation:&v18 brightness:&v17 alpha:&v20])
  {
    v3 = v17 + v2 * v17;
    if (v3 > 1.0)
    {
      v3 = 1.0;
    }

    if (v3 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }

    return [objc_allocWithZone(UIColor) initWithHue:v19 saturation:v18 brightness:v4 alpha:v20];
  }

  else if ([v12 getRed:&v16 green:&v15 blue:&v14 alpha:&v20])
  {
    v6 = v16 + v2 * v16;
    if (v6 <= 0.0)
    {
      v6 = 0.0;
    }

    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v15 + v2 * v15;
    if (v8 <= 0.0)
    {
      v8 = 0.0;
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = v14 + v2 * v14;
    if (v10 <= 0.0)
    {
      v10 = 0.0;
    }

    if (v10 <= 1.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    return [objc_allocWithZone(UIColor) initWithRed:v7 green:v9 blue:v11 alpha:v20];
  }

  else if ([v12 getWhite:&v13 alpha:&v20])
  {
    return [objc_allocWithZone(UIColor) initWithWhite:v13 + v2 * v13 alpha:v20];
  }

  else
  {

    return v12;
  }
}

uint64_t sub_100005B54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100013808();
  sub_100005BCC(v3, a2);
  sub_100005C30(v3, a2);
  return sub_1000137F8();
}

uint64_t *sub_100005BCC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100005C30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100005C9C(uint64_t *a1@<X8>)
{
  v3 = NSStringFromCGPoint((*v1)[1]);
  v4 = sub_1000138D8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_100005CF0(uint64_t a1)
{
  result = sub_100005D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100005D18()
{
  result = qword_100022FD8;
  if (!qword_100022FD8)
  {
    type metadata accessor for PolygonPathPointStep();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022FD8);
  }

  return result;
}

uint64_t sub_100005D6C(uint64_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v71 = 0.0;
  v72 = -2.68156159e154;
  sub_100013B08(24);
  v74 = 0;
  v75 = 0xE000000000000000;
  v76._countAndFlagsBits = 0x282D4E41424CLL;
  v76._object = 0xE600000000000000;
  sub_100013928(v76);
  v16 = a1[4];
  sub_100003518(a1, a1[3]);
  v17 = *(v16 + 8);
  sub_100013C68();
  v77._countAndFlagsBits = 2633001;
  v77._object = 0xE300000000000000;
  sub_100013928(v77);
  v69 = a2;
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v78._countAndFlagsBits = 2633001;
  v78._object = 0xE300000000000000;
  sub_100013928(v78);
  v79._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v79);

  v80._countAndFlagsBits = 2633001;
  v80._object = 0xE300000000000000;
  sub_100013928(v80);
  v71 = a5;
  v72 = a6;
  v18 = a6;
  v73 = a7;
  sub_100013B88();
  v81._countAndFlagsBits = 41;
  v81._object = 0xE100000000000000;
  sub_100013928(v81);
  v62 = a7;
  v19 = a7 * 0.5;
  v70 = a3 * a4;
  v20 = a2 * 0.5;
  v21.n128_f64[0] = a2 * 0.5 * 0.333333333 + a7 * 0.5;
  v22.n128_f64[0] = a3 + a7;
  v66 = a3 + a7;
  v25 = nullsub_1(v21, v22, v23, v24);
  v27 = v26;
  v64 = -(a3 * a4);
  sub_1000024A0(a1, &v71);
  v28 = v18;
  v63 = v18;
  v29 = sub_100002D6C(0, &v71, v25, v27, a5, v18, v62);
  v30.n128_f64[0] = v19 + v20 - v25;
  v31.n128_f64[0] = v27;
  v34 = nullsub_1(v30, v31, v32, v33);
  v36 = v35;
  v37.n128_f64[0] = v25 - v62 + 0.0;
  v38.n128_f64[0] = v70;
  v41 = nullsub_1(v37, v38, v39, v40);
  v67 = v42;
  v68 = v41;
  sub_1000024A0(a1, &v71);
  v43 = a5;
  v44 = sub_1000047AC(1, &v71, v34, v36, a5, v28, v62, v20 * 0.333333333 + v62);
  v45.n128_f64[0] = v20 + v19;
  v46.n128_f64[0] = v64 - v62;
  v65 = nullsub_1(v45, v46, v47, v48);
  v50 = v49;
  v51.n128_f64[0] = v20;
  v52.n128_f64[0] = v66;
  v55 = nullsub_1(v51, v52, v53, v54);
  v57 = v56;
  v58 = v56 / 3.0 - v19;
  sub_1000024A0(a1, &v71);
  v59 = sub_10000EAE4(&v71, v55, v57, v43, v63, v62, v55 / 3.0, v58);
  sub_100002504(&unk_1000230E0, &qword_100015DC8);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100015C30;
  *(v60 + 32) = v44;
  *(v60 + 40) = v68;
  *(v60 + 48) = v67;
  *(v60 + 56) = v59;
  *(v60 + 64) = v65;
  *(v60 + 72) = v50;
  *(v60 + 80) = v29;
  *(v60 + 88) = 0;
  *(v60 + 96) = v70;
  *(v8 + 16) = v69;
  *(v8 + 24) = a3;
  *(v8 + 32) = v60;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0xE000000000000000;
  sub_10000254C(a1);
  return v8;
}

id sub_100006110()
{
  v1 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  *&v0[v1] = sub_1000119F4(&_swiftEmptyArrayStorage);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ExtragalacticPosterEditor();
  v2 = objc_msgSendSuper2(&v10, "init");
  v3 = qword_100022898;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_100013808();
  sub_100005C30(v5, qword_1000255E8);
  v6 = sub_1000137E8();
  v7 = sub_100013A18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PosterEditor created", v8, 2u);
  }

  return v4;
}

uint64_t sub_100006258(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_100006454(a3, v8);

  if (!v9)
  {
    v9 = [objc_allocWithZone(type metadata accessor for ExtragalacticPosterController()) init];
    swift_beginAccess();
    v10 = *(v4 + v7);
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v11 = *(v4 + v7);
      }

      else
      {
        v11 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = v9;
      result = sub_100013BA8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v4 + v7) = sub_100006B0C(v11, result + 1);
    }

    else
    {
      v14 = *(v4 + v7);
      v15 = v9;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = *(v4 + v7);
    sub_100012E08(v9, a3, isUniquelyReferenced_nonNull_native);
    *(v4 + v7) = *&v20[0];
    swift_endAccess();
  }

  v17 = [a2 backgroundView];
  sub_10000366C(v17);
  sub_100006508(v21);
  sub_1000024A0(v21, v20);
  v18 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
  swift_beginAccess();
  sub_10000254C(&v9[v18]);
  sub_10000345C(v20, &v9[v18]);
  swift_endAccess();
  v19 = *&v9[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator];
  if ((sub_100013728() & 1) == 0)
  {
    sub_10000383C();
  }

  return sub_10000254C(v21);
}

void *sub_100006454(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100013BB8();

    if (v4)
    {
      type metadata accessor for ExtragalacticPosterController();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100012330(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_100006508@<X0>(uint64_t *a1@<X8>)
{
  sub_100002504(&unk_100023180, &qword_100015E30);
  sub_100013718();
  if (!v8)
  {
    v6 = type metadata accessor for ColorPalette();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = 0;
    a1[3] = v6;
    goto LABEL_5;
  }

  result = sub_10000CC74(v7, v8);
  if (result != 10)
  {
    v3 = result;
    v4 = type metadata accessor for ColorPalette();
    v5 = swift_allocObject();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = 0;
    *(v5 + 16) = v3;
    *(v5 + 17) = 0;
    a1[3] = v4;
LABEL_5:
    result = sub_100006D40();
    a1[4] = result;
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

id sub_100006AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100006B0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002504(&qword_100023190, &qword_100015E38);
    v2 = sub_100013C18();
    v19 = v2;
    sub_100013B98();
    v3 = sub_100013BC8();
    if (v3)
    {
      v4 = v3;
      sub_100008110(0, &qword_100023198, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ExtragalacticPosterController();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100012910(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100013A88(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100013BC8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_100006D40()
{
  result = qword_100022CE0;
  if (!qword_100022CE0)
  {
    type metadata accessor for ColorPalette();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022CE0);
  }

  return result;
}

uint64_t sub_100006D98(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100013B18();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100013BE8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100006EC0(void *a1, void *a2)
{
  v3 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_100013B98() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  while ((v8 & 0x8000000000000000) != 0)
  {
    if (!sub_100013BC8())
    {
      goto LABEL_22;
    }

    sub_100008110(0, &qword_100023198, PREditingLook_ptr);
    swift_dynamicCast();
    v20 = v29;
    type metadata accessor for ExtragalacticPosterController();
    swift_dynamicCast();
    v21 = v29;
    v16 = v12;
    v17 = v7;
    if (!v29)
    {
LABEL_22:
      sub_100007FE8();
      return;
    }

LABEL_18:
    sub_100008110(0, &qword_1000231C8, NSObject_ptr);
    v22 = [a1 currentLook];
    v23 = sub_100013A98();

    v24 = 0;
    if (v23)
    {
      v24 = a2;
      v25 = a2;
    }

    v26 = *&v21[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator];
    if ((sub_100013728() & 1) == 0)
    {
      sub_10000383C();
    }

    v12 = v16;
    v7 = v17;
  }

  v14 = v12;
  v15 = v7;
  v16 = v12;
  if (v7)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v8 + 56) + v18);
    v20 = *(*(v8 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100007148(void *a1, uint64_t a2)
{
  v4 = [a1 currentLook];
  v5 = [v4 identifier];

  v6 = sub_1000138D8();
  v8 = v7;

  if (sub_10000CC74(v6, v8) == 10)
  {

    v6 = 0;
    v8 = 0;
  }

  v24[0] = v6;
  v24[1] = v8;
  sub_100002504(&qword_1000231B0, &qword_100015E48);
  sub_100007FF0();
  v9 = sub_100013898();

  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  if (v9)
  {
    v11.super.isa = sub_100013878().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v24[0] = 0;
  v12 = [v10 storeUserInfo:v11.super.isa error:v24];

  if (v12)
  {
    v13 = v24[0];
  }

  else
  {
    v14 = v24[0];
    sub_100013578();

    swift_willThrow();
    if (qword_100022898 != -1)
    {
      swift_once();
    }

    v15 = sub_100013808();
    sub_100005C30(v15, qword_1000255E8);
    swift_errorRetain();
    v16 = sub_1000137E8();
    v17 = sub_100013A38();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_100013CA8();
      v22 = sub_10000C434(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not save to environment: %s", v18, 0xCu);
      sub_10000254C(v19);
    }

    else
    {
    }
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_100007494()
{
  v1 = v0;
  if (qword_100022898 != -1)
  {
LABEL_25:
    swift_once();
  }

  v2 = sub_100013808();
  sub_100005C30(v2, qword_1000255E8);
  v3 = sub_1000137E8();
  v4 = sub_100013A18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterEditor invalidated", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC19ExtragalacticPoster25ExtragalacticPosterEditor_controllers;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_100013B98() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = v7;
  }

  v1 = 0;
  v15 = (v9 + 64) >> 6;
  while ((v11 & 0x8000000000000000) == 0)
  {
    v17 = v1;
    v18 = v10;
    v19 = v1;
    if (!v10)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          return sub_100007FE8();
        }

        v18 = *(v8 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_17:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v11 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      return sub_100007FE8();
    }

LABEL_21:
    v22 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
    v23 = *&v21[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView];
    if (v23)
    {
      [v23 removeFromSuperview];
      v24 = *&v21[v22];
      *&v21[v22] = 0;
    }

    v16 = *&v21[OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator];
    sub_100013748();

    v1 = v19;
    v10 = v20;
  }

  if (sub_100013BC8())
  {
    swift_unknownObjectRelease();
    type metadata accessor for ExtragalacticPosterController();
    swift_dynamicCast();
    v21 = v26;
    v19 = v1;
    v20 = v10;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  return sub_100007FE8();
}

id sub_100007750(void *a1)
{
  v1 = [a1 currentLook];
  v2 = [v1 identifier];

  v3 = sub_1000138D8();
  v5 = v4;

  if (v3 == 0x6B63616C62 && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_100013C88();
  }

  v8 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v9 = [objc_opt_self() systemBlackColor];
  v10 = [objc_allocWithZone(PRPosterColor) initWithColor:v9 preferredStyle:1];

  if (v7)
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_100002504(&unk_1000231A0, &qword_100015E40);
    v11 = swift_allocObject();
    v11[1] = xmmword_100015DE0;
    *(v11 + 4) = v10;
    v12 = v10;
  }

  sub_10000418C(v11);

  v13 = objc_allocWithZone(PREditorColorPalette);
  isa = sub_100013978().super.isa;

  v15 = [v13 initWithColors:isa localizedName:0 showsColorWell:0];

  [v8 setColorPalette:v15];
  v16 = sub_100013978().super.isa;
  [v8 setSuggestedColors:v16];

  [v8 setColorWellDisplayMode:0];
  if (v7)
  {
    v17 = v10;
    [v8 setSuggestedColor:v17];
  }

  else
  {
    [v8 setSuggestedColor:0];
  }

  v18 = sub_1000138C8();

  [v8 setIdentifier:v18];

  [v8 setShowsSlider:(v7 & 1) == 0];
  return v8;
}

void *sub_100007A30()
{
  v18 = &_swiftEmptyArrayStorage;
  sub_100013B58();
  v0 = 0;
  v15 = 0x8000000100014E40;
  do
  {
    v8 = *(&off_10001CF18 + v0 + 32);
    if (v8 <= 4)
    {
      *(&off_10001CF18 + v0 + 32);
    }

    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    sub_100013B08(19);

    *&v16 = 0xD000000000000011;
    *(&v16 + 1) = v15;
    v19._countAndFlagsBits = sub_1000138E8();
    sub_100013928(v19);

    sub_100013908();

    if (qword_100022880 != -1)
    {
      swift_once();
    }

    v16 = 0u;
    v17 = 0u;
    v9 = qword_1000255B0;
    v10 = sub_1000138C8();

    v11 = sub_1000138C8();

    v12 = *(&v17 + 1);
    if (*(&v17 + 1))
    {
      v1 = sub_100003518(&v16, *(&v17 + 1));
      v2 = *(v12 - 8);
      v3 = *(v2 + 64);
      __chkstk_darwin(v1);
      v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v2 + 16))(v5);
      v6 = sub_100013C78();
      (*(v2 + 8))(v5, v12);
      sub_10000254C(&v16);
    }

    else
    {
      v6 = 0;
    }

    ++v0;
    [objc_allocWithZone(PRMutableEditingLook) initWithIdentifier:v10 displayName:v11 initialTimeFontConfiguration:v9 initialTitleColor:v6];

    swift_unknownObjectRelease();
    sub_100013B38();
    v7 = v18[2];
    sub_100013B68();
    sub_100013B78();
    sub_100013B48();
  }

  while (v0 != 10);
  return v18;
}

uint64_t sub_100007DEC(void *a1)
{
  sub_100002504(&unk_100023180, &qword_100015E30);
  v2 = [a1 environment];
  sub_1000136F8();
  swift_unknownObjectRelease();
  v4 = v11[0];
  v3 = v11[1];
  if (qword_100022898 != -1)
  {
    swift_once();
  }

  v5 = sub_100013808();
  sub_100005C30(v5, qword_1000255E8);

  v6 = sub_1000137E8();
  v7 = sub_100013A28();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C434(v4, v3, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "initialLook poster look: %s", v8, 0xCu);
    sub_10000254C(v9);
  }

  return v4;
}

uint64_t sub_100007F80(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100008110(0, &qword_100023500, PRTimeFontConfiguration_ptr);
  return sub_100013A98() & 1;
}

unint64_t sub_100007FF0()
{
  result = qword_1000231B8;
  if (!qword_1000231B8)
  {
    sub_100008074(&qword_1000231B0, &qword_100015E48);
    sub_1000080BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231B8);
  }

  return result;
}

uint64_t sub_100008074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000080BC()
{
  result = qword_1000231C0;
  if (!qword_1000231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000231C0);
  }

  return result;
}

uint64_t sub_100008110(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008158@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100013858();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100013868();
  v5 = sub_100013828();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_100013838();
  sub_100002504(&qword_100023250, qword_100015ED0);
  v8 = *(sub_1000135A8() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000159E0;
  sub_1000085F4(&qword_100023258, &type metadata accessor for PRRenderingConfiguration);

  sub_100013598();
  sub_1000085F4(&qword_100023260, &type metadata accessor for PREditingConfiguration);

  sub_100013598();

  *a1 = v11;
  return result;
}

id sub_1000083B4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000083F4()
{
  [objc_allocWithZone(type metadata accessor for ExtragalacticPosterUpdating()) init];
  v0 = sub_100002504(&qword_100023240, qword_100015E50);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100013848();
  sub_100008670(&qword_100023248);
  sub_1000135D8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008558();
  sub_100008670(&qword_100023238);
  sub_1000135B8();
  return 0;
}

unint64_t sub_100008558()
{
  result = qword_100023230;
  if (!qword_100023230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023230);
  }

  return result;
}

uint64_t sub_1000085F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100008074(&qword_100023240, qword_100015E50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000086C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

void *sub_1000087BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 48))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

void *sub_1000088B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100003518(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100003518((v0 + 40), v4);
  v6 = (*(v5 + 40))(v4, v5);
  v7 = *(v0 + 80);
  if (v7 <= 0.0)
  {
    v8 = v6;
  }

  else if (v7 >= 1.0)
  {
    v8 = v3;
    v3 = v6;
  }

  else
  {
    v8 = v6;
    sub_100008D34();
    v9 = sub_100013A78();

    v3 = v9;
  }

  return v3;
}

uint64_t sub_1000089B4()
{
  v1 = v0;
  v8._countAndFlagsBits = 40;
  v8._object = 0xE100000000000000;
  sub_100013928(v8);
  v2 = v0[4];
  sub_100003518(v1, v1[3]);
  v3 = *(v2 + 8);
  sub_100013C68();
  v9._countAndFlagsBits = 2633001;
  v9._object = 0xE300000000000000;
  sub_100013928(v9);
  v4 = v1[9];
  sub_100003518(v1 + 5, v1[8]);
  v5 = *(v4 + 8);
  sub_100013C68();
  v10._countAndFlagsBits = 2633001;
  v10._object = 0xE300000000000000;
  sub_100013928(v10);
  v6 = v1[10];
  v11._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_100013928(v12);
  return 0;
}

uint64_t sub_100008AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000089B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008AC8()
{
  v0 = sub_1000089B4();
  v2 = v1;
  if (v0 == sub_1000089B4() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100013C88();
  }

  return v4 & 1;
}

uint64_t sub_100008B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 24) = a3;
  v10 = sub_100003474();
  *(a4 + 32) = v10;
  v11 = swift_allocObject();
  *a4 = v11;
  sub_100008DC0(a1, v11 + 16);
  *(a4 + 64) = a3;
  *(a4 + 72) = v10;
  v12 = swift_allocObject();
  *(a4 + 40) = v12;
  result = sub_100008DC0(a2, v12 + 16);
  *(a4 + 80) = a5;
  return result;
}

unint64_t sub_100008C00(void *a1)
{
  a1[1] = sub_100008C38();
  a1[2] = sub_100008C8C();
  result = sub_100008CE0();
  a1[3] = result;
  return result;
}

unint64_t sub_100008C38()
{
  result = qword_100023270;
  if (!qword_100023270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023270);
  }

  return result;
}

unint64_t sub_100008C8C()
{
  result = qword_100023278;
  if (!qword_100023278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023278);
  }

  return result;
}

unint64_t sub_100008CE0()
{
  result = qword_100023280;
  if (!qword_100023280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023280);
  }

  return result;
}

unint64_t sub_100008D34()
{
  result = qword_100023288;
  if (!qword_100023288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100023288);
  }

  return result;
}

uint64_t sub_100008D80()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

__n128 sub_100008DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100008E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008EC8()
{
  v1 = sub_1000136E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013688();
  v6 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v6, v5, v1);
  swift_endAccess();
  sub_10000383C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
    [v8 noteContentSignificantlyChanged];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100009014()
{
  v1 = sub_1000136E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000136B8();
  v6 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationFrame;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v6, v5, v1);
  swift_endAccess();
  sub_10000383C();
}

uint64_t sub_100009134()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 0.419847328;
  if (byte_1000255E0)
  {
    v0 = 0.4167;
  }

  qword_100023290 = *&v0;
  return result;
}

uint64_t sub_1000091A0()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 0.454054054;
  if (byte_1000255E0)
  {
    v0 = 0.5;
  }

  qword_100023298 = *&v0;
  return result;
}

double *sub_100009208(uint64_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v74 = 0.0;
  v75 = -2.68156159e154;
  sub_100013B08(24);
  v77 = 0;
  v78 = 0xE000000000000000;
  v79._countAndFlagsBits = 0x282D4E414250;
  v79._object = 0xE600000000000000;
  sub_100013928(v79);
  v16 = a1[4];
  sub_100003518(a1, a1[3]);
  v17 = *(v16 + 8);
  sub_100013C68();
  v80._countAndFlagsBits = 2633001;
  v80._object = 0xE300000000000000;
  sub_100013928(v80);
  type metadata accessor for CGSize(0);
  sub_100013B88();
  v81._countAndFlagsBits = 2633001;
  v81._object = 0xE300000000000000;
  sub_100013928(v81);
  v69 = a4;
  v82._countAndFlagsBits = sub_1000139D8();
  sub_100013928(v82);

  v83._countAndFlagsBits = 2633001;
  v83._object = 0xE300000000000000;
  sub_100013928(v83);
  v71 = a5;
  v72 = a6;
  v74 = a5;
  v75 = a6;
  v76 = a7;
  sub_100013B88();
  v84._countAndFlagsBits = 41;
  v84._object = 0xE100000000000000;
  sub_100013928(v84);
  v22 = a7 * 0.5;
  if (qword_1000228B0 != -1)
  {
    swift_once();
  }

  v18.n128_f64[0] = v22 + *&qword_100023290 * a2;
  if (qword_1000228B8 != -1)
  {
    v63 = v22 + *&qword_100023290 * a2;
    swift_once();
    v18.n128_f64[0] = v63;
  }

  v19.n128_f64[0] = v22 + *&qword_100023298 * a3;
  v23 = nullsub_1(v18, v19, v20, v21);
  v25 = v24;
  sub_1000024A0(a1, &v74);
  v73 = a3;
  v26 = sub_100002D6C(0, &v74, v23, v25, v71, v72, a7);
  v27 = a2 / 3.0 + a7;
  v67 = v23;
  v28.n128_f64[0] = a2 - v23 + a7 * 4.0 + a2 - v27 - v23 - v22;
  v29.n128_f64[0] = v25 - a7;
  v65 = v25 - a7;
  v32 = nullsub_1(v28, v29, v30, v31);
  v33 = a2;
  v35 = v34;
  sub_1000024A0(a1, &v74);
  v36 = v35;
  v37 = v33;
  v38 = sub_1000047AC(0, &v74, v32, v36, v71, v72, a7, v27);
  v39.n128_f64[0] = a3 - v25 + a7;
  v40.n128_f64[0] = v33;
  v47 = nullsub_1(v40, v39, v41, v42);
  v48 = v44.n128_f64[0];
  if (qword_100022890 != -1)
  {
    swift_once();
  }

  if (byte_1000255E0 == 1)
  {
    v49 = v48 / 5.0;
  }

  else if (v47 > v48)
  {
    v49 = v47 / 3.0 * 0.75;
  }

  else
  {
    v49 = v47 / 3.0;
  }

  v50 = v33 * v69;
  v43.n128_f64[0] = -(v37 * v69);
  v44.n128_f64[0] = v65;
  v51 = nullsub_1(v43, v44, v45, v46);
  v64 = v52;
  v66 = v51;
  v70 = v37;
  v53 = v67 - a7;
  v54.n128_f64[0] = v50 + v67 - a7;
  v55.n128_u64[0] = 0;
  v58 = nullsub_1(v54, v55, v56, v57);
  v68 = v59;
  sub_1000024A0(a1, &v74);
  v60 = sub_10000EAE4(&v74, v47, v48, v71, v72, a7, v53, v49 - a7 * 0.5);
  sub_100002504(&unk_1000230E0, &qword_100015DC8);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100015C30;
  *(v61 + 32) = v38;
  *(v61 + 40) = v58;
  *(v61 + 48) = v68;
  *(v61 + 56) = v60;
  *(v61 + 64) = v66;
  *(v61 + 72) = v64;
  *(v61 + 80) = v26;
  *(v61 + 88) = v50;
  *(v61 + 96) = 0;
  v8[2] = v70;
  v8[3] = v73;
  *(v8 + 4) = v61;
  v8[5] = 0.0;
  v8[6] = -2.68156159e154;
  sub_10000254C(a1);
  return v8;
}

uint64_t sub_10000968C()
{

  return swift_deallocClassInstance();
}

id sub_100009730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterUpdating();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009918(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_100008110(0, &unk_1000234F0, PRPosterDescriptor_ptr);
  v7 = sub_100013888();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_100009A30;

  return (sub_10000AB78)(v7);
}

uint64_t sub_100009A30()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_100013568();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = *(v3 + 40);
    isa = sub_100013978().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v14 = *(v3 + 32);
  (v14)[2](v14, v11, v10);

  _Block_release(v14);
  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_100009D80(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = v5[2];
  v7 = a1;
  v6(v5, v7, 0);
  _Block_release(v5);

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_100009E20()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000B3D0;

  return sub_100009D80(v2, v3, v5);
}

uint64_t sub_100009EE0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000B3D0;

  return v7();
}

uint64_t sub_100009FC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000B3D0;

  return sub_100009EE0(v2, v3, v5);
}

uint64_t sub_10000A088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000A170;

  return v8();
}

uint64_t sub_10000A170()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B3D0;

  return sub_10000A088(a1, v4, v5, v7);
}

uint64_t sub_10000A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000A61C(a3, v25 - v11);
  v13 = sub_1000139C8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B35C(v12, &qword_1000234E8, &qword_100016170);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000139B8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000139A8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000138F8() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000B35C(a3, &qword_1000234E8, &qword_100016170);

    return v23;
  }

LABEL_8:
  sub_10000B35C(a3, &qword_1000234E8, &qword_100016170);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000A61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002504(&qword_1000234E8, &qword_100016170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A68C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A784;

  return v7(a1);
}

uint64_t sub_10000A784()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A87C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A8B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B3D0;

  return sub_10000A68C(a1, v5);
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A170;

  return sub_10000A68C(a1, v5);
}

uint64_t sub_10000AA24()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A170;

  return sub_100009918(v2, v3, v5, v4);
}

uint64_t sub_10000AB38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AB78(uint64_t a1)
{
  *(v1 + 216) = a1;

  return _swift_task_switch(sub_10000AC08, 0, 0);
}

uint64_t sub_10000AC08()
{
  v63 = v0;
  v1 = &unk_10001CF70;
  v2 = 3;
  v3 = &_s9PosterKit22PREditingConfigurationCMa_ptr;
  v4 = v0[27];
  v58 = v4;
  do
  {
    v7 = *(v1 - 1);
    v8 = *v1;
    v9 = *(v4 + 16);

    if (v9 && (v10 = v0[27], v11 = sub_1000123B8(v7, v8), (v12 & 1) != 0))
    {
      v13 = v11;

      v6 = *(*(v4 + 56) + 8 * v13);
      sub_100013968();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100013988();
      }

      sub_100013998();
    }

    else
    {
      v14 = sub_1000138C8();
      v15 = v3[239];
      v16 = [objc_opt_self() mutableDescriptorWithIdentifier:v14];

      v17 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
      [v17 setAllowsSystemSuggestedComplications:0];
      v0[23] = 0;
      v61 = v17;
      v18 = [v16 storeGalleryOptions:v17 error:v0 + 23];
      v19 = v0[23];
      v59 = v7;
      v60 = v16;
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v21 = v19;
        sub_100013578();

        swift_willThrow();
        if (qword_1000228A0 != -1)
        {
          swift_once();
        }

        v22 = sub_100013808();
        sub_100005C30(v22, qword_100025600);
        swift_errorRetain();
        v23 = sub_1000137E8();
        v24 = sub_100013A48();

        if (os_log_type_enabled(v23, v24))
        {
          v57 = v2;
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v62[0] = v26;
          *v25 = 136315138;
          swift_getErrorValue();
          v28 = v0[18];
          v27 = v0[19];
          v29 = v0[20];
          v30 = sub_100013CA8();
          v32 = sub_10000C434(v30, v31, v62);

          *(v25 + 4) = v32;
          v3 = &_s9PosterKit22PREditingConfigurationCMa_ptr;
          _os_log_impl(&_mh_execute_header, v23, v24, "Could not set descriptor gallery options with error: %s", v25, 0xCu);
          sub_10000254C(v26);

          v2 = v57;
        }

        else
        {
        }

        v4 = v58;
        v16 = v60;
      }

      sub_100002504(&unk_1000231A0, &qword_100015E40);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100015DE0;
      if (qword_100022880 != -1)
      {
        swift_once();
      }

      v34 = qword_1000255B0;
      *(v33 + 32) = qword_1000255B0;
      sub_100008110(0, &qword_100023500, PRTimeFontConfiguration_ptr);
      v35 = v34;
      isa = sub_100013978().super.isa;

      [v16 setPreferredTimeFontConfigurations:isa];

      sub_100002504(&qword_100023508, &qword_1000161F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000159D0;
      v38 = aLookidentifier_1[1];
      v0[21] = aLookidentifier_1[0];
      v0[22] = v38;

      sub_100013AE8();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v59;
      *(inited + 80) = v8;
      sub_100011AEC(inited);
      swift_setDeallocating();
      sub_10000B35C(inited + 32, &unk_100023510, &unk_100016B70);
      v39 = sub_100013878().super.isa;

      v0[24] = 0;
      LODWORD(isa) = [v16 storeUserInfo:v39 error:v0 + 24];

      v40 = v0[24];
      if (isa)
      {
        v5 = v40;
      }

      else
      {
        v41 = v40;
        sub_100013578();

        swift_willThrow();
        if (qword_1000228A0 != -1)
        {
          swift_once();
        }

        v42 = sub_100013808();
        sub_100005C30(v42, qword_100025600);
        swift_errorRetain();
        v43 = sub_1000137E8();
        v44 = sub_100013A48();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v62[0] = v46;
          *v45 = 136315138;
          swift_getErrorValue();
          v48 = v0[15];
          v47 = v0[16];
          v49 = v0[17];
          v50 = sub_100013CA8();
          v52 = sub_10000C434(v50, v51, v62);

          *(v45 + 4) = v52;
          v3 = &_s9PosterKit22PREditingConfigurationCMa_ptr;
          _os_log_impl(&_mh_execute_header, v43, v44, "Could not store user info with error: %s", v45, 0xCu);
          sub_10000254C(v46);

          v4 = v58;
        }

        else
        {
        }

        v16 = v60;
      }

      v6 = v16;
      sub_100013968();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100013988();
      }

      sub_100013998();
    }

    v1 += 2;
    --v2;
  }

  while (v2);
  swift_arrayDestroy();
  v55 = v0[1];

  return v55(&_swiftEmptyArrayStorage);
}

uint64_t sub_10000B35C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_10000B3E8()
{
  v1 = *v0;
  sub_100013CB8();
  sub_100013CC8(v1);
  return sub_100013CD8();
}

Swift::Int sub_10000B45C()
{
  v1 = *v0;
  sub_100013CB8();
  sub_100013CC8(v1);
  return sub_100013CD8();
}

uint64_t sub_10000B4A0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6D61657263;
    v6 = 2036429415;
    if (a1 != 8)
    {
      v6 = 0x6B63616C62;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C70727570;
    if (a1 != 5)
    {
      v7 = 1802398064;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974696E75;
    v2 = 0x65676E61726FLL;
    v3 = 0x6E65657267;
    if (a1 != 3)
    {
      v3 = 1702194274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 6579570;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000B5A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000B4A0(*a1);
  v5 = v4;
  if (v3 == sub_10000B4A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013C88();
  }

  return v8 & 1;
}

Swift::Int sub_10000B628()
{
  v1 = *v0;
  sub_100013CB8();
  sub_10000B4A0(v1);
  sub_100013918();

  return sub_100013CD8();
}

uint64_t sub_10000B68C()
{
  sub_10000B4A0(*v0);
  sub_100013918();
}

Swift::Int sub_10000B6E0()
{
  v1 = *v0;
  sub_100013CB8();
  sub_10000B4A0(v1);
  sub_100013918();

  return sub_100013CD8();
}

uint64_t sub_10000B740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000CC74(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10000B770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B4A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10000B85C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_10000CB84(v0, 0xEF746867694C646ELL, &selRef_systemGreenColor);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10000B8D0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    v4 = sub_10000BA38(0x746E65636361, 0xE600000000000000);
    if (!v4)
    {
      v4 = [objc_opt_self() systemYellowColor];
    }

    if (*(v0 + 17) == 1)
    {
      v5 = v4;
      sub_100008D34();
      v6 = [objc_opt_self() blackColor];
      v7 = sub_100013A78();

      v4 = v7;
    }

    v8 = *(v3 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_10000B9C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_10000CB84(v0, 0xEE006B726144646ELL, &selRef_systemRedColor);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10000BA38(uint64_t a1, void *a2)
{
  strcpy(v20, "extragalactic/");
  HIBYTE(v20[1]) = -18;
  v21._countAndFlagsBits = sub_10000B4A0(*(v2 + 16));
  sub_100013928(v21);

  v22._countAndFlagsBits = 47;
  v22._object = 0xE100000000000000;
  sub_100013928(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  sub_100013928(v23);
  v6 = v20[0];
  v5 = v20[1];
  v7 = sub_1000138C8();
  v8 = objc_opt_self();
  v9 = [v8 colorNamed:v7];

  if (v9)
  {
  }

  else
  {
    strcpy(v20, "extragalactic/");
    HIBYTE(v20[1]) = -18;
    v24._countAndFlagsBits = a1;
    v24._object = a2;
    sub_100013928(v24);
    v11 = v20[0];
    v10 = v20[1];
    v12 = sub_1000138C8();
    v9 = [v8 colorNamed:v12];

    if (v9)
    {
    }

    else
    {
      if (qword_100022898 != -1)
      {
        swift_once();
      }

      v13 = sub_100013808();
      sub_100005C30(v13, qword_1000255E8);

      v14 = sub_1000137E8();
      v15 = sub_100013A38();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v20[0] = swift_slowAlloc();
        *v16 = 136315394;
        v17 = sub_10000C434(v6, v5, v20);

        *(v16 + 4) = v17;
        *(v16 + 12) = 2080;
        v18 = sub_10000C434(v11, v10, v20);

        *(v16 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "No matching color found for %s or %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  return v9;
}

uint64_t sub_10000BD18()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    v6 = 0x6D61657263;
    v7 = 2036429415;
    if (v1 != 8)
    {
      v7 = 0x6B63616C62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x656C70727570;
    if (v1 != 5)
    {
      v8 = 1802398064;
    }

    if (*(v0 + 16) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974696E75;
    v3 = 0x65676E61726FLL;
    v4 = 0x6E65657267;
    if (v1 != 3)
    {
      v4 = 1702194274;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 6579570;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_10000BE18()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ColorPalette.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ColorPalette.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ColorPalette.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorPalette.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C144()
{
  result = qword_100023648;
  if (!qword_100023648)
  {
    sub_100008074(&qword_100023650, qword_100016280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023648);
  }

  return result;
}

unint64_t sub_10000C1AC()
{
  result = qword_100023658;
  if (!qword_100023658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023658);
  }

  return result;
}

unint64_t sub_10000C204()
{
  result = qword_100023660;
  if (!qword_100023660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023660);
  }

  return result;
}

uint64_t sub_10000C2C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000BD14();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000C324(void *a1)
{
  a1[1] = sub_10000CB44(&qword_100023668);
  a1[2] = sub_10000CB44(&qword_100023670);
  result = sub_10000CB44(&qword_100023678);
  a1[3] = result;
  return result;
}

uint64_t sub_10000C3D8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000C434(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000C434(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C500(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000CD14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000254C(v11);
  return v7;
}

unint64_t sub_10000C500(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C60C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100013B28();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000C60C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C658(a1, a2);
  sub_10000C788(&off_10001CDE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C658(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000C874(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100013B28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100013938();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C874(v10, 0);
        result = sub_100013AF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C788(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000C8E8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C874(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002504(&unk_100023690, qword_1000164C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C8E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002504(&unk_100023690, qword_1000164C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10000C9DC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000C9EC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v11[3] = type metadata accessor for ColorPalette();
  v11[4] = sub_10000CB44(&qword_100022CE0);
  v11[0] = a1;
  sub_1000024A0(v11, v10);

  sub_100002504(&qword_100023680, &qword_1000164C0);
  if (swift_dynamicCast())
  {
    v4 = sub_10000BD14();
    v6 = v5;
    if (v4 == sub_10000BD14() && v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_100013C88();
    }
  }

  else
  {
    v8 = 0;
  }

  sub_10000254C(v11);
  return v8 & 1;
}

uint64_t sub_10000CB44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ColorPalette();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000CB84(uint64_t a1, void *a2, SEL *a3)
{
  result = sub_10000BA38(0x756F72676B636162, a2);
  if (!result)
  {
    result = [objc_opt_self() *a3];
  }

  if (*(a1 + 17))
  {
    if (*(a1 + 17) == 1)
    {
      v6 = result;
      sub_100008D34();
      v7 = [objc_opt_self() blackColor];
      v8 = sub_100013A78();
    }

    else
    {
      if (*(a1 + 16) != 9)
      {
        return result;
      }

      v7 = result;
      v8 = sub_1000058C8(0.1);
    }

    return v8;
  }

  return result;
}

uint64_t sub_10000CC74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CE08;
  v6._object = a2;
  v4 = sub_100013C38(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000CCC0()
{
  result = qword_100023688;
  if (!qword_100023688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023688);
  }

  return result;
}

uint64_t sub_10000CD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_10000CD7C()
{
  v1 = OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for ExtragalacticPosterController()) init];
  *&v0[OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer] = 0;
  v2 = OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_colorPaletteCache;
  type metadata accessor for ColorPaletteCache();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = sub_100011C28(&_swiftEmptyArrayStorage);
  *&v0[v2] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ExtragalacticPosterRenderer();
  v4 = objc_msgSendSuper2(&v12, "init");
  v5 = qword_1000228A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_100013808();
  sub_100005C30(v7, qword_100025618);
  v8 = sub_1000137E8();
  v9 = sub_100013A18();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "PosterRenderer created", v10, 2u);
  }

  return v6;
}

uint64_t sub_10000CF0C(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
  *(v3 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer) = a1;
  v6 = a1;

  v7 = *(v3 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller);
  *(v7 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8) = &off_10001D858;
  swift_unknownObjectWeakAssign();
  v8 = [v6 backgroundView];
  sub_10000366C(v8);

  v9 = *(v7 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator);
  if ((sub_100013738() & 1) == 0)
  {
    sub_10000383C();
  }

  return sub_10000D13C(v6, a2);
}

uint64_t sub_10000D13C(uint64_t a1, void *a2)
{
  v3 = sub_1000137B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = sub_1000137D8();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100013638();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v45);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000139F8();
  sub_100013A08();
  if ((sub_1000139E8() & 1) == 0)
  {
LABEL_9:
    sub_100002504(&unk_100023180, &qword_100015E30);
    sub_100013708();
    v27 = v49;
    v28 = v50;
    goto LABEL_10;
  }

  v42 = v10;
  v18 = [a2 contents];
  v49 = 0;
  v19 = [v18 loadUserInfoWithError:&v49];
  swift_unknownObjectRelease();
  v20 = v49;
  if (v19)
  {
    v21 = sub_100013888();
    v22 = v20;

    strcpy(v47, "lookIdentifier");
    HIBYTE(v47[1]) = -18;
    sub_100013AE8();
    if (*(v21 + 16) && (v23 = sub_100012374(&v49), (v24 & 1) != 0))
    {
      sub_10000CD14(*(v21 + 56) + 32 * v23, v48);
      sub_10000D838(&v49);

      v25 = swift_dynamicCast();
      v10 = v42;
      if (v25)
      {
        v26 = sub_10000CC74(v47[0], v47[1]);
        if (v26 != 10)
        {
          v27 = sub_10000B4A0(v26);
          goto LABEL_10;
        }
      }
    }

    else
    {

      sub_10000D838(&v49);
      v10 = v42;
    }

    goto LABEL_9;
  }

  v40 = v49;
  sub_100013578();

  swift_willThrow();
  sub_100002504(&unk_100023180, &qword_100015E30);
  sub_100013708();

  v27 = v49;
  v28 = v50;
  v10 = v42;
LABEL_10:
  v29 = sub_10000CC74(v27, v28);
  if (v29 == 10)
  {
    __break(1u);
  }

  v30 = v44;
  v31 = *(v44 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_colorPaletteCache);
  sub_100011DA0(v29);
  sub_1000137C8();
  v33 = v32;
  sub_100013618();
  sub_100011E80(&v49, v33, v34);
  v35 = *(v30 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller);
  sub_1000024A0(&v49, v48);
  v36 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_colorProvider;
  swift_beginAccess();
  sub_10000254C((v35 + v36));
  sub_10000345C(v48, v35 + v36);
  swift_endAccess();
  sub_1000137C8();
  sub_100013628();
  sub_100013788();
  v37 = v43;
  (*(v4 + 16))(v43, v9, v3);
  v38 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_progress;
  swift_beginAccess();
  (*(v4 + 40))(v35 + v38, v37, v3);
  swift_endAccess();
  sub_10000383C();
  (*(v4 + 8))(v9, v3);
  sub_10000254C(&v49);
  (*(v46 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v45);
}

id sub_10000D738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticPosterRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D7EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10000D88C()
{
  v1 = v0;
  if (qword_1000228A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100013808();
  sub_100005C30(v2, qword_100025618);
  v3 = sub_1000137E8();
  v4 = sub_100013A18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterRenderer invalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller);
  *(v6 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView;
  v8 = *(v6 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_backgroundView);
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *(v6 + v7);
    *(v6 + v7) = 0;
  }

  v10 = *(v6 + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator);
  sub_100013748();
  v11 = *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_renderer) = 0;
}

uint64_t sub_10000D9F8()
{
  v14 = 0;
  v1 = *&v0[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor];
  if (v1)
  {
    v2 = *(v1 + 32);
    v3 = *(v2 + 16);

    if (v3)
    {
      v4 = 0;
      while (v4 < *(v2 + 16))
      {
        v5 = (v2 + 32 + 24 * v4);
        v6 = v5[1];
        v7 = v5[2];
        v8 = *(*v5 + 56);
        v9 = *(v8 + 16);

        if (v9)
        {
          v10 = 0;
          v11 = v8 + 32;
          while (v10 < *(v8 + 16))
          {
            sub_100005610(v11, v13);
            sub_10000DB54(v13, v0, &v14, v6, v7);
            ++v10;
            sub_1000056C4(v13);
            v11 += 48;
            if (v9 == v10)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        ++v4;

        if (v4 == v3)
        {
        }
      }

      __break(1u);

      result = sub_1000056C4(v13);
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_10000DB54(uint64_t a1, char *a2, uint64_t *a3, double a4, double a5)
{
  sub_1000024A0(a1, v40);
  v10 = v41;
  v11 = v42;
  sub_100003518(v40, v41);
  sub_10000E2F8(v10, v11);
  v12 = v41;
  v13 = v42;
  sub_100003518(v40, v41);
  v14 = sub_10000E2CC(v12, v13);
  v15 = v41;
  v16 = v42;
  sub_100003518(v40, v41);
  v17 = (*(v16 + 24))(v15, v16);
  v18 = v41;
  v19 = v42;
  sub_100003518(v40, v41);
  v20 = (*(v19 + 16))(v18, v19) + a4;
  v22 = v21 + a5;
  v23 = *(a1 + 40);
  sub_100008D34();
  v24 = objc_opt_self();
  v25 = [v24 blackColor];
  v26 = sub_100013A78();

  v43 = a3;
  v27 = sub_10000DE78(a2, a3);
  [v17 bounds];
  Width = CGRectGetWidth(v44);
  [v17 bounds];
  v29.n128_u64[0] = CGRectGetHeight(v45);
  v30.n128_f64[0] = v20;
  v31.n128_f64[0] = v22;
  v32.n128_f64[0] = Width;
  [v27 setFrame:{nullsub_1(v30, v31, v32, v29)}];
  v33 = [v17 CGPath];
  [v27 setPath:v33];

  v34 = [v26 CGColor];
  [v27 setFillColor:v34];

  [v27 setLineWidth:v14];
  if (v14 > 0.0)
  {
    v35 = v41;
    v36 = v42;
    sub_100003518(v40, v41);
    sub_10000E30C(v35, v36);
    v37 = [v24 blackColor];
    v38 = sub_100013A78();

    v39 = [v38 CGColor];
    [v27 setStrokeColor:v39];
  }

  if (__OFADD__(*v43, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v43;
    sub_10000254C(v40);
  }
}

id sub_10000DE78(char *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_shapeLayers;
  swift_beginAccess();
  v5 = *&a1[v4];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v12 = *&a1[v4];
    }

    result = sub_100013BE8();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *a2;
  if (v7 >= result)
  {
    v10 = [objc_allocWithZone(CAShapeLayer) init];
    swift_beginAccess();
    v11 = v10;
    sub_100013968();
    if (*((*&a1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((*&a1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100013988();
    }

    sub_100013998();
    swift_endAccess();
    [a1 addSublayer:v11];
    return v11;
  }

  v8 = *&a1[v4];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v11 = sub_100013B18();

    return v11;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8 * v7 + 32);

  return v9;
}

id sub_10000E1CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for PathConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PathConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10000E338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  sub_100013588();
  v11 = v10;
  sub_100013588();
  v13 = v12;
  result = sub_100013588();
  *a3 = v11;
  a3[1] = v13;
  a3[2] = v15;
  return result;
}

id sub_10000E3BC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [objc_allocWithZone(UIBezierPath) init];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v11.n128_u64[0] = CGRectGetMinY(v40);
  v12.n128_f64[0] = MinX;
  v15 = nullsub_1(v12, v11, v13, v14);
  [v9 moveToPoint:?];
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  v17.n128_u64[0] = CGRectGetMinY(v42);
  v18.n128_f64[0] = MaxX;
  [v9 addLineToPoint:{nullsub_1(v18, v17, v19, v20)}];
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v21 = CGRectGetMaxX(v43);
  v22.n128_u64[0] = *(v4 + OBJC_IVAR____TtC19ExtragalacticPoster19RectangleDescriptor_cornerRadius);
  v23.n128_u64[0] = v22.n128_u64[0];
  v26 = nullsub_1(v22, v23, v24, v25);
  v28 = v27;
  v29 = v21 - v26;
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v30.n128_f64[0] = CGRectGetMaxY(v44) - v28;
  v31.n128_f64[0] = v29;
  [v9 addArcWithCenter:1 radius:nullsub_1(v31 startAngle:v30 endAngle:v32 clockwise:v33)];
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  v34.n128_u64[0] = CGRectGetMaxY(v45);
  v35.n128_f64[0] = v15;
  [v9 addLineToPoint:{nullsub_1(v35, v34, v36, v37)}];
  [v9 closePath];
  return v9;
}

id sub_10000E580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LetterURectangleDescriptor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000E724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtragalacticBannerLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E77C()
{
  v1 = v0[7];

  sub_10000254C(v0 + 8);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

__n128 sub_10000E7E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000E7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E8A0()
{
  v1 = v0;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v14._countAndFlagsBits = 40;
  v14._object = 0xE100000000000000;
  sub_100013928(v14);
  v2 = v0[13];
  v3 = v0[14];

  v15._countAndFlagsBits = v2;
  v15._object = v3;
  sub_100013928(v15);

  v16._countAndFlagsBits = 2633001;
  v16._object = 0xE300000000000000;
  sub_100013928(v16);
  v5 = v0[11];
  v4 = v0[12];
  v6 = sub_100003518(v1 + 8, v1[11]);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = *(v4 + 8);
  sub_100013C68();
  (*(v7 + 8))(v10, v5);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  sub_100013928(v17);
  return v13[0];
}

uint64_t sub_10000E9F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000E8A0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000EA1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 104);
  v4 = *(*a2 + 112);
  if (v3 == *(v2 + 104) && v4 == *(v2 + 112))
  {
    return 1;
  }

  else
  {
    return sub_100013C88();
  }
}

uint64_t sub_10000EA48()
{
  v1 = v0[7];

  sub_10000254C(v0 + 8);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_10000EAB4@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_10000FB6C(*a1, *a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_10000FB6C(void *a1, void *a2, double a3)
{
  v6 = a1[5];
  v7 = a1[6];
  v8 = a2[5];
  v9 = a2[6];
  sub_100013A68();
  v11 = v10;
  v13 = v12;
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  sub_100013588();
  v21 = v20;
  sub_100013588();
  v23 = v22;
  sub_100013588();
  v25 = v24;
  v26 = a1[15];
  v27 = a2[15];
  sub_100013588();
  v29 = v28;
  sub_1000024A0((a1 + 8), v39);
  sub_1000024A0((a2 + 8), v38);
  if (a3 <= 0.0)
  {
    sub_10000254C(v38);
    v31 = v39;
LABEL_6:
    sub_10000345C(v31, v40);
    goto LABEL_7;
  }

  if (a3 >= 1.0)
  {
    sub_10000254C(v39);
    v31 = v38;
    goto LABEL_6;
  }

  v40[3] = &type metadata for InterpolatedColorProvider;
  v40[4] = sub_100003474();
  v30 = swift_allocObject();
  v40[0] = v30;
  sub_1000024A0(v39, v30 + 16);
  sub_1000024A0(v38, v30 + 56);
  *(v30 + 96) = a3;
  sub_10000254C(v38);
  sub_10000254C(v39);
LABEL_7:
  v32 = a1[16];
  v33 = a2[16];
  sub_100013588();
  v35 = v34;
  sub_1000024A0(v40, v39);
  v36 = sub_10000EAE4(v39, v11, v13, v21, v23, v25, v29, v35);
  sub_10000254C(v40);
  return v36;
}

uint64_t sub_10000FD38()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

Swift::Int sub_10000FD90()
{
  sub_100013CB8();
  sub_100013918();
  return sub_100013CD8();
}

Swift::Int sub_10000FE14()
{
  sub_100013CB8();
  sub_100013918();
  return sub_100013CD8();
}

uint64_t sub_10000FE70@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10001CF98;
  v7._object = v3;
  v5 = sub_100013C38(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000FF10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10001CFD0;
  v8._object = a2;
  v6 = sub_100013C38(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000FF80(uint64_t a1)
{
  v2 = sub_10001059C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FFBC(uint64_t a1)
{
  v2 = sub_10001059C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  result = sub_10000CC74(a1, a2);
  if (result == 10)
  {

    a1 = 0;
    a2 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_100010080()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100013B08(19);

  v5._countAndFlagsBits = sub_1000138E8();
  sub_100013928(v5);

  v3 = sub_100013908();

  return v3;
}

uint64_t sub_10001013C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10001016C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002504(&qword_100023A80, &qword_100016940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100003518(a1, a1[3]);
  sub_10001059C();
  sub_100013CE8();
  if (v2)
  {
    return sub_10000254C(a1);
  }

  v11 = sub_100013C48();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000254C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000102E8(void *a1)
{
  v3 = sub_100002504(&qword_100023A70, &qword_100016938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100003518(a1, a1[3]);
  sub_10001059C();
  sub_100013CF8();
  sub_100013C58();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100010424(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100013C88();
  }
}

uint64_t sub_100010454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001049C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000104EC()
{
  result = qword_100023A60;
  if (!qword_100023A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A60);
  }

  return result;
}

unint64_t sub_100010548()
{
  result = qword_100023A68;
  if (!qword_100023A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A68);
  }

  return result;
}

unint64_t sub_10001059C()
{
  result = qword_100023A78;
  if (!qword_100023A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtragalacticPosterData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ExtragalacticPosterData.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000106DC()
{
  result = qword_100023A88;
  if (!qword_100023A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A88);
  }

  return result;
}

unint64_t sub_100010734()
{
  result = qword_100023A90;
  if (!qword_100023A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A90);
  }

  return result;
}

unint64_t sub_10001078C()
{
  result = qword_100023A98;
  if (!qword_100023A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023A98);
  }

  return result;
}

uint64_t sub_100010808()
{
  if (qword_100022890 != -1)
  {
    result = swift_once();
  }

  v0 = 3.6;
  if (byte_1000255E0)
  {
    v0 = 4.6;
  }

  qword_100023B58 = *&v0;
  return result;
}

uint64_t sub_100010878()
{
  if (qword_1000228C0 != -1)
  {
    swift_once();
  }

  v0 = qword_100023B58;
  sub_100002504(&qword_100023BB0, &qword_100016B48);
  v1 = sub_100002504(&qword_100023BB8, &qword_100016B50);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100015C30;
  v5 = v4 + v3;
  v6 = v5 + *(v1 + 48);
  v7 = enum case for Keyframe.Name.off(_:);
  v8 = sub_100013778();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  *v6 = xmmword_100016AF0;
  *(v6 + 16) = v0;
  v10 = v5 + v2 + *(v1 + 48);
  v9();
  __asm { FMOV            V0.2D, #1.0 }

  *v10 = _Q0;
  *(v10 + 16) = 0;
  v16 = v5 + 2 * v2 + *(v1 + 48);
  v9();
  *v16 = xmmword_100016B00;
  *(v16 + 16) = v0;
  v17 = sub_1000113E0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_100023B60 = v17;
  return result;
}

id sub_100010B98(void *a1)
{
  *&v1[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize] = CGSizeZero;
  v3 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer;
  v4 = type metadata accessor for ExtragalacticBannerLayer();
  *&v1[v3] = [objc_allocWithZone(v4) init];
  v5 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer;
  *&v1[v5] = [objc_allocWithZone(v4) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BackgroundContentView();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100010C90();
  }

  return v7;
}

void sub_100010C90()
{
  v1 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor:v1];

  [v0 setClipsToBounds:0];
  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v0 layer];
  [v3 addSublayer:*&v0[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer]];

  v4 = [v0 layer];
  [v4 addSublayer:*&v0[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer]];
}

id sub_100010DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = COERCE_DOUBLE(sub_1000115DC(a3));
  if (v9)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v6;
  }

  x = 0.0;
  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7;
  }

  v57 = v12;
  v58 = v10;
  if (v9)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  v59 = v13;
  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  sub_1000024A0(a1, v61);
  sub_1000136C8();
  v16 = v15;
  if (v15 > 0.0)
  {
    v17 = sub_100013698();
    v18 = sub_100013698();
    sub_1000136D8();
    sub_100011980(v18);
    sub_1000136C8();
    sub_100013588();
    v20 = v19;
    v21 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer];
    v22 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
    v23 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize + 8];
    v24 = sub_100011980(v17);
    v25 = sub_100013A58();
    v26 = 3.14159265;
    if ((v25 & 1) == 0)
    {
      v26 = 0.0;
    }

    v27 = 1.57079633;
    if (v25)
    {
      v27 = -1.57079633;
    }

    if (v24)
    {
      v28 = v22;
    }

    else
    {
      v26 = v27;
      v28 = v23;
    }

    if (v24)
    {
      v29 = v23;
    }

    else
    {
      v29 = v22;
    }

    CATransform3DMakeRotation(&v60, v26, 0.0, 0.0, 1.0);
    [v21 setTransform:&v60];
    y = v23 * (1.0 - v22 / v23);
    if (v17 != 4)
    {
      if (v17 == 3)
      {
        x = -y;
        y = 0.0;
      }

      else
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
      }
    }

    [v21 setFrame:{x, y, v28, v29}];
    sub_1000024A0(v61, &v60);
    if (v24)
    {
      type metadata accessor for ExtragalacticPortraitBannerDescriptor();
      swift_allocObject();
      v31 = sub_100009208(&v60, v22, v23, v20, v58, v57, v59);
    }

    else
    {
      type metadata accessor for ExtragalacticLandscapeBannerDescriptor();
      swift_allocObject();
      v31 = sub_100005D6C(&v60, v23, v22, v20, v58, v57, v59);
    }

    v32 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor;
    v33 = *&v21[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor];
    *&v21[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor] = v31;

    if (*&v21[v32])
    {
      sub_10000D9F8();
    }
  }

  v34 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer];
  [v34 setHidden:v16 <= 0.0];
  if (v16 < 1.0)
  {
    v35 = sub_1000136A8();
    v36 = sub_1000136A8();
    sub_1000136D8();
    sub_100011980(v36);
    sub_1000136C8();
    v37 = 0.0;
    sub_100013588();
    v39 = v38;
    v40 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer];
    v41 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize];
    v42 = *&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize + 8];
    v43 = sub_100011980(v35);
    v44 = sub_100013A58();
    v45 = 3.14159265;
    if ((v44 & 1) == 0)
    {
      v45 = 0.0;
    }

    v46 = 1.57079633;
    if (v44)
    {
      v46 = -1.57079633;
    }

    if (v43)
    {
      v47 = v41;
    }

    else
    {
      v45 = v46;
      v47 = v42;
    }

    if (v43)
    {
      v48 = v42;
    }

    else
    {
      v48 = v41;
    }

    CATransform3DMakeRotation(&v60, v45, 0.0, 0.0, 1.0);
    [v40 setTransform:&v60];
    v49 = v42 * (1.0 - v41 / v42);
    if (v35 != 4)
    {
      if (v35 == 3)
      {
        v37 = -v49;
        v49 = 0.0;
      }

      else
      {
        v37 = CGPointZero.x;
        v49 = CGPointZero.y;
      }
    }

    [v40 setFrame:{v37, v49, v47, v48}];
    sub_1000024A0(v61, &v60);
    if (v43)
    {
      type metadata accessor for ExtragalacticPortraitBannerDescriptor();
      swift_allocObject();
      v50 = sub_100009208(&v60, v41, v42, v39, v58, v57, v59);
    }

    else
    {
      type metadata accessor for ExtragalacticLandscapeBannerDescriptor();
      swift_allocObject();
      v50 = sub_100005D6C(&v60, v42, v41, v39, v58, v57, v59);
    }

    v51 = OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor;
    v52 = *&v40[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor];
    *&v40[OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor] = v50;

    if (*&v40[v51])
    {
      sub_10000D9F8();
    }

    sub_10000254C(v61);
    v53 = sub_100011990(v35);
    v54 = [v4 layer];
    v55 = v54;
    if (v53)
    {
      [v54 insertSublayer:v40 above:v34];
    }

    else
    {
      [v54 insertSublayer:v40 below:v34];
    }
  }

  else
  {
    sub_10000254C(v61);
  }

  [*&v4[OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer] setHidden:v16 >= 1.0];
  return [v14 commit];
}

id sub_10001133C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000113E0(uint64_t a1)
{
  v2 = sub_100002504(&qword_100023BB8, &qword_100016B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002504(&qword_100023BC0, &qword_100016B58);
    v8 = sub_100013C28();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100011D38(v10, v6, &qword_100023BB8, &qword_100016B50);
      result = sub_100012298(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100013778();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000115DC(uint64_t a1)
{
  v38 = a1;
  v1 = sub_100013778();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  if (qword_1000228C8 != -1)
  {
    swift_once();
  }

  v12 = off_100023B60;
  v13 = v2[13];
  v13(v11, enum case for Keyframe.Name.off(_:), v1);
  if (v12[2] && (v14 = sub_100012298(v11), (v15 & 1) != 0))
  {
    v37 = 0;
    v16 = (v12[7] + 24 * v14);
    v17 = v16[1];
    v36 = *v16;
    v35 = v17;
    v34 = v16[2];
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v37 = 1;
  }

  v18 = v2[1];
  v18(v11, v1);
  v13(v9, enum case for Keyframe.Name.wake(_:), v1);
  if (v12[2] && (v19 = sub_100012298(v9), (v20 & 1) != 0))
  {
    v21 = 0;
    v22 = (v12[7] + 24 * v19);
    v23 = v22[1];
    v33 = *v22;
    v32 = v23;
    v24 = v22[2];
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v24 = 0;
    v21 = 1;
  }

  v18(v9, v1);
  v13(v6, enum case for Keyframe.Name.unlocked(_:), v1);
  if (v12[2] && (v25 = sub_100012298(v6), (v26 & 1) != 0))
  {
    v27 = (v12[7] + 24 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v18(v6, v1);
    if ((v21 & 1) == 0)
    {
      sub_100013798();
      sub_1000137A8();
      v47 = v36;
      v48 = v35;
      v49 = v34;
      v50 = v37;
      v43 = v33;
      v44 = v32;
      v45 = v24;
      v46 = 0;
      v39 = v28;
      v40 = v29;
      v41 = v30;
      v42 = 0;
      sub_1000119A0();
      sub_100013818();
      return v51;
    }
  }

  else
  {
    v18(v6, v1);
  }

  return 0;
}

unint64_t sub_1000119A0()
{
  result = qword_100023BA8;
  if (!qword_100023BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023BA8);
  }

  return result;
}

unint64_t sub_1000119F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002504(&qword_100023190, &qword_100015E38);
    v3 = sub_100013C28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100012330(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100011AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002504(&qword_100023BD0, &qword_100016B68);
    v3 = sub_100013C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011D38(v4, v13, &unk_100023510, &unk_100016B70);
      result = sub_100012374(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100005768(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100011C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v3 = sub_100013C28();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100012430(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100012430(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100011D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002504(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011DA0(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = sub_10000B4A0(a1);
  v5 = v4;
  if (v3 == sub_10000B4A0(v2) && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100013C88();

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      v10 = *(v1 + 24);
      *(v1 + 24) = &_swiftEmptyDictionarySingleton;
    }
  }

  return result;
}

uint64_t sub_100011E80@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_100012140(0);
  v7 = sub_100012140(1u);
  v8 = sub_100012140(2u);
  v9 = type metadata accessor for ColorPalette();
  v20[3] = v9;
  v10 = sub_100013420(&qword_100022CE0, type metadata accessor for ColorPalette);
  v20[4] = v10;
  v19[4] = v10;
  v20[0] = v6;
  v19[3] = v9;
  v18[4] = v10;
  v19[0] = v7;
  v18[3] = v9;
  v18[0] = v8;
  if (a2 <= 0.0)
  {
    sub_1000024A0(v20, v17);
    v13 = v19;
    goto LABEL_7;
  }

  if (a2 >= 1.0)
  {
    sub_1000024A0(v19, v17);
    v13 = v18;
LABEL_7:
    sub_1000024A0(v13, v16);
    if (a3 <= 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17[3] = &type metadata for InterpolatedColorProvider;
  v11 = sub_100003474();
  v17[4] = v11;
  v17[0] = swift_allocObject();
  sub_1000024A0(v20, v17[0] + 16);
  sub_1000024A0(v19, v17[0] + 56);
  *(v17[0] + 96) = a2;
  v16[3] = &type metadata for InterpolatedColorProvider;
  v16[4] = v11;
  v16[0] = swift_allocObject();
  sub_1000024A0(v19, v16[0] + 16);
  sub_1000024A0(v18, v16[0] + 56);
  *(v16[0] + 96) = a2;
  if (a3 <= 0.0)
  {
LABEL_4:
    v12 = v17;
    goto LABEL_11;
  }

LABEL_8:
  if (a3 < 1.0)
  {
    v22 = &type metadata for InterpolatedColorProvider;
    v23 = sub_100003474();
    v14 = swift_allocObject();
    *&v21 = v14;
    sub_1000024A0(v17, v14 + 16);
    sub_1000024A0(v16, v14 + 56);
    *(v14 + 96) = a3;
    goto LABEL_12;
  }

  v12 = v16;
LABEL_11:
  sub_1000024A0(v12, &v21);
LABEL_12:

  sub_10000254C(v16);
  sub_10000254C(v17);
  sub_10000254C(v18);
  sub_10000254C(v19);
  sub_10000254C(v20);
  if (v22)
  {

    return sub_10000345C(&v21, a1);
  }

  else
  {
    a1[3] = v9;
    a1[4] = v10;

    *a1 = v6;
    if (v22)
    {
      return sub_100013378(&v21);
    }
  }

  return result;
}

uint64_t sub_100012140(unsigned __int8 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_100012430(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = *(v2 + 16);
    type metadata accessor for ColorPalette();
    v7 = swift_allocObject();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 16) = v8;
    *(v7 + 17) = a1;
    swift_beginAccess();

    v9 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_100012F70(v7, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v12;
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_10001223C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_100012298(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100013778();
  sub_100013420(&qword_100023CD0, &type metadata accessor for Keyframe.Name);
  v5 = sub_1000138A8();

  return sub_10001249C(a1, v5);
}

unint64_t sub_100012330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013A88(*(v2 + 40));

  return sub_10001265C(a1, v4);
}

unint64_t sub_100012374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100013AC8(*(v2 + 40));

  return sub_100012720(a1, v4);
}

unint64_t sub_1000123B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100013CB8();
  sub_100013918();
  v6 = sub_100013CD8();

  return sub_1000127E8(a1, a2, v6);
}

unint64_t sub_100012430(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100013CB8();
  sub_100013CC8(a1);
  v4 = sub_100013CD8();

  return sub_1000128A0(a1, v4);
}

unint64_t sub_10001249C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100013778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100013420(&qword_100023CD8, &type metadata accessor for Keyframe.Name);
      v16 = sub_1000138B8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10001265C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000134C4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100013A98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100012720(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100013468(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100013AD8();
      sub_10000D838(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000127E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100013C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000128A0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100012910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002504(&qword_100023190, &qword_100015E38);
  result = sub_100013C08();
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_100013A88(*(v8 + 40));
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100012B78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v33 = a2;
  result = sub_100013C08();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_100013CB8();
      sub_100013CC8(v21);
      result = sub_100013CD8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100012E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100012330(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100012910(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100012330(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000134C4();
        sub_100013C98();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000130BC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

unint64_t sub_100012F70(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100012430(a2);
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
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100012B78(v14, a3 & 1);
      v18 = *v4;
      result = sub_100012430(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_100013C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10001321C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
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

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

id sub_1000130BC()
{
  v1 = v0;
  sub_100002504(&qword_100023190, &qword_100015E38);
  v2 = *v0;
  v3 = sub_100013BF8();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10001321C()
{
  v1 = v0;
  sub_100002504(&qword_100023BC8, &qword_100016B60);
  v2 = *v0;
  v3 = sub_100013BF8();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_100013378(uint64_t a1)
{
  v2 = sub_100002504(&qword_100023CC8, qword_100016BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000133E0()
{
  sub_10000254C((v0 + 16));
  sub_10000254C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100013420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000134C4()
{
  result = qword_100023198;
  if (!qword_100023198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100023198);
  }

  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}