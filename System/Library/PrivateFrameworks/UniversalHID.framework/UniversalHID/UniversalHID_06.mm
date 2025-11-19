BOOL KeyboardFilter.filterEvent(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_27070F5BC(a2, v39);
  v6 = sub_2707688C4(v39);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  if (IOHIDEventGetTimeStamp() == *(v3 + 32))
  {

LABEL_4:
    sub_27070F5BC(a2, a1);
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v10 = v7;
  v11 = IOHIDEventGetIntegerValue();
  v12 = IOHIDEventGetIntegerValue();

  sub_270769B08();
  OUTLINED_FUNCTION_8_15();
  *(v3 + 40) = *(v3 + 16);
  v13 = v11 | (v12 << 16);
  v14 = sub_2707691E4(v13);
  if (!IntegerValue)
  {
    if (!v14)
    {
      v17 = 1;
      v37 = 1;
      v16 = 1;
      goto LABEL_34;
    }

    if (v14 != 1)
    {
      v16 = 0;
      v17 = 1;
      v37 = 1;
      goto LABEL_34;
    }

    v15 = v14;
LABEL_27:
    v20 = v15;
    goto LABEL_57;
  }

  v15 = v14;
  switch(v14)
  {
    case 0u:
      v37 = 2;
      v16 = 1;
      goto LABEL_35;
    case 2u:
      goto LABEL_27;
    case 1u:
      v16 = 0;
      v14 = 1;
      v37 = 2;
      v17 = 2;
      if (v11 != 7 || v12 != 42)
      {
        goto LABEL_34;
      }

      sub_270769160(0xE3u);
      OUTLINED_FUNCTION_6_18();
      if (v35 || (sub_270769160(0xE7u), OUTLINED_FUNCTION_6_18(), v35))
      {
        sub_270769160(0xE0u);
        OUTLINED_FUNCTION_6_18();
        if (v35 || (sub_270769160(0xE4u), OUTLINED_FUNCTION_6_18(), v35))
        {
          sub_270769160(0xE2u);
          OUTLINED_FUNCTION_6_18();
          if (v35 || (sub_270769160(0xE6u), OUTLINED_FUNCTION_6_18(), v35))
          {
            swift_beginAccess();
            v18 = *(v3 + 24) + 1;
            do
            {
              v19 = v18;
              v18 = 1;
            }

            while (!v19);
            *(v3 + 24) = v19;
            sub_2707692E8(0, 0x2A0007u);
            *(a1 + 32) = 0;
            *a1 = 0u;
            *(a1 + 16) = 0u;

            return 0;
          }
        }
      }

      v16 = 0;
      v14 = 1;
      v17 = 2;
      break;
    default:
      v17 = 2;
      v16 = 0;
      break;
  }

  v37 = 2;
LABEL_34:
  v15 = v14;
  sub_2707692E8(v17, v11 | (v12 << 16));
LABEL_35:
  v21 = *(v3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
  if ((v21 & 8) != 0)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v20 = v37;
    goto LABEL_57;
  }

  if ((v21 & 0x20840) == 0 || v16 & 1 | ((sub_270769C3C(v11 | (v12 << 16)) & 1) == 0))
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((sub_2707686A8(v11 | (v12 << 16)) & 0x100) != 0)
  {
    if ((sub_2707686DC(v11 | (v12 << 16)) & 0x10000) != 0)
    {
      v20 = v37;
      if ((sub_270768714(v11 | (v12 << 16)) & 0x100) != 0)
      {
        if ((sub_270768580(v11, v12) & 0x100) != 0)
        {
          goto LABEL_57;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
        v27 = OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_7_16(v27, xmmword_2707A9CF0);
        sub_27076A300(v34);
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
        v27 = OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_7_16(v27, xmmword_2707A9CF0);
        sub_27076A030(v28);
      }

      *(v27 + 32) = v38;
      goto LABEL_57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
    v25 = OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_7_16(v25, xmmword_2707A9CF0);
    sub_270769D74(v26);
    *(v25 + 32) = v38;
    goto LABEL_42;
  }

  sub_270769CA0(&v38);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 328))(v22, v23);
  v20 = v37;
  switch(*(&v38 + 1) >> 62)
  {
    case 1:
      LODWORD(v24) = DWORD1(v38) - v38;
      if (__OFSUB__(DWORD1(v38), v38))
      {
        goto LABEL_71;
      }

      v24 = v24;
LABEL_50:
      if ((v24 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        JUMPOUT(0x270769AF8);
      }

      if (v24 >= 39)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

LABEL_53:
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v32 = OUTLINED_FUNCTION_9_13();
      *(v32 + 16) = xmmword_2707A9CF0;
      v33 = v38;
      *(v32 + 32) = v38;
      sub_270706C38(v33, *(&v33 + 1));
      sub_270708D74(v33, *(&v33 + 1));
      break;
    case 2:
      v29 = *(v38 + 16);
      v30 = *(v38 + 24);
      v31 = __OFSUB__(v30, v29);
      v24 = v30 - v29;
      if (!v31)
      {
        goto LABEL_50;
      }

      goto LABEL_72;
    case 3:
      goto LABEL_53;
    default:
      v24 = BYTE14(v38);
      goto LABEL_50;
  }

LABEL_57:
  if ((*(v3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_filterMask) & 8) != 0 && (v15 || v20 != 1))
  {
    v36 = sub_270769C3C(v13);

    if ((v36 & 1) == 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return v20 == 2 && v15 == 1;
    }
  }

  else
  {
  }

  sub_27070F5BC(a2, a1);
  return v20 == 2 && v15 == 1;
}

void sub_270769B08()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = sub_27076AE90();
  if (v2 != (v3 & 1))
  {
    v4 = v3;

    v5 = sub_2707A8420();
    v6 = sub_2707A8840();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218496;
      *(v7 + 4) = *(v1 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_serviceID);

      *(v7 + 12) = 1024;
      *(v7 + 14) = v2;
      *(v7 + 18) = 1024;
      *(v7 + 20) = v4 & 1;
      _os_log_impl(&dword_270703000, v5, v6, "%llx: Caps Lock: %{BOOL}d -> %{BOOL}d", v7, 0x18u);
      MEMORY[0x2743A9010](v7, -1, -1);
    }

    else
    {
    }

    *(v1 + 16) = v4 & 1;
  }
}

uint64_t sub_270769C3C(unsigned int a1)
{
  if ((a1 & 0xFF00FFFF) != 7 || a1 - 15204352 < 0xFF190000)
  {
    return 0;
  }

  v2 = HIWORD(a1);
  v3 = sub_270726798(BYTE2(a1), &unk_288076A00);
  result = 1;
  if (v2 != 57 && !v3)
  {
    return 0;
  }

  return result;
}

double sub_270769CA0@<D0>(__int128 *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_27076B574;
  *(v5 + 24) = v1;
  v7[0] = v4;
  v7[1] = sub_27076B60C;
  v7[2] = v5;
  v7[3] = sub_27076B614;
  v7[4] = 0;
  v7[5] = sub_27076B62C;
  v7[6] = 0;

  return sub_2707A41F8(v7, a1);
}

double sub_270769D74@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B668;
  *(v4 + 24) = v1;
  v5 = qword_280829458;
  v25 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_20:
    swift_once();
  }

  v26 = xmmword_280829AA0;
  sub_270706C38(xmmword_280829AA0, *(&xmmword_280829AA0 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(2u);
  sub_270708D74(v26, *(&v26 + 1));
  *&v27 = HIDReport.init(bitCount:id:)(v6, 2);
  *(&v27 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570();
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v22 = *(v25 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v22 & 8) != 0 || (v12 = v14, v10 = v16, (v22 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 12)
        {
          v12 = v14;
          v10 = v16;
          if ((v20 - 1301) >= 0xFAECu)
          {
            ConsumerReport.update(with:)(v20);
            v12 = v14;
            v10 = v16;
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570();
  sub_27073F570();

  result = *&v27;
  *a1 = v27;
  return result;
}

double sub_27076A030@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B670;
  *(v4 + 24) = v1;
  v5 = qword_280829430;
  v26 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_24:
    swift_once();
  }

  v27 = xmmword_280829778;
  sub_270706C38(xmmword_280829778, *(&xmmword_280829778 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(4u);
  sub_270708D74(v27, *(&v27 + 1));
  *&v28 = HIDReport.init(bitCount:id:)(v6, 4);
  *(&v28 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570();
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v22 = *(v26 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v22 & 8) != 0 || (v12 = v14, v10 = v16, (v22 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 255)
        {
          v12 = v14;
          v10 = v16;
          if (v20 <= 0xFF)
          {
            v23 = v20 - 3 > 0xBD || (v20 - 3) >= 3u;
            v12 = v14;
            v10 = v16;
            if (!v23)
            {
              AppleVendorTopCaseReport.update(with:)(v20);
              v12 = v14;
              v10 = v16;
            }
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570();
  sub_27073F570();

  result = *&v28;
  *a1 = v28;
  return result;
}

double sub_27076A300@<D0>(_OWORD *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27076B678;
  *(v4 + 24) = v1;
  v5 = qword_280829448;
  v26 = v1;
  swift_retain_n();

  if (v5 != -1)
  {
LABEL_25:
    swift_once();
  }

  v27 = xmmword_280829828;
  sub_270706C38(xmmword_280829828, *(&xmmword_280829828 + 1));
  v6 = HIDReportDescriptor.reportBitCount(for:)(3u);
  sub_270708D74(v27, *(&v27 + 1));
  *&v28 = HIDReport.init(bitCount:id:)(v6, 3);
  *(&v28 + 1) = v7;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v10;
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = (v13 - 1) & v13;
    v17 = __clz(__rbit64(v13)) | (v14 << 6);
    v18 = (*(v3 + 48) + 4 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v3 + 56) + v17);

    sub_27073F570();
    v12 = v14;
    v10 = v16;
    if (v21 == 2)
    {
      v22 = *(v26 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
      if (v22 & 8) != 0 || (v12 = v14, v10 = v16, (v22 & 0x20840) != 0) && (v12 = v14, v10 = v16, (sub_270769C3C(v19 | (v20 << 16))))
      {
        v12 = v14;
        v10 = v16;
        if (v19 == 65281)
        {
          v12 = v14;
          v10 = v16;
          if (v20 <= 0xFF)
          {
            v12 = v14;
            v10 = v16;
            if (((v20 - 49) >> 4) >= 0xFFDu)
            {
              v23 = v20 > 0x21 || ((1 << v20) & 0x30003001ELL) == 0;
              v12 = v14;
              v10 = v16;
              if (!v23)
              {
                AppleVendorKeyboardReport.update(with:)(v20);
                v12 = v14;
                v10 = v16;
              }
            }
          }
        }
      }
    }
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v3 + 64 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  sub_27073F570();
  sub_27073F570();

  result = *&v28;
  *a1 = v28;
  return result;
}

uint64_t sub_27076A5FC(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
    if (v4 & 8) != 0 || (v4 & 0x20840) != 0 && (sub_270769C3C(a1))
    {
      v5 = sub_270768580(a1, HIWORD(a1));
      v6 = (v5 >> 8) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
      v6 = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 1;
  }

  return v5 | (v6 << 8);
}

uint64_t sub_27076A694(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 != 2)
  {
    v6 = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x20840) != 0)
    {
      v5 = sub_270769C3C(a1);
      v6 = 0;
      v7 = 1;
      if ((v5 & 1) == 0 || (a1 & 0xFF00FFFF) != 0xFF)
      {
        return v6 | (v7 << 8);
      }

      goto LABEL_9;
    }

LABEL_17:
    v6 = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  if ((a1 & 0xFF00FFFF) != 0xFF)
  {
    goto LABEL_17;
  }

LABEL_9:
  v8 = a1 - 12648448;
  v9 = BYTE2(a1);
  v10 = BYTE2(a1) - 6;
  v12 = __CFADD__(v10, 3);
  v11 = v10 < 0xFFFFFFFD;
  if (!v12)
  {
    v9 = 0;
  }

  v12 = v8 >= 0xFF420000;
  if (v8 >= 0xFF420000)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v12 || v11;
  return v6 | (v7 << 8);
}

uint64_t sub_27076A76C(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
    if (v4 & 8) != 0 || (v4 & 0x20840) != 0 && (sub_270769C3C(a1))
    {
      v5 = HIWORD(a1);
      if (HIWORD(a1) > 0x514u)
      {
        v5 = 0;
      }

      if (a1 >= 0x10000 && a1 == 12)
      {
        v7 = HIWORD(a1) > 0x514u;
      }

      else
      {
        v5 = 0;
        v7 = 1;
      }
    }

    else
    {
      v5 = 0;
      v7 = 1;
    }
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  return v5 | (v7 << 16);
}

uint64_t sub_27076A818(unsigned int a1, char a2, uint64_t a3)
{
  if (a2 != 2)
  {
    LOBYTE(v6) = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  v4 = *(a3 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask);
  if ((v4 & 8) != 0)
  {
    if (a1 >= 0x10000 && (a1 & 0xFF00FFFF) == 7)
    {
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v6) = 0;
    v7 = 1;
    return v6 | (v7 << 8);
  }

  if ((v4 & 0x20840) == 0)
  {
    goto LABEL_15;
  }

  v5 = sub_270769C3C(a1);
  LOBYTE(v6) = 0;
  v7 = 1;
  if ((v5 & 1) != 0 && a1 >= 0x10000 && (a1 & 0xFF00FFFF) == 7)
  {
LABEL_16:
    v6 = HIWORD(a1);
    v7 = a1 >> 19 > 0x1C;
    if (a1 >> 19 > 0x1C)
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6 | (v7 << 8);
}

uint64_t KeyboardFilter.updateCopyMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_copyMask) = a2;
  if ((a1 & 8) != 0)
  {
    v4 = MEMORY[0x277D84F90];
    if ((a1 & 0x20000) != 0 || (a2 & 0x20000) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

  if ((a1 & 0x20000) != 0)
  {
    if ((a2 & 8) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((a2 & 8) == 0)
  {
    if ((a2 & 0x20000) == 0)
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 1;
LABEL_11:
  v6 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  OUTLINED_FUNCTION_8_15();
  if (!*(*(v3 + v6) + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v23 = v5;
  if (qword_280829440 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = xmmword_2808297D8;
  sub_270706C38(xmmword_2808297D8, *(&xmmword_2808297D8 + 1));
  v7 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v24, *(&v24 + 1));
  v8 = 0;
  v27 = HIDReport.init(bitCount:id:)(v7, 1);
  v28 = v9;
  do
  {
    v10 = byte_288076A00[v8 + 32];
    sub_270769160(v10);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v12 = v10 + 8;
      v13 = 0;
      v14 = v27;
      switch(v28 >> 62)
      {
        case 1uLL:
          v13 = v27;
          break;
        case 2uLL:
          v13 = *(v27 + 16);
          break;
        default:
          break;
      }

      if (__OFADD__(v13, v12 >> 3))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = v12 >> 3;
      sub_2707A82E0();
      switch(v28 >> 62)
      {
        case 1uLL:
          goto LABEL_22;
        case 2uLL:
          v14 = *(v27 + 16);
LABEL_22:
          if (!__OFADD__(v14, v15))
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        default:
LABEL_23:
          sub_2707A82E0();
          sub_2707A82F0();
          break;
      }
    }

    ++v8;
  }

  while (v8 != 8);
  if (v23)
  {
    sub_270769160(0x39u);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      KeyboardReport.update(with:)(0x39u);
    }

    if (qword_280829430 != -1)
    {
      swift_once();
    }

    v25 = xmmword_280829778;
    sub_270706C38(xmmword_280829778, *(&xmmword_280829778 + 1));
    v16 = HIDReportDescriptor.reportBitCount(for:)(4u);
    sub_270708D74(v25, *(&v25 + 1));
    v17 = HIDReport.init(bitCount:id:)(v16, 4);
    v19 = v18;
    v26 = v18;
    sub_270769264(3u);
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      AppleVendorTopCaseReport.update(with:)(3u);
      v19 = v26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707ADD30;
    *(v4 + 32) = v27;
    *(v4 + 40) = v28;
    *(v4 + 48) = v17;
    *(v4 + 56) = v19;
    sub_270706C38(v27, v28);
    sub_270706C38(v17, v19);
    sub_270708D74(v17, v19);
    v20 = v27;
    v21 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
    v4 = OUTLINED_FUNCTION_9_13();
    *(v4 + 16) = xmmword_2707A9CF0;
    *(v4 + 32) = v27;
    *(v4 + 40) = v28;
    sub_270706C38(v27, v28);
    v20 = v27;
    v21 = v28;
  }

  sub_270708D74(v20, v21);
  return v4;
}

uint64_t KeyboardFilter.updateFilterMask(oldValue:newValue:)(char a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_filterMask) = a2;
  v3 = MEMORY[0x277D84F90];
  if ((a1 & 8) != 0)
  {
    return v3;
  }

  if ((a2 & 8) == 0)
  {
    return v3;
  }

  v4 = v2;
  v5 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter__keyStates;
  OUTLINED_FUNCTION_8_15();
  if (!*(*(v4 + v5) + 16))
  {
    return v3;
  }

  v20 = v3;
  *(v4 + 32) = mach_absolute_time();
  v6 = *(v4 + v5);
  v21 = v3;
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_12:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    if (*(*(v6 + 56) + v15) == 2)
    {
      v16 = (*(v6 + 48) + 4 * v15);
      v17 = v16[1];
      v18 = *v16;
      result = sub_270769C3C(v18 | (v17 << 16));
      if ((result & 1) == 0)
      {
        sub_2707692E8(0, v18 | (v17 << 16));
        IOHIDEventCreateKeyboardEvent();
        v19 = IOHIDEventSetSenderID();
        MEMORY[0x2743A7C80](v19);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2707A8720();
        }

        result = sub_2707A8740();
        v20 = v21;
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v20;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27076AE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_service + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(v5, 0xD000000000000010, 0x80000002707B4BB0, ObjectType, v1);
  if (v5[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_27076B680(v5);
    return 0;
  }

  return result;
}

uint64_t KeyboardFilter.deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID14KeyboardFilter_logger;
  v2 = sub_2707A8440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t KeyboardFilter.__deallocating_deinit()
{
  KeyboardFilter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_27076B0B4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_270713F5C(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_27076B0F8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2707A8720();
  }

  return result;
}

uint64_t sub_27076B130(uint64_t result)
{
  if ((result & 0x100) == 0)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_27076B144(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_2707A8AB0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for KeyboardFilter()
{
  result = qword_280829E30;
  if (!qword_280829E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27076B258()
{
  result = sub_2707A8440();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KeyboardFilter.KeyState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27076B424);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27076B460()
{
  result = qword_280829E40;
  if (!qword_280829E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E40);
  }

  return result;
}

uint64_t sub_27076B4B4@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A5FC(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27076B4E4@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A694(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27076B514@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_27076A76C(a1, a2, a3);
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_27076B544@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27076A818(a1, a2, a3);
  *a4 = result;
  a4[1] = BYTE1(result) & 1;
  return result;
}

void *sub_27076B57C@<X0>(unsigned int *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v6, *a1, *(a1 + 4));
  v5 = BYTE1(v6);
  *a3 = v6;
  a3[1] = v5;
  return result;
}

uint64_t sub_27076B5D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27076B62C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27076B130(*a1 | (a1[1] << 8));
  *a2 = result;
  return result;
}

uint64_t sub_27076B680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_35(void *a1)
{
  v1 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_27()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_21@<X0>(unsigned __int8 a1@<W1>, int a2@<W8>)
{
  v2 = a1;
  if (a2)
  {
    v2 = 0;
  }

  return v2 | (a2 << 8);
}

uint64_t OUTLINED_FUNCTION_5_18@<X0>(unsigned __int16 a1@<W1>, int a2@<W8>)
{
  v2 = a1;
  if (a2)
  {
    v2 = 0;
  }

  return v2 | (a2 << 16);
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return swift_allocObject();
}

uint64_t sub_27076B804(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a3, 16))
  {
    __break(1u);
  }

  else if (a3 + 16 >= a3)
  {
    v3[3] = MEMORY[0x277D83EF0];
    v3[4] = MEMORY[0x277CC9EB0];
    v3[0] = result;
    v3[1] = result + 16;
    __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D83EF0]);
    sub_2707A82C0();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  __break(1u);
  return result;
}

uint64_t HIDReport.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829DD0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - v8;
  v10 = sub_2707A8410();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8400();
  if ((a1 & 7) != 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_0_36();
    __break(1u);
    JUMPOUT(0x27076BAD0);
  }

  v15 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      OUTLINED_FUNCTION_5();
      if (v20)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_8;
    default:
LABEL_3:
      if (__OFADD__(a1, 8 * v15))
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }

      v16 = sub_2707A82D0();
      v18 = v17;
      sub_270706C38(v16, v17);
      sub_270750160(v16, v18, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
LABEL_9:
        __break(1u);
        goto LABEL_10;
      }

      (*(v11 + 8))(v14, v10);
      sub_270708D74(v16, v18);
      return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t HIDReport.subscript.setter(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    OUTLINED_FUNCTION_0_36();
    __break(1u);
    JUMPOUT(0x27076BC98);
  }

  v3 = v2;
  v4 = *(v2 + 8) >> 62;
  v6 = 0;
  switch(v4)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_5();
      if (v20)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_7;
    default:
LABEL_3:
      v7 = __OFADD__(a2, 8 * v6);
      v8 = a2 + 8 * v6;
      if (v7)
      {
LABEL_7:
        __break(1u);
      }

      v9 = v8 >> 3;
      v21 = sub_2707A83F0();
      v22 = v10;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      sub_27076B804(&v21, v3, v9);
      v18 = sub_2707A8410();
      return (*(*(v18 - 8) + 8))(a1, v18);
  }
}

{
  v4 = *v2;
  v5 = 0;
  switch(v2[1] >> 62)
  {
    case 1uLL:
      v5 = v4;
      goto LABEL_6;
    case 2uLL:
      v5 = *(v4 + 16);
LABEL_6:
      if ((v5 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    default:
LABEL_2:
      if (__OFADD__(a2, 8 * v5))
      {
        __break(1u);
        JUMPOUT(0x27076C598);
      }

      return result;
  }

  sub_2707A82E0();

  return sub_2707A82F0();
}

void (*HIDReport.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_2707A8410();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  HIDReport.subscript.getter(a2, *(v2 + 8), v9);
  return sub_27076BD90;
}

void sub_27076BD90(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    HIDReport.subscript.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    HIDReport.subscript.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_2707A8C70();
}

CFStringRef HIDVirtualEventService.logDescription.getter()
{
  result = CFCopyDescription(v0);
  if (result)
  {
    v2 = result;
    v3 = sub_2707A85D0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_27076BEDC()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_27076BF18(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_27076BF60(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 delegate];
  return sub_27076BFBC;
}

uint64_t sub_27076BFBC(uint64_t a1)
{
  [*(a1 + 8) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_27076C01C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2707325D0;
  v5[3] = &block_descriptor_2;
  v3 = _Block_copy(v5);

  [v2 setCancelHandler_];
  _Block_release(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void HIDVirtualService.setClientCapsLockEnaged(_:client:)(int a1, id a2)
{
  v4 = [a2 serviceID];
  swift_beginAccess();
  if (v4 == *(v2 + 48))
  {
    v5 = sub_2707A8760();
    v6 = sub_2707A85C0();
    [a2 setProperty:v5 forKey:v6];
  }

  else
  {
    sub_27076C3E8();
    sub_2707A8B00();

    [a2 serviceID];
    v7 = sub_2707A8E70();
    MEMORY[0x2743A7BE0](v7);

    MEMORY[0x2743A7BE0](0x27203D212027, 0xE600000000000000);
    v8 = sub_2707A8E70();
    MEMORY[0x2743A7BE0](v8);

    MEMORY[0x2743A7BE0](39, 0xE100000000000000);
    sub_27077F02C(-6708, 0xD000000000000018, 0x80000002707B4C30);
    swift_willThrow();
  }
}

unint64_t sub_27076C3E8()
{
  result = qword_280829E48;
  if (!qword_280829E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280829E48);
  }

  return result;
}

BOOL HIDReport.subscript.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      v3 = a2;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a2 + 16);
LABEL_6:
      if ((v3 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_8;
    default:
LABEL_2:
      if (__OFADD__(a1, 8 * v3))
      {
LABEL_8:
        __break(1u);
        JUMPOUT(0x27076C4C0);
      }

      return (sub_2707A82E0() & (1 << (a1 & 7))) != 0;
  }
}

uint64_t (*HIDReport.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = HIDReport.subscript.getter(a2, *v2, *(v2 + 8));
  return sub_27076C600;
}

uint64_t HIDReport.init(bitCount:id:)(uint64_t a1, char a2)
{
  if ((a1 & 7) != 0)
  {
    v4 = (a1 >> 3) + 1;
  }

  else
  {
    v4 = a1 >> 3;
  }

  v7[0] = MEMORY[0x2743A78E0](v4);
  v7[1] = v5;
  sub_27076EA88(v7, 0);
  result = v7[0];
  if (a1 < 8)
  {
    if (!a2)
    {
      return result;
    }

    __break(1u);
  }

  sub_2707A82F0();
  return v7[0];
}

uint64_t HIDReport.reportID.getter(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = a1;
  switch(v3)
  {
    case 1uLL:
      a1 = a1;
      v5 = v4 >> 32;
      goto LABEL_6;
    case 2uLL:
      a1 = *(a1 + 16);
      v5 = *(v4 + 24);
LABEL_6:
      if (a1 == v5)
      {
        return 0;
      }

      return sub_2707A82E0();
    case 3uLL:
      return 0;
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
        return sub_2707A82E0();
      }

      else
      {
        return 0;
      }
  }
}

BOOL HIDReport.hasStorage<A>(for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_11;
      }

      v5 = HIDWORD(a3) - a3;
LABEL_6:
      if ((v5 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_10;
      }

LABEL_7:
      v8 = sub_2707A8C00();
      if (__OFADD__(a2, v8))
      {
LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27076C8D0);
      }

      return a2 + v8 <= 8 * v5;
    case 2uLL:
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
      v5 = v6 - v7;
      if (!__OFSUB__(v6, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_7;
    default:
      v5 = BYTE6(a4);
      goto LABEL_6;
  }
}

BOOL HIDReport.subscript.getter(Swift::Int a1)
{
  v1 = a1;
  HIDReport.offset(for:)(a1);
  OUTLINED_FUNCTION_12_7();
  return (sub_2707A82E0() & (1 << (v1 & 7))) != 0;
}

unint64_t HIDReport.subscript.setter(unint64_t result, Swift::Int a2)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    HIDReport.offset(for:)(a2);
    sub_2707A82E0();

    return sub_2707A82F0();
  }

  return result;
}

uint64_t HIDReport.initialize(from:)()
{
  OUTLINED_FUNCTION_9_5();
  v4 = 0;
  switch(v3)
  {
    case 1:
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        JUMPOUT(0x27076CBF0);
      }

      v4 = HIDWORD(v2) - v2;
LABEL_6:
      v8 = *v1;
      v9 = v1[1];
      v10 = v9 >> 62;
      switch(v9 >> 62)
      {
        case 1uLL:
          LODWORD(v11) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_41;
          }

          v11 = v11;
LABEL_15:
          if (v4 >= v11)
          {
            goto LABEL_16;
          }

          return 0;
        case 2uLL:
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          v7 = __OFSUB__(v12, v13);
          v11 = v12 - v13;
          if (!v7)
          {
            goto LABEL_15;
          }

          __break(1u);
LABEL_11:
          if (v4 < 0)
          {
            return 0;
          }

LABEL_16:
          v14 = 1;
          v15 = 0;
          switch(v3)
          {
            case 1:
              v16 = v2;
              v17 = v2 >> 32;
              goto LABEL_21;
            case 2:
              v16 = *(v2 + 16);
              v17 = *(v2 + 24);
LABEL_21:
              if (v16 == v17)
              {
                goto LABEL_22;
              }

              goto LABEL_23;
            case 3:
              goto LABEL_24;
            default:
              if ((v0 & 0xFF000000000000) != 0)
              {
LABEL_23:
                v15 = sub_2707A82E0();
                v14 = 0;
                v8 = *v1;
                v9 = v1[1];
                v10 = v9 >> 62;
              }

              else
              {
LABEL_22:
                v15 = 0;
              }

              break;
          }

          break;
        case 3uLL:
          goto LABEL_11;
        default:
          v11 = BYTE6(v9);
          goto LABEL_15;
      }

      break;
    case 2:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    case 3:
      goto LABEL_6;
    default:
      v4 = BYTE6(v0);
      goto LABEL_6;
  }

LABEL_24:
  switch(v10)
  {
    case 1uLL:
      v18 = v8;
      v19 = v8 >> 32;
      goto LABEL_29;
    case 2uLL:
      v18 = *(v8 + 16);
      v19 = *(v8 + 24);
LABEL_29:
      if (v18 == v19)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    case 3uLL:
      goto LABEL_30;
    default:
      if ((v9 & 0xFF000000000000) == 0)
      {
LABEL_30:
        if ((v14 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_38;
      }

LABEL_32:
      if (v15 == sub_2707A82E0())
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v8 = *v1;
        v9 = v1[1];
LABEL_38:
        sub_270706C38(v2, v0);
        sub_270708D74(v8, v9);
        *v1 = v2;
        v1[1] = v0;
        return 1;
      }

      return 0;
  }
}

uint64_t HIDReport.startIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
        JUMPOUT(0x27076CC84);
      }

      return result;
    default:
      return OUTLINED_FUNCTION_4_20(v2);
  }

  return OUTLINED_FUNCTION_4_20(v2);
}

uint64_t HIDReport.storage.setter()
{
  OUTLINED_FUNCTION_9_5();
  result = sub_270708D74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t HIDReport.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  (*(v4 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  OUTLINED_FUNCTION_12_7();
  v6 = sub_2707A83A0();
  (*(v4 + 8))(a1, a2);
  return v6;
}

uint64_t sub_27076CDEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDReport.reportID.getter(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t (*HIDReport.reportID.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = HIDReport.reportID.getter(*v1, *(v1 + 8));
  return sub_27076CE68;
}

uint64_t static HIDReport.< infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v23 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x27076CFBCLL);
      }

      v24 = a1;
      v25 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v25, v26);
      v16 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = v24;
      v18 = v23;
      goto LABEL_9;
    case 2uLL:
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v14, v15);
      v16 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = v13;
      v18 = v12;
LABEL_9:
      v21 = sub_27076E858(v17, v18, v16, a3, a4);
      return v21 & 1;
    case 3uLL:
      v19 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v19, v20);
      v11 = 0;
      v10 = 0;
      goto LABEL_5;
    default:
      v8 = OUTLINED_FUNCTION_7_5();
      sub_270706C38(v8, v9);
      v10 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = a1;
LABEL_5:
      v21 = sub_27076E9DC(v11, v10, a3, a4);
      return v21 & 1;
  }
}

uint64_t sub_27076CFCC@<X0>(void *__s1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  __s2[2] = *MEMORY[0x277D85DE8];
  switch(a4 >> 62)
  {
    case 1uLL:
      v11 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v10 = a3;
      goto LABEL_9;
    case 2uLL:
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);
LABEL_9:
      result = sub_27076E924(v10, v11, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1, a2);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    case 3uLL:
      memset(__s2, 0, 14);
      v9 = __s2;
      goto LABEL_5;
    default:
      __s2[0] = a3;
      LOWORD(__s2[1]) = a4;
      BYTE2(__s2[1]) = BYTE2(a4);
      BYTE3(__s2[1]) = BYTE3(a4);
      BYTE4(__s2[1]) = BYTE4(a4);
      BYTE5(__s2[1]) = BYTE5(a4);
      v9 = __s2 + BYTE6(a4);
LABEL_5:
      sub_27076D148(__s2, __s1, v9, a2, &v13);
      if (v5)
      {
LABEL_12:

        __break(1u);
        JUMPOUT(0x27076D138);
      }

      result = v13;
LABEL_10:
      *a5 = result & 1;
      return result;
  }
}

uint64_t sub_27076D148@<X0>(uint64_t __s2@<X0>, void *__s1@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (!__s2)
  {
    if (__s1)
    {
LABEL_18:
      __break(1u);
      return __s2;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__s1)
  {
    goto LABEL_17;
  }

  v6 = a4 - __s1;
  v7 = a3 - __s2;
  if (a3 - __s2 >= a4 - __s1)
  {
    v8 = a4 - __s1;
  }

  else
  {
    v8 = a3 - __s2;
  }

  __s2 = memcmp(__s1, __s2, v8);
  if (__s2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 < v7;
  }

  v10 = v9;
  if (__s2 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  *a5 = v11;
  return __s2;
}

uint64_t HIDReport.description.getter(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      return HIDReport.debugDescription.getter(a1, a2);
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27076D2F0);
      }

      if (v2 < 32)
      {
        return HIDReport.debugDescription.getter(a1, a2);
      }

      HIDReport.count.getter(a1, a2);
      v5 = sub_2707A8E70();
      MEMORY[0x2743A7BE0](0x7374696220, 0xE500000000000000);
      return v5;
  }
}

uint64_t HIDReport.debugDescription.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    case 3uLL:
      return result;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v5)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        JUMPOUT(0x27076D474);
      }

      if (v4 < 1)
      {
        return 0;
      }

      v6 = 0;
      v7 = 8 * v4;
      do
      {
        if (__OFADD__(v6, 8))
        {
          v8 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v6 + 8;
        }

        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        sub_27074A898();
        v9 = sub_2707A8680();
        v11 = v10;
        if (sub_2707A8630() <= 1)
        {
          MEMORY[0x2743A7BE0](v9, v11);

          v9 = 48;
          v11 = 0xE100000000000000;
        }

        MEMORY[0x2743A7BE0](v9, v11);

        v6 = v8;
      }

      while (v8 < v7);
      return 0;
  }
}

uint64_t HIDReport.hashValue.getter()
{
  sub_2707A8F60();
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV4hash4intoys6HasherVz_tF_0();
  return sub_2707A8FC0();
}

uint64_t sub_27076D508()
{
  sub_2707A8F60();
  _s12UniversalHID9HIDReportV4hash4intoys6HasherVz_tF_0();
  return sub_2707A8FC0();
}

Swift::Int HIDReport.subscript.getter(Swift::Int a1)
{
  v1 = HIDReport.offset(for:)(a1);
  OUTLINED_FUNCTION_12_7();
  result = HIDReport.offset(for:)(v2);
  if (result < v1)
  {
    __break(1u);
  }

  else
  {

    return sub_2707A82D0();
  }

  return result;
}

Swift::Int sub_27076D5C8@<X0>(Swift::Int *a1@<X1>, Swift::Int *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int sub_27076D5F8(uint64_t *a1, uint64_t a2, Swift::Int *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  sub_270706C38(*a1, v6);
  return HIDReport.subscript.setter(v5, v6, v3, v4);
}

Swift::Int HIDReport.subscript.setter(uint64_t a1, unint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v7 = HIDReport.offset(for:)(a3);
  result = HIDReport.offset(for:)(a4);
  if (result < v7)
  {
    __break(1u);
  }

  else
  {
    sub_27070F3C4(a1, a2);

    return sub_270708D74(a1, a2);
  }

  return result;
}

Swift::Int __swiftcall HIDReport.offset(for:)(Swift::Int a1)
{
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      break;
    case 2uLL:
      v3 = *(v1 + 16);
      break;
    default:
      break;
  }

  v4 = __OFADD__(v3, a1 >> 3);
  result = v3 + (a1 >> 3);
  if (v4)
  {
    __break(1u);
    JUMPOUT(0x27076D734);
  }

  return result;
}

void (*HIDReport.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = HIDReport.offset(for:)(a2);
  result = HIDReport.offset(for:)(a3);
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    *v7 = sub_2707A82D0();
    v7[1] = v10;
    return sub_27076D808;
  }

  return result;
}

void sub_27076D808(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = HIDReport.offset(for:)((*a1)[2]);
  v6 = HIDReport.offset(for:)(v4);
  if ((a2 & 1) == 0)
  {
    if (v6 >= v5)
    {
      v15 = OUTLINED_FUNCTION_2_22();
      sub_27070F3C4(v15, v16);
      v13 = OUTLINED_FUNCTION_2_22();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_2_22();
  sub_270706C38(v7, v8);
  v9 = OUTLINED_FUNCTION_2_22();
  sub_27070F3C4(v9, v10);
  v11 = OUTLINED_FUNCTION_2_22();
  sub_270708D74(v11, v12);
  v13 = *v3;
  v14 = v3[1];
LABEL_6:
  sub_270708D74(v13, v14);

  free(v3);
}

BOOL sub_27076D90C@<W0>(Swift::Int *a1@<X1>, _BOOL8 *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  return result;
}

unint64_t (*HIDReport.subscript.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();
  *(v3 + 8) = v4;
  *(v3 + 16) = v1;
  HIDReport.offset(for:)(v4);
  *v2 = (sub_2707A82E0() & (1 << (v0 & 7))) != 0;
  return sub_27076D9EC;
}

Swift::Int __swiftcall HIDReport.index(after:)(Swift::Int after)
{
  v2 = 0;
  switch(v1 >> 62)
  {
    case 3uLL:
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_6:
        __break(1u);
        JUMPOUT(0x27076DA80);
      }

LABEL_4:
      if (after >= 8 * v2)
      {
        goto LABEL_6;
      }

      return after + 1;
  }
}

uint64_t HIDReport.endIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 3uLL:
      return OUTLINED_FUNCTION_4_20(v2);
    default:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
        JUMPOUT(0x27076DAECLL);
      }

      return result;
  }

  return OUTLINED_FUNCTION_4_20(v2);
}

void HIDReport.indices.getter(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 2uLL:
      if ((*(a1 + 16) - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_3;
      }

      goto LABEL_7;
    case 3uLL:
      return;
    default:
LABEL_3:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
LABEL_6:
        __break(1u);
LABEL_7:
        __break(1u);
        JUMPOUT(0x27076DB9CLL);
      }

      if (8 * v3 < v2)
      {
        goto LABEL_6;
      }

      return;
  }
}

Swift::Void __swiftcall HIDReport.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  OUTLINED_FUNCTION_9_5();
  HIDReport.offset(for:)(v4);
  v5 = (sub_2707A82E0() & (1 << (v3 & 7))) != 0;
  HIDReport.offset(for:)(v2);
  v6 = (sub_2707A82E0() & (1 << (v2 & 7))) != 0;
  HIDReport.subscript.setter(v6, v3);

  HIDReport.subscript.setter(v5, v2);
}

unint64_t (*sub_27076DC70(void *a1, Swift::Int *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  HIDReport.offset(for:)(v4);
  LOBYTE(v4) = HIDReport.mask(for:)(v4);
  *a1 = (sub_2707A82E0() & v4) != 0;
  return sub_27076DD08;
}

void (*sub_27076DD44(void *a1, Swift::Int *a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v6 = *a2;
  v7 = a2[1];
  v5[2] = v2;
  v5[3] = v6;
  v5[4] = v7;
  v8 = HIDReport.offset(for:)(v6);
  result = HIDReport.offset(for:)(v7);
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    *v5 = sub_2707A82D0();
    v5[1] = v10;
    return sub_27076DE04;
  }

  return result;
}

void sub_27076DE04(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_270706C38(**a1, (*a1)[1]);
    OUTLINED_FUNCTION_7_17();
    sub_270708D74(*v2, v2[1]);
  }

  else
  {
    OUTLINED_FUNCTION_7_17();
  }

  free(v2);
}

Swift::Int sub_27076DE78@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, Swift::Int *a2@<X8>)
{
  result = sub_27076DEA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_27076DF10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27076DF40(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_27076DF40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    JUMPOUT(0x27076DFE4);
  }

  v6 = 0;
  v7 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = 8 * a3;
      v7 = a3 >> 32;
      goto LABEL_7;
    case 2uLL:
      v8 = *(a3 + 16);
      if ((v8 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_16;
      }

      v6 = 8 * v8;
      v7 = *(a3 + 24);
LABEL_7:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_14;
      }

LABEL_8:
      v9 = 8 * v7;
      if (result < v6 || v9 < result)
      {
        goto LABEL_15;
      }

      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v6 = 0;
      v7 = BYTE6(a4);
      goto LABEL_7;
  }
}

uint64_t sub_27076DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_27076E090(a1, a3, a4, a5);
  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  return sub_27076DF40(a1, a2, a4, a5);
}

uint64_t sub_27076E090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  v9 = 0;
  v10 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3;
      goto LABEL_15;
    case 2uLL:
      v9 = *(a3 + 16);
LABEL_15:
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
LABEL_17:
      v13 = v10;
LABEL_19:
      if ((v13 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_7:
      v14 = HIDReport.endIndex.getter(a3, a4);
      if (a2 < 8 * v13 || v14 < a2)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      result = a2 - a1;
      if (__OFSUB__(a2, a1))
      {
LABEL_23:
        __break(1u);
        JUMPOUT(0x27076E1B8);
      }

      return result;
    default:
LABEL_2:
      v11 = HIDReport.endIndex.getter(a3, a4);
      if (a1 >= 8 * v9 && v11 >= a1)
      {
        v13 = 0;
        switch(v4)
        {
          case 1:
            goto LABEL_17;
          case 2:
            v13 = *(a3 + 16);
            goto LABEL_19;
          default:
            goto LABEL_7;
        }
      }

      goto LABEL_21;
  }
}

uint64_t sub_27076E1D8@<X0>(uint64_t *a1@<X8>)
{
  result = HIDReport.startIndex.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_27076E204@<X0>(uint64_t *a1@<X8>)
{
  result = HIDReport.endIndex.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t (*sub_27076E230(void *a1, Swift::Int *a2))()
{
  v3 = *a2;
  HIDReport.offset(for:)(*a2);
  LOBYTE(v3) = HIDReport.mask(for:)(v3);
  *a1 = (sub_2707A82E0() & v3) != 0;
  return nullsub_1;
}

Swift::Int sub_27076E2C4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = HIDReport.subscript.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_27076E2F8(void *a1@<X8>)
{
  HIDReport.indices.getter(*v1, *(v1 + 8));
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_27076E358(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27076E380(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27076E3AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_27076E3C0@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = HIDReport.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_27076E3F0(uint64_t *result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *result;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v3);
LABEL_5:
      if ((v5 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_6:
      if (v4 >= 8 * v5)
      {
LABEL_9:
        __break(1u);
        JUMPOUT(0x27076E464);
      }

      *result = v4 + 1;
      return result;
  }
}

uint64_t sub_27076E474@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27076E4A4(*a1, *v2, *(v2 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_27076E4A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    JUMPOUT(0x27076E548);
  }

  v5 = 0;
  v6 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      v5 = 8 * a2;
      v6 = a2 >> 32;
      goto LABEL_7;
    case 2uLL:
      v7 = *(a2 + 16);
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_17;
      }

      v5 = 8 * v7;
      v6 = *(a2 + 24);
LABEL_7:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_15;
      }

LABEL_8:
      v8 = 8 * v6;
      if (result < v5 || result >= v8)
      {
        goto LABEL_16;
      }

      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v5 = 0;
      v6 = BYTE6(a3);
      goto LABEL_7;
  }
}

uint64_t *sub_27076E558(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    JUMPOUT(0x27076E608);
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = 0;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v5 = 8 * v3;
      v6 = v3 >> 32;
      goto LABEL_7;
    case 2uLL:
      v7 = *(v3 + 16);
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_17;
      }

      v5 = 8 * v7;
      v6 = *(v3 + 24);
LABEL_7:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_15;
      }

LABEL_8:
      v8 = 8 * v6;
      if (v2 < v5 || v2 >= v8)
      {
        goto LABEL_16;
      }

      *result = v2;
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v5 = 0;
      v6 = BYTE6(v4);
      goto LABEL_7;
  }
}

uint64_t sub_27076E618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_27076DFF8(*a1, a2, *a3, *v4, *(v4 + 8));
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void sub_27076E654(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      goto LABEL_5;
    case 2uLL:
      v4 = *(v2 + 16);
LABEL_5:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        JUMPOUT(0x27076E6B4);
      }

      return;
    default:
      break;
  }

  a1[2] = 8 * v4;
}

uint64_t _s12UniversalHID9HIDReportV5countSivg_0(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    case 2uLL:
      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 3uLL:
      return OUTLINED_FUNCTION_4_20(v2);
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_8:
        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x27076E758);
      }

      return OUTLINED_FUNCTION_4_20(v2);
  }
}

void *sub_27076E770(uint64_t a1, unint64_t a2)
{
  v4 = sub_27076F204(a1, a2);
  sub_270708D74(a1, a2);
  return v4;
}

BOOL HIDReport.hasStorage(for:at:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 2uLL:
      if (!__OFSUB__(*(a2 + 24), *(a2 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_7;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v4)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27076E848);
      }

LABEL_7:
      if (__OFADD__(a1, 1))
      {
        goto LABEL_9;
      }

      return a1 + 1 <= 8 * v3;
  }
}

uint64_t sub_27076E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2707A81F0();
  v11 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_2707A8200();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_27076CFCC(v11, v17, a4, a5, &v19);
  sub_270708D74(a4, a5);
  if (!v5)
  {
    v18 = v19;
  }

  return v18 & 1;
}

uint64_t sub_27076E924(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_2707A81F0();
  v11 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_2707A8200();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_27076D148(v11, a4, v17, a5, &v19);
  if (!v5)
  {
    v18 = v19;
  }

  return v18 & 1;
}

uint64_t sub_27076E9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  sub_27076CFCC(&__s1, &__s1 + BYTE6(a2), a3, a4, &v9);
  sub_270708D74(a3, a4);
  if (!v4)
  {
    v7 = v9;
  }

  return v7 & 1;
}

uint64_t *sub_27076EA88(uint64_t *result, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:

      sub_270708D74(v3, v2);
      __b = v3;
      v22 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      result = sub_27076ED14(&__b, a2);
      v6 = __b;
      v7 = v22 | 0x4000000000000000;
      goto LABEL_4;
    case 2uLL:

      sub_270708D74(v3, v2);
      __b = v3;
      v22 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      sub_2707A8270();
      v9 = v22;
      v10 = *(__b + 16);
      v11 = *(__b + 24);
      v12 = sub_2707A81F0();
      if (!v12)
      {
        __break(1u);
        JUMPOUT(0x27076ED04);
      }

      v13 = v12;
      v14 = sub_2707A8210();
      v15 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v16 = __OFSUB__(v11, v10);
      v17 = v11 - v10;
      if (v16)
      {
        goto LABEL_14;
      }

      v18 = sub_2707A8200();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      result = memset((v13 + v15), a2, v19);
      *v5 = __b;
      v5[1] = v9 | 0x8000000000000000;
      return result;
    case 3uLL:
      return result;
    default:
      sub_270708D74(v3, v2);
      __b = v3;
      LOWORD(v22) = v2;
      BYTE2(v22) = BYTE2(v2);
      BYTE3(v22) = BYTE3(v2);
      BYTE4(v22) = BYTE4(v2);
      BYTE5(v22) = BYTE5(v2);
      BYTE6(v22) = BYTE6(v2);
      result = memset(&__b, a2, BYTE6(v2));
      v6 = __b;
      v7 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
LABEL_4:
      *v5 = v6;
      v5[1] = v7;
      return result;
  }
}

uint64_t sub_27076ED14(int *a1, int a2)
{
  result = sub_2707A8290();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2707A81F0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_2707A8210();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_2707A8200();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

unint64_t sub_27076EDBC()
{
  result = qword_280829E50;
  if (!qword_280829E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E50);
  }

  return result;
}

unint64_t sub_27076EE18()
{
  result = qword_280829E58;
  if (!qword_280829E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E58);
  }

  return result;
}

unint64_t sub_27076EE70()
{
  result = qword_280829E60;
  if (!qword_280829E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E60);
  }

  return result;
}

unint64_t sub_27076EEC4()
{
  result = qword_280829E68;
  if (!qword_280829E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E68);
  }

  return result;
}

unint64_t sub_27076EF4C()
{
  result = qword_280829E80;
  if (!qword_280829E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E80);
  }

  return result;
}

unint64_t sub_27076EFA4()
{
  result = qword_280829E88;
  if (!qword_280829E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E88);
  }

  return result;
}

unint64_t sub_27076EFFC()
{
  result = qword_280829E90;
  if (!qword_280829E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829E90);
  }

  return result;
}

uint64_t sub_27076F0C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829E78);
    sub_27076EF4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27076F144()
{
  result = qword_280829EA8;
  if (!qword_280829EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EA8);
  }

  return result;
}

void *sub_27076F204(uint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_12;
      }

      v5 = v5;
LABEL_6:
      if ((v5 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27076F304);
      }

      if (v5)
      {
        v9 = 8 * v5;
        v2 = sub_270770CFC(8 * v5, 0);
        sub_270706C38(a1, a2);
        v10 = sub_270770038(v12, (v2 + 4), v9, a1, a2);
        sub_270708D74(v12[0], v12[1]);
        if (v10 != v9)
        {
          goto LABEL_11;
        }
      }

      return v2;
    case 2uLL:
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      return v2;
    default:
      v5 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27076F314(unint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_37;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_37;
  }

  if (a3 < 0)
  {
    goto LABEL_47;
  }

  v26 = a2;
  v22 = a3;
  v23 = a1;
  v7 = 0;
  v8 = 0;
  v9 = a4;
  v39 = a4 >> 32;
  v37 = a4 >> 8;
  v38 = BYTE6(a5);
  v35 = a4 >> 24;
  v36 = a4 >> 16;
  v33 = a4 >> 40;
  v34 = HIDWORD(a4);
  v31 = HIBYTE(a4);
  v32 = HIWORD(a4);
  v29 = a5 >> 16;
  v30 = a5 >> 8;
  v27 = HIDWORD(a5);
  v28 = a5 >> 24;
LABEL_5:
  if (__OFADD__(v8, 1))
  {
    goto LABEL_46;
  }

  if (v7 > 2)
  {
    a3 = v8;
    goto LABEL_35;
  }

  v24 = v8;
  v25 = v8 + 1;
  while (2)
  {
    v10 = 0;
    switch(a5 >> 62)
    {
      case 1uLL:
        v10 = a4;
        break;
      case 2uLL:
        v10 = *(a4 + 16);
        break;
      default:
        break;
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    switch(a5 >> 62)
    {
      case 1uLL:
        if (v11 < a4 || v11 >= v39)
        {
          goto LABEL_42;
        }

        v18 = sub_2707A81F0();
        if (!v18)
        {
          goto LABEL_49;
        }

        v14 = v18;
        v19 = sub_2707A8210();
        v16 = v11 - v19;
        if (!__OFSUB__(v11, v19))
        {
          goto LABEL_28;
        }

        goto LABEL_44;
      case 2uLL:
        if (v11 < *(a4 + 16))
        {
          goto LABEL_41;
        }

        if (v11 >= *(a4 + 24))
        {
          goto LABEL_43;
        }

        v13 = sub_2707A81F0();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_2707A8210();
        v16 = v11 - v15;
        if (__OFSUB__(v11, v15))
        {
          goto LABEL_45;
        }

LABEL_28:
        v12 = *(v14 + v16);
LABEL_29:
        if ((v12 & (1 << (v7 & 7))) == 0)
        {
          if (++v7 == 3)
          {
            a3 = v24;
LABEL_35:
            a1 = v23;
            goto LABEL_37;
          }

          continue;
        }

        v20 = v7 + 1;
        *v26++ = v7++;
        v8 = v25;
        if (v25 != v22)
        {
          goto LABEL_5;
        }

        v7 = v20;
        a3 = v22;
        a1 = v23;
LABEL_37:
        *a1 = a4;
        a1[1] = a5;
        a1[2] = v7;
        return a3;
      case 3uLL:
        goto LABEL_48;
      default:
        if (v11 >= v38)
        {
          goto LABEL_40;
        }

        v40[0] = v9;
        v40[1] = v37;
        v40[2] = v36;
        v40[3] = v35;
        v40[4] = v34;
        v40[5] = v33;
        v40[6] = v32;
        v40[7] = v31;
        v40[8] = a5;
        v40[9] = v30;
        v40[10] = v29;
        v40[11] = v28;
        v40[12] = v27;
        v40[13] = BYTE5(a5);
        v12 = v40[v11];
        goto LABEL_29;
    }
  }
}

uint64_t sub_27076F634(uint64_t result, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_16:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (2)
    {
      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        if (v10 > 3)
        {
          v8 = v11;
        }

        else
        {
          v16 = v11;
          v13 = v10 - 0x800000000000000;
          v14 = (16 * v10++) | 8;
          v15 = v13 >> 60;
          while (1)
          {
            if (v15 < 0xF)
            {
              __break(1u);
              goto LABEL_19;
            }

            result = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
            if ((result - 1301) > 0xFAEBu)
            {
              break;
            }

            ++v10;
            v14 += 16;
            if (v10 == 5)
            {
              v10 = 4;
              v8 = v16;
              goto LABEL_16;
            }
          }

          *v9++ = result;
          v11 = v12;
          if (v12 != v8)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      break;
    }

LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27076F75C(unint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_36;
  }

  if (!a3)
  {
LABEL_36:
    v10 = 1;
    goto LABEL_37;
  }

  if (a3 < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v8 = 0;
  v9 = a4;
  v32 = BYTE6(a5);
  v33 = a4 >> 32;
  v30 = a4 >> 16;
  v31 = a4 >> 8;
  v28 = HIDWORD(a4);
  v29 = a4 >> 24;
  v10 = 1;
  v24 = a3;
LABEL_5:
  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10 > 231)
  {
    a3 = v8;
    goto LABEL_37;
  }

  v25 = v8 + 1;
  v26 = a2;
  v27 = v8;
  v11 = v10 - 256;
  do
  {
    if (v11 > 0xFFFFFFFFFFFFFF00)
    {
      v12 = v11 + 264;
      v13 = 0;
      switch(a5 >> 62)
      {
        case 1uLL:
          v13 = a4;
          break;
        case 2uLL:
          v13 = *(a4 + 16);
          break;
        default:
          break;
      }

      v14 = v13 + (v12 >> 3);
      if (!__OFADD__(v13, v12 >> 3))
      {
        switch(a5 >> 62)
        {
          case 1uLL:
            if (v14 < a4 || v14 >= v33)
            {
              goto LABEL_42;
            }

            v21 = sub_2707A81F0();
            if (!v21)
            {
              goto LABEL_49;
            }

            v17 = v21;
            v22 = sub_2707A8210();
            v19 = v14 - v22;
            if (!__OFSUB__(v14, v22))
            {
              goto LABEL_29;
            }

            goto LABEL_44;
          case 2uLL:
            if (v14 < *(a4 + 16))
            {
              goto LABEL_40;
            }

            if (v14 >= *(a4 + 24))
            {
              goto LABEL_43;
            }

            v16 = sub_2707A81F0();
            if (!v16)
            {
              goto LABEL_50;
            }

            v17 = v16;
            v18 = sub_2707A8210();
            v19 = v14 - v18;
            if (__OFSUB__(v14, v18))
            {
              goto LABEL_45;
            }

LABEL_29:
            v15 = *(v17 + v19);
LABEL_30:
            if ((v15 & (1 << (v11 & 7))) == 0)
            {
              goto LABEL_31;
            }

            v10 = v11 + 257;
            *v26 = v11;
            a2 = v26 + 1;
            a3 = v24;
            v8 = v25;
            if (v25 == v24)
            {
              goto LABEL_37;
            }

            goto LABEL_5;
          case 3uLL:
            goto LABEL_48;
          default:
            if (v14 >= v32)
            {
              goto LABEL_41;
            }

            v34[0] = v9;
            v34[1] = v31;
            v34[2] = v30;
            v34[3] = v29;
            v34[4] = v28;
            v34[5] = BYTE5(a4);
            v34[6] = BYTE6(a4);
            v34[7] = HIBYTE(a4);
            v35 = a5;
            v36 = BYTE2(a5);
            v37 = BYTE3(a5);
            v38 = BYTE4(a5);
            v39 = BYTE5(a5);
            v15 = v34[v14];
            goto LABEL_30;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_31:
    ++v11;
  }

  while (v11 != -24);
  v10 = 232;
  a3 = v27;
LABEL_37:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v10;
  return a3;
}

uint64_t sub_27076FA54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_52;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_52;
  }

  if (a3 < 0)
  {
LABEL_63:
    __break(1u);
    JUMPOUT(0x27076FDB8);
  }

  v7 = a2;
  v34 = a1;
  v8 = 0;
  v9 = a4;
  v10 = a5;
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v5 = v10;
    v6 = v9;
    v12 = v10 >> 62;
    switch(v10 >> 62)
    {
      case 1uLL:
        v13 = v6 >> 32;
        v14 = v6;
        goto LABEL_11;
      case 2uLL:
        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
LABEL_11:
        if (v14 != v13)
        {
          break;
        }

        goto LABEL_49;
      case 3uLL:
        goto LABEL_49;
      default:
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_49;
        }

        break;
    }

    sub_270706C38(v6, v10);
    v15 = sub_270735CE4(v6, v10);
    v17 = v15;
    v18 = v16;
    v19 = 0;
    switch(v16 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_62;
        }

        v19 = HIDWORD(v15) - v15;
LABEL_17:
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

LABEL_18:
        if (v12)
        {
          if (v12 == 2)
          {
            v23 = *(v6 + 16);
            v22 = *(v6 + 24);
          }

          else
          {
            v23 = v6;
            v22 = v6 >> 32;
          }

          if (v22 < v23)
          {
            goto LABEL_55;
          }

          if (v12 == 2)
          {
            v24 = *(v6 + 16);
            v25 = *(v6 + 24);
          }

          else
          {
            v25 = v6 >> 32;
            v24 = v6;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v22 = BYTE6(v10);
          v25 = BYTE6(v10);
        }

        if (v25 < v22 || v22 < v24)
        {
          goto LABEL_56;
        }

        if (__OFSUB__(v22, v23))
        {
          goto LABEL_57;
        }

        if (v22 - v23 < v19)
        {
          goto LABEL_47;
        }

        v27 = v23 + v19;
        if (__OFADD__(v23, v19))
        {
          goto LABEL_59;
        }

        v28 = 0;
        v29 = 0;
        switch(v12)
        {
          case 1:
            v28 = v6 >> 32;
            v29 = v6;
            break;
          case 2:
            v29 = *(v6 + 16);
            v28 = *(v6 + 24);
            break;
          case 3:
            break;
          default:
            v29 = 0;
            v28 = BYTE6(v10);
            break;
        }

        if (v28 < v27 || v27 < v29)
        {
          goto LABEL_60;
        }

        v31 = 0;
        switch(v12)
        {
          case 1:
            v31 = v6 >> 32;
            break;
          case 2:
            v31 = *(v6 + 24);
            break;
          case 3:
            break;
          default:
            v31 = BYTE6(v10);
            break;
        }

        if (v31 < v27)
        {
          goto LABEL_58;
        }

LABEL_47:
        v9 = sub_2707A82D0();
        v10 = v32;
        sub_270708D74(v6, v5);
        v37 = &unk_28807A7C0;
        v38 = &off_28807A7E0;
        *&v36 = v17;
        *(&v36 + 1) = v18;
        sub_27070F8A8(&v36, v39);
        sub_27070F8A8(v39, v7);
        v7 += 40;
        ++v8;
        if (v11 != a3)
        {
          continue;
        }

        v6 = v9;
        v5 = v10;
        v8 = a3;
LABEL_49:
        a1 = v34;
        break;
      case 2uLL:
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        v19 = v20 - v21;
        if (!__OFSUB__(v20, v21))
        {
          goto LABEL_17;
        }

        goto LABEL_61;
      case 3uLL:
        goto LABEL_18;
      default:
        v19 = BYTE6(v16);
        goto LABEL_18;
    }

    break;
  }

LABEL_52:
  *a1 = v6;
  a1[1] = v5;
  return v8;
}

unint64_t sub_27076FE08(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_18:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (2)
    {
      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        if (v10 > 3)
        {
LABEL_16:
          v8 = v11;
        }

        else
        {
          v13 = v10 - 0x1000000000000000;
          v14 = 8 * v10++;
          v15 = v13 >> 61;
          while (1)
          {
            if (v15 < 7)
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            result = v14 + 8;
            if (__OFADD__(v14, 8))
            {
              goto LABEL_20;
            }

            result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
            if ((result - 3) < 3u)
            {
              break;
            }

            ++v10;
            v14 += 8;
            if (v10 == 5)
            {
              v10 = 4;
              goto LABEL_16;
            }
          }

          *v9++ = result;
          ++v11;
          if (v12 != v8)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      break;
    }

LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27076FF1C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v10 = 0;
    v8 = 0;
LABEL_20:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v10;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 > 1)
      {
LABEL_18:
        v8 = v11;
        goto LABEL_20;
      }

      while (1)
      {
        result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        if ((result - 49) > 0xCFu && result <= 0x21u && ((1 << result) & 0x30003001ELL) != 0)
        {
          break;
        }

        v14 = v10 < 1;
        v10 = 1;
        if (!v14)
        {
          v10 = 2;
          goto LABEL_18;
        }
      }

      ++v10;
      *v9++ = result;
      ++v11;
      if (v12 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270770038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a5 >> 62;
  v10 = 0;
  v11 = a4;
  switch(a5 >> 62)
  {
    case 1uLL:
      v5 = a4;
      goto LABEL_39;
    case 2uLL:
      v5 = *(a4 + 16);
LABEL_39:
      if ((v5 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_41:
      v10 += v6;
      a3 = v6;
      goto LABEL_42;
    default:
      if (!a2)
      {
        goto LABEL_59;
      }

      break;
  }

  while (a3)
  {
    v22 = a1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v12 = BYTE6(a5);
      v5 = a5 >> 40;
      v13 = v7;
      v26 = a3;
      v24 = a2;
      v25 = v10;
      v23 = v11;
      while (2)
      {
        v14 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          v15 = v10 + v6;
          v7 = 0;
          v5 = v12;
          switch(v13)
          {
            case 1:
              v5 = a4 >> 32;
              goto LABEL_10;
            case 2:
              v5 = *(a4 + 24);
              goto LABEL_10;
            case 3:
              goto LABEL_11;
            default:
LABEL_10:
              v7 = v5;
              if ((v5 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_44;
              }

LABEL_11:
              if (v15 == 8 * v7)
              {
                goto LABEL_41;
              }

              v7 = 0;
              switch(v13)
              {
                case 1:
                  v7 = v11;
                  break;
                case 2:
                  v7 = *(a4 + 16);
                  break;
                default:
                  break;
              }

              v16 = v7 + (v15 >> 3);
              if (__OFADD__(v7, v15 >> 3))
              {
                goto LABEL_45;
              }

              LODWORD(v7) = v15 & 7;
              v5 = 1;
              switch(v13)
              {
                case 1:
                  LODWORD(v7) = HIDWORD(a4);
                  if (v16 < v11 || v16 >= a4 >> 32)
                  {
                    goto LABEL_50;
                  }

                  a1 = sub_2707A81F0();
                  if (!a1)
                  {
                    goto LABEL_56;
                  }

                  v20 = a1;
                  a1 = sub_2707A8210();
                  v7 = v16 - a1;
                  if (__OFSUB__(v16, a1))
                  {
                    goto LABEL_52;
                  }

                  v17 = *(v20 + v7);
                  v7 = a4 >> 32;
                  goto LABEL_32;
                case 2:
                  v7 = *(a4 + 16);
                  if (v16 < v7)
                  {
                    goto LABEL_48;
                  }

                  v7 = *(a4 + 24);
                  if (v16 >= v7)
                  {
                    goto LABEL_51;
                  }

                  a1 = sub_2707A81F0();
                  if (!a1)
                  {
                    goto LABEL_57;
                  }

                  v18 = a1;
                  a1 = sub_2707A8210();
                  v7 = v16 - a1;
                  if (__OFSUB__(v16, a1))
                  {
                    goto LABEL_53;
                  }

                  v17 = *(v18 + v7);
                  v7 = *(a4 + 24);
LABEL_32:
                  a3 = v26;
                  a2 = v24;
                  v10 = v25;
                  v12 = BYTE6(a5);
                  v11 = v23;
LABEL_33:
                  v5 = (v17 & (1 << (v15 & 7))) != 0;
                  if ((v7 - 0x1000000000000000) >> 61 != 7)
                  {
                    goto LABEL_46;
                  }

                  if (v15 >= 8 * v7)
                  {
                    goto LABEL_47;
                  }

                  *(a2 + 8 * v6++) = v5;
                  if (v14 != a3)
                  {
                    continue;
                  }

                  v10 += v6;
                  break;
                case 3:
                  goto LABEL_55;
                default:
                  if (v16 >= v12)
                  {
                    goto LABEL_49;
                  }

                  v27[0] = v11;
                  v27[1] = BYTE1(a4);
                  v27[2] = BYTE2(a4);
                  v27[3] = BYTE3(a4);
                  v27[4] = BYTE4(a4);
                  v27[5] = BYTE5(a4);
                  v27[6] = BYTE6(a4);
                  v27[7] = HIBYTE(a4);
                  v28 = a5;
                  v29 = BYTE2(a5);
                  v30 = BYTE3(a5);
                  v31 = BYTE4(a5);
                  v7 = v12;
                  v32 = BYTE5(a5);
                  v17 = v27[v16];
                  goto LABEL_33;
              }

              break;
          }

LABEL_42:
          a1 = v22;
          goto LABEL_60;
        }

        break;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v10 = 8 * v5;
    if (!a2)
    {
LABEL_59:
      a3 = 0;
      break;
    }
  }

LABEL_60:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v10;
  return a3;
}

void *sub_270770428(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270770510(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

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

Swift::Int sub_270770668(uint64_t (*a1)(uint64_t *))
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = v3;
      goto LABEL_78;
    case 2uLL:
      v6 = *(v3 + 16);
LABEL_78:
      if ((v6 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_80;
    default:
LABEL_2:
      v7 = 8 * v6;
      v8 = HIDReport.endIndex.getter(v3, v4);
      break;
  }

  while (2)
  {
    if (v7 >= v8)
    {
      return v7;
    }

    v9 = *v5;
    v10 = v5[1];
    v11 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        v11 = v9;
        break;
      case 2uLL:
        v11 = *(v9 + 16);
        break;
      default:
        break;
    }

    v12 = v11 + (v7 >> 3);
    if (__OFADD__(v11, v7 >> 3))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
    }

    switch(v10 >> 62)
    {
      case 1uLL:
        if (v12 < v9 || v12 >= v9 >> 32)
        {
          goto LABEL_85;
        }

        v19 = sub_2707A81F0();
        if (!v19)
        {
          goto LABEL_101;
        }

        v15 = v19;
        v20 = sub_2707A8210();
        v17 = v12 - v20;
        if (!__OFSUB__(v12, v20))
        {
          goto LABEL_24;
        }

        goto LABEL_87;
      case 2uLL:
        if (v12 < *(v9 + 16))
        {
          goto LABEL_84;
        }

        if (v12 >= *(v9 + 24))
        {
          goto LABEL_86;
        }

        v14 = sub_2707A81F0();
        if (!v14)
        {
          goto LABEL_102;
        }

        v15 = v14;
        v16 = sub_2707A8210();
        v17 = v12 - v16;
        if (__OFSUB__(v12, v16))
        {
          goto LABEL_88;
        }

LABEL_24:
        v13 = *(v15 + v17);
LABEL_25:
        v59 = (v13 & (1 << (v7 & 7))) != 0;
        v21 = a1(&v59);
        if (v2)
        {
          return v7;
        }

        v23 = *v5;
        v22 = v5[1];
        v24 = v22 >> 62;
        v25 = *v5 >> 32;
        v26 = BYTE6(v22);
        if ((v21 & 1) == 0)
        {
          v27 = 0;
          switch(v24)
          {
            case 1:
              v27 = *v5 >> 32;
              goto LABEL_31;
            case 2:
              v27 = *(v23 + 24);
              goto LABEL_31;
            case 3:
              goto LABEL_32;
            default:
              v27 = v26;
LABEL_31:
              if ((v27 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_81;
              }

LABEL_32:
              if (v7 < 8 * v27)
              {
                goto LABEL_33;
              }

              goto LABEL_82;
          }
        }

        v28 = v24;
        v54 = v24;
        v55 = v5;
        while (2)
        {
          v29 = v8 - 1;
          v30 = 0;
          v31 = v28;
          v32 = v26;
          v33 = 0;
          switch(v28)
          {
            case 1:
              v32 = v25;
              v31 = 8 * v23;
              goto LABEL_39;
            case 2:
              v34 = *(v23 + 16);
              if ((v34 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_98;
              }

              v31 = 8 * v34;
              v32 = *(v23 + 24);
LABEL_39:
              v30 = v31;
              v33 = v32;
              if ((v32 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_89;
              }

LABEL_40:
              if (v8 <= v30 || v8 > 8 * v33)
              {
                goto LABEL_90;
              }

              if (v7 >= v29)
              {
                return v7;
              }

              v36 = *v5;
              v37 = v5[1];
              v38 = 0;
              switch(v37 >> 62)
              {
                case 1uLL:
                  v38 = v36;
                  break;
                case 2uLL:
                  v38 = *(v36 + 16);
                  break;
                default:
                  break;
              }

              v39 = v38 + (v29 >> 3);
              if (__OFADD__(v38, v29 >> 3))
              {
                goto LABEL_91;
              }

              v40 = 1 << (v29 & 7);
              v57 = v8 - 1;
              switch(v37 >> 62)
              {
                case 1uLL:
                  if (v39 < v36 || v39 >= v36 >> 32)
                  {
                    goto LABEL_94;
                  }

                  v56 = 1 << (v29 & 7);
                  v47 = sub_2707A81F0();
                  if (!v47)
                  {
                    goto LABEL_104;
                  }

                  v43 = v47;
                  v48 = sub_2707A8210();
                  v45 = v39 - v48;
                  if (!__OFSUB__(v39, v48))
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_96;
                case 2uLL:
                  if (v39 < *(v36 + 16))
                  {
                    goto LABEL_92;
                  }

                  if (v39 >= *(v36 + 24))
                  {
                    goto LABEL_95;
                  }

                  v56 = 1 << (v29 & 7);
                  v42 = sub_2707A81F0();
                  if (!v42)
                  {
                    goto LABEL_105;
                  }

                  v43 = v42;
                  v44 = sub_2707A8210();
                  v45 = v39 - v44;
                  if (__OFSUB__(v39, v44))
                  {
                    goto LABEL_97;
                  }

LABEL_66:
                  v41 = *(v43 + v45);
                  v40 = v56;
LABEL_67:
                  v59 = (v41 & v40) != 0;
                  v49 = a1(&v59);
                  v5 = v55;
                  v8 = v57;
                  v28 = v54;
                  if (v49)
                  {
                    continue;
                  }

                  break;
                case 3uLL:
                  goto LABEL_103;
                default:
                  if (v39 >= BYTE6(v37))
                  {
                    goto LABEL_93;
                  }

                  v59 = v36;
                  v60 = v37;
                  v61 = BYTE2(v37);
                  v62 = BYTE3(v37);
                  v63 = BYTE4(v37);
                  v64 = BYTE5(v37);
                  v41 = *(&v59 + v39);
                  goto LABEL_67;
              }

              break;
            case 3:
              goto LABEL_40;
            default:
              goto LABEL_39;
          }

          break;
        }

        break;
      case 3uLL:
        goto LABEL_100;
      default:
        if (v12 >= BYTE6(v10))
        {
          goto LABEL_83;
        }

        LOWORD(v59) = *v5;
        BYTE2(v59) = BYTE2(v9);
        BYTE3(v59) = BYTE3(v9);
        BYTE4(v59) = BYTE4(v9);
        BYTE5(v59) = BYTE5(v9);
        BYTE6(v59) = BYTE6(v9);
        HIBYTE(v59) = HIBYTE(v9);
        v60 = v10;
        v61 = BYTE2(v10);
        v62 = BYTE3(v10);
        v63 = BYTE4(v10);
        v64 = BYTE5(v10);
        v13 = *(&v59 + v12);
        goto LABEL_25;
    }

    v8 = v57;
    HIDReport.swapAt(_:_:)(v7, v57);
    v50 = *v55;
    v51 = v55[1];
    v52 = 0;
    switch(v51 >> 62)
    {
      case 1uLL:
        v52 = v50 >> 32;
        goto LABEL_72;
      case 2uLL:
        v52 = *(v50 + 24);
        goto LABEL_72;
      case 3uLL:
        goto LABEL_73;
      default:
        v52 = BYTE6(v51);
LABEL_72:
        if ((v52 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_99;
        }

LABEL_73:
        if (v7 < 8 * v52)
        {
LABEL_33:
          ++v7;
          continue;
        }

        __break(1u);
        return v7;
    }
  }
}

void *sub_270770CFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

Swift::Int OUTLINED_FUNCTION_7_17()
{

  return HIDReport.subscript.setter(v0, v1, v3, v2);
}

uint64_t TouchSensitiveButtonGesture.dispatch(report:)()
{
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.x.getter();
  OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.y.getter();
  OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.deltaX.getter();
  OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.deltaY.getter();
  OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.majorRadius.getter();
  v0 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.minorRadius.getter(v0, v1);
  OUTLINED_FUNCTION_11_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_11_9();
  HIDReport.subscript.getter(v2, v3, v4);
  mach_absolute_time();
  TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
  v6 = OUTLINED_FUNCTION_0_37();
  TouchSensitiveButtonReport.forceStageCollectionRange.getter(v6, v7);
  v8 = sub_2707A82D0();
  sub_27070E5A4(v8, v9);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_17_4();
  ForceStageCollection.nextThreshold.getter();
  OUTLINED_FUNCTION_17_4();
  ForceStageCollection.pressedThreshold.getter();
  OUTLINED_FUNCTION_17_4();
  ForceStageCollection.releasedThreshold.getter();
  OUTLINED_FUNCTION_17_4();
  ForceStageCollection.normalizedForce.getter();
  OUTLINED_FUNCTION_17_4();
  ForceStageCollection.normalizedForceVelocity.getter();
  mach_absolute_time();
  ForceStageEvent = IOHIDEventCreateForceStageEvent();
  IOHIDEventAppendEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2707A9CF0;
  *(v11 + 56) = &type metadata for TouchSensitiveButtonEvent;
  *(v11 + 64) = &protocol witness table for TouchSensitiveButtonEvent;
  *(v11 + 32) = TouchSensitiveButtonEventWithRadius;
  v12 = TouchSensitiveButtonEventWithRadius;

  v13 = OUTLINED_FUNCTION_17_4();
  sub_270708D74(v13, v14);

  return v11;
}

uint64_t HIDAccelerationTableEntry.points.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HIDAccelerationTable.entry.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HIDAccelerationTable.init(data:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_1_28();
  v5 = sub_2707716C0(v2, v3, v4);
  OUTLINED_FUNCTION_1_28();
  v9 = sub_2707716C0(v6, v7, v8);
  if (v9 != 1077030960 && v9 != 1431519786)
  {

    v41 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v41, v42);
    return 0;
  }

  OUTLINED_FUNCTION_1_28();
  v15 = sub_27077179C(v12, v13, v14);
  if (v15)
  {
    v53 = v5;
    v59 = MEMORY[0x277D84F90];
    v54 = v15;
    sub_27071A9E8(0, v15, 0);
    v16 = v59;
    result = swift_beginAccess();
    v17 = 0;
    while (1)
    {
      v57 = v17;
      v18 = *v1 + 32;
      if (__OFADD__(*v1, 32))
      {
        goto LABEL_38;
      }

      v19 = OUTLINED_FUNCTION_20_3();
      if (HIDReport.count.getter(v19, v20) < v18)
      {
        break;
      }

      OUTLINED_FUNCTION_1_28();
      result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
      v56 = result;
      *v1 = v18;
      v21 = v18 + 16;
      if (__OFADD__(v18, 16))
      {
        goto LABEL_39;
      }

      v22 = OUTLINED_FUNCTION_20_3();
      if (HIDReport.count.getter(v22, v23) < v21)
      {
        break;
      }

      OUTLINED_FUNCTION_1_28();
      result = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
      *v1 = v21;
      if (result)
      {
        v55 = v16;
        v24 = bswap32(result) >> 16;
        v58 = MEMORY[0x277D84F90];
        result = sub_27071AA08(0, v24, 0);
        v25 = v58;
        while (v24)
        {
          v26 = v21 + 32;
          if (__OFADD__(v21, 32))
          {
            goto LABEL_36;
          }

          v27 = OUTLINED_FUNCTION_20_3();
          if (HIDReport.count.getter(v27, v28) < v26)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_1_28();
          result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
          *v1 = v26;
          v29 = v21 + 64;
          if (__OFADD__(v26, 32))
          {
            goto LABEL_37;
          }

          v30 = result;
          v31 = OUTLINED_FUNCTION_20_3();
          if (HIDReport.count.getter(v31, v32) < v29)
          {
LABEL_31:
            sub_27077189C();
            v43 = swift_allocError();
            swift_willThrow();
            v44 = OUTLINED_FUNCTION_20_3();
            sub_270708D74(v44, v45);

            goto LABEL_2;
          }

          OUTLINED_FUNCTION_1_28();
          result = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
          *v1 = v29;
          v34 = *(v25 + 16);
          v33 = *(v25 + 24);
          v35 = v25;
          if (v34 >= v33 >> 1)
          {
            v52 = result;
            sub_27071AA08((v33 > 1), v34 + 1, 1);
            result = v52;
            v35 = v25;
          }

          *(v35 + 16) = v34 + 1;
          v36 = v35 + 16 * v34;
          *(v36 + 32) = vcvtd_n_f64_s32(bswap32(v30), 0x10uLL);
          *(v36 + 40) = vcvtd_n_f64_s32(bswap32(result), 0x10uLL);
          v21 += 64;
          --v24;
          v25 = v35;
          if (!v24)
          {
            v16 = v55;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      v25 = MEMORY[0x277D84F90];
LABEL_27:
      v37 = v57;
      v39 = *(v16 + 16);
      v38 = *(v16 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_27071A9E8((v38 > 1), v39 + 1, 1);
        v37 = v57;
      }

      v17 = v37 + 1;
      *(v16 + 16) = v39 + 1;
      v40 = v16 + 16 * v39;
      *(v40 + 32) = vcvtd_n_f64_s32(bswap32(v56), 0x10uLL);
      *(v40 + 40) = v25;
      if (v17 == v54)
      {
        v50 = OUTLINED_FUNCTION_20_3();
        sub_270708D74(v50, v51);

        v5 = v53;
        return vcvtd_n_f64_s32(v5, 0x10uLL);
      }
    }

    v48 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v48, v49);

LABEL_2:

    return 0;
  }

  v46 = OUTLINED_FUNCTION_20_3();
  sub_270708D74(v46, v47);

  return vcvtd_n_f64_s32(v5, 0x10uLL);
}

uint64_t sub_2707716C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = v7 + 32;
  if (__OFADD__(v7, 32))
  {
    __break(1u);
  }

  else
  {
    if (HIDReport.count.getter(a2, a3) >= v8)
    {
      a3 = bswap32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0());
      swift_beginAccess();
      *(a1 + 16) = v8;
    }

    else
    {
      sub_27077189C();
      swift_allocError();
      swift_willThrow();
    }

    return a3;
  }

  return result;
}

uint64_t sub_27077179C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = v7 + 16;
  if (__OFADD__(v7, 16))
  {
    __break(1u);
  }

  else
  {
    if (HIDReport.count.getter(a2, a3) >= v8)
    {
      a3 = bswap32(_s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0()) >> 16;
      swift_beginAccess();
      *(a1 + 16) = v8;
    }

    else
    {
      sub_27077189C();
      swift_allocError();
      swift_willThrow();
    }

    return a3;
  }

  return result;
}

unint64_t sub_27077189C()
{
  result = qword_280829EC0;
  if (!qword_280829EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EC0);
  }

  return result;
}

uint64_t sub_270771908(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_270771948(uint64_t result, int a2, int a3)
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

uint64_t sub_270771990(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2707719D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t ForceStageEvent.transition.getter()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t ForceStageEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 41)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ForceStageEvent.init(time:stage:transition:nextThreshold:pressedThreshold:releasedThreshold:normalizedForce:normalizedForceVelocity:flags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    return IOHIDEventCreateForceStageEvent();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ForceStageEvent.stage.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

unint64_t ForceStageEvent.transition.modify(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *(a1 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t ForceStageEvent.nextThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.pressedThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.releasedThreshold.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.normalizedForce.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t ForceStageEvent.normalizedForceVelocity.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270771E78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ForceStageEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_270771EA0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.stage.getter();
  *v1 = result;
  return result;
}

unint64_t sub_270771ED4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.transition.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270771F08(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.nextThreshold.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270771F3C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.pressedThreshold.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270771F70(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.releasedThreshold.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270771FA4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.normalizedForce.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270771FD8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ForceStageEvent.normalizedForceVelocity.getter();
  *v1 = v3;
  return result;
}

uint64_t ButtonEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 2)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ButtonEvent.buttonClickCount.setter(uint64_t result)
{
  if ((result - 255) >= 0xFFFFFFFFFFFFFF02)
  {
    return OUTLINED_FUNCTION_5_15();
  }

  __break(1u);
  return result;
}

uint64_t ButtonEvent.buttonClickCount.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

void *sub_27077217C(void *result, char a2)
{
  v2 = *result - 255;
  if (a2)
  {
    if (v2 >= 0xFFFFFFFFFFFFFF02)
    {
      return OUTLINED_FUNCTION_5_15();
    }

    __break(1u);
  }

  if (v2 < 0xFFFFFFFFFFFFFF02)
  {
    __break(1u);
    return result;
  }

  return OUTLINED_FUNCTION_5_15();
}

uint64_t ButtonEvent.buttonMask.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270772218(uint64_t result)
{
  if ((result - 0xFFFFFFFFLL) >= 0xFFFFFFFF00000002)
  {
    return OUTLINED_FUNCTION_3_15();
  }

  __break(1u);
  return result;
}

uint64_t ButtonEvent.buttonNumber.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

void *sub_270772294(void *result, char a2)
{
  v2 = *result - 0xFFFFFFFFLL;
  if (a2)
  {
    if (v2 >= 0xFFFFFFFF00000002)
    {
      return OUTLINED_FUNCTION_3_15();
    }

    __break(1u);
  }

  if (v2 < 0xFFFFFFFF00000002)
  {
    __break(1u);
    return result;
  }

  return OUTLINED_FUNCTION_3_15();
}

uint64_t ButtonEvent.buttonPressure.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t (*ButtonEvent.buttonState.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_2707723A4;
}

uint64_t sub_2707723B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ButtonEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2707723DC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonClickCount.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270772410(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonMask.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270772444(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonNumber.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270772478(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonPressure.getter();
  *v1 = v3;
  return result;
}

BOOL sub_2707724AC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ButtonEvent.buttonState.getter();
  *v1 = result;
  return result;
}

unint64_t HIDForceStageTransition.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t HIDForceStageTransition.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270772624()
{
  sub_2707A8F60();
  HIDForceStageTransition.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t HIDForceStageTransition.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 1953069157;
    case 1:
      return 0x7265746E65;
  }

  return sub_2707A8E70();
}

unint64_t sub_2707726FC()
{
  result = qword_280829EC8;
  if (!qword_280829EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829EC8);
  }

  return result;
}

unint64_t sub_270772764()
{
  result = qword_280829ED8;
  if (!qword_280829ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829ED8);
  }

  return result;
}

uint64_t FixedWidthInteger.init(scaledValue:logicalMinimum:logicalMaximum:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v45 = a2;
  v46 = a4;
  v8 = sub_2707A8930();
  v43 = *(v8 - 8);
  v44 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v43 - v11;
  v13 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = (&v43 - v19);
  v21 = *(v13 + 16);
  v47 = a1;
  v21(&v43 - v19, a1, a3);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_12_1();
    v25 = sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    v26 = sub_2707A89D0();
    v27 = OUTLINED_FUNCTION_1_30();
    v28(v27);
    if (v25)
    {
      v24 = v26;
    }

    else
    {
      v24 = v26;
    }
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1();
    v22 = OUTLINED_FUNCTION_1_30();
    v23(v22);
    v24 = v48;
  }

  v29 = v45;
  v21(v17, v45, a3);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() <= 64)
  {
    v31 = v29;
    OUTLINED_FUNCTION_12_1();
    v32 = sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    v33 = sub_2707A89D0();
    v20(v17, a3);
    if (v32)
    {
      v30 = v33;
    }

    else
    {
      v30 = v33;
    }

    v29 = v31;
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1();
    v20(v17, a3);
    v30 = v48;
  }

  OUTLINED_FUNCTION_12_1();
  v34 = sub_2707A89F0();
  v35 = v30 * a5;
  v36 = fabs(a5) * v24;
  if (a5 < 0.0)
  {
    v35 = v36;
  }

  if (v34)
  {
    v37 = v35;
  }

  else
  {
    v37 = v24 + (v30 - v24) * a5;
  }

  if (v37 > v24)
  {
    v38 = v37;
  }

  else
  {
    v38 = v24;
  }

  if (v30 < v38)
  {
    v38 = v30;
  }

  v48 = v38;
  sub_270715DBC();
  sub_2707A89C0();
  if (__swift_getEnumTagSinglePayload(v12, 1, a3) == 1)
  {
    (*(v43 + 8))(v12, v44);
    v39 = 0.0 - v30;
    if (0.0 - v30 != INFINITY)
    {
      *&v39 += (*&v39 >> 63) | 1;
    }

    v40 = -v39;
    v41 = v24 + 0.0;
    if (v24 != INFINITY)
    {
      *&v41 += (*&v41 >> 63) | 1;
    }

    if (v37 <= v40)
    {
      if (v37 >= v41)
      {
        if (v37 > v41)
        {
          v41 = v37;
        }

        if (v41 <= v40)
        {
          v40 = v41;
        }

        v48 = v40;
        sub_2707A8A00();
        v20(v29, a3);
        return (v20)(v47, a3);
      }

      else
      {
        v20(v29, a3);
        return (*(v13 + 32))(v46, v47, a3);
      }
    }

    else
    {
      v20(v47, a3);
      return (*(v13 + 32))(v46, v29, a3);
    }
  }

  else
  {
    v20(v29, a3);
    v20(v47, a3);
    return (*(v13 + 32))(v46, v12, a3);
  }
}

unint64_t HIDDeviceType.description.getter(char a1)
{
  result = 0x65746F6D6552;
  switch(a1)
  {
    case 1:
      result = 0x657A697469676944;
      break;
    case 2:
      result = 0x646170656D6147;
      break;
    case 3:
      result = 0x6472616F6279654BLL;
      break;
    case 4:
      result = 0x6573756F4DLL;
      break;
    case 5:
      result = 0x6461706B63617254;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

UniversalHID::HIDDeviceType_optional __swiftcall HIDDeviceType.init(deviceTypeHint:)(Swift::String deviceTypeHint)
{
  object = deviceTypeHint._object;
  countAndFlagsBits = deviceTypeHint._countAndFlagsBits;
  v3 = deviceTypeHint._countAndFlagsBits == 0x6573756F4DLL && deviceTypeHint._object == 0xE500000000000000;
  if (v3 || (sub_2707A8EA0() & 1) != 0)
  {

    return 4;
  }

  else if (countAndFlagsBits == 0x6461706B63617254 && object == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2707A8EA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_270772EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525654656C707061 && a2 == 0xED000065746F6D65;
  if (v4 || (sub_2707A8EA0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657A697469676964 && a2 == 0xE900000000000072;
    if (v6 || (sub_2707A8EA0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646170656D6167 && a2 == 0xE700000000000000;
      if (v7 || (sub_2707A8EA0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000;
        if (v8 || (sub_2707A8EA0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6573756F6DLL && a2 == 0xE500000000000000;
          if (v9 || (sub_2707A8EA0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6461706B63617274 && a2 == 0xE800000000000000;
            if (v10 || (sub_2707A8EA0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000014 && 0x80000002707B4350 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_2707A8EA0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2707730FC(char a1)
{
  result = 0x525654656C707061;
  switch(a1)
  {
    case 1:
      result = 0x657A697469676964;
      break;
    case 2:
      result = 0x646170656D6167;
      break;
    case 3:
      result = 0x6472616F6279656BLL;
      break;
    case 4:
      result = 0x6573756F6DLL;
      break;
    case 5:
      result = 0x6461706B63617274;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270773234@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_15_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270773260(uint64_t a1)
{
  v2 = sub_2707749A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077329C(uint64_t a1)
{
  v2 = sub_2707749A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270772EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27077332C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270710AF8();
  *a1 = result;
  return result;
}

uint64_t sub_270773354(uint64_t a1)
{
  v2 = sub_270774754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773390(uint64_t a1)
{
  v2 = sub_270774754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707733CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707731F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2707733F8(uint64_t a1)
{
  v2 = sub_27077494C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773434(uint64_t a1)
{
  v2 = sub_27077494C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773470(uint64_t a1)
{
  v2 = sub_2707748F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707734AC(uint64_t a1)
{
  v2 = sub_2707748F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707734E8(uint64_t a1)
{
  v2 = sub_2707748A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773524(uint64_t a1)
{
  v2 = sub_2707748A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773560(uint64_t a1)
{
  v2 = sub_270774850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077359C(uint64_t a1)
{
  v2 = sub_270774850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707735D8(uint64_t a1)
{
  v2 = sub_2707747A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270773614(uint64_t a1)
{
  v2 = sub_2707747A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270773650(uint64_t a1)
{
  v2 = sub_2707747FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27077368C(uint64_t a1)
{
  v2 = sub_2707747FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HIDDeviceType.encode(to:)(void *a1, uint64_t a2)
{
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EE0);
  OUTLINED_FUNCTION_0_1();
  v67 = v4;
  v68 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4_22();
  v66 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EE8);
  OUTLINED_FUNCTION_0_1();
  v64 = v9;
  v65 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_4_22();
  v63 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EF0);
  OUTLINED_FUNCTION_0_1();
  v61 = v14;
  v62 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_4_22();
  v60 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829EF8);
  OUTLINED_FUNCTION_0_1();
  v58 = v19;
  v59 = v18;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_4_22();
  v57 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F00);
  OUTLINED_FUNCTION_0_1();
  v55 = v24;
  v56 = v23;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_4_22();
  v54 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F08);
  OUTLINED_FUNCTION_0_1();
  v52 = v29;
  v53 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v50 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F10);
  OUTLINED_FUNCTION_0_1();
  v51 = v35;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v50 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F18);
  OUTLINED_FUNCTION_0_1();
  v42 = v41;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v50 - v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270774754();
  sub_2707A8FE0();
  switch(v69)
  {
    case 1:
      v71 = 1;
      sub_27077494C();
      OUTLINED_FUNCTION_2_25();
      v48 = v52;
      v47 = v53;
      goto LABEL_9;
    case 2:
      v72 = 2;
      sub_2707748F8();
      v33 = v54;
      OUTLINED_FUNCTION_2_25();
      v48 = v55;
      v47 = v56;
      goto LABEL_9;
    case 3:
      v73 = 3;
      sub_2707748A4();
      v33 = v57;
      OUTLINED_FUNCTION_2_25();
      v48 = v58;
      v47 = v59;
      goto LABEL_9;
    case 4:
      v74 = 4;
      sub_270774850();
      v33 = v60;
      OUTLINED_FUNCTION_2_25();
      v48 = v61;
      v47 = v62;
      goto LABEL_9;
    case 5:
      v75 = 5;
      sub_2707747FC();
      v33 = v63;
      OUTLINED_FUNCTION_2_25();
      v48 = v64;
      v47 = v65;
      goto LABEL_9;
    case 6:
      v76 = 6;
      sub_2707747A8();
      v33 = v66;
      OUTLINED_FUNCTION_2_25();
      v48 = v67;
      v47 = v68;
LABEL_9:
      (*(v48 + 8))(v33, v47);
      break;
    default:
      v70 = 0;
      sub_2707749A0();
      sub_2707A8DC0();
      (*(v51 + 8))(v39, v34);
      break;
  }

  return (*(v42 + 8))(v46, v40);
}

uint64_t HIDDeviceType.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F60);
  OUTLINED_FUNCTION_0_1();
  v91 = v2;
  v92 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4_22();
  v97 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F68);
  OUTLINED_FUNCTION_0_1();
  v89 = v7;
  v90 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4_22();
  v96 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F70);
  OUTLINED_FUNCTION_0_1();
  v87 = v12;
  v88 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_4_22();
  v94 = v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F78);
  OUTLINED_FUNCTION_0_1();
  v86 = v17;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_4_22();
  v93 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F80);
  OUTLINED_FUNCTION_0_1();
  v84 = v22;
  v85 = v21;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_4_22();
  v95 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F88);
  OUTLINED_FUNCTION_0_1();
  v81 = v27;
  v82 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v75 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F90);
  OUTLINED_FUNCTION_0_1();
  v80 = v33;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v75 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829F98);
  OUTLINED_FUNCTION_0_1();
  v40 = v39;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v75 - v43;
  v45 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_270774754();
  v46 = v99;
  sub_2707A8FD0();
  if (v46)
  {
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v78 = v37;
  v77 = v32;
  v79 = v31;
  v47 = v95;
  v48 = v96;
  v49 = v97;
  v99 = v40;
  v50 = sub_2707A8DB0();
  v54 = sub_2707749F4(v50, 0);
  if (v52 == v53 >> 1)
  {
LABEL_8:
    v61 = sub_2707A8B30();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829FA0);
    *v63 = &type metadata for HIDDeviceType;
    sub_2707A8D00();
    sub_2707A8B20();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v99 + 8))(v44, v38);
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v76 = v38;
  if (v52 >= (v53 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270774508);
  }

  v75 = *(v51 + v52);
  sub_270774A3C(v52 + 1, v53 >> 1, v54, v51, v52, v53);
  v56 = v55;
  v58 = v57;
  swift_unknownObjectRelease();
  if (v56 != v58 >> 1)
  {
    v38 = v76;
    goto LABEL_8;
  }

  switch(v75)
  {
    case 1:
      v101 = 1;
      sub_27077494C();
      v47 = v79;
      OUTLINED_FUNCTION_1_31();
      swift_unknownObjectRelease();
      v69 = v81;
      v68 = v82;
      goto LABEL_14;
    case 2:
      v102 = 2;
      sub_2707748F8();
      OUTLINED_FUNCTION_1_31();
      swift_unknownObjectRelease();
      v69 = v84;
      v68 = v85;
LABEL_14:
      (*(v69 + 8))(v47, v68);
      goto LABEL_18;
    case 3:
      v103 = 3;
      sub_2707748A4();
      v70 = v93;
      OUTLINED_FUNCTION_1_31();
      swift_unknownObjectRelease();
      (*(v86 + 8))(v70, v83);
      goto LABEL_18;
    case 4:
      v104 = 4;
      sub_270774850();
      v65 = v94;
      OUTLINED_FUNCTION_1_31();
      swift_unknownObjectRelease();
      v66 = v87;
      v67 = v88;
      goto LABEL_17;
    case 5:
      v105 = 5;
      sub_2707747FC();
      v71 = v76;
      sub_2707A8CF0();
      swift_unknownObjectRelease();
      (*(v90 + 8))(v48, v89);
      v72 = OUTLINED_FUNCTION_5_19();
      v74 = v71;
      break;
    case 6:
      v106 = 6;
      sub_2707747A8();
      v65 = v49;
      OUTLINED_FUNCTION_1_31();
      swift_unknownObjectRelease();
      v66 = v91;
      v67 = v92;
LABEL_17:
      (*(v67 + 8))(v65, v66);
LABEL_18:
      v72 = OUTLINED_FUNCTION_5_19();
      v74 = v49;
      break;
    default:
      v100 = 0;
      sub_2707749A0();
      v59 = v78;
      v60 = v76;
      sub_2707A8CF0();
      swift_unknownObjectRelease();
      (*(v80 + 8))(v59, v77);
      v72 = OUTLINED_FUNCTION_5_19();
      v74 = v60;
      break;
  }

  v73(v72, v74);
  __swift_destroy_boxed_opaque_existential_1(v98);
  return v75;
}

uint64_t sub_270774524@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HIDDeviceType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2707745BC()
{
  v1 = *v0;
  sub_2707A8F60();
  HIDDeviceType.hash(into:)(v3, v1);
  return sub_2707A8FC0();
}

uint64_t HIDDeviceType.init(properties:)(uint64_t a1, void *a2)
{
  v3 = HIDServiceProperties.subscript.getter();
  if (v4)
  {
    LOBYTE(v5) = HIDDeviceType.init(deviceTypeHint:)(*&v3);
    if (v5 != 7)
    {
      v8 = v5;

      return v8;
    }
  }

  v6 = HIDServiceProperties.primaryUsagePair.getter();

  v7 = HIWORD(v6);
  if (v6 != 1)
  {
    if (v6 == 65280)
    {
      if (v7 == 102)
      {
        return 6;
      }
    }

    else if (v6 == 13)
    {
      switch(v7)
      {
        case 4u:
          return 1;
        case 0xCu:
          return 5;
        case 5u:
          return 0;
      }
    }

    return 4;
  }

  if (v7 == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  if (v7 == 6)
  {
    return 3;
  }

  else
  {
    return v9;
  }
}

uint64_t HIDServiceProperties.deviceType.getter(uint64_t a1, void *a2)
{
  v3 = a2;

  return HIDDeviceType.init(properties:)(a1, v3);
}

unint64_t sub_270774754()
{
  result = qword_280829F20;
  if (!qword_280829F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F20);
  }

  return result;
}

unint64_t sub_2707747A8()
{
  result = qword_280829F28;
  if (!qword_280829F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F28);
  }

  return result;
}

unint64_t sub_2707747FC()
{
  result = qword_280829F30;
  if (!qword_280829F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F30);
  }

  return result;
}

unint64_t sub_270774850()
{
  result = qword_280829F38;
  if (!qword_280829F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F38);
  }

  return result;
}

unint64_t sub_2707748A4()
{
  result = qword_280829F40;
  if (!qword_280829F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F40);
  }

  return result;
}

unint64_t sub_2707748F8()
{
  result = qword_280829F48;
  if (!qword_280829F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F48);
  }

  return result;
}

unint64_t sub_27077494C()
{
  result = qword_280829F50;
  if (!qword_280829F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F50);
  }

  return result;
}

unint64_t sub_2707749A0()
{
  result = qword_280829F58;
  if (!qword_280829F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829F58);
  }

  return result;
}

uint64_t sub_2707749F4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_270774A3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_270774ABC()
{
  result = qword_280829FA8;
  if (!qword_280829FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FA8);
  }

  return result;
}

uint64_t sub_270774B24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_270774BB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270774C7CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270774D28()
{
  result = qword_280829FB0;
  if (!qword_280829FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FB0);
  }

  return result;
}

unint64_t sub_270774D80()
{
  result = qword_280829FB8;
  if (!qword_280829FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FB8);
  }

  return result;
}

unint64_t sub_270774DD8()
{
  result = qword_280829FC0;
  if (!qword_280829FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FC0);
  }

  return result;
}

unint64_t sub_270774E30()
{
  result = qword_280829FC8;
  if (!qword_280829FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FC8);
  }

  return result;
}

unint64_t sub_270774E88()
{
  result = qword_280829FD0;
  if (!qword_280829FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FD0);
  }

  return result;
}

unint64_t sub_270774EE0()
{
  result = qword_280829FD8;
  if (!qword_280829FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FD8);
  }

  return result;
}

unint64_t sub_270774F38()
{
  result = qword_280829FE0;
  if (!qword_280829FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FE0);
  }

  return result;
}

unint64_t sub_270774F90()
{
  result = qword_280829FE8;
  if (!qword_280829FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FE8);
  }

  return result;
}

unint64_t sub_270774FE8()
{
  result = qword_280829FF0;
  if (!qword_280829FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FF0);
  }

  return result;
}

unint64_t sub_270775040()
{
  result = qword_280829FF8;
  if (!qword_280829FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829FF8);
  }

  return result;
}

unint64_t sub_270775098()
{
  result = qword_28082A000;
  if (!qword_28082A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A000);
  }

  return result;
}

unint64_t sub_2707750F0()
{
  result = qword_28082A008;
  if (!qword_28082A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A008);
  }

  return result;
}

unint64_t sub_270775148()
{
  result = qword_28082A010;
  if (!qword_28082A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A010);
  }

  return result;
}

unint64_t sub_2707751A0()
{
  result = qword_28082A018;
  if (!qword_28082A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A018);
  }

  return result;
}

unint64_t sub_2707751F8()
{
  result = qword_28082A020;
  if (!qword_28082A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A020);
  }

  return result;
}

unint64_t sub_270775250()
{
  result = qword_28082A028;
  if (!qword_28082A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A028);
  }

  return result;
}

unint64_t sub_2707752A8()
{
  result = qword_28082A030;
  if (!qword_28082A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_2707A8CF0();
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return sub_2707A8DC0();
}

uint64_t RotationEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.z.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t RotationEvent.rotation.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27077550C@<X0>(void *a1@<X8>)
{
  result = RotationEvent.x.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_270775544@<X0>(void *a1@<X8>)
{
  result = RotationEvent.y.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27077557C@<X0>(void *a1@<X8>)
{
  result = RotationEvent.z.getter();
  *a1 = v3;
  return result;
}

void HIDFixed.init(doubleValue:)()
{
  OUTLINED_FUNCTION_13_10();
  if (v3 ^ v4 | v2)
  {
    v5 = round(v1 * 65536.0);
    if (v5 > 2147483650.0)
    {
      v6 = 2147483650.0;
    }

    else
    {
      v6 = v5;
    }

    if (v5 > -2147483650.0)
    {
      if (v5 <= 2147483650.0 && (*&v5 & 0x7FFFFFFFFFFFFFFFLL) > v0)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = -2147483650.0;
    }

    if (v6 > -2147483650.0)
    {
      if (v6 < 2147483650.0)
      {
        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t static HIDFixed.+ infix(_:_:)(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.+= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static HIDFixed.- infix(_:_:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.-= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

uint64_t sub_270775764@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.+ infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_27077579C@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.- infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_2707757D8(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return (result << 16);
  }

  __break(1u);
  return result;
}

uint64_t sub_270775800@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = HIDFixed.init(integerLiteral:)(*a1);
  *a2 = result;
  return result;
}

void HIDFixed.init(floatLiteral:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t HIDFixed.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v53[2] = v53 - v9;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_2_27();
  v16 = sub_2707A89F0();
  v53[1] = AssociatedTypeWitness;
  if ((v16 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_27();
    v17 = sub_2707A89F0();
    OUTLINED_FUNCTION_2_27();
    v18 = sub_2707A89E0();
    if ((v17 & 1) == 0)
    {
      if (v18 >= 32)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v18 <= 32)
    {
      swift_getAssociatedConformanceWitness();
      sub_2707A8EB0();
      OUTLINED_FUNCTION_11_12();
      v53[0] = v5;
      sub_2707A8E80();
      OUTLINED_FUNCTION_9_14();
      v35 = OUTLINED_FUNCTION_12_9();
      AssociatedTypeWitness = *(v10 + 8);
      v36 = OUTLINED_FUNCTION_20_1();
      AssociatedTypeWitness(v36);
      if (v35)
      {
        goto LABEL_20;
      }

      v37 = OUTLINED_FUNCTION_4_23();
      v38(v37);
      OUTLINED_FUNCTION_2_27();
      v39 = sub_2707A89D0();
      v40 = OUTLINED_FUNCTION_20_1();
      AssociatedTypeWitness(v40);
      if (v39 < -32768)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

LABEL_6:
    v54 = -32768;
    sub_270775EF8();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_9_14();
    v19 = OUTLINED_FUNCTION_12_9();
    v20 = OUTLINED_FUNCTION_1_32();
    AssociatedTypeWitness(v20);
    if (v19)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89E0() >= 32)
  {
    goto LABEL_6;
  }

LABEL_9:
  v21 = OUTLINED_FUNCTION_4_23();
  v22(v21);
  OUTLINED_FUNCTION_2_27();
  v23 = sub_2707A89D0();
  v24 = OUTLINED_FUNCTION_1_32();
  AssociatedTypeWitness(v24);
  if (v23 < -32768)
  {
    goto LABEL_20;
  }

LABEL_10:
  OUTLINED_FUNCTION_2_27();
  v25 = sub_2707A89F0();
  OUTLINED_FUNCTION_2_27();
  v26 = sub_2707A89E0();
  if (v25)
  {
    if (v26 > 32)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v26 <= 31)
  {
LABEL_19:
    v29 = OUTLINED_FUNCTION_4_23();
    v30(v29);
    OUTLINED_FUNCTION_2_27();
    v31 = sub_2707A89D0();
    v32 = OUTLINED_FUNCTION_1_32();
    AssociatedTypeWitness(v32);
    if (v31 < 0x8000)
    {
      goto LABEL_13;
    }

LABEL_20:
    (AssociatedTypeWitness)(a1, a2);
    v33 = 0;
    v34 = 1;
    goto LABEL_43;
  }

LABEL_12:
  v54 = 0x7FFF;
  sub_270775EF8();
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_9_14();
  v27 = sub_2707A8570();
  v28 = OUTLINED_FUNCTION_1_32();
  AssociatedTypeWitness(v28);
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_13:
  (*(v10 + 16))(v14, a1, a2);
  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89F0())
  {
    OUTLINED_FUNCTION_0_40();
    if (sub_2707A89E0() > 32)
    {
      v54 = 0x80000000;
      OUTLINED_FUNCTION_2_27();
      if (sub_2707A89F0())
      {
        OUTLINED_FUNCTION_0_40();
        if (sub_2707A89E0() < 32)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      OUTLINED_FUNCTION_2_27();
      v41 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_40();
      v42 = sub_2707A89E0();
      if (v41)
      {
        if (v42 > 32)
        {
LABEL_26:
          sub_270775EF8();
          OUTLINED_FUNCTION_3_17();
          OUTLINED_FUNCTION_9_14();
          v43 = OUTLINED_FUNCTION_12_9();
          v44 = OUTLINED_FUNCTION_20_1();
          result = (AssociatedTypeWitness)(v44);
          if ((v43 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        swift_getAssociatedConformanceWitness();
        sub_2707A8EB0();
        OUTLINED_FUNCTION_11_12();
        sub_2707A8E80();
        OUTLINED_FUNCTION_9_14();
        v46 = OUTLINED_FUNCTION_12_9();
        v47 = OUTLINED_FUNCTION_20_1();
        result = (AssociatedTypeWitness)(v47);
        if (v46)
        {
          goto LABEL_44;
        }

LABEL_31:
        OUTLINED_FUNCTION_0_40();
        sub_2707A89D0();
        goto LABEL_32;
      }

      if (v42 < 32)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_0_40();
  if (sub_2707A89E0() <= 32)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v54 = 0x7FFFFFFF;
    OUTLINED_FUNCTION_2_27();
    v48 = sub_2707A89F0();
    OUTLINED_FUNCTION_0_40();
    v49 = sub_2707A89E0();
    if ((v48 & 1) == 0)
    {
      break;
    }

    if (v49 < 33)
    {
      goto LABEL_41;
    }

LABEL_35:
    sub_270775EF8();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_9_14();
    v50 = sub_2707A8570();
    v51 = OUTLINED_FUNCTION_20_1();
    AssociatedTypeWitness(v51);
    if (v50)
    {
      __break(1u);
LABEL_37:
      OUTLINED_FUNCTION_0_40();
      if (sub_2707A89E0() == 32)
      {
        OUTLINED_FUNCTION_2_27();
        if ((sub_2707A89F0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  if (v49 >= 32)
  {
    goto LABEL_35;
  }

LABEL_41:
  OUTLINED_FUNCTION_0_40();
  sub_2707A89D0();
LABEL_42:
  OUTLINED_FUNCTION_0_40();
  v52 = sub_2707A89D0();
  (AssociatedTypeWitness)(a1, a2);
  (AssociatedTypeWitness)(v14, a2);
  v34 = 0;
  v33 = v52 << 16;
LABEL_43:
  LOBYTE(v54) = v34;
  return v33 | (v34 << 32);
}

unint64_t sub_270775EF8()
{
  result = qword_28082A038;
  if (!qword_28082A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A038);
  }

  return result;
}

uint64_t HIDFixed.magnitude.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

unint64_t sub_270775F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = HIDFixed.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_270775F88@<X0>(_DWORD *a1@<X8>)
{
  result = HIDFixed.magnitude.getter(*v1);
  *a1 = result;
  return result;
}

void static HIDFixed.* infix(_:_:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

void static HIDFixed./ infix(_:_:)()
{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

{
  OUTLINED_FUNCTION_13_10();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_0();
    return;
  }

  v4 = OUTLINED_FUNCTION_10_12(v0);
  v7 = OUTLINED_FUNCTION_5_20(v4, v5, 2147483650.0);
  if (!v1 & v11)
  {
    if (v8 <= v9 && (v6 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v10;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < 2147483650.0)
  {
    OUTLINED_FUNCTION_8_16(v7);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_2707762B8()
{
  result = qword_28082A040;
  if (!qword_28082A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A040);
  }

  return result;
}

unint64_t sub_270776328()
{
  result = qword_28082A048;
  if (!qword_28082A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A048);
  }

  return result;
}

unint64_t sub_270776380()
{
  result = qword_28082A050;
  if (!qword_28082A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_2707A8960();
}

double OUTLINED_FUNCTION_5_20(double a1, double a2, double a3)
{
  if (a2 > a3)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_2707A8570();
}

double ScrollEvent.delta.getter()
{
  IOHIDEventGetFloatValue();
  v1 = v0;
  OUTLINED_FUNCTION_1_33();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  return v1;
}

uint64_t ScrollEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 6)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t (*ScrollEvent.x.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270776674;
}

uint64_t (*ScrollEvent.y.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_2707766E0;
}

uint64_t (*ScrollEvent.z.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270776750;
}

uint64_t (*ScrollEvent.isPixels.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_2707767F4;
}

uint64_t sub_270776804@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScrollEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

void sub_27077682C(uint64_t a1@<X8>)
{
  *a1 = ScrollEvent.delta.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ScrollEvent.delta.setter()
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_1_33();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t (*ScrollEvent.delta.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  IOHIDEventGetFloatValue();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  return sub_270776960;
}

uint64_t sub_270776960()
{
  IOHIDEventSetFloatValue();
  OUTLINED_FUNCTION_1_33();
  IOHIDEventSetFloatValue();

  return IOHIDEventSetFloatValue();
}

uint64_t sub_2707769C4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ScrollEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707769F8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ScrollEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270776A2C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ScrollEvent.z.getter();
  *v1 = v3;
  return result;
}

BOOL sub_270776A60(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = ScrollEvent.isPixels.getter();
  *v1 = result;
  return result;
}

uint64_t HIDServicePropertyKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

UniversalHID::HIDServicePropertyKey_optional __swiftcall HIDServicePropertyKey.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = static HIDServicePropertyKey.allCases.getter();
  v9[0] = countAndFlagsBits;
  v9[1] = object;
  v8[2] = v9;
  v4 = sub_27074FFF4(sub_270777858, v8, v3);

  if (!v4)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v6 = countAndFlagsBits;
  v7 = object;
  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v5;
  return result;
}

uint64_t static HIDServicePropertyKey.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A068);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707B11D0;
  *(v0 + 32) = 0x656369767265535FLL;
  *(v0 + 40) = 0xEA00000000004449;
  strcpy((v0 + 48), "HIDAccelCurves");
  *(v0 + 63) = -18;
  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x80000002707B4D20;
  strcpy((v0 + 80), "Authenticated");
  *(v0 + 94) = -4864;
  *(v0 + 96) = 0x6E492D746C697542;
  *(v0 + 104) = 0xE800000000000000;
  strcpy((v0 + 112), "CapsLockDelay");
  *(v0 + 126) = -4864;
  *(v0 + 128) = 0xD000000000000016;
  *(v0 + 136) = 0x80000002707B4D40;
  strcpy((v0 + 144), "DeviceTypeHint");
  *(v0 + 159) = -18;
  OUTLINED_FUNCTION_7_18();
  v1[20] = 0xD000000000000010;
  v1[21] = v2;
  v1[22] = 0xD000000000000024;
  v1[23] = 0x80000002707B4D60;
  OUTLINED_FUNCTION_7_18();
  v3[24] = 0xD000000000000014;
  v3[25] = v4;
  v3[26] = 0x5579616C70736964;
  v3[27] = 0xEB00000000444955;
  OUTLINED_FUNCTION_7_18();
  v5[28] = 0xD000000000000011;
  v5[29] = v6;
  v5[30] = 0xD000000000000019;
  v5[31] = 0x80000002707B4DB0;
  OUTLINED_FUNCTION_7_18();
  v7[32] = 0xD000000000000015;
  v7[33] = v8;
  v7[34] = 0xD00000000000001ELL;
  v7[35] = 0x80000002707B4DF0;
  OUTLINED_FUNCTION_5_21();
  *(v9 + 288) = 0xD000000000000012;
  *(v9 + 296) = v10;
  OUTLINED_FUNCTION_5_21();
  v11[38] = 0xD000000000000021;
  v11[39] = v12;
  v11[40] = 0x437972746E756F43;
  v11[41] = 0xEB0000000065646FLL;
  OUTLINED_FUNCTION_5_21();
  *(v13 + 336) = v14;
  *(v13 + 344) = v15;
  strcpy((v13 + 352), "StandardType");
  *(v13 + 365) = 0;
  *(v13 + 366) = -5120;
  strcpy((v13 + 368), "Manufacturer");
  *(v13 + 381) = 0;
  *(v13 + 382) = -5120;
  *(v13 + 384) = v16;
  *(v13 + 392) = 0x80000002707B4E80;
  *(v13 + 400) = 0xD000000000000020;
  *(v13 + 408) = 0x80000002707B4EA0;
  OUTLINED_FUNCTION_5_21();
  *(v17 + 416) = v18;
  *(v17 + 424) = v19;
  OUTLINED_FUNCTION_5_21();
  *(v20 + 432) = 0xD00000000000001BLL;
  *(v20 + 440) = v21;
  OUTLINED_FUNCTION_5_21();
  *(v22 + 448) = 0xD00000000000001ALL;
  *(v22 + 456) = v23;
  OUTLINED_FUNCTION_5_21();
  *(v24 + 464) = v25;
  *(v24 + 472) = v26;
  OUTLINED_FUNCTION_10_13();
  *(v27 + 480) = 0xD000000000000014;
  *(v27 + 488) = v28;
  OUTLINED_FUNCTION_10_13();
  *(v29 + 496) = 0xD000000000000014;
  *(v29 + 504) = v30;
  OUTLINED_FUNCTION_10_13();
  *(v31 + 512) = 0xD000000000000014;
  *(v31 + 520) = v32;
  strcpy((v31 + 528), "PrimaryUsage");
  *(v31 + 541) = 0;
  *(v31 + 542) = -5120;
  OUTLINED_FUNCTION_10_13();
  v33[68] = v34;
  v33[69] = v35;
  v33[70] = 0x746375646F7250;
  v33[71] = 0xE700000000000000;
  v33[72] = 0x49746375646F7250;
  v33[73] = 0xE900000000000044;
  OUTLINED_FUNCTION_5_21();
  *(v36 + 592) = v37;
  *(v36 + 600) = v38;
  strcpy((v36 + 608), "ReportInterval");
  *(v36 + 623) = -18;
  OUTLINED_FUNCTION_6_19();
  v39[78] = v40;
  v39[79] = v41;
  v39[80] = v42;
  v39[81] = 0x80000002707B4FF0;
  v39[82] = 0xD00000000000001DLL;
  v39[83] = 0x80000002707B5010;
  OUTLINED_FUNCTION_6_19();
  *(v43 + 672) = 0xD000000000000014;
  *(v43 + 680) = v44;
  OUTLINED_FUNCTION_6_19();
  *(v45 + 688) = 0xD000000000000013;
  *(v45 + 696) = v46;
  OUTLINED_FUNCTION_6_19();
  *(v47 + 704) = v48;
  *(v47 + 712) = v49;
  OUTLINED_FUNCTION_6_19();
  *(v50 + 720) = v51;
  *(v50 + 728) = v52;
  OUTLINED_FUNCTION_6_19();
  *(v53 + 736) = 0xD000000000000018;
  *(v53 + 744) = v54;
  OUTLINED_FUNCTION_6_19();
  v55[94] = v56;
  v55[95] = v57;
  v55[96] = 0x726F70736E617254;
  v55[97] = v58 | 0x30;
  OUTLINED_FUNCTION_11_13();
  *(v59 + 784) = 0xD000000000000017;
  *(v59 + 792) = v60;
  OUTLINED_FUNCTION_11_13();
  *(v61 + 800) = v62;
  *(v61 + 808) = v63;
  OUTLINED_FUNCTION_11_13();
  *(v64 + 816) = v65;
  *(v64 + 824) = v66;
  OUTLINED_FUNCTION_11_13();
  *(v67 + 832) = v68;
  *(v67 + 840) = v69;
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  v70 = unk_28082A060;
  *(v0 + 848) = qword_28082A058;
  *(v0 + 856) = v70;
  OUTLINED_FUNCTION_7_18();
  *(v0 + 864) = 0xD000000000000015;
  *(v0 + 872) = v71;
  *(v0 + 880) = 0x4449726F646E6556;
  *(v0 + 888) = 0xE800000000000000;

  return v0;
}

UniversalHID::HIDServicePropertyKey_optional __swiftcall HIDServicePropertyKey.init(intValue:)(Swift::Int intValue)
{
  v1 = 0;
  v2 = 0;
  result.value.rawValue._object = v2;
  result.value.rawValue._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_270777660()
{
  result = sub_2707A85D0();
  qword_28082A058 = result;
  unk_28082A060 = v1;
  return result;
}

uint64_t static HIDServicePropertyKey.userDeviceCreateInactive.getter()
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  v0 = qword_28082A058;

  return v0;
}

uint64_t sub_270777718@<X0>(Swift::String *a1@<X0>, UniversalHID::HIDServicePropertyKey *a2@<X8>)
{
  v4 = HIDServicePropertyKey.init(rawValue:)(*a1);
  result = v4.rawValue._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_270777748@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_270777754@<X0>(uint64_t *a1@<X8>)
{
  result = static HIDServicePropertyKey.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270777784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&result = HIDServicePropertyKey.init(stringValue:)(*&a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2707777CC(uint64_t a1)
{
  v2 = sub_2707779F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270777808(uint64_t a1)
{
  v2 = sub_2707779F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27077787C()
{
  result = qword_28082A070;
  if (!qword_28082A070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28082A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A070);
  }

  return result;
}

unint64_t sub_2707778E4()
{
  result = qword_28082A080;
  if (!qword_28082A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A080);
  }

  return result;
}

unint64_t sub_27077793C()
{
  result = qword_28082A088;
  if (!qword_28082A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A088);
  }

  return result;
}

unint64_t sub_270777994()
{
  result = qword_28082A090;
  if (!qword_28082A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A090);
  }

  return result;
}

unint64_t sub_2707779F8()
{
  result = qword_28082A098;
  if (!qword_28082A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_once();
}

void HIDReport.setScaledValue<A>(_:as:atIndex:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == MEMORY[0x277D84900])
  {
    OUTLINED_FUNCTION_0_43();
    if (v10 ^ v11 | v9)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_12_10();

      sub_2707788F0(v16);
      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_13_11();
    __break(1u);
    JUMPOUT(0x270778038);
  }

  if (a4 == MEMORY[0x277D84958])
  {
    OUTLINED_FUNCTION_0_43();
    if (v10 ^ v11 | v9)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_12_10();

      sub_270778964(v18);
      return;
    }

    goto LABEL_33;
  }

  if (a4 == MEMORY[0x277D849A8])
  {
    OUTLINED_FUNCTION_0_43();
    if (!(v10 ^ v11 | v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_12_10();

    sub_270778A40(v20);
  }

  else
  {
    if (a4 != MEMORY[0x277D84A28])
    {
      OUTLINED_FUNCTION_0_43();
      if (v10 ^ v11 | v9)
      {
        v12 = v8;
        v13 = v7;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        switch(__ROR8__(sub_2707A8C00() - 8, 3))
        {
          case 0:
            v14 = sub_270716A74();
            v15 = sub_27077889C();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v15, MEMORY[0x277D84B78], a3, a4, MEMORY[0x277D84B78], v13, v14, v15, v12);
            goto LABEL_32;
          case 1:
            v26 = sub_270716ACC();
            v27 = sub_2707787F4();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v27, MEMORY[0x277D84C58], a3, a4, MEMORY[0x277D84C58], v13, v26, v27, v12);
            goto LABEL_32;
          case 3:
            v28 = sub_270716B24();
            v29 = sub_27077874C();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v29, MEMORY[0x277D84CC0], a3, a4, MEMORY[0x277D84CC0], v13, v28, v29, v12);
            goto LABEL_32;
          case 7:
            v24 = sub_270715E10();
            v25 = sub_2707786A4();
            HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(a1, v25, MEMORY[0x277D84D38], a3, a4, MEMORY[0x277D84D38], v13, v24, v25, v12);
LABEL_32:
            OUTLINED_FUNCTION_12_10();
            return;
          default:
            goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    OUTLINED_FUNCTION_0_43();
    if (!(v10 ^ v11 | v9))
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_12_10();

    sub_2707789D8(v22);
  }
}

uint64_t HIDReport.scaledValue<A, B>(as:unsignedType:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v57 = a5;
  v53 = a3;
  v54 = a10;
  v55 = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v60 = v13;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v16, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v59 = v19;
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_8_9();
  v56 = v22 - v23;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_14_9();
  v52 = v26;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v27, v28);
  v30 = (&v52 - v29);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v55;
  v33 = v57;
  v55 = AssociatedConformanceWitness;
  v57 = a11;
  v58 = v30;
  HIDReport.subscript.getter(v53, v32, v33, AssociatedTypeWitness, v30);
  (*(a8 + 24))(a6, a8);
  OUTLINED_FUNCTION_11_14();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_11_14();
    sub_2707A89F0();
    OUTLINED_FUNCTION_11_14();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_27_3();
  }

  v34 = OUTLINED_FUNCTION_25_5();
  v30(v34);
  (*(a8 + 32))(a6, a8);
  OUTLINED_FUNCTION_11_14();
  if (sub_2707A89E0() <= 64)
  {
    OUTLINED_FUNCTION_11_14();
    sub_2707A89F0();
    OUTLINED_FUNCTION_11_14();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_27_3();
  }

  v35 = OUTLINED_FUNCTION_24_4();
  v30(v35);
  v36 = v58;
  v37 = sub_2707A8C10();
  v38 = v59;
  if (v37 <= 0)
  {
    sub_2707A8980();
    OUTLINED_FUNCTION_6_20();
    if (sub_2707A89E0() < 65)
    {
      sub_2707A89F0();
      OUTLINED_FUNCTION_6_20();
      sub_2707A89D0();
      v49 = *(v38 + 8);
      v50 = OUTLINED_FUNCTION_20_1();
      v49(v50);
      v51 = OUTLINED_FUNCTION_22_3();
      return (v49)(v51);
    }

    else
    {
      sub_270715DBC();
      sub_270715E10();
      OUTLINED_FUNCTION_16_10();
      v43 = *(v38 + 8);
      v44 = OUTLINED_FUNCTION_20_1();
      v43(v44);
      v45 = OUTLINED_FUNCTION_22_3();
      return (v43)(v45);
    }
  }

  else
  {
    (*(v59 + 16))(v52, v36, AssociatedTypeWitness);
    OUTLINED_FUNCTION_6_20();
    if (sub_2707A89E0() < 65)
    {
      sub_2707A89F0();
      OUTLINED_FUNCTION_6_20();
      sub_2707A89D0();
      v46 = *(v38 + 8);
      v47 = OUTLINED_FUNCTION_20_1();
      v46(v47);
      v48 = OUTLINED_FUNCTION_22_3();
      return (v46)(v48);
    }

    else
    {
      sub_270715DBC();
      sub_270715E10();
      OUTLINED_FUNCTION_16_10();
      v39 = *(v38 + 8);
      v40 = OUTLINED_FUNCTION_20_1();
      v39(v40);
      v41 = OUTLINED_FUNCTION_22_3();
      return (v39)(v41);
    }
  }
}

unint64_t sub_270778650()
{
  result = qword_28082A0A0;
  if (!qword_28082A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0A0);
  }

  return result;
}

unint64_t sub_2707786A4()
{
  result = qword_28082A0A8;
  if (!qword_28082A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0A8);
  }

  return result;
}

unint64_t sub_2707786F8()
{
  result = qword_28082A0B0;
  if (!qword_28082A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0B0);
  }

  return result;
}

unint64_t sub_27077874C()
{
  result = qword_28082A0B8;
  if (!qword_28082A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0B8);
  }

  return result;
}

unint64_t sub_2707787A0()
{
  result = qword_28082A0C0;
  if (!qword_28082A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0C0);
  }

  return result;
}

unint64_t sub_2707787F4()
{
  result = qword_28082A0C8;
  if (!qword_28082A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0C8);
  }

  return result;
}

unint64_t sub_270778848()
{
  result = qword_28082A0D0;
  if (!qword_28082A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0D0);
  }

  return result;
}

unint64_t sub_27077889C()
{
  result = qword_28082A0D8;
  if (!qword_28082A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0D8);
  }

  return result;
}

void sub_2707788F0(double a1)
{
  v2 = sub_2707162EC(128, 127);
  v3 = a1 >= 0.0 || v2 == 0;
  if (v3 && v2 < 0)
  {
    __break(1u);
  }

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

void sub_270778964(double a1)
{
  v2 = sub_2707161F0(0x8000, 0x7FFFLL);
  v3 = a1 >= 0.0 || v2 == 0;
  if (v3 && v2 < 0)
  {
    __break(1u);
  }

  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcis_0();
}

void sub_2707789D8(double a1)
{
  v2 = sub_270716978(0x8000000000000000, 0x7FFFFFFFFFFFFFFFLL);
  v3 = a1 >= 0.0 || v2 == 0;
  if (v3 && v2 < 0)
  {
    __break(1u);
  }

  _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
}

void sub_270778A40(double a1)
{
  v2 = sub_270716884(0x80000000, 0x7FFFFFFFLL);
  v3 = a1 >= 0.0 || v2 == 0;
  if (v3 && v2 < 0)
  {
    __break(1u);
  }

  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t HIDReport.setScaledValue<A, B>(_:as:unsignedType:atIndex:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v118 = a9;
  v121 = a8;
  v128 = a7;
  v116 = a4;
  v117 = a3;
  v13 = *(a10 + 8);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v104[4] = v104 - v16;
  v115 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_1();
  v113 = v17;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_2_30();
  v28 = MEMORY[0x28223BE20](v26, v27);
  v112 = v104 - v29;
  v120 = a6;
  MEMORY[0x28223BE20](v28, v30);
  v119 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v14;
  v32 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v32, v33);
  v34 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_1();
  v124 = v35;
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_2_30();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_14_9();
  v125 = v40;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_14_9();
  v123 = v43;
  OUTLINED_FUNCTION_10_4();
  v46 = MEMORY[0x28223BE20](v44, v45);
  v48 = v104 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v50 = *(v128 + 24);
  v51 = a5;
  v110 = v128 + 24;
  v109 = v50;
  (v50)(a5);
  OUTLINED_FUNCTION_4_6();
  v52 = sub_2707A89F0();
  v127 = v13;
  v122 = v48;
  if (v52)
  {
    OUTLINED_FUNCTION_4_26();
    if (sub_2707A89E0() >= 64)
    {
      v129 = 0;
      sub_270710EEC();
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v64 = OUTLINED_FUNCTION_8_18();
      v54 = v124;
      v65 = *(v124 + 8);
      v66 = OUTLINED_FUNCTION_17_7();
      v65(v66);
      v67 = OUTLINED_FUNCTION_9_16();
      v126 = v65;
      result = (v65)(v67);
      a5 = v51;
      if ((v64 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_26();
      v53 = sub_2707A89D0();
      v54 = v124;
      v55 = OUTLINED_FUNCTION_9_16();
      v126 = v56;
      result = (v56)(v55);
      if ((v53 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_4_6();
  v58 = sub_2707A89F0();
  OUTLINED_FUNCTION_4_26();
  v59 = sub_2707A89E0();
  if (v58)
  {
    if (v59 > 64)
    {
      v129 = 0;
      sub_270710EEC();
      v48 = v122;
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v60 = OUTLINED_FUNCTION_8_18();
      v54 = v124;
      v61 = *(v124 + 8);
      v62 = OUTLINED_FUNCTION_17_7();
      v61(v62);
      v63 = OUTLINED_FUNCTION_9_16();
      v126 = v61;
      result = (v61)(v63);
      if ((v60 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    swift_getAssociatedConformanceWitness();
    sub_2707A8EB0();
    v48 = v122;
    sub_2707A8E80();
    v71 = OUTLINED_FUNCTION_8_18();
    v54 = v124;
    v72 = *(v124 + 8);
    v73 = OUTLINED_FUNCTION_17_7();
    v72(v73);
    v126 = v72;
    if (v71)
    {
      v74 = OUTLINED_FUNCTION_9_16();
      v72(v74);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_4_26();
    v75 = sub_2707A89D0();
    v76 = OUTLINED_FUNCTION_9_16();
    result = (v72)(v76);
    if (v75 < 0)
    {
LABEL_18:
      v77 = *(v128 + 32);
      v78 = v123;
      v77(a5);
      OUTLINED_FUNCTION_4_6();
      v79 = sub_2707A89F0();
      OUTLINED_FUNCTION_4_6();
      v80 = sub_2707A89E0();
      if (v79)
      {
        v81 = v80 <= 64;
      }

      else
      {
        v81 = v80 <= 63;
      }

      v82 = v126;
      if (v81)
      {
        goto LABEL_24;
      }

      v129 = 0;
      sub_270710EEC();
      OUTLINED_FUNCTION_15_9();
      sub_2707A8960();
      v83 = sub_2707A8570();
      v84 = OUTLINED_FUNCTION_17_7();
      v82(v84);
      (v82)(v78, v34);
      if ((v83 & 1) == 0)
      {
        do
        {
          __break(1u);
LABEL_24:
          v85 = sub_2707A89D0();
          (v82)(v78, v34);
        }

        while (v85 <= 0);
      }

      v109(a5, v128);
      v86 = v111;
      v87 = OUTLINED_FUNCTION_0_13();
      v77(v87);
      swift_getAssociatedConformanceWitness();
      v88 = v125;
      v89 = v34;
      FixedWidthInteger.init(scaledValue:logicalMinimum:logicalMaximum:)(v48, v86, v34, v125, a1);
      v91 = v114;
      v90 = v115;
      v92 = v113;
      if (a1 >= 0.0)
      {
        goto LABEL_29;
      }

      sub_2707A87E0();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_0_13();
      v93 = sub_2707A89F0();
      OUTLINED_FUNCTION_0_13();
      v94 = sub_2707A89E0();
      if (v93)
      {
        if (v94 > 64)
        {
          goto LABEL_28;
        }
      }

      else if (v94 > 63)
      {
LABEL_28:
        v129 = 0;
        sub_270710EEC();
        v95 = v108;
        sub_2707A8960();
        OUTLINED_FUNCTION_9_16();
        swift_getAssociatedConformanceWitness();
        v96 = v112;
        v89 = sub_2707A8570();
        v97 = *(v92 + 8);
        v98 = v95;
        v88 = v125;
        v97(v98, v90);
        v97(v96, v90);
        v48 = v122;
        if ((v89 & 1) == 0)
        {
LABEL_29:
          (*(v54 + 16))(v48, v88, v34);
          OUTLINED_FUNCTION_19_4();
          OUTLINED_FUNCTION_17_7();
          sub_2707A8A10();
LABEL_33:
          HIDReport.subscript.setter(v91, v116, v117, v89);
          return (v126)(v88, v34);
        }

LABEL_32:
        sub_2707A87E0();
        swift_getAssociatedConformanceWitness();
        sub_2707A8EB0();
        v100 = v104[2];
        v89 = v90;
        sub_2707A8E80();
        v91 = v104[3];
        sub_2707A8C90();
        v97(v100, v90);
        v101 = OUTLINED_FUNCTION_11_14();
        (v97)(v101);
        sub_2707A8980();
        v97(v91, v90);
        OUTLINED_FUNCTION_19_4();
        v88 = v125;
        sub_2707A8A10();
        goto LABEL_33;
      }

      v99 = v112;
      OUTLINED_FUNCTION_0_13();
      v89 = sub_2707A89D0();
      v97 = *(v92 + 8);
      v97(v99, v90);
      v48 = v122;
      if (v89 <= 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (v59 < 64)
    {
      v68 = sub_2707A89D0();
      v54 = v124;
      v69 = OUTLINED_FUNCTION_9_16();
      v126 = v70;
      result = (v70)(v69);
      v48 = v122;
      if ((v68 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    v102 = OUTLINED_FUNCTION_9_16();
    result = v103(v102);
  }

LABEL_34:
  __break(1u);
  return result;
}