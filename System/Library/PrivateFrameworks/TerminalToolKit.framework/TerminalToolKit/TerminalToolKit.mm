uint64_t sub_26D2B1FD0()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
LABEL_10:
      v21 = v4[4];
      v22 = v20 - 1;
      if (v20 != 1)
      {
        if (v20 < 5)
        {
          v23 = 1;
          goto LABEL_16;
        }

        v23 = v22 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v24 = vdupq_n_s64(v21);
        v25 = (v4 + 7);
        v26 = v22 & 0xFFFFFFFFFFFFFFFCLL;
        v27 = v24;
        do
        {
          v24 = vbslq_s8(vcgtq_s64(v24, v25[-1]), v24, v25[-1]);
          v27 = vbslq_s8(vcgtq_s64(v27, *v25), v27, *v25);
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        v28 = vbslq_s8(vcgtq_s64(v24, v27), v24, v27);
        v29 = vextq_s8(v28, v28, 8uLL).u64[0];
        v21 = vbsl_s8(vcgtd_s64(v28.i64[0], v29), *v28.i8, v29);
        if (v22 != (v22 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_16:
          v30 = v20 - v23;
          v31 = 8 * v23 + 32;
          do
          {
            if (v21 <= *(v4 + v31))
            {
              v21 = *(v4 + v31);
            }

            v31 += 8;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v32 = *MEMORY[0x277D85DE8];
    return v21;
  }

  v36 = MEMORY[0x277D84F90];
  sub_26D2BA93C(0, v2, 0);
  v3 = 0;
  v4 = v36;
  v5 = (v1 + 40);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
    }

    v7 = *(v5 - 1);
    v6 = *v5;

    v8 = sub_26D2C0838();
    v9 = [v8 length];

    v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v11 = sub_26D2C0838();
    v35 = 0;
    v12 = [v10 initWithPattern:v11 options:1 error:&v35];

    v13 = v35;
    if (!v12)
    {
      break;
    }

    v14 = sub_26D2C0838();
    v15 = sub_26D2C0838();
    v16 = [v12 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{v9, v15}];

    sub_26D2C0848();
    v17 = sub_26D2C08C8();

    v36 = v4;
    v19 = v4[2];
    v18 = v4[3];
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_26D2BA93C((v18 > 1), v19 + 1, 1);
      v4 = v36;
    }

    ++v3;
    v4[2] = v20;
    v4[v19 + 4] = v17;
    v5 += 2;
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

  v34 = v13;
  sub_26D2C0618();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

TerminalToolKit::Column __swiftcall Column.init(_:)(Swift::String a1)
{
  v2 = v1;
  sub_26D2B2374();
  v3 = sub_26D2C0B78();

  *v2 = v3;
  return result;
}

unint64_t sub_26D2B2374()
{
  result = qword_2804F7A20;
  if (!qword_2804F7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A20);
  }

  return result;
}

Swift::String __swiftcall Column.printCol(width:line:)(Swift::Int width, Swift::Int line)
{
  if (*(*v2 + 16) > line)
  {
    if (line < 0)
    {
      __break(1u);
      goto LABEL_6;
    }

    v3 = *v2 + 16 * line;
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
  }

  sub_26D2B2374();
  v4 = sub_26D2C0BA8();
  MEMORY[0x26D6BA330](v4);

  MEMORY[0x26D6BA330](31776, 0xE200000000000000);
  width = 32;
  line = 0xE100000000000000;
LABEL_6:
  result._object = line;
  result._countAndFlagsBits = width;
  return result;
}

uint64_t Row.init(_:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_26D2C0838();
  [v4 setDateFormat_];

  if (*a1)
  {
    if (*a1 == 1)
    {
      v6 = 0xE700000000000000;
      v7 = 0x676E696E726177;
    }

    else
    {
      v6 = 0xE900000000000065;
      v7 = 0x6B616C66776F6E73;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1701996902;
  }

  v38 = v7;
  v39[0] = v6;
  v26 = *(a1 + 8);
  v32 = *(a1 + 16);

  v39[1] = sub_26D2C0958();
  v39[2] = v8;
  v27 = *(a1 + 24);
  v33 = *(a1 + 32);

  v39[3] = sub_26D2C0958();
  v39[4] = v9;
  v28 = *(a1 + 40);
  v34 = *(a1 + 48);

  v39[5] = sub_26D2C0958();
  v39[6] = v10;
  v29 = *(a1 + 56);
  v35 = *(a1 + 64);

  v39[7] = sub_26D2C0958();
  v39[8] = v11;
  v30 = *(a1 + 72);
  v39[9] = sub_26D2C0D28();
  v39[10] = v12;
  v25 = a1;
  v13 = a1 + *(type metadata accessor for Footprint() + 40);
  v14 = sub_26D2C0688();
  v15 = [v4 stringFromDate_];

  v16 = sub_26D2C0848();
  v18 = v17;

  v39[11] = v16;
  v39[12] = v18;
  v19 = MEMORY[0x277D84F90];
  sub_26D2B2374();
  for (i = 0; i != 14; i += 2)
  {
    v31 = *&v37[i * 8 + 32];
    v36 = v39[i];
    v21 = sub_26D2C0B78();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26D2B3980(0, *(v19 + 2) + 1, 1, v19);
    }

    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      v19 = sub_26D2B3980((v22 > 1), v23 + 1, 1, v19);
    }

    *(v19 + 2) = v23 + 1;
    *&v19[8 * v23 + 32] = v21;
  }

  sub_26D2B3A8C(v25);

  result = swift_arrayDestroy();
  *a2 = v19;
  return result;
}

TerminalToolKit::Row __swiftcall Row.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  if (v4)
  {
    v11 = v1;
    sub_26D2B2374();
    v5 = (a1._rawValue + 40);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v5 - 1);
      v13 = *v5;
      v7 = sub_26D2C0B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_26D2B3980(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_26D2B3980((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      *&v6[8 * v9 + 32] = v7;
      v5 += 2;
      --v4;
    }

    while (v4);

    v3 = v11;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v3 = v6;
  return result;
}

int64_t sub_26D2B28EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26D2BA93C(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    v5 = v21[2];
    do
    {
      v6 = *(*v4 + 16);
      v22 = v3;
      v7 = v3[3];
      v8 = v5 + 1;
      if (v5 >= v7 >> 1)
      {
        sub_26D2BA93C((v7 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[2] = v8;
      v3[v5 + 4] = v6;
      v4 += 8;
      ++v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_20;
    }
  }

  v9 = v3[4];
  v10 = v8 - 1;
  if (v8 != 1)
  {
    if (v8 >= 5)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v12 = vdupq_n_s64(v9);
      v13 = (v3 + 7);
      v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = v12;
      do
      {
        v12 = vbslq_s8(vcgtq_s64(v12, v13[-1]), v12, v13[-1]);
        v15 = vbslq_s8(vcgtq_s64(v15, *v13), v15, *v13);
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      v16 = vbslq_s8(vcgtq_s64(v12, v15), v12, v15);
      v17 = vextq_s8(v16, v16, 8uLL).u64[0];
      v9 = vbsl_s8(vcgtd_s64(v16.i64[0], v17), *v16.i8, v17);
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 1;
    }

    v18 = v8 - v11;
    v19 = 8 * v11 + 32;
    do
    {
      if (v9 <= *(v3 + v19))
      {
        v9 = *(v3 + v19);
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_20:

  return v9;
}

char *sub_26D2B2A6C()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (*v0 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v8 = *v2;
    v4 = sub_26D2B1FD0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D2B3C88(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_26D2B3C88((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[8 * v6 + 32] = v4;
    ++v2;
    --v1;
  }

  while (v1);
  return v3;
}

Swift::Void __swiftcall Row.printRow(widths:_:)(Swift::OpaquePointer widths, Swift::Bool _)
{
  v32 = *v2;
  v5 = sub_26D2B28EC();
  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v5)
    {
      v31 = _;
      v7 = 0;
      v8 = *(widths._rawValue + 2);
      v33 = v5;
      v34 = v8;
      do
      {
        MEMORY[0x26D6BA330](8316, 0xE200000000000000);
        if (v8)
        {
          v9 = v34;
          if (v34 > *(v32 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          v10 = v32 + 32;
          v11 = (widths._rawValue + 32);
          do
          {
            v13 = *v11++;
            if (v7 < *(*v10 + 16))
            {
              v14 = *v10 + 16 * v7;
              v35 = *(v14 + 32);
              v36 = *(v14 + 40);
            }

            sub_26D2B2374();

            v12 = sub_26D2C0BA8();
            MEMORY[0x26D6BA330](v12);

            MEMORY[0x26D6BA330](31776, 0xE200000000000000);

            MEMORY[0x26D6BA330](32, 0xE100000000000000);

            v10 += 8;
            --v9;
          }

          while (v9);
        }

        ++v7;
        MEMORY[0x26D6BA330](10, 0xE100000000000000);
        v8 = v34;
      }

      while (v7 != v33);
      v15 = 0;
      v6 = 0xE000000000000000;
      if (v31)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
      if (_)
      {
LABEL_14:
        v16 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
        v18 = sub_26D2C08C8();
        v19 = sub_26D2C0838();
        v20 = sub_26D2C0838();
        v21 = [v17 stringByReplacingMatchesInString:v19 options:0 range:0 withTemplate:{v18, v20}];

        v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v23 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
        v24 = sub_26D2C08C8();
        v25 = sub_26D2C0838();

        v26 = sub_26D2C0838();
        v27 = [v23 stringByReplacingMatchesInString:v25 options:0 range:0 withTemplate:{v24, v26}];

        v15 = sub_26D2C0848();
        v6 = v28;
      }
    }

    v29 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26D2C1270;
    *(v30 + 56) = v29;
    *(v30 + 32) = v15;
    *(v30 + 40) = v6;
    sub_26D2C0D78();
  }
}

TerminalToolKit::TableView __swiftcall TableView.init(header:rows:)(TerminalToolKit::Row header, Swift::OpaquePointer rows)
{
  v2->_rawValue = *header.columns._rawValue;
  v2[1]._rawValue = rows._rawValue;
  result.rows = rows;
  result.header = header;
  return result;
}

uint64_t sub_26D2B2F28()
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v62 = *v0;
  v3 = sub_26D2B2A6C();
  v4 = v2;
  v5 = v3;
  v51 = *(v4 + 16);
  if (!v51)
  {
LABEL_40:
    v46 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v6 = 0;
  v7 = v1[2];
  v50 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v49 = v4;
  v53 = v7;
LABEL_4:
  if (v6 >= *(v4 + 16))
  {
LABEL_45:
    __break(1u);
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  v52 = v6;
  v9 = *(v50 + 8 * v6);
  v10 = *(v9 + 16);
  v55 = v9 + 32;
  v56 = v9;

  v11 = 0;
  v54 = v10;
  while (1)
  {
    if (v11 >= *(v5 + 2))
    {
      goto LABEL_42;
    }

    v12 = *&v5[8 * v11 + 32];
    if (v11 >= v10)
    {
      v33 = v12 & ~(v12 >> 63);
      goto LABEL_34;
    }

    if (v11 >= *(v56 + 16))
    {
      goto LABEL_44;
    }

    v59 = v11;
    v13 = *(v55 + 8 * v11);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

    v32 = v8[2];

    if (v32)
    {
      v58 = v12;
      v16 = v8;
LABEL_21:
      v11 = v59;
      v33 = v16[4];
      v34 = v32 - 1;
      if (v32 == 1)
      {
        goto LABEL_31;
      }

      if (v32 > 4)
      {
        v35 = v34 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v36 = vdupq_n_s64(v33);
        v37 = (v16 + 7);
        v38 = v34 & 0xFFFFFFFFFFFFFFFCLL;
        v39 = v36;
        do
        {
          v36 = vbslq_s8(vcgtq_s64(v36, v37[-1]), v36, v37[-1]);
          v39 = vbslq_s8(vcgtq_s64(v39, *v37), v39, *v37);
          v37 += 2;
          v38 -= 4;
        }

        while (v38);
        v40 = vbslq_s8(vcgtq_s64(v36, v39), v36, v39);
        v41 = vextq_s8(v40, v40, 8uLL).u64[0];
        v33 = vbsl_s8(vcgtd_s64(v40.i64[0], v41), *v40.i8, v41);
        if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_31:

          if (v33 <= v58)
          {
            v33 = v58;
          }

          v10 = v54;
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 1;
      }

      v42 = v32 - v35;
      v43 = &v16[v35 + 4];
      do
      {
        v45 = *v43++;
        v44 = v45;
        if (v33 <= v45)
        {
          v33 = v44;
        }

        --v42;
      }

      while (v42);
      goto LABEL_31;
    }

    v33 = v12 & ~(v12 >> 63);
    v11 = v59;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26D2B3E9C(v5);
    }

    if (v11 >= *(v5 + 2))
    {
      goto LABEL_43;
    }

    *&v5[8 * v11++ + 32] = v33;
    if (v11 == v7)
    {

      v4 = v49;
      v6 = v52;
LABEL_3:
      if (++v6 == v51)
      {
        goto LABEL_40;
      }

      goto LABEL_4;
    }
  }

  v57 = v5;
  v58 = v12;
  v62 = v8;

  sub_26D2BA93C(0, v14, 0);
  v15 = 0;
  v16 = v62;
  v17 = (v13 + 40);
  v60 = v13;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    v20 = sub_26D2C0838();
    v21 = [v20 length];

    v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v23 = sub_26D2C0838();
    v61 = 0;
    v24 = [v22 initWithPattern:v23 options:1 error:&v61];

    v25 = v61;
    if (!v24)
    {
      break;
    }

    v26 = sub_26D2C0838();
    v27 = sub_26D2C0838();
    v28 = [v24 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{v21, v27}];

    sub_26D2C0848();
    v29 = sub_26D2C08C8();

    v62 = v16;
    v31 = v16[2];
    v30 = v16[3];
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      sub_26D2BA93C((v30 > 1), v31 + 1, 1);
      v16 = v62;
    }

    ++v15;
    v16[2] = v32;
    v16[v31 + 4] = v29;
    v17 += 2;
    v13 = v60;
    if (v14 == v15)
    {
      v5 = v57;
      v7 = v53;
      v8 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }
  }

  v48 = v25;
  sub_26D2C0618();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Void __swiftcall TableView.printTable(noColor:)(Swift::Bool noColor)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_26D2B2F28();
  sub_26D2B3528(v5, noColor);

  v6 = sub_26D2B2F28();
  Row.printRow(widths:_:)(v6, noColor);

  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      v9 = *(v4 + v8);

      v10 = sub_26D2B2F28();
      sub_26D2B3528(v10, noColor);

      v11 = sub_26D2B2F28();
      Row.printRow(widths:_:)(v11, noColor);

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v12 = sub_26D2B2F28();
  sub_26D2B3528(v12, noColor);
}

uint64_t sub_26D2B3528(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    sub_26D2B2374();
    do
    {
      v5 = *v4++;
      v6 = sub_26D2C0BA8();
      MEMORY[0x26D6BA330](v6);

      MEMORY[0x26D6BA330](11053, 0xE200000000000000);
      MEMORY[0x26D6BA330](45, 0xE100000000000000);

      --v3;
    }

    while (v3);
  }

  MEMORY[0x26D6BA330](10, 0xE100000000000000);
  v8 = 11563;
  v7 = 0xE200000000000000;
  if (a2)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v10 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v11 = sub_26D2C08C8();
    v12 = sub_26D2C0838();
    v13 = sub_26D2C0838();
    v14 = [v10 stringByReplacingMatchesInString:v12 options:0 range:0 withTemplate:{v11, v13}];

    v15 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v16 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v17 = sub_26D2C08C8();
    v18 = sub_26D2C0838();

    v19 = sub_26D2C0838();
    v20 = [v16 stringByReplacingMatchesInString:v18 options:0 range:0 withTemplate:{v17, v19}];

    v8 = sub_26D2C0848();
    v7 = v21;
  }

  v22 = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26D2C1270;
  *(v23 + 56) = v22;
  *(v23 + 32) = v8;
  *(v23 + 40) = v7;
  sub_26D2C0D78();
}

id sub_26D2B3824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26D2C0838();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26D2C0618();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL sub_26D2B391C(void *a1, uint64_t *a2)
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

char *sub_26D2B3980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A40, &qword_26D2C1310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D2B3A8C(uint64_t a1)
{
  v2 = type metadata accessor for Footprint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_26D2B3B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26D2B3B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D2B3BF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26D2B3C3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_26D2B3C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D2B3D8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A30, &qword_26D2C1300);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t Footprint.peak.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Footprint.current.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Footprint.activeSoftLimit.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Footprint.inactiveHardLimit.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Footprint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Footprint() + 40);
  v4 = sub_26D2C06A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Footprint()
{
  result = qword_2804F7A48;
  if (!qword_2804F7A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Footprint.init(peak:current:numberOfVoicemails:activeSoftLimit:inactiveHardLimit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Footprint();
  v13 = a6 + v12[10];
  sub_26D2C0698();
  v36 = a3;
  if (a4 < a1)
  {
    v14 = 0;
LABEL_7:
    *a6 = v14;
    v15 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v15 setAllowedUnits_];
    [v15 setCountStyle_];
    [v15 setIncludesUnit_];
    [v15 setAdaptive_];
    v35 = a1;
    v16 = [v15 stringFromByteCount_];
    v17 = sub_26D2C0848();
    v19 = v18;

    *(a6 + 8) = v17;
    *(a6 + 16) = v19;
    v20 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v20 setAllowedUnits_];
    [v20 setCountStyle_];
    [v20 setIncludesUnit_];
    [v20 setAdaptive_];
    v21 = [v20 stringFromByteCount_];
    v22 = sub_26D2C0848();
    v24 = v23;

    *(a6 + 24) = v22;
    *(a6 + 32) = v24;
    v25 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v25 setAllowedUnits_];
    [v25 setCountStyle_];
    [v25 setIncludesUnit_];
    [v25 setAdaptive_];
    v26 = [v25 stringFromByteCount_];
    v27 = sub_26D2C0848();
    v29 = v28;

    *(a6 + 40) = v27;
    *(a6 + 48) = v29;
    v30 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v30 setAllowedUnits_];
    [v30 setCountStyle_];
    [v30 setIncludesUnit_];
    [v30 setAdaptive_];
    v31 = [v30 stringFromByteCount_];
    v32 = sub_26D2C0848();
    v34 = v33;

    *(a6 + 56) = v32;
    *(a6 + 64) = v34;
    *(a6 + 72) = v36;
    *(a6 + v12[11]) = v35;
    *(a6 + v12[12]) = a2;
    return;
  }

  if (!__OFSUB__(a4, 5))
  {
    if (a4 - 5 < a1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static Footprint.getQuickGlance(from:and:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2 >= result)
  {
    if (__OFSUB__(a2, 5))
    {
      __break(1u);
    }

    else
    {
      if (a2 - 5 < result)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      *a3 = v3;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_26D2B4404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26D2C06A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D2B44C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_26D2C06A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26D2B4568()
{
  result = sub_26D2C06A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static Date.randomDate(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_26D2C0708();
  v6 = *(v5 - 8);
  v7 = v6[8];
  (MEMORY[0x28223BE20])();
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A58, qword_26D2C1368) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v60 = sub_26D2C06A8();
  v58 = *(v60 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v57 = sub_26D2C0718();
  v24 = *(v57 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v57);
  v59 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C06F8();
  result = sub_26D2C0698();
  if (a1 < 0)
  {
    v28 = __OFSUB__(0, a1);
    v29 = -a1;
    if (!v28)
    {
      if (v29 != 0x8000000000000000)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v52 = v13;
  v53 = v24;
  v55 = v21;
  if (a2 < 0)
  {
    v28 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v28)
    {
      goto LABEL_18;
    }
  }

  v51 = a2;
  v30 = v6[13];
  v31 = v9;
  v50 = *MEMORY[0x277CC9968];
  v49 = v30;
  v30(v9);
  v32 = v59;
  sub_26D2C06E8();
  v48 = v6[1];
  v48(v9, v5);
  v33 = v58;
  v47 = v5;
  v34 = *(v58 + 48);
  v35 = v60;
  if (v34(v15, 1, v60) == 1)
  {
    (*(v53 + 8))(v32, v57);
    sub_26D2B4BA4(v15);
    return (*(v33 + 32))(v56, v23, v35);
  }

  v45 = v34;
  v54 = *(v33 + 32);
  v54(v55, v15, v35);
  v36 = v47;
  v49(v31, v50, v47);
  v37 = v52;
  v51 = v23;
  sub_26D2C06E8();
  v38 = v60;
  v48(v31, v36);
  if (v45(v37, 1, v38) == 1)
  {
    (*(v33 + 8))(v55, v38);
    (*(v53 + 8))(v32, v57);
    sub_26D2B4BA4(v37);
    return (v54)(v56, v51, v38);
  }

  v39 = v46;
  v54(v46, v37, v38);
  v40 = v55;
  result = sub_26D2C0668();
  v42 = v57;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v41 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v41 >= 4294967300.0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  arc4random_uniform(v41);
  sub_26D2C0678();
  v43 = *(v33 + 8);
  v44 = v60;
  v43(v39, v60);
  v43(v40, v44);
  v43(v51, v44);
  return (*(v53 + 8))(v59, v42);
}

uint64_t sub_26D2B4BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A58, qword_26D2C1368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Date.printableString(with:)(Swift::String with)
{
  v1 = sub_26D2C06A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C0698();
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_26D2C0838();
  [v6 setDateFormat_];

  v8 = sub_26D2C0688();
  v9 = [v6 stringFromDate_];

  v10 = sub_26D2C0848();
  v12 = v11;

  (*(v2 + 8))(v5, v1);
  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t static Randomization.weightedRandomValue<A>(weights:)@<X0>(double a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_26D2C0B28();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v33 - v13;
  v36 = *(a2 - 8);
  v14 = *(v36 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v40 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(TupleTypeMetadata2 - 8);
  v34 = *(v17 + 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v42 = 0;
  v43 = a1;
  v41 = a2;
  v20 = sub_26D2C0A38();
  swift_getWitnessTable();
  v21 = sub_26D2C0998();
  if (v44[0] <= 0.0)
  {
LABEL_13:
    v44[0] = a1;
    swift_getWitnessTable();
    sub_26D2C0AB8();
    *&result = COERCE_DOUBLE((*(v17 + 6))(v11, 1, TupleTypeMetadata2));
    if (result == 1)
    {
      goto LABEL_19;
    }

    *&result = COERCE_DOUBLE((*(v36 + 32))(a3, v11, a2));
    return result;
  }

  v33 = a3;
  v22 = 0.0;
  sub_26D2B6438(v21, 0.0, v44[0]);
  v24 = v23;
  if (sub_26D2C0A08())
  {
    v25 = 0;
    v38 = (v17 + 16);
    v39 = (v36 + 32);
    v37 = (v36 + 8);
    a3 = v40;
    do
    {
      v26 = sub_26D2C09F8();
      sub_26D2C09D8();
      if (v26)
      {
        (*(v17 + 2))(v19, *&a1 + ((v17[80] + 32) & ~v17[80]) + *(v17 + 9) * v25, TupleTypeMetadata2);
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *&result = COERCE_DOUBLE(sub_26D2C0C38());
        if (v34 != 8)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v44[0] = *&result;
        (*v38)(v19, v44, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      v11 = v17;
      v28 = v20;
      v29 = *&v19[*(TupleTypeMetadata2 + 48)];
      v30 = *v39;
      (*v39)(a3, v19, a2);
      v22 = v22 + v29;
      if (v24 < v22)
      {
        *&result = COERCE_DOUBLE(v30(v33, a3, a2));
        return result;
      }

      (*v37)(a3, a2);
      ++v25;
      v20 = v28;
      v17 = v11;
    }

    while (v27 != sub_26D2C0A08());
  }

  v44[0] = a1;
  swift_getWitnessTable();
  v32 = v35;
  sub_26D2C0828();
  *&result = COERCE_DOUBLE((*(v17 + 6))(v32, 1, TupleTypeMetadata2));
  if (result == 1)
  {
    goto LABEL_20;
  }

  *&result = COERCE_DOUBLE((*(v36 + 32))(v33, v32, a2));
  return result;
}

double sub_26D2B5244@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  result = v7 + *(a2 + *(swift_getTupleTypeMetadata2() + 48));
  *a3 = result;
  return result;
}

uint64_t sub_26D2B52B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_26D2C0BD8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_26D2B83AC(v3, *(a1 + 36), 0, a1);

  return v5;
}

int64_t sub_26D2B532C(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v9 >= v8)
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v9);
        ++v2;
        if (v7)
        {
          v2 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(result, v11);
    result += v11;
  }

  while (!v12);
  __break(1u);
LABEL_13:
  if (result > 0)
  {
    v13 = sub_26D2B64DC(result);
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = 0;
    while (v16)
    {
LABEL_22:
      v21 = __clz(__rbit64(v16)) | (v19 << 6);
      v22 = *(*(a1 + 56) + 8 * v21);
      v12 = __OFADD__(v18, v22);
      v18 += v22;
      if (v12)
      {
        goto LABEL_31;
      }

      v16 &= v16 - 1;
      if (v13 < v18)
      {
        v23 = (*(a1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];

        return v25;
      }
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        result = sub_26D2B5B94(a1);
        if (v26)
        {
          return result;
        }

        __break(1u);
        goto LABEL_27;
      }

      v16 = *(v4 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_22;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_27:
  result = sub_26D2B52B0(a1);
  if (v27)
  {
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static Randomization.weightedRandomValue<A>(weights:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = sub_26D2C0B28();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v76 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v60 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = v60 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = sub_26D2C0B28();
  v77 = *(v75 - 8);
  v21 = *(v77 + 64);
  v22 = MEMORY[0x28223BE20](v75);
  v69 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v60 - v24;
  v78 = 0;
  v79 = a1;
  sub_26D2C07F8();

  swift_getWitnessTable();
  sub_26D2C0998();

  if (v80 < 1)
  {
    v55 = v62;
    v80 = a1;
    sub_26D2C07E8();
    swift_getWitnessTable();
    v56 = v76;
    sub_26D2C0AB8();
    result = (*(v14 + 48))(v56, 1, a2);
    if (result != 1)
    {
      return (*(v14 + 32))(v55, v56, a2);
    }

    goto LABEL_27;
  }

  v60[1] = a3;
  v61 = v13;
  v71 = sub_26D2B64DC(v80);
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v63 = v14 + 16;
  v76 = (v14 + 32);
  v72 = (v77 + 32);
  v73 = TupleTypeMetadata2 - 8;
  v66 = v14;
  v70 = (v14 + 8);
  v68 = a1;

  v31 = 0;
  v32 = 0;
  v33 = a2;
  v77 = a2;
  v64 = TupleTypeMetadata2;
  v65 = v18;
  v34 = v69;
  if (!v28)
  {
LABEL_6:
    if (v29 <= v32 + 1)
    {
      v36 = v32 + 1;
    }

    else
    {
      v36 = v29;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= v29)
      {
        v28 = 0;
        v48 = 1;
        goto LABEL_14;
      }

      v28 = *(v25 + 8 * v35);
      ++v32;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  while (1)
  {
    v35 = v32;
LABEL_13:
    v38 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v39 = v38 | (v35 << 6);
    v41 = v67;
    v40 = v68;
    v42 = v66;
    (*(v66 + 16))(v67, *(v68 + 48) + *(v66 + 72) * v39, v33);
    v43 = *(*(v40 + 56) + 8 * v39);
    v44 = v33;
    v45 = *(v64 + 48);
    v46 = *(v42 + 32);
    v34 = v69;
    v47 = v41;
    TupleTypeMetadata2 = v64;
    v46(v69, v47, v44);
    v48 = 0;
    *&v34[v45] = v43;
    v37 = v35;
    v18 = v65;
LABEL_14:
    v49 = *(TupleTypeMetadata2 - 8);
    (*(v49 + 56))(v34, v48, 1, TupleTypeMetadata2);
    v50 = v74;
    (*v72)(v74, v34, v75);
    if ((*(v49 + 48))(v50, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v51 = *&v50[*(TupleTypeMetadata2 + 48)];
    v52 = v50;
    v53 = *v76;
    result = (*v76)(v18, v52, v77);
    v54 = __OFADD__(v31, v51);
    v31 += v51;
    if (v54)
    {
      goto LABEL_26;
    }

    if (v71 < v31)
    {

      return v53(v62, v18, v77);
    }

    v33 = v77;
    result = (*v70)(v18, v77);
    v32 = v37;
    if (!v28)
    {
      goto LABEL_6;
    }
  }

  v57 = v68;

  v80 = v57;
  v58 = v77;
  sub_26D2C07E8();
  swift_getWitnessTable();
  v59 = v61;
  sub_26D2C0AA8();
  result = (*(v66 + 48))(v59, 1, v58);
  if (result == 1)
  {
    goto LABEL_28;
  }

  return (*v76)(v62, v59, v58);
}

void *sub_26D2B5B78@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t sub_26D2B5B94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_26D2B64DC(v2);
  v4 = -1 << *(a1 + 32);
  v5 = sub_26D2C0BD8();
  v6 = sub_26D2B827C(v5, *(a1 + 36), 0, v3, a1);
  v8 = v7;
  v10 = v9;
  v11 = sub_26D2B83AC(v6, v7, v9 & 1, a1);

  sub_26D2B9254(v6, v8, v10 & 1);
  return v11;
}

uint64_t static Randomization.randomValue<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26D2C0B28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v12 - v8;
  v12[1] = a1;
  sub_26D2C0A38();
  swift_getWitnessTable();
  sub_26D2C0AA8();
  v10 = *(a2 - 8);
  result = (*(v10 + 48))(v9, 1, a2);
  if (result != 1)
  {
    return (*(v10 + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

void sub_26D2B5D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v3, 1))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2;
  v16 = MEMORY[0x26D6BA480](v3 + 1, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  while (1)
  {
    sub_26D2B6568(&v17, v5);
    if (a3 == v5)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      break;
    }
  }

  v8 = sub_26D2B8400(v7);

  if (*(v8 + 16) <= *(v16 + 16) >> 3)
  {
    sub_26D2B6648(v8);

    v9 = v16;
  }

  else
  {
    v9 = sub_26D2B6740(v8, v16);
  }

  v10 = *(v9 + 16);
  if (HIDWORD(v10))
  {
    goto LABEL_20;
  }

  v11 = arc4random_uniform(v10);
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = sub_26D2B63B4(*(v9 + 16), 0);
    v14 = sub_26D2B817C(&v16, v13 + 4, v12, v9);
    sub_26D2B9398();
    if (v14 == v12)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_16:
  if (v13[2] > v11)
  {
    v15 = v13[v11 + 4];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t static Randomization.randomEmailAddress()()
{
  v0 = sub_26D2C06D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C06C8();
  sub_26D2C06B8();
  (*(v1 + 8))(v4, v0);
  v5 = sub_26D2B85A8(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x26D6BA2C0](v5, v7, v9, v11);
  v14 = v13;

  v16[0] = v12;
  v16[1] = v14;
  MEMORY[0x26D6BA330](0x632E656C70706140, 0xEA00000000006D6FLL);
  return v16[0];
}

uint64_t static Randomization.randomGivenName(length:)(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_26D2B64DC(5uLL) + 5;
  }

  v3 = sub_26D2B8748(0xD000000000001B5CLL, 0x800000026D2C1A20, 2);
  v4 = sub_26D2B8F2C(v3, a1);

  return v4;
}

uint64_t static Randomization.randomHandle(type:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D2C06D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 > 1)
  {
    if (v9 == 2 || (v23 = 0, MEMORY[0x26D6BABC0](&v23, 8), (v23 & 0x20000) != 0))
    {
      LOBYTE(v9) = 2;
      goto LABEL_8;
    }

LABEL_6:

    LOBYTE(v9) = 1;
    result = _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0();
    goto LABEL_11;
  }

  if (*a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  v12 = sub_26D2C0D48();

  if (v12)
  {
    result = _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0();
  }

  else
  {
    sub_26D2C06C8();
    sub_26D2C06B8();
    (*(v5 + 8))(v8, v4);
    v13 = sub_26D2B85A8(8);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x26D6BA2C0](v13, v15, v17, v19);
    v22 = v21;

    v23 = v20;
    v24 = v22;
    MEMORY[0x26D6BA330](0x632E656C70706140, 0xEA00000000006D6FLL);
    result = v23;
    v11 = v24;
  }

LABEL_11:
  *a2 = v9;
  *(a2 + 8) = result;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t static Randomization.randomSurname(length:)(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_26D2B64DC(5uLL) + 5;
  }

  v3 = sub_26D2B8748(0xD000000000001BCELL, 0x800000026D2C3580, 2);
  v4 = sub_26D2B8F2C(v3, a1);

  return v4;
}

unint64_t sub_26D2B6384@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D2B929C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void *sub_26D2B63B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_26D2B6438(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x26D6BABC0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_26D2B6438(v6, a2, a3);
  }

  return result;
}

unint64_t sub_26D2B64DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D6BABC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D6BABC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D2B6568(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_26D2C0D88();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_26D2B770C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26D2B6648(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_26D2B6B9C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26D2B6740(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v55 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        v20 = sub_26D2C0D88();
        v21 = -1 << *(v6 + 32);
        v5 = v20 & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v48;
    v53 = v50;
    v54 = v11;
    v51[0] = v49;
    v51[1] = v8;
    v4 = (63 - v21) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v14);
      v43 = sub_26D2B6EB0(v42, v4, v6, v5, v51);

      MEMORY[0x26D6BABA0](v42, -1, -1);
      v48 = v52;
      v50 = v53;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v4;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v5 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v14);
    v25 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      v32 = sub_26D2C0D88();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v35);
          *(v5 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_26D2B706C(v5, v45, v47, v6);
LABEL_43:
    sub_26D2B9398();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26D2B6B9C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_26D2C0D88();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26D2B7258();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_26D2B7588(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_26D2B6C8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C08();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_26D2C0D88();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26D2B6EB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    v19 = *(a3 + 40);
    result = sub_26D2C0D88();
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) != 0)
    {
      v24 = *(a3 + 48);
      if (*(v24 + 8 * v21) == v18)
      {
LABEL_2:
        v12 = v8[v22];
        v8[v22] = v12 & ~v23;
        if ((v12 & v23) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v27 = v13 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_26D2B706C(v8, a2, v10, a3);
}

uint64_t sub_26D2B706C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C18();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    result = sub_26D2C0D88();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_26D2B7258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  v2 = *v0;
  v3 = sub_26D2C0BF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_26D2B7398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C08();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_26D2C0D88();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_26D2B7588(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26D2C0BE8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_26D2C0D88() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26D2B770C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26D2B6C8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26D2B7258();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26D2B7398(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_26D2C0D88();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26D2C0D58();
  __break(1u);
  return result;
}

unint64_t sub_26D2B782C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26D2C0D98();
  sub_26D2C08B8();
  v6 = sub_26D2C0DC8();

  return sub_26D2B78A4(a1, a2, v6);
}

unint64_t sub_26D2B78A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26D2C0D48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26D2B795C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
  v38 = a2;
  result = sub_26D2C0C98();
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26D2C0D98();
      sub_26D2C08B8();
      result = sub_26D2C0DC8();
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
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_26D2B7BFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
  v38 = a2;
  result = sub_26D2C0C98();
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26D2C0D98();
      sub_26D2C08B8();
      result = sub_26D2C0DC8();
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
      *(*(v8 + 56) + 8 * v16) = v25;
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

void *sub_26D2B7EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
  v2 = *v0;
  v3 = sub_26D2C0C88();
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

void *sub_26D2B800C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
  v2 = *v0;
  v3 = sub_26D2C0C88();
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

void *sub_26D2B817C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_26D2B827C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v17 = result;
      sub_26D2B9260(result, a2, a3 & 1);
      return v17;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        v16 = *(a5 + 36);
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2B83AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26D2B8400(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6BA480](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_26D2B6568(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0()
{
  sub_26D2B5D84(&unk_287EA8C40, 201, 989);
  v0 = sub_26D2C0D28();
  v2 = v1;
  sub_26D2B5D84(&unk_287EA8CA0, 201, 989);
  v3 = sub_26D2C0D28();
  v5 = v4;
  sub_26D2B5D84(MEMORY[0x277D84F90], 0, 9999);
  v6 = sub_26D2C0D28();
  v8 = v7;
  MEMORY[0x26D6BA330](v0, v2);

  MEMORY[0x26D6BA330](v3, v5);

  MEMORY[0x26D6BA330](v6, v8);

  return 12587;
}

uint64_t sub_26D2B85A8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D2C08F8();

    return sub_26D2C0968();
  }

  return result;
}

unint64_t sub_26D2B8644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
    v3 = sub_26D2C0CA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26D2B782C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26D2B8748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v3 = sub_26D2B8644(MEMORY[0x277D84F90]);
  v4 = sub_26D2C0898();
  v6 = 0xE000000000000000;
  v121 = 0;
  v122 = 0xE000000000000000;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v117 = v4;
  v118 = v5;
  v119 = 0;
  v120 = v7;
  v8 = sub_26D2C0928();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      if (sub_26D2C0818() & 1) != 0 || (sub_26D2C0808())
      {
        MEMORY[0x26D6BA320](v10, v11);
      }

      v10 = sub_26D2C0928();
      v11 = v12;
    }

    while (v12);
    v13 = v121;
    v6 = v122;
  }

  else
  {
    v13 = 0;
  }

  v117 = 32;
  v118 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v98[2] = &v117;
  v15 = sub_26D2BAB8C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D2B926C, v98, v13, v6, &v99);
  v101 = *(v15 + 16);
  if (v101)
  {
    v110 = 0;
    v111 = 0;
    v16 = 0;
    v102 = v15 + 32;
    v100 = v15;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        goto LABEL_77;
      }

      v17 = (v102 + 32 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];

      v22 = sub_26D2C0B48();
      v108 = v22;
      v23 = v22 - v113;
      if (__OFSUB__(v22, v113))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if (v23)
      {
        break;
      }

LABEL_14:
      ++v16;

      v15 = v100;
      if (v16 == v101)
      {

        v96 = v110;
        v95 = v111;
        goto LABEL_63;
      }
    }

    if ((v113 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v106 = v19 >> 14;
      v107 = v18 >> 14;
      v104 = v18;
      v105 = v19;
      v112 = v20;
      v103 = v22 - v113;
      while (1)
      {
        if (v24 >= v23)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v115 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_65;
        }

        v25 = v24 + v113;
        if (__OFADD__(v24, v113))
        {
          goto LABEL_66;
        }

        v26 = __OFSUB__(v108, v25);
        v27 = v108 - v25;
        if (v26)
        {
          goto LABEL_67;
        }

        if (v27 < 0)
        {
          goto LABEL_68;
        }

        v28 = sub_26D2C0B38();
        if (v29)
        {
          v30 = v18;
        }

        else
        {
          v30 = v28;
        }

        if (v107 > v30 >> 14)
        {
          goto LABEL_69;
        }

        v109 = v24;
        v31 = sub_26D2C0B58();
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v38 = MEMORY[0x26D6BA2C0](v31, v33, v35, v37);
        v40 = v39;

        v41 = sub_26D2C0B38();
        if (v42)
        {
          v41 = v19;
        }

        if (v106 < v41 >> 14)
        {
          goto LABEL_70;
        }

        v43 = sub_26D2C0B58();
        v45 = v44;

        v46 = sub_26D2C0B38();
        if (v47)
        {
          v48 = v45;
        }

        else
        {
          v48 = v46;
        }

        if (v48 >> 14 < v43 >> 14)
        {
          goto LABEL_71;
        }

        v49 = sub_26D2C0B58();
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v114 = MEMORY[0x26D6BA2C0](v49, v51, v53, v55);
        v116 = v56;

        sub_26D2B928C(v111);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v3;
        v59 = sub_26D2B782C(v38, v40);
        v60 = *(v3 + 16);
        v61 = (v58 & 1) == 0;
        v62 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          goto LABEL_72;
        }

        v63 = v58;
        if (*(v3 + 24) >= v62)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v66 = v117;
            if (v58)
            {
              goto LABEL_46;
            }
          }

          else
          {
            sub_26D2B800C();
            v66 = v117;
            if (v63)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          sub_26D2B7BFC(v62, isUniquelyReferenced_nonNull_native);
          v64 = sub_26D2B782C(v38, v40);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_81;
          }

          v59 = v64;
          v66 = v117;
          if (v63)
          {
            goto LABEL_46;
          }
        }

        v67 = sub_26D2B929C(MEMORY[0x277D84F90]);
        v66[(v59 >> 6) + 8] |= 1 << v59;
        v68 = (v66[6] + 16 * v59);
        *v68 = v38;
        v68[1] = v40;
        *(v66[7] + 8 * v59) = v67;
        v69 = v66[2];
        v26 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v26)
        {
          goto LABEL_75;
        }

        v66[2] = v70;

LABEL_46:
        v71 = v21;
        v72 = v16;
        v3 = v66;
        v73 = v66[7];
        sub_26D2B928C(v110);
        v74 = *(v73 + 8 * v59);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v117 = *(v73 + 8 * v59);
        v76 = v117;
        *(v73 + 8 * v59) = 0x8000000000000000;
        v78 = sub_26D2B782C(v114, v116);
        v79 = *(v76 + 16);
        v80 = (v77 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          goto LABEL_73;
        }

        v82 = v77;
        if (*(v76 + 24) >= v81)
        {

          if ((v75 & 1) == 0)
          {
            sub_26D2B7EA4();
          }
        }

        else
        {
          sub_26D2B795C(v81, v75);
          v83 = sub_26D2B782C(v114, v116);
          if ((v82 & 1) != (v84 & 1))
          {
            goto LABEL_81;
          }

          v78 = v83;
        }

        v19 = v105;
        v85 = *(v73 + 8 * v59);
        *(v73 + 8 * v59) = v117;

        v86 = *(v73 + 8 * v59);
        if (v82)
        {

          v87 = v109;
        }

        else
        {
          v86[(v78 >> 6) + 8] |= 1 << v78;
          v88 = (v86[6] + 16 * v78);
          v89 = v116;
          *v88 = v114;
          v88[1] = v89;
          *(v86[7] + 8 * v78) = 0;
          v90 = v86[2];
          v26 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          v87 = v109;
          if (v26)
          {
            goto LABEL_76;
          }

          v86[2] = v91;
        }

        v92 = v86[7];
        v93 = *(v92 + 8 * v78);
        v26 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v26)
        {
          goto LABEL_74;
        }

        *(v92 + 8 * v78) = v94;
        v24 = v87 + 1;
        v110 = sub_26D2B3900;
        v111 = sub_26D2B6384;
        v23 = v103;
        v18 = v104;
        v16 = v72;
        v21 = v71;
        if (v115 == v103)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_26D2C0D68();
    __break(1u);
  }

  else
  {

    v95 = 0;
    v96 = 0;
LABEL_63:
    sub_26D2B928C(v95);
    sub_26D2B928C(v96);
    return v3;
  }

  return result;
}

unint64_t sub_26D2B8E70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_26D2C08F8();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_26D2C0968();
}

uint64_t sub_26D2B8F2C(uint64_t a1, uint64_t a2)
{
  result = sub_26D2B5B94(a1);
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v32 = result;
    v33 = v5;
    swift_bridgeObjectRetain_n();
    v8 = sub_26D2C08C8();

    if (v8 < a2 && *(a1 + 16))
    {
      v9 = v6;
      do
      {
        v10 = sub_26D2B782C(v9, v7);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v12 = *(*(a1 + 56) + 8 * v10);

        v14 = sub_26D2B532C(v13);
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {

          __break(1u);
          goto LABEL_13;
        }

        sub_26D2C08E8();
        v18 = sub_26D2C0948();
        v20 = v19;

        MEMORY[0x26D6BA320](v18, v20);

        swift_bridgeObjectRetain_n();
        v21 = sub_26D2C08C8();

        v22 = sub_26D2B8E70(v21, v32, v33);
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v9 = MEMORY[0x26D6BA2C0](v22, v24, v26, v28);
        v7 = v29;

        v30 = sub_26D2C08C8();
      }

      while (v30 < a2 && *(a1 + 16));
    }

    sub_26D2B2374();
    v31 = sub_26D2C0B88();

    return v31;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Randomization(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Randomization(_WORD *result, int a2, int a3)
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

uint64_t sub_26D2B9254(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26D2B9260(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26D2B928C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26D2B929C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
    v3 = sub_26D2C0CA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26D2B782C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

TerminalToolKit::InputHandle::Kind_optional __swiftcall InputHandle.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InputHandle.Kind.rawValue.getter()
{
  v1 = 0x6D754E656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x6464416C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

void sub_26D2B9484(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636972656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D2B94F4()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2B95A8()
{
  *v0;
  *v0;
  sub_26D2C08B8();
}

uint64_t sub_26D2B9648()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2B96F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D754E656E6F6870;
  v4 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v3 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x636972656E6567;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v7 = 0x6464416C69616D65;
    v8 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D2C0D48();
  }

  return v11 & 1;
}

uint64_t InputHandle.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t InputHandle.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t InputHandle.normalizedValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t InputHandle.normalizedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_26D2B9A3C()
{
  v1 = *v0;
  sub_26D2C0D98();
  MEMORY[0x26D6BA7C0](v1);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2B9AB0()
{
  v1 = *v0;
  sub_26D2C0D98();
  MEMORY[0x26D6BA7C0](v1);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2B9AF4()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_26D2B9B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D2BB854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D2B9B90(uint64_t a1)
{
  v2 = sub_26D2BB1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2B9BCC(uint64_t a1)
{
  v2 = sub_26D2BB1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InputHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A78, &qword_26D2C13A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[2] = *(v1 + 2);
  v14[3] = v10;
  v11 = *(v1 + 3);
  v14[0] = *(v1 + 4);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2BB1BC();
  sub_26D2C0DE8();
  v18 = v9;
  v17 = 0;
  sub_26D2BB210();
  sub_26D2C0D18();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_26D2C0D08();
  v15 = 2;
  sub_26D2C0CF8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t InputHandle.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *v0;
  sub_26D2C08B8();

  sub_26D2C08B8();
  if (!v4)
  {
    return sub_26D2C0DB8();
  }

  sub_26D2C0DB8();

  return sub_26D2C08B8();
}

uint64_t InputHandle.hashValue.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26D2C0D98();
  sub_26D2C08B8();

  sub_26D2C08B8();
  sub_26D2C0DB8();
  if (v5)
  {
    sub_26D2C08B8();
  }

  return sub_26D2C0DC8();
}

uint64_t InputHandle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A90, &qword_26D2C13B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2BB1BC();
  sub_26D2C0DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_26D2BB2B0();
  sub_26D2C0CE8();
  v11 = v26;
  v24 = 1;
  v12 = sub_26D2C0CD8();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = sub_26D2C0CC8();
  v17 = v16;
  v18 = *(v6 + 8);
  v21 = v15;
  v18(v9, v5);
  *a2 = v11;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D2BA248()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26D2C0D98();
  sub_26D2C08B8();

  sub_26D2C08B8();
  sub_26D2C0DB8();
  if (v5)
  {
    sub_26D2C08B8();
  }

  return sub_26D2C0DC8();
}

uint64_t static InputHandle.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = 58;
  v34 = &v35;

  v7 = sub_26D2BAB8C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D2BB304, v33, a1, a2, v6);
  v36 = v3;
  v8 = *(v7 + 16);
  if (v8)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_26D2BA95C(0, v8, 0);
    v10 = 0;
    v11 = v35;
    v12 = (v7 + 56);
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      v17 = MEMORY[0x26D6BA2C0](v13, v14, v15, v16);
      v19 = v18;

      v35 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_26D2BA95C((v20 > 1), v21 + 1, 1);
        v11 = v35;
      }

      ++v10;
      v11[2] = v21 + 1;
      v22 = &v11[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v12 += 4;
      if (v8 == v10)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_9:
    v23 = v11[2];
    if ((v23 & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v24 = v11[4];
      v25 = v11[5];
      v26 = v11[6];
      v27 = v11[7];
      if (v23 == 3)
      {
        v29 = v11[8];
        v28 = v11[9];
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v30._countAndFlagsBits = v24;
      v30._object = v25;
      result = InputHandle.Kind.init(from:)(v30);
      if (v31)
      {
      }

      else
      {
        *a3 = v35;
        *(a3 + 8) = v26;
        *(a3 + 16) = v27;
        *(a3 + 24) = v29;
        *(a3 + 32) = v28;
      }
    }

    else
    {

      sub_26D2C0728();
      sub_26D2BB35C();
      swift_allocError();
      sub_26D2C0738();
      return swift_willThrow();
    }
  }

  return result;
}

TerminalToolKit::InputHandle::Kind __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InputHandle.Kind.init(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = v1;
  v6 = sub_26D2C0898();
  v7 = v5;
  if (v6 == 0x636972656E6567 && v5 == 0xE700000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 103 && v7 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    *v4 = 0;
    return result;
  }

  if (v6 == 0x656E6F6870 && v7 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 0x6D754E656E6F6870 && v7 == 0xEB00000000726562 || (sub_26D2C0D48() & 1) != 0 || v6 == 112 && v7 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    v9 = 1;
LABEL_18:
    *v4 = v9;
    return result;
  }

  if (v6 == 0x6C69616D65 && v7 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 0x6464416C69616D65 && v7 == 0xEC00000073736572 || (sub_26D2C0D48() & 1) != 0 || v6 == 101 && v7 == 0xE100000000000000)
  {

LABEL_26:

    v9 = 2;
    goto LABEL_18;
  }

  v10 = sub_26D2C0D48();

  if (v10)
  {
    goto LABEL_26;
  }

  sub_26D2C0C28();
  MEMORY[0x26D6BA330](0xD00000000000001ALL, 0x800000026D2C51C0);
  MEMORY[0x26D6BA330](countAndFlagsBits, object);

  MEMORY[0x26D6BA330](0xD000000000000069, 0x800000026D2C51E0);
  sub_26D2C0728();
  sub_26D2BB35C();
  swift_allocError();
  sub_26D2C0738();
  return swift_willThrow();
}

char *sub_26D2BA93C(char *a1, int64_t a2, char a3)
{
  result = sub_26D2BA97C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D2BA95C(char *a1, int64_t a2, char a3)
{
  result = sub_26D2BAA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D2BA97C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D2BAA80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7AE8, &unk_26D2C1720);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26D2BAB8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26D2C0968();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D2B3D8C(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_26D2B3D8C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
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
        v19 = sub_26D2C0948();
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

        v14 = sub_26D2C08D8();
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
        v18 = sub_26D2C08D8();
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
          v7 = sub_26D2C0968();
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

        v14 = sub_26D2B3D8C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D2C0968();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D2B3D8C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D2B3D8C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D2C08D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2BAF4C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2C0D48() & 1;
  }
}

uint64_t _s15TerminalToolKit11InputHandleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  v20 = *(a1 + 3);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = 0x6D754E656E6F6870;
  v11 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v10 = 0x6464416C69616D65;
    v11 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x636972656E6567;
  }

  if (v2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0x6D754E656E6F6870;
  v15 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v14 = 0x6464416C69616D65;
    v15 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x636972656E6567;
  }

  if (*a2)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_26D2C0D48();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v6 && v4 == v7 || (sub_26D2C0D48() & 1) != 0)
  {
    if (v5)
    {
      if (v8 && (v20 == v9 && v5 == v8 || (sub_26D2C0D48() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D2BB1BC()
{
  result = qword_2804F7A80;
  if (!qword_2804F7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A80);
  }

  return result;
}

unint64_t sub_26D2BB210()
{
  result = qword_2804F7A88;
  if (!qword_2804F7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A88);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26D2BB2B0()
{
  result = qword_2804F7A98;
  if (!qword_2804F7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A98);
  }

  return result;
}

uint64_t sub_26D2BB304(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2C0D48() & 1;
  }
}

unint64_t sub_26D2BB35C()
{
  result = qword_2804F7AA0;
  if (!qword_2804F7AA0)
  {
    sub_26D2C0728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AA0);
  }

  return result;
}

unint64_t sub_26D2BB3B8()
{
  result = qword_2804F7AA8;
  if (!qword_2804F7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AA8);
  }

  return result;
}

unint64_t sub_26D2BB410()
{
  result = qword_2804F7AB0;
  if (!qword_2804F7AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7AB8, &qword_26D2C14A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AB0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_26D2BB4C0()
{
  result = qword_2804F7AC0;
  if (!qword_2804F7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AC0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D2BB528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D2BB570(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ASCIIEmojis(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCIIEmojis(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D2BB750()
{
  result = qword_2804F7AC8;
  if (!qword_2804F7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AC8);
  }

  return result;
}

unint64_t sub_26D2BB7A8()
{
  result = qword_2804F7AD0;
  if (!qword_2804F7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AD0);
  }

  return result;
}

unint64_t sub_26D2BB800()
{
  result = qword_2804F7AD8;
  if (!qword_2804F7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AD8);
  }

  return result;
}

uint64_t sub_26D2BB854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_26D2C0D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465)
  {

    return 2;
  }

  else
  {
    v6 = sub_26D2C0D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_26D2BB970()
{
  result = qword_2804F7AE0;
  if (!qword_2804F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AE0);
  }

  return result;
}

uint64_t sub_26D2BB9D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_26D2C0A88();
  if (!v26)
  {
    return sub_26D2C09E8();
  }

  v48 = v26;
  v52 = sub_26D2C0C68();
  v39 = sub_26D2C0C78();
  sub_26D2C0C48();
  result = sub_26D2C0A78();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_26D2C0AC8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_26D2C0C58();
      result = sub_26D2C0A98();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D2C0A08();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a2;
    v11[4] = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7AF0, &qword_26D2C1730);
    v8 = sub_26D2C0A38();
    v9 = sub_26D2BC6D8();
    return sub_26D2BBFE4(sub_26D2BBFC0, v11, v7, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_26D2BBEEC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_26D2C0A08();
    if (result >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if (v6 >= v3)
    {
      sub_26D2C0A58();
      sub_26D2C0BB8();
      swift_getWitnessTable();
      result = sub_26D2C0A48();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_26D2BBFC0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  return sub_26D2BBEEC(a1, v2[4], a2);
}

uint64_t sub_26D2BBFE4(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_26D2C0B28();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_26D2C0988();
  v70 = sub_26D2C0C68();
  v65 = sub_26D2C0C78();
  sub_26D2C0C48();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_26D2C0978();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26D2C0B68();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_26D2C0C58();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_26D2C0B68();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_26D2C0C58();
      sub_26D2C0B68();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

unint64_t sub_26D2BC6D8()
{
  result = qword_2804F7AF8;
  if (!qword_2804F7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7AF0, &qword_26D2C1730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AF8);
  }

  return result;
}

uint64_t Array<A>.description(hashSensitiveValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = sub_26D2C0888();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = a3;
  v29 = a4;
  v8 = sub_26D2C0A38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B00, qword_26D2C1738);
  WitnessTable = swift_getWitnessTable();
  sub_26D2BB9D4(sub_26D2BC978, v27, v8, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v12 = objc_opt_self();
  v13 = sub_26D2C09C8();

  v26 = 0;
  v14 = [v12 dataWithJSONObject:v13 options:11 error:&v26];

  v15 = v26;
  if (v14)
  {
    v16 = sub_26D2C0658();
    v18 = v17;

    sub_26D2C0878();
    v19 = sub_26D2C0858();
    v21 = v20;
    sub_26D2BC9D0(v16, v18);
    if (!v21)
    {
      v19 = 0xD000000000000010;
    }
  }

  else
  {
    v19 = 0xD000000000000010;
    v22 = v15;
    v23 = sub_26D2C0618();

    swift_willThrow();
    MEMORY[0x26D6BAAB0](v23);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_26D2BC978@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 8))(0, *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_26D2BC9D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ASCIIEmojis.rawValue.getter()
{
  v1 = 0x676E696E726177;
  if (*v0 != 1)
  {
    v1 = 0x6B616C66776F6E73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701996902;
  }
}

Swift::Void __swiftcall printWithColors(_:stripColors:terminator:replaceLine:)(Swift::String _, Swift::Bool stripColors, Swift::String terminator, Swift::Bool replaceLine)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (!stripColors)
  {

    if (!replaceLine)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v8 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v9 = sub_26D2C08C8();
  v10 = sub_26D2C0838();
  v11 = sub_26D2C0838();
  v12 = [v8 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{v9, v11}];

  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v15 = sub_26D2C08C8();
  v16 = sub_26D2C0838();
  v17 = sub_26D2C0838();
  v18 = [v14 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v15, v17}];

  countAndFlagsBits = sub_26D2C0848();
  object = v19;

  if (replaceLine)
  {
LABEL_5:
    MEMORY[0x26D6BA330](countAndFlagsBits, object);

    countAndFlagsBits = 0x4B5B1B41315B1BLL;
    object = 0xE700000000000000;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26D2C1270;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 32) = countAndFlagsBits;
  *(v20 + 40) = object;
  sub_26D2C0D78();
}

uint64_t sub_26D2BCD38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D30333B305B1BLL;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v11 = 0x6D32333B305B1BLL;
    if (a1 != 2)
    {
      v11 = 0x6D33333B305B1BLL;
    }

    v12 = 0x6D31333B305B1BLL;
    if (!a1)
    {
      v12 = 0x6D30333B305B1BLL;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6D36333B305B1BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6D37333B305B1BLL;
    if (a1 != 7)
    {
      v7 = 0x6D303B305B1BLL;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D34333B305B1BLL;
    if (a1 != 4)
    {
      v8 = 0x6D35333B305B1BLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    v13 = 0xE700000000000000;
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0x32333B305B1BLL;
      }

      else
      {
        v14 = 0x33333B305B1BLL;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_37;
      }

      v14 = 0x31333B305B1BLL;
    }
  }

  else if (a2 <= 5u)
  {
    v13 = 0xE700000000000000;
    if (a2 == 4)
    {
      v14 = 0x34333B305B1BLL;
    }

    else
    {
      v14 = 0x35333B305B1BLL;
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v13 = 0xE700000000000000;
        v14 = 0x37333B305B1BLL;
        goto LABEL_40;
      }

      v13 = 0xE600000000000000;
      v2 = 0x6D303B305B1BLL;
LABEL_37:
      if (v9 != v2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v13 = 0xE700000000000000;
    v14 = 0x36333B305B1BLL;
  }

LABEL_40:
  if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x6D000000000000))
  {
LABEL_43:
    v15 = sub_26D2C0D48();
    goto LABEL_44;
  }

LABEL_41:
  if (v10 != v13)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_26D2BCF84()
{
  sub_26D2C08B8();
}

uint64_t static ANSIColors.+ infix(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 0x6D30333B305B1BLL;
  v5 = 0x6D36333B305B1BLL;
  v6 = 0x6D37333B305B1BLL;
  if (v3 != 7)
  {
    v6 = 0x6D303B305B1BLL;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = 0x6D34333B305B1BLL;
  if (v3 != 4)
  {
    v7 = 0x6D35333B305B1BLL;
  }

  if (*a1 <= 5u)
  {
    v5 = v7;
  }

  v8 = 0x6D32333B305B1BLL;
  if (v3 != 2)
  {
    v8 = 0x6D33333B305B1BLL;
  }

  if (*a1)
  {
    v4 = 0x6D31333B305B1BLL;
  }

  if (*a1 > 1u)
  {
    v4 = v8;
  }

  if (*a1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v13 = v9;

  MEMORY[0x26D6BA330](a2, a3);

  MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

  return v13;
}

uint64_t ANSIColors.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6D30333B305B1BLL;
    v7 = 0x6D32333B305B1BLL;
    if (v1 != 2)
    {
      v7 = 0x6D33333B305B1BLL;
    }

    if (*v0)
    {
      v6 = 0x6D31333B305B1BLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6D36333B305B1BLL;
    v3 = 0x6D37333B305B1BLL;
    if (v1 != 7)
    {
      v3 = 0x6D303B305B1BLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D34333B305B1BLL;
    if (v1 != 4)
    {
      v4 = 0x6D35333B305B1BLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static ANSIColors.+ infix(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  v4 = 0xE700000000000000;
  if (v3 <= 3)
  {
    v11 = 0x6D30333B305B1BLL;
    v12 = 0x6D32333B305B1BLL;
    if (v3 != 2)
    {
      v12 = 0x6D33333B305B1BLL;
    }

    if (*a3)
    {
      v11 = 0x6D31333B305B1BLL;
    }

    if (*a3 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v12;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6D36333B305B1BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6D37333B305B1BLL;
    if (v3 != 7)
    {
      v7 = 0x6D303B305B1BLL;
      v6 = 0xE600000000000000;
    }

    if (v3 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D34333B305B1BLL;
    if (v3 != 4)
    {
      v8 = 0x6D35333B305B1BLL;
    }

    if (*a3 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (*a3 <= 5u)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  MEMORY[0x26D6BA330](v9, v10);
}

TerminalToolKit::ANSIColors_optional __swiftcall ANSIColors.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D2BD538()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2BCF84();
  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD588()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2BCF84();
  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD5D8@<X0>(uint64_t *a1@<X8>)
{
  result = ANSIColors.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

TerminalToolKit::ASCIIEmojis_optional __swiftcall ASCIIEmojis.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D2BD65C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696E726177;
  if (v2 != 1)
  {
    v4 = 0x6B616C66776F6E73;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701996902;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696E726177;
  if (*a2 != 1)
  {
    v8 = 0x6B616C66776F6E73;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701996902;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D2C0D48();
  }

  return v11 & 1;
}

uint64_t sub_26D2BD760()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD800()
{
  *v0;
  *v0;
  sub_26D2C08B8();
}

uint64_t sub_26D2BD88C()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

void sub_26D2BD934(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E726177;
  if (v2 != 1)
  {
    v5 = 0x6B616C66776F6E73;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701996902;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String __swiftcall stripAttributes(from:)(Swift::String from)
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v2 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v3 = sub_26D2C08C8();
  v4 = sub_26D2C0838();
  v5 = sub_26D2C0838();
  v6 = [v2 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{v3, v5}];

  v7 = sub_26D2C0848();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Void __swiftcall printProgressBar(prefixString:completed:total:stripColors:)(Swift::String prefixString, Swift::Int completed, Swift::Int total, Swift::Bool stripColors)
{
  object = prefixString._object;
  countAndFlagsBits = prefixString._countAndFlagsBits;
  v54[1] = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  v9 = sub_26D2C0748();
  if (MEMORY[0x26D6BA170](1, v9, v54))
  {
    goto LABEL_25;
  }

  v10 = WORD1(v54[0]);
  v11 = completed / total;
  v12 = 0.0;
  if (v11 >= 0.0)
  {
    v12 = completed / total;
  }

  if (v11 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B08, &qword_26D2C1768);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D2C1270;
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v13 * 100.0;
  v16 = sub_26D2C0868();
  v18 = v17;
  v19 = sub_26D2C08C8();
  v20 = sub_26D2C08C8();
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21 + 4;
  if (__OFADD__(v21, 4))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_26D2C08C8();
  v24 = v23 + 4;
  if (__OFADD__(v23, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 < v10)
  {

    MEMORY[0x26D6BA330](8250, 0xE200000000000000);
    MEMORY[0x26D6BA330](countAndFlagsBits, object);

    MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

    MEMORY[0x26D6BA330](v16, v18);

    v25 = v10 - v22;
    if (!__OFSUB__(v10, v22))
    {
LABEL_16:
      v27 = 0x6D34333B305B1BLL;
      v26 = 0xE700000000000000;
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v24 < v10)
  {
    MEMORY[0x26D6BA330](v16, v18);

    MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

    v25 = v10 - v24;
    if (__OFSUB__(v10, v24))
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  v25 = v10 - 2;

  v27 = 0;
  v26 = 0xE000000000000000;
LABEL_18:
  v28 = v13 * v25;
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = v28;
  v30 = sub_26D2C0938();
  if (__OFSUB__(v25, v29))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v32 = v30;
  v33 = v31;
  v34 = sub_26D2C0938();
  v36 = v35;

  MEMORY[0x26D6BA330](v34, v36);

  MEMORY[0x26D6BA330](v32, v33);

  MEMORY[0x26D6BA330](93, 0xE100000000000000);

  MEMORY[0x26D6BA330](91, 0xE100000000000000);

  v38 = v27;
  v37 = v26;
  if (stripColors)
  {
    v39 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v40 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v41 = sub_26D2C08C8();
    v42 = sub_26D2C0838();
    v43 = sub_26D2C0838();
    v44 = [v40 stringByReplacingMatchesInString:v42 options:0 range:0 withTemplate:{v41, v43}];

    v45 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v46 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v47 = sub_26D2C08C8();
    v48 = sub_26D2C0838();

    v49 = sub_26D2C0838();
    v50 = [v46 stringByReplacingMatchesInString:v48 options:0 range:0 withTemplate:{v47, v49}];

    v38 = sub_26D2C0848();
    v37 = v51;
  }

  MEMORY[0x26D6BA330](v38, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26D2C1270;
  *(v52 + 56) = MEMORY[0x277D837D0];
  *(v52 + 32) = 0x4B5B1B41315B1BLL;
  *(v52 + 40) = 0xE700000000000000;
  sub_26D2C0D78();

LABEL_25:
  v53 = *MEMORY[0x277D85DE8];
}

unint64_t sub_26D2BE0E0()
{
  result = qword_2804F7B10;
  if (!qword_2804F7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B10);
  }

  return result;
}

unint64_t sub_26D2BE138()
{
  result = qword_2804F7B18;
  if (!qword_2804F7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ANSIColors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ANSIColors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t readInput<A>(prompt:type:invalidString:noColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v64 = a8;
  v63 = sub_26D2C0608();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26D2C0B28();
  v15 = *(v59 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v59);
  v19 = v53 - v18;
  v20 = *(a7 - 8);
  v21 = *(v20 + 8);
  v22 = MEMORY[0x28223BE20](v17);
  v58 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = v53 - v24;
  if (a6)
  {
    v60 = v20;
    v61 = v12;
    v56 = v15;
    v25 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v26 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v55 = sub_26D2C08C8();
    v27 = sub_26D2C0838();
    v28 = sub_26D2C0838();
    v29 = [v26 stringByReplacingMatchesInString:v27 options:0 range:0 withTemplate:{v55, v28}];

    v30 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v31 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v32 = sub_26D2C08C8();
    v33 = sub_26D2C0838();

    v34 = sub_26D2C0838();
    v35 = [v31 stringByReplacingMatchesInString:v33 options:0 range:0 withTemplate:{v32, v34}];

    a1 = sub_26D2C0848();
    a2 = v36;

    v15 = v56;
    v20 = v60;
    v12 = v61;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26D2C1270;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 32) = a1;
  *(v37 + 40) = a2;
  sub_26D2C0D78();

  v38 = sub_26D2C0DF8();
  if (!v39)
  {
    return sub_26D2C09E8();
  }

  v67 = v38;
  v68 = v39;
  v65 = 32;
  v66 = 0xE100000000000000;
  v61 = sub_26D2B2374();
  v40 = sub_26D2C0B78();

  v41 = sub_26D2C07D8();
  v65 = v41;
  v42 = *(v40 + 16);
  if (v42)
  {
    v60 = v19;
    v43 = (v12 + 8);
    v44 = (v20 + 48);
    v55 = (v20 + 16);
    v56 = (v20 + 32);
    v53[1] = v40;
    v54 = (v20 + 8);
    v45 = (v15 + 1);
    v46 = (v40 + 40);
    v47 = v62;
    do
    {
      v49 = *v46;
      v67 = *(v46 - 1);
      v68 = v49;

      sub_26D2C05F8();
      sub_26D2C0B98();
      (*v43)(v47, v63);

      v50 = v60;
      sub_26D2C0D38();
      if ((*v44)(v50, 1, a7) == 1)
      {
        (*v45)(v50, v59);
      }

      else
      {
        v48 = v57;
        (*v56)(v57, v50, a7);
        (*v55)(v58, v48, a7);
        sub_26D2C0A38();
        sub_26D2C0A18();
        (*v54)(v48, a7);
      }

      v46 += 2;
      --v42;
    }

    while (v42);

    return v65;
  }

  else
  {
    v52 = v41;

    return v52;
  }
}

Swift::Bool_optional __swiftcall readBool(prompt:noColor:)(Swift::String prompt, Swift::Bool noColor)
{
  v2 = noColor;
  object = prompt._object;
  countAndFlagsBits = prompt._countAndFlagsBits;
  if (noColor)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v6 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v7 = sub_26D2C08C8();
    v8 = sub_26D2C0838();
    v9 = sub_26D2C0838();
    v10 = [v6 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{v7, v9}];

    v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v12 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v13 = sub_26D2C08C8();
    v14 = sub_26D2C0838();

    v15 = sub_26D2C0838();
    v16 = [v12 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{v13, v15}];

    countAndFlagsBits = sub_26D2C0848();
    object = v17;

    v2 = noColor;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26D2C1270;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 32) = countAndFlagsBits;
  *(v18 + 40) = object;
  sub_26D2C0D78();

  sub_26D2C0DF8();
  if (!v20)
  {
    v25 = 0xD000000000000021;
    v26 = 0x800000026D2C5270;
    if (v2)
    {
      v27 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v28 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v29 = sub_26D2C08C8();
      v30 = sub_26D2C0838();
      v31 = sub_26D2C0838();
      v32 = [v28 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{v29, v31}];

      v33 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v34 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v35 = sub_26D2C08C8();
      v36 = sub_26D2C0838();
      v37 = sub_26D2C0838();
      v38 = [v34 stringByReplacingMatchesInString:v36 options:0 range:0 withTemplate:{v35, v37}];

      v25 = sub_26D2C0848();
      v26 = v39;

      v19 = MEMORY[0x277D837D0];
    }

    goto LABEL_20;
  }

  v21 = sub_26D2C0898();
  v23 = v22;

  if (v21 == 0x65736C6166 && v23 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 28526 && v23 == 0xE200000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 48 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 110 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    return 0;
  }

  if (v21 == 1702195828 && v23 == 0xE400000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 7562617 && v23 == 0xE300000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 49 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 121 && v23 == 0xE100000000000000)
  {

    return 1;
  }

  v41 = sub_26D2C0D48();

  if ((v41 & 1) == 0)
  {
    v25 = 0xD000000000000021;
    v26 = 0x800000026D2C5270;
    if (v2)
    {
      v42 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v43 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v44 = sub_26D2C08C8();
      v45 = sub_26D2C0838();
      v46 = sub_26D2C0838();
      v47 = [v43 stringByReplacingMatchesInString:v45 options:0 range:0 withTemplate:{v44, v46}];

      v48 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v49 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v50 = sub_26D2C08C8();
      v51 = sub_26D2C0838();
      v52 = sub_26D2C0838();
      v53 = [v49 stringByReplacingMatchesInString:v51 options:0 range:0 withTemplate:{v50, v52}];

      v25 = sub_26D2C0848();
      v26 = v54;
    }

LABEL_20:
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D2C1270;
    *(v40 + 56) = v19;
    *(v40 + 32) = v25;
    *(v40 + 40) = v26;
    sub_26D2C0D78();

    return 2;
  }

  return 1;
}

uint64_t performAndTime(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26D2C07C8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2BF180, 0, 0);
}

uint64_t sub_26D2BF180()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_26D2C07B8();
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26D2BF274;
  v5 = v0[3];

  return v7();
}

uint64_t sub_26D2BF274()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26D2BF48C;
  }

  else
  {
    v3 = sub_26D2BF388;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_26D2BF388()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_26D2C07B8();
  v3 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  v5 = v3 - result;
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[7];
    v7 = v0[4];
    v8 = round(v5 / 1000000000.0 * 100.0) / 100.0;
    v9 = *(v0[5] + 8);
    v9(v0[6], v7);
    v9(v6, v7);

    v10 = v0[1];
    v11.n128_f64[0] = v8;

    return v10(v11);
  }

  return result;
}

uint64_t sub_26D2BF48C()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[7], v0[4]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

Swift::Double __swiftcall Double.rounded(toPlaces:)(Swift::Int toPlaces)
{
  v2 = v1;
  v3 = __exp10(toPlaces);
  return round(v3 * v2) / v3;
}

unint64_t performAndTime(_:)(void (*a1)(uint64_t))
{
  v3 = sub_26D2C07C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = sub_26D2C07B8();
  a1(v11);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  sub_26D2C07B8();
  v13 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v4 + 8);
    v14(v8, v3);
    return (v14)(v10, v3);
  }

  return result;
}

uint64_t performAndTime<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26D2C07C8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2BF7B8, 0, 0);
}

uint64_t sub_26D2BF7B8()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_26D2C07B8();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_26D2BF8B4;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_26D2BF8B4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_26D2BFACC;
  }

  else
  {
    v3 = sub_26D2BF9C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_26D2BF9C8()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_26D2C07B8();
  v3 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  v5 = v3 - result;
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[5];
    v8 = round(v5 / 1000000000.0 * 100.0) / 100.0;
    v9 = *(v0[6] + 8);
    v9(v0[7], v7);
    v9(v6, v7);

    v10 = v0[1];
    v11.n128_f64[0] = v8;

    return v10(v11);
  }

  return result;
}

uint64_t sub_26D2BFACC()
{
  v1 = v0[7];
  (*(v0[6] + 8))(v0[8], v0[5]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

unint64_t performAndTime<A>(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_26D2C07C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = sub_26D2C07B8();
  a2(v12);
  if (v2)
  {
    return (*(v5 + 8))(v11, v4);
  }

  sub_26D2C07B8();
  v14 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  if (v14 < result)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v5 + 8);
    v15(v9, v4);
    return (v15)(v11, v4);
  }

  return result;
}

uint64_t runCommand(_:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(sub_26D2C0888() - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = sub_26D2C0778();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = sub_26D2C0798();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_26D2C0648();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26D2BFED0, 0, 0);
}

uint64_t sub_26D2BFED0()
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v45 = v0[18];
  v47 = v0[17];
  v49 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v46 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  v9 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  sub_26D2C0628();
  v10 = sub_26D2C0638();
  (*(v2 + 8))(v1, v3);
  [v9 setExecutableURL_];

  v11 = sub_26D2C09C8();
  [v9 setArguments_];

  v12 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [v9 setStandardOutput_];
  sub_26D2C039C(0, &qword_2804F7B20, 0x277D85CA0);
  sub_26D2C039C(0, &qword_2804F7B28, 0x277D85C78);
  v13 = sub_26D2C0AD8();
  sub_26D2C0AE8();

  v14 = sub_26D2C0768();
  signal(2, v14);
  swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v0[6] = sub_26D2C041C;
  v0[7] = v15;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26D2C0458;
  v0[5] = &block_descriptor;
  v16 = _Block_copy(v0 + 2);
  v17 = v9;
  sub_26D2C0788();
  sub_26D2C04B4();
  sub_26D2C0AF8();
  _Block_release(v16);
  (*(v4 + 8))(v5, v46);
  (*(v47 + 8))(v45, v49);
  v18 = v0[7];

  sub_26D2C0B18();
  v0[8] = 0;
  v19 = [v17 launchAndReturnError_];
  v20 = v0[8];
  if (v19)
  {
    v21 = v0[12];
    v22 = v20;
    [v17 waitUntilExit];
    v50 = v12;
    v23 = [v12 fileHandleForReading];
    v24 = [v23 readDataToEndOfFile];

    v25 = sub_26D2C0658();
    v27 = v26;

    sub_26D2C0878();
    v48 = sub_26D2C0858();
    v29 = v28;
    if (v28)
    {
      sub_26D2C0B08();
    }

    v30 = v0[21];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[12];
    sub_26D2BC9D0(v25, v27);

    swift_unknownObjectRelease();

    v34 = v0[1];
    v35 = *MEMORY[0x277D85DE8];

    return v34(v48, v29);
  }

  else
  {
    v37 = v12;
    v38 = v0[21];
    v39 = v0[18];
    v40 = v0[15];
    v41 = v0[12];
    v42 = v20;
    sub_26D2C0618();

    swift_willThrow();
    swift_unknownObjectRelease();

    v43 = v0[1];
    v44 = *MEMORY[0x277D85DE8];

    return v43();
  }
}

uint64_t sub_26D2C039C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26D2C03E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26D2C041C()
{
  v1 = *(v0 + 16);
  if ([v1 isRunning])
  {
    [v1 terminate];
  }

  abort();
}

uint64_t sub_26D2C0458(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D2C04B4()
{
  sub_26D2C0778();
  sub_26D2C053C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B38, &unk_26D2C1930);
  sub_26D2C0594();
  return sub_26D2C0BC8();
}

unint64_t sub_26D2C053C()
{
  result = qword_2804F7B30;
  if (!qword_2804F7B30)
  {
    sub_26D2C0778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B30);
  }

  return result;
}

unint64_t sub_26D2C0594()
{
  result = qword_2804F7B40;
  if (!qword_2804F7B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7B38, &unk_26D2C1930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B40);
  }

  return result;
}