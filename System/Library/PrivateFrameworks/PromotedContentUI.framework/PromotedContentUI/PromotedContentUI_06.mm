void sub_1C1A1E6B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03BE8);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1C1991010(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1A1E890@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v4 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = [*(v1 + v3) representations];
  sub_1C19A9E58(&unk_1EBF04670);
  v6 = sub_1C1A6F51C();

  if (v6 >> 62)
  {
    result = sub_1C1A6F9EC();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    v4 = 0;
    goto LABEL_10;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69055B0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

LABEL_10:
  v8 = [*(v1 + v3) adType];
  if (v8 > 8)
  {
    v16 = sub_1C1A6D48C();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    if (((1 << v8) & 0x1D4) != 0)
    {
      goto LABEL_12;
    }

    if (((1 << v8) & 0x23) == 0)
    {
      if (!v4)
      {
        goto LABEL_13;
      }

      sub_1C1A6E2BC();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        sub_1C1A6E2AC();
        swift_unknownObjectRelease_n();
        v15 = sub_1C1A6D48C();
        v10 = *(*(v15 - 8) + 56);
        v11 = v15;
        v12 = a1;
        v13 = 0;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (!v4)
    {
      goto LABEL_13;
    }

    sub_1C1A6E33C();
    if (!swift_dynamicCastClass() || (swift_unknownObjectRetain(), v14 = sub_1C1A6E31C(), swift_unknownObjectRelease(), !v14))
    {
LABEL_12:
      swift_unknownObjectRelease();
LABEL_13:
      v9 = sub_1C1A6D48C();
      v10 = *(*(v9 - 8) + 56);
      v11 = v9;
      v12 = a1;
      v13 = 1;
LABEL_14:

      return v10(v12, v13, 1, v11);
    }

    sub_1C1A6E15C();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1A1EB60()
{
  v1 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v2 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (v2)
  {
LABEL_10:
    v6 = [*(v0 + v1) adType];
    if (v6 > 4)
    {
      if (v6 != 5)
      {
        goto LABEL_18;
      }
    }

    else if (v6 > 1)
    {
      goto LABEL_18;
    }

    if (!v2)
    {
      return 0;
    }

    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v7 = sub_1C1A6E31C();
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_1C1A6E16C();

        [v8 doubleValue];
        v10 = v9;

        swift_unknownObjectRelease();
        return v10;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = [*(v0 + v1) representations];
  sub_1C19A9E58(&unk_1EBF04670);
  v4 = sub_1C1A6F51C();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_1C1A6F9EC();
  if (!result)
  {
LABEL_9:

    v2 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C69055B0](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v4 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WebAdView.webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView);
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy)) != 0)
  {
    sub_1C198FB8C(0, &qword_1EDE63F38);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    swift_unknownObjectRetain_n();

    sub_1C1A6F6BC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v6 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1A73A30;
    v8 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v9 = sub_1C1A6F3CC();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C199E518();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    sub_1C1A6F18C();
  }
}

void sub_1C1A1EF94(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 creativeStateDidChange_];
    v5 = [*&v4[OBJC_IVAR___APPCPromotedContentView_promotedContent] isOutstreamVideoAd];
    v6 = 95;
    if (v5)
    {
      v6 = 50;
    }

    [a2 creativeVisibilityDidChange_];
  }
}

Swift::Void __swiftcall WebAdView.webProcessDiagnosticJSOStatusReported(_:status:)(Swift::String _, Swift::String status)
{
  v3 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) diagnosticMetricHelper];
  v4 = sub_1C1A6F39C();
  v5 = sub_1C1A6F39C();
  [v3 templateMetricWithName:v4 argument:v5];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall WebAdView.webProcessMRAIDJSODidCallClose()()
{
  v1 = v0;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  v4 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v5 = sub_1C1A6F3CC();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C199E518();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1C1A6F18C();
}

void WebAdView.webProcessMRAIDJSODidCallExpand(_:withMaximumWidth:andHeight:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1C1A6D48C();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1A6D62C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v39 - v14;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v15 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1A74920;
  v43 = a1;
  v17 = sub_1C1A6D40C();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1C199E518();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = MEMORY[0x1E69E63B0];
  v21 = MEMORY[0x1E69E6438];
  *(v16 + 96) = MEMORY[0x1E69E63B0];
  *(v16 + 104) = v21;
  *(v16 + 72) = a2;
  *(v16 + 136) = v20;
  *(v16 + 144) = v21;
  *(v16 + 112) = a3;
  sub_1C1A6F18C();

  v22 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v46 = v4;
  v23 = [*&v4[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
  if (v23)
  {
    v40 = v22;
    v24 = [v23 id];
    swift_unknownObjectRelease();
    sub_1C1A6D60C();

    v25 = v47;
    v26 = v45;
    (*(v47 + 32))(v45, v12, v48);
    sub_1C1A6D5EC();
    (*(v41 + 16))(v44, v43, v42);
    objc_allocWithZone(sub_1C1A6DFCC());
    v27 = v46;
    v28 = v46;
    v29 = sub_1C1A6DF7C();
    v30 = (*&v28[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation);
    v31 = *v30;
    v32 = v30[1];
    v33 = *&v27[v40];
    swift_unknownObjectRetain();
    [v28 frame];
    sub_1C1A41E28(v29, v33, v31, v32, v34, v35, v36, v37);

    swift_unknownObjectRelease();
    (*(v25 + 8))(v26, v48);
  }

  else
  {
    sub_1C1A6F66C();
    v48 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    v38 = v48;
  }
}

Swift::Void __swiftcall WebAdView.webProcessMRAIDJSODidCallCreateCalendarEvent(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v4 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A73A30;
  v6 = sub_1C1A6F32C();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C199E518();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_1C1A6F18C();

  v9 = sub_1C1A1FE18(a1._rawValue);
  if (v9)
  {
    sub_1C1A1DF3C(v9);

    v10 = objc_allocWithZone(sub_1C1A6E0AC());
    v11 = sub_1C1A6E08C();
    v12 = (*&v2[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation);
    v13 = *v12;
    v14 = v12[1];
    v15 = *&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent];
    swift_unknownObjectRetain();
    [v2 frame];
    sub_1C1A41E28(v11, v15, v13, v14, v16, v17, v18, v19);

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1C1A1FBA0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03CE8);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1C19A1A5C(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_1C19916E4(v27, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_1C1991010(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1C1A1FE18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF048D0);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1C19B7870(*(a1 + 48) + 40 * v12, v24);
        sub_1C19A1A5C(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1C19B7870(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1C1991140(v21, &qword_1EBF048D8);

          goto LABEL_23;
        }

        sub_1C19A1A5C(v22 + 8, v20);
        sub_1C1991140(v21, &qword_1EBF048D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1C1991010(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void WebAdView.webProcessMRAIDJSODidCallOpen(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v8 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1A73A30;
  v10 = sub_1C1A6D40C();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C199E518();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1C1A6F18C();

  (*(v5 + 16))(v7, a1, v4);
  v13 = objc_allocWithZone(sub_1C1A6E8FC());
  v14 = v2;
  v15 = sub_1C1A6E8EC();
  v16 = (*&v14[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation);
  v17 = *v16;
  v18 = v16[1];
  [v14 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v14[OBJC_IVAR___APPCPromotedContentView_expandedAdFrame];
  if ((v14[OBJC_IVAR___APPCPromotedContentView_expandedAdFrame + 32] & 1) == 0)
  {
    v28 = *(v27 + 3);
    v37 = *(v27 + 2);
    v38 = v28;
    v30 = *v27;
    v29 = *(v27 + 1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = [Strong viewControllerToPresentFrom];
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
    }

    v33 = [v32 presentedViewController];

    if (v33)
    {
      type metadata accessor for ExpandViewController();
      v34 = swift_dynamicCastClass();

      if (v34)
      {
        v20 = v30;
        v22 = v29;
        v24 = v37;
        v26 = v38;
      }
    }
  }

  v35 = *&v14[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  v36 = v15;
  swift_unknownObjectRetain();
  sub_1C1A41E28(v15, v35, v17, v18, v20, v22, v24, v26);
  swift_unknownObjectRelease();
}

uint64_t WebAdView.webProcessVideoAdJSOGetVideoInfo(_:)(void (*a1)(void, unint64_t, void, void), uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v89 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v86 = sub_1C1A6D62C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v5 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v83[-v7];
  v9 = sub_1C1A6D48C();
  v87 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v83[-v14];
  v16 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass() && (sub_1C1A6E2FC() & 1) != 0)
    {
      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v17 = sub_1C1A6F1BC();
      sub_1C1994600(v17, qword_1EDE665F0);
      v18 = v2;
      v19 = sub_1C1A6F19C();
      v20 = sub_1C1A6F64C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v92[0] = v22;
        *v21 = 67109378;
        *(v21 + 4) = 36;
        *(v21 + 8) = 2080;
        v23 = [*&v3[v16] identifier];
        v24 = sub_1C1A6F3CC();
        v26 = v25;

        v27 = sub_1C19A1884(v24, v26, v92);

        *(v21 + 10) = v27;
        _os_log_impl(&dword_1C198D000, v19, v20, "Content ID: %-*s Forcing video JS object injection for likely motion ad.", v21, 0x12u);
        sub_1C199935C(v22);
        MEMORY[0x1C6906260](v22, -1, -1);
        MEMORY[0x1C6906260](v21, -1, -1);
      }

      v89(0, 0xE000000000000000, 0, 0);

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if ([*&v2[v16] isOutstreamVideoAd])
  {
    sub_1C1A1E890(v8);
    v29 = v87;
    if ((*(v87 + 48))(v8, 1, v9) == 1)
    {
      sub_1C1991140(v8, &unk_1EBF04600);
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v30 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1C1A73A30;
      v32 = [*&v3[v16] identifier];
      v33 = sub_1C1A6F3CC();
      v35 = v34;

      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1C199E518();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      sub_1C1A6F18C();

      return (v89)(0, 0, 1, 0);
    }

    (*(v29 + 32))(v15, v8, v9);
    v42 = [*&v2[v16] bestRepresentation];
    if (v42)
    {
      goto LABEL_25;
    }

    v43 = [*&v3[v16] representations];
    sub_1C19A9E58(&unk_1EBF04670);
    v44 = sub_1C1A6F51C();

    if (v44 >> 62)
    {
      if (sub_1C1A6F9EC())
      {
        goto LABEL_21;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v44 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1C69055B0](0, v44);
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v42 = *(v44 + 32);
        swift_unknownObjectRetain();
      }

LABEL_25:
      v45 = [v42 id];
      sub_1C1A6D60C();

      v46 = [v42 tapAction];
      if (v46)
      {
        v47 = v46;
        sub_1C1A6EA1C();

        v48 = sub_1C1A6DECC();
        v49 = v48 != sub_1C1A6DECC();
      }

      else
      {
        v49 = 1;
      }

      v84 = v49;
      v50 = *&v3[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
      sub_1C1A3BFA0(v50, v92);

      sub_1C1A6D23C();
      swift_allocObject();
      sub_1C1A6D22C();
      v91[2] = v92[2];
      v91[3] = v92[3];
      v91[4] = v92[4];
      v91[5] = v92[5];
      v91[0] = v92[0];
      v91[1] = v92[1];
      sub_1C1A221B4();
      v51 = sub_1C1A6D21C();
      v53 = v52;

      sub_1C19FE970(v92);
      v54 = objc_opt_self();
      v55 = sub_1C1A6D4AC();
      *&v91[0] = 0;
      v56 = [v54 JSONObjectWithData:v55 options:0 error:v91];

      if (v56)
      {
        v57 = *&v91[0];
        sub_1C1A6F92C();
        swift_unknownObjectRelease();
        sub_1C19A9E58(&qword_1EBF03DD0);
        if (swift_dynamicCast())
        {
          v58 = v90;
        }

        else
        {
          v58 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
        }

        sub_1C19CFDE0(v51, v53);
      }

      else
      {
        v59 = *&v91[0];
        v60 = sub_1C1A6D3BC();

        swift_willThrow();
        sub_1C19CFDE0(v51, v53);
        v58 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
      }

      sub_1C1A6D44C();
      if (v61)
      {
        v62 = sub_1C1A6F39C();
      }

      else
      {
        v62 = 0;
      }

      v63 = objc_opt_self();
      v64 = [v63 shouldProxyRequestToHost_];

      if (v64)
      {
        v65 = sub_1C1A6D41C();
        sub_1C1A6D5EC();
        v66 = sub_1C1A6F39C();

        v67 = [v63 proxyURLForVideoURL:v65 adIdentifier:v66 changeScheme:0];

        sub_1C1A6D43C();
        v68 = sub_1C1A6D40C();
        v70 = v69;
        v71 = sub_1C1A1E190(v58);

        v89(v68, v70, v84, v71);
        swift_unknownObjectRelease();

        v72 = *(v87 + 8);
        v72(v11, v9);
        (*(v85 + 8))(v5, v86);
        return (v72)(v15, v9);
      }

      else
      {
        v73 = sub_1C1A6D40C();
        v75 = v74;
        v76 = sub_1C1A1E190(v58);

        v89(v73, v75, v84, v76);
        swift_unknownObjectRelease();

        (*(v85 + 8))(v5, v86);
        return (*(v87 + 8))(v15, v9);
      }
    }

    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v77 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1C1A73A30;
    v79 = [*&v3[v16] identifier];
    v80 = sub_1C1A6F3CC();
    v82 = v81;

    *(v78 + 56) = MEMORY[0x1E69E6158];
    *(v78 + 64) = sub_1C199E518();
    *(v78 + 32) = v80;
    *(v78 + 40) = v82;
    sub_1C1A6F18C();

    v89(0, 0, 1, 0);
    return (*(v29 + 8))(v15, v9);
  }

  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v36 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C1A73A30;
  v38 = [*&v3[v16] identifier];
  v39 = sub_1C1A6F3CC();
  v41 = v40;

  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1C199E518();
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  sub_1C1A6F18C();
}

Swift::Void __swiftcall WebAdView.webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription(_:)(Swift::String a1)
{
  v2 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) diagnosticMetricHelper];
  v3 = sub_1C1A6F39C();
  [v2 mediaPlaybackFailedWithReason_];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall WebAdView.webProcessVideoAdJSOCreativeViewLoaded()()
{
  v1 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (v1)
  {
    [v1 mediaLoaded];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall WebAdView.webProcessVideoAdJSODidCallPlayCompleted(withVolume:)(Swift::Float withVolume)
{
  v2 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (v2)
  {
    [v2 mediaFinished];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall WebAdView.webProcessVideoAdJSODidCallAudioMuted(_:)(Swift::Float a1)
{
  v3 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (v3)
  {
    [v3 mediaVolumeChangedAtPosition:a1 volume:0.0];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C1A21E48(char a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy)) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v6 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1A73CD0;
    v8 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v9 = sub_1C1A6F3CC();
    v11 = v10;

    v12 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1C199E518();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v14 = a1 & 1;
    v15 = 0x6C62697369766E69;
    if (v14)
    {
      v15 = 0x656C6269736976;
    }

    v16 = 0xE900000000000065;
    *(v7 + 96) = v12;
    *(v7 + 104) = v13;
    if (v14)
    {
      v16 = 0xE700000000000000;
    }

    *(v7 + 64) = v13;
    *(v7 + 72) = v15;
    *(v7 + 80) = v16;
    sub_1C1A6F18C();

    sub_1C198FB8C(0, &qword_1EDE63F38);
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v14;
    swift_unknownObjectRetain();
    sub_1C1A6F6BC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73A30;
    v21 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v22 = sub_1C1A6F3CC();
    v24 = v23;

    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C199E518();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_1C1A6F18C();
  }
}

unint64_t sub_1C1A221B4()
{
  result = qword_1EBF048C8;
  if (!qword_1EBF048C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF048C8);
  }

  return result;
}

void sub_1C1A22208(char *a1, void (**a2)(void))
{
  v86 = a2;
  v90 = *MEMORY[0x1E69E9840];
  v84 = sub_1C1A6D62C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v4 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v80[-v6];
  v8 = sub_1C1A6D48C();
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v80[-v13];
  v15 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass() && (sub_1C1A6E2FC() & 1) != 0)
    {
      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v16 = sub_1C1A6F1BC();
      sub_1C1994600(v16, qword_1EDE665F0);
      v17 = a1;
      v18 = sub_1C1A6F19C();
      v19 = sub_1C1A6F64C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v89[0] = v21;
        *v20 = 67109378;
        *(v20 + 4) = 36;
        *(v20 + 8) = 2080;
        v22 = [*&a1[v15] identifier];
        v23 = sub_1C1A6F3CC();
        v25 = v24;

        v26 = sub_1C19A1884(v23, v25, v89);

        *(v20 + 10) = v26;
        _os_log_impl(&dword_1C198D000, v18, v19, "Content ID: %-*s Forcing video JS object injection for likely motion ad.", v20, 0x12u);
        sub_1C199935C(v21);
        MEMORY[0x1C6906260](v21, -1, -1);
        MEMORY[0x1C6906260](v20, -1, -1);
      }

      v27 = sub_1C1A6F39C();
      v28 = v86[2];
      v86 = v27;
      v28();
      swift_unknownObjectRelease();
      v29 = v86;

      return;
    }

    swift_unknownObjectRelease();
  }

  if ([*&a1[v15] isOutstreamVideoAd])
  {
    sub_1C1A1E890(v7);
    v30 = v85;
    if ((*(v85 + 48))(v7, 1, v8) == 1)
    {
      sub_1C1991140(v7, &unk_1EBF04600);
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v31 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C1A73A30;
      v33 = [*&a1[v15] identifier];
      v34 = sub_1C1A6F3CC();
      v36 = v35;

      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1C199E518();
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      sub_1C1A6F18C();

      (v86[2])(v86, 0, 1, 0);
      return;
    }

    (*(v30 + 32))(v14, v7, v8);
    v43 = [*&a1[v15] bestRepresentation];
    if (v43)
    {
      goto LABEL_25;
    }

    v44 = [*&a1[v15] representations];
    sub_1C19A9E58(&unk_1EBF04670);
    v45 = sub_1C1A6F51C();

    if (v45 >> 62)
    {
      if (sub_1C1A6F9EC())
      {
        goto LABEL_21;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v45 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1C69055B0](0, v45);
      }

      else
      {
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v43 = *(v45 + 32);
        swift_unknownObjectRetain();
      }

LABEL_25:
      v46 = [v43 id];
      sub_1C1A6D60C();

      v47 = [v43 tapAction];
      v82 = v43;
      if (v47)
      {
        v48 = v47;
        sub_1C1A6EA1C();

        v49 = sub_1C1A6DECC();
        v50 = v49 != sub_1C1A6DECC();
      }

      else
      {
        v50 = 1;
      }

      v81 = v50;
      v51 = *&a1[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
      sub_1C1A3BFA0(v51, v89);

      sub_1C1A6D23C();
      swift_allocObject();
      sub_1C1A6D22C();
      v88[2] = v89[2];
      v88[3] = v89[3];
      v88[4] = v89[4];
      v88[5] = v89[5];
      v88[0] = v89[0];
      v88[1] = v89[1];
      sub_1C1A221B4();
      v52 = sub_1C1A6D21C();
      v54 = v53;

      sub_1C19FE970(v89);
      v55 = objc_opt_self();
      v56 = sub_1C1A6D4AC();
      *&v88[0] = 0;
      v57 = [v55 JSONObjectWithData:v56 options:0 error:v88];

      if (v57)
      {
        v58 = *&v88[0];
        sub_1C1A6F92C();
        swift_unknownObjectRelease();
        sub_1C19A9E58(&qword_1EBF03DD0);
        if (swift_dynamicCast())
        {
          v59 = v87;
        }

        else
        {
          v59 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
        }

        sub_1C19CFDE0(v52, v54);
      }

      else
      {
        v60 = *&v88[0];
        v61 = sub_1C1A6D3BC();

        swift_willThrow();
        sub_1C19CFDE0(v52, v54);
        v59 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
      }

      sub_1C1A6D44C();
      if (v62)
      {
        v63 = sub_1C1A6F39C();
      }

      else
      {
        v63 = 0;
      }

      v64 = objc_opt_self();
      v65 = [v64 shouldProxyRequestToHost_];

      if (v65)
      {
        v66 = sub_1C1A6D41C();
        sub_1C1A6D5EC();
        v67 = sub_1C1A6F39C();

        v68 = [v64 proxyURLForVideoURL:v66 adIdentifier:v67 changeScheme:0];

        sub_1C1A6D43C();
        sub_1C1A6D40C();
        sub_1C1A1E190(v59);

        v69 = sub_1C1A6F39C();
        v70 = sub_1C1A6F2FC();
        (v86[2])(v86, v69, v81, v70);
        swift_unknownObjectRelease();

        v71 = *(v85 + 8);
        v71(v10, v8);
        (*(v83 + 8))(v4, v84);
        v71(v14, v8);
      }

      else
      {
        sub_1C1A6D40C();
        sub_1C1A1E190(v59);

        v72 = sub_1C1A6F39C();
        v73 = sub_1C1A6F2FC();
        (v86[2])(v86, v72, v81, v73);
        swift_unknownObjectRelease();

        (*(v83 + 8))(v4, v84);
        (*(v85 + 8))(v14, v8);
      }

      return;
    }

    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v74 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1C1A73A30;
    v76 = [*&a1[v15] identifier];
    v77 = sub_1C1A6F3CC();
    v79 = v78;

    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = sub_1C199E518();
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    sub_1C1A6F18C();

    (v86[2])(v86, 0, 1, 0);
    (*(v30 + 8))(v14, v8);
    return;
  }

  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v37 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C1A73A30;
  v39 = [*&a1[v15] identifier];
  v40 = sub_1C1A6F3CC();
  v42 = v41;

  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1C199E518();
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  sub_1C1A6F18C();
}

id _s17PromotedContentUI9WebAdViewC015webProcessVideoE21JSODidCallPlayStarted_6volumeySf_SftF_0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_unfairLock;
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_unfairLock) lock];
  v2 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_videoProgressMetricStatus;
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x1E69E7CC8];

  v3 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (v3)
  {
    [v3 mediaStarted];
    swift_unknownObjectRelease();
  }

  return [*(v0 + v1) unlock];
}

id sub_1C1A23114(SEL *a1, float a2)
{
  result = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallPlayProgressed_6volumeySf_SftF_0(float a1)
{
  v2 = v1;
  *&result = COERCE_DOUBLE(sub_1C1A1EB60());
  if ((v5 & 1) == 0 && *&result != 0.0)
  {
    v12 = *&result;
    v13 = roundf((a1 / v12) * 100.0);
    if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v13 > -9.2234e18)
    {
      if (v13 < 9.2234e18)
      {
        v14 = v13;
        v15 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_unfairLock;
        [*(v2 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_unfairLock) lock];
        v16 = *(v2 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_videoProgressMetricThresholds);
        v17 = *(v16 + 16);
        v18 = ~v17;
        v19 = (v16 + 8 * v17 + 32);
        do
        {
          if (v18 == -1)
          {
            v29 = *(v2 + v15);

            *&result = COERCE_DOUBLE([v29 unlock]);
            return result;
          }

          v21 = *--v19;
          v20 = v21;
          ++v18;
        }

        while (v21 >= v14);
        v22 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_videoProgressMetricStatus;
        swift_beginAccess();
        v23 = *(v2 + v22);
        if (*(v23 + 16))
        {
          v24 = sub_1C19A30DC(v20);
          if (v25 & 1) != 0 && (*(*(v23 + 56) + v24))
          {
            goto LABEL_19;
          }
        }

        v26 = -v18;
        result = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
        if (*&result != 0.0)
        {
          [result mediaProgress_];
          *&result = COERCE_DOUBLE(swift_unknownObjectRelease());
        }

        if (v26 <= *(v16 + 16))
        {
          v27 = *v19;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v2 + v22);
          *(v2 + v22) = 0x8000000000000000;
          sub_1C1A49FF4(1, v27, isUniquelyReferenced_nonNull_native);
          *(v2 + v22) = v30;
          swift_endAccess();
LABEL_19:
          *&result = COERCE_DOUBLE([*(v2 + v15) unlock]);
          return result;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73A30;
  v8 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v9 = sub_1C1A6F3CC();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C199E518();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_1C1A6F18C();

  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t _s17PromotedContentUI9WebAdViewC015webProcessVideoE28JSODidCallViewabilityChanged_8playTime6volumeySb_S2ftF_0(char a1)
{
  v2 = v1;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v4 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A73CD0;
  v6 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v7 = sub_1C1A6F3CC();
  v9 = v8;

  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C199E518();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v12 = 0x6C62697369766E69;
  if (a1)
  {
    v12 = 0x656C6269736976;
  }

  v13 = 0xE900000000000065;
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  if (a1)
  {
    v13 = 0xE700000000000000;
  }

  *(v5 + 64) = v11;
  *(v5 + 72) = v12;
  *(v5 + 80) = v13;
  sub_1C1A6F18C();
}

uint64_t _s17PromotedContentUI9WebAdViewC015webProcessVideoE23JSODidCallVolumeChanged_8playTimeySf_SftF_0(float a1)
{
  v2 = v1;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v4 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A73CD0;
  v6 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v7 = sub_1C1A6F3CC();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C199E518();
  v10 = MEMORY[0x1E69E6448];
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v11 = MEMORY[0x1E69E64A8];
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  *(v5 + 72) = a1;
  sub_1C1A6F18C();
}

id _s17PromotedContentUI9WebAdViewC015webProcessVideoE22JSODidCallAudioUnmuted_6volumeySf_SftF_0(float a1)
{
  result = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (result)
  {
    LODWORD(v4) = 1.0;
    [result mediaVolumeChangedAtPosition:a1 volume:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallMoreInfoTapped_6volumeySf_SftF_0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF04170);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v35 - v4;
  v6 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v7 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
  if (v7 && (v8 = [v7 tapAction], swift_unknownObjectRelease(), v8))
  {
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v9 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1A73A30;
    v11 = [*&v1[v6] identifier];
    v12 = sub_1C1A6F3CC();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C199E518();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_1C1A6F18C();

    v15 = (*&v1[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation);
    v16 = *v15;
    v17 = v15[1];
    v18 = &v1[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation];
    *v18 = v16;
    v18[1] = v17;
    *(v18 + 16) = 0;
    v19 = *&v1[OBJC_IVAR___APPCPromotedContentView_videoTapAction];
    *&v1[OBJC_IVAR___APPCPromotedContentView_videoTapAction] = v8;
    v20 = v8;

    sub_1C1A6F24C();
    v21 = sub_1C1A6F25C();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    v22 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
    swift_beginAccess();
    sub_1C19D41C8(v5, &v1[v22]);
    swift_endAccess();
    v23 = *&v1[v6];
    swift_unknownObjectRetain();
    [v1 frame];
    sub_1C1A41E28(v8, v23, v16, v17, v24, v25, v26, v27);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v29 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C1A73A30;
    v31 = [*&v1[v6] identifier];
    v32 = sub_1C1A6F3CC();
    v34 = v33;

    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C199E518();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    sub_1C1A6F18C();
  }
}

id _s17PromotedContentUI9WebAdViewC015webProcessVideoe10JSODidCallI6Tapped_6volumeySf_SftF_0(float a1)
{
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v3 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A73A30;
  v5 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v6 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v7 = sub_1C1A6F3CC();
  v9 = v8;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C199E518();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  sub_1C1A6F18C();

  result = [*(v1 + v5) mediaMetricHelper];
  if (result)
  {
    [result mediaShowControlsAtPosition_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C1A243BC(SEL *a1, float a2)
{
  result = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) mediaMetricHelper];
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1A245BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D61C();
  v12 = sub_1C1A6D5EC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  sub_1C1994048((v4 + 16), *(v4 + 40));
  v15 = sub_1C1A6ED5C();
  v17 = v16;
  type metadata accessor for AppStoreRequestTask();
  v18 = swift_allocObject();
  *(v18 + 96) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 104) = 0;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  sub_1C1A6D5CC();
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 80) = a3;

  return v18;
}

uint64_t sub_1C1A24738()
{
  sub_1C199935C(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1C1A24798()
{
  result = qword_1EBF048E8;
  if (!qword_1EBF048E8)
  {
    type metadata accessor for AppStoreRequestTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF048E8);
  }

  return result;
}

uint64_t sub_1C1A24814(uint64_t a1)
{
  v2 = sub_1C1A6D5DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v6 = sub_1C1991010(0x636E657571657266, 0xE900000000000079), (v7 & 1) != 0))
  {
    sub_1C19A1A5C(*(a1 + 56) + 32 * v6, v95);
    v8 = swift_dynamicCast();
    v9 = v8 == 0;
    if (v8)
    {
      v10 = v89;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v90;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = sub_1C1A261D8(v10, v11);
  v14 = v13;

  if (v14)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v15 = sub_1C1A6F1BC();
    sub_1C1994600(v15, qword_1EDE665F0);
    v16 = sub_1C1A6F19C();
    v17 = sub_1C1A6F66C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Recurrence rule for events must include a valid frequency: daily, weekly, monthly, yearly.";
LABEL_27:
    _os_log_impl(&dword_1C198D000, v16, v17, v19, v18, 2u);
    MEMORY[0x1C6906260](v18, -1, -1);
LABEL_28:

    return 0;
  }

  if (!*(a1 + 16) || (v20 = sub_1C1991010(0x6C61767265746E69, 0xE800000000000000), (v21 & 1) == 0) || (sub_1C19A1A5C(*(a1 + 56) + 32 * v20, v95), v22 = sub_1C198FB8C(0, &qword_1EBF04870), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v30 = sub_1C1A6F1BC();
    sub_1C1994600(v30, qword_1EDE665F0);
    v16 = sub_1C1A6F19C();
    v17 = sub_1C1A6F66C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Recurrence rule for events must include an interval.";
    goto LABEL_27;
  }

  v23 = v89;
  v24 = [v89 integerValue];
  if (!v24)
  {
    if (qword_1EDE63990 == -1)
    {
LABEL_105:
      v77 = sub_1C1A6F1BC();
      sub_1C1994600(v77, qword_1EDE665F0);
      v78 = sub_1C1A6F19C();
      v79 = sub_1C1A6F66C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1C198D000, v78, v79, "Recurrence rule for events must include a non-zero interval.", v80, 2u);
        MEMORY[0x1C6906260](v80, -1, -1);
      }

      return 0;
    }

LABEL_114:
    swift_once();
    goto LABEL_105;
  }

  v86 = v24;
  if (*(a1 + 16) && (v25 = sub_1C1991010(0x73657269707865, 0xE700000000000000), (v26 & 1) != 0) && (sub_1C19A1A5C(*(a1 + 56) + 32 * v25, v95), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v89;
    [v89 doubleValue];

    sub_1C1A6D56C();
    v28 = objc_allocWithZone(MEMORY[0x1E6966AB8]);
    v29 = sub_1C1A6D52C();
    (*(v3 + 8))(v5, v2);
    v85 = [v28 initWithEndDate_];
  }

  else
  {
    v85 = 0;
  }

  v89 = MEMORY[0x1E69E7CC0];
  v32 = *(a1 + 16);
  v33 = &selRef_impressionId;
  v87 = v23;
  if (v32 && (v34 = sub_1C1991010(0x65576E4973796164, 0xEA00000000006B65), (v35 & 1) != 0) && (sub_1C19A1A5C(*(a1 + 56) + 32 * v34, v95), sub_1C19A9E58(&qword_1EBF04920), (swift_dynamicCast() & 1) != 0))
  {
    v84 = v22;
    v36 = v94;
    if (v94 >> 62)
    {
      v37 = sub_1C1A6F9EC();
      if (v37)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
LABEL_36:
        v82 = v12;
        result = objc_opt_self();
        if (v37 >= 1)
        {
          v38 = result;
          v23 = 0;
          while (1)
          {
            v39 = (v36 & 0xC000000000000001) != 0 ? MEMORY[0x1C69055B0](v23, v36) : *(v36 + 8 * v23 + 32);
            v40 = v39;
            v41 = [v39 integerValue];
            if (__OFADD__(v41, 1))
            {
              break;
            }

            v42 = [v38 dayOfWeek_];
            MEMORY[0x1C6904FB0]();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C1A6F53C();
            }

            ++v23;
            sub_1C1A6F55C();

            if (v37 == v23)
            {
              v81 = v89;

              v12 = v82;
              v22 = v84;
              v33 = &selRef_impressionId;
              goto LABEL_47;
            }
          }

          __break(1u);
          goto LABEL_112;
        }

        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v81 = MEMORY[0x1E69E7CC0];
    v22 = v84;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

LABEL_47:
  v94 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 16) && (v43 = sub_1C1991010(0x6F4D6E4973796164, 0xEB0000000068746ELL), (v44 & 1) != 0) && (sub_1C19A1A5C(*(a1 + 56) + 32 * v43, v95), sub_1C19A9E58(&qword_1EBF04920), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v83 = v81;
    v45 = v93;
    if (v93 >> 62)
    {
      result = sub_1C1A6F9EC();
      v46 = result;
      if (result)
      {
LABEL_52:
        v84 = v22;
        if (v46 >= 1)
        {
          v47 = 0;
          v88 = MEMORY[0x1E69E7CC0];
          v23 = 0x1E696A000uLL;
          while (1)
          {
            v48 = (v45 & 0xC000000000000001) != 0 ? MEMORY[0x1C69055B0](v47, v45) : *(v45 + 8 * v47 + 32);
            v49 = v48;
            v50 = [v48 v33[35]];
            v51 = [v49 v33[35]];
            if (v50 <= 0)
            {
              v52 = __OFSUB__(v51--, 1);
              if (v52)
              {
                break;
              }
            }

            if (v51 <= -32 || v51 > 31)
            {
            }

            else
            {
              [objc_allocWithZone(*(v23 + 3480)) initWithInteger_];
              MEMORY[0x1C6904FB0]();
              if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1C1A6F53C();
                v23 = 0x1E696A000;
              }

              sub_1C1A6F55C();

              v88 = v94;
              v33 = &selRef_impressionId;
            }

            if (v46 == ++v47)
            {

              v81 = v83;
              v22 = v84;
              goto LABEL_67;
            }
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v46 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_52;
      }
    }

    v88 = MEMORY[0x1E69E7CC0];
    v81 = v83;
  }

  else
  {
    v88 = MEMORY[0x1E69E7CC0];
  }

LABEL_67:
  v93 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 16))
  {
    v53 = sub_1C1991010(0x65596E4973796164, 0xEA00000000007261);
    if (v54)
    {
      sub_1C19A1A5C(*(a1 + 56) + 32 * v53, v95);
      sub_1C19A9E58(&qword_1EBF04920);
      result = swift_dynamicCast();
      if (result)
      {
        v83 = v81;
        v84 = v22;
        v55 = v92;
        if (v92 >> 62)
        {
          result = sub_1C1A6F9EC();
          v56 = result;
          if (result)
          {
LABEL_72:
            if (v56 >= 1)
            {
              v57 = 0;
              v23 = &selRef_impressionId;
              while (1)
              {
                v58 = (v55 & 0xC000000000000001) != 0 ? MEMORY[0x1C69055B0](v57, v55) : *(v55 + 8 * v57 + 32);
                v59 = v58;
                v60 = [v58 integerValue];
                v61 = [v59 integerValue];
                if (v60 <= 0)
                {
                  v52 = __OFSUB__(v61--, 1);
                  if (v52)
                  {
                    goto LABEL_113;
                  }
                }

                if (v61 <= -367 || v61 > 366)
                {
                }

                else
                {
                  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                  MEMORY[0x1C6904FB0]();
                  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v82 = v12;
                    sub_1C1A6F53C();
                    v12 = v82;
                  }

                  sub_1C1A6F55C();
                }

                if (v56 == ++v57)
                {
                  goto LABEL_120;
                }
              }
            }

            goto LABEL_125;
          }
        }

        else
        {
          v56 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v56)
          {
            goto LABEL_72;
          }
        }

LABEL_120:

        v22 = v84;
      }
    }
  }

  v92 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + 16) || (v62 = sub_1C1991010(0x6E497368746E6F6DLL, 0xEC00000072616559), (v63 & 1) == 0) || (sub_1C19A1A5C(*(a1 + 56) + 32 * v62, v95), sub_1C19A9E58(&qword_1EBF04920), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_103:
    v70 = objc_allocWithZone(MEMORY[0x1E6966AD0]);
    sub_1C198FB8C(0, &qword_1EBF04918);
    v71 = sub_1C1A6F50C();

    v72 = sub_1C1A6F50C();

    v73 = sub_1C1A6F50C();

    v74 = sub_1C1A6F50C();

    v75 = v85;
    v76 = [v70 initRecurrenceWithFrequency:v12 interval:v86 daysOfTheWeek:v71 daysOfTheMonth:v72 monthsOfTheYear:v73 weeksOfTheYear:0 daysOfTheYear:v74 setPositions:0 end:v85];

    return v76;
  }

  v84 = v22;
  v64 = v91;
  if (!(v91 >> 62))
  {
    v65 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65)
    {
      goto LABEL_91;
    }

LABEL_122:

    goto LABEL_103;
  }

  result = sub_1C1A6F9EC();
  v65 = result;
  if (!result)
  {
    goto LABEL_122;
  }

LABEL_91:
  if (v65 >= 1)
  {
    for (i = 0; i != v65; ++i)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1C69055B0](i, v64);
      }

      else
      {
        v67 = *(v64 + 8 * i + 32);
      }

      v68 = v67;
      if ([v67 integerValue] <= 0 || objc_msgSend(v68, sel_integerValue) > 12)
      {
      }

      else
      {
        v69 = v68;
        MEMORY[0x1C6904FB0]();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = v12;
          sub_1C1A6F53C();
          v12 = v82;
        }

        sub_1C1A6F55C();
      }
    }

    goto LABEL_122;
  }

LABEL_126:
  __break(1u);
  return result;
}

void sub_1C1A25594(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = [objc_opt_self() eventWithEventStore_];

      v17 = sub_1C1A6F39C();

      [v16 setTitle_];

      if (v15[7])
      {

        v18 = sub_1C1A6F39C();
      }

      else
      {
        v18 = 0;
      }

      [v16 setNotes_];

      if (v15[5])
      {

        v19 = sub_1C1A6F39C();
      }

      else
      {
        v19 = 0;
      }

      [v16 setLocation_];

      v20 = sub_1C1A6D52C();
      [v16 setStartDate_];

      sub_1C19AF080(v15 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_end, v13);
      v21 = sub_1C1A6D5DC();
      v22 = *(v21 - 8);
      v23 = 0;
      if ((*(v22 + 48))(v13, 1, v21) != 1)
      {
        v23 = sub_1C1A6D52C();
        (*(v22 + 8))(v13, v21);
      }

      [v16 setEndDate_];

      [v16 setAllDay_];
      v24 = *(v15 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_recurrence);
      if (v24)
      {
        sub_1C19A9E58(&qword_1EBF03E88);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1C1A74830;
        *(v25 + 32) = v24;
        sub_1C198FB8C(0, &qword_1EBF04928);
        v26 = v24;
        v27 = sub_1C1A6F50C();

        [v16 setRecurrenceRules_];
      }

      v28 = v16;
      if (v15[9])
      {

        sub_1C1A6D46C();

        v29 = sub_1C1A6D48C();
        v30 = *(v29 - 8);
        v28 = 0;
        if ((*(v30 + 48))(v10, 1, v29) != 1)
        {
          v28 = sub_1C1A6D41C();
          (*(v30 + 8))(v10, v29);
        }

        [v16 setURL_];
      }
    }

    a3();
  }
}

void sub_1C1A25A3C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1C1A6D52C();
    v9 = sub_1C1A6D52C();
    v10 = [a2 predicateForEventsWithStartDate:v8 endDate:v9 calendars:0];

    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1C1A27D74;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1A25EF8;
    aBlock[3] = &unk_1F4141D50;
    v13 = _Block_copy(aBlock);

    [a2 enumerateEventsMatchingPredicate:v10 usingBlock:v13];
    _Block_release(v13);
    swift_beginAccess();
    v14 = *(v11 + 16);
    v15 = v14;
    a4(v14);
  }
}

id sub_1C1A25C28(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v30 title];
  if (result)
  {
    v13 = result;
    v14 = sub_1C1A6F3CC();
    v16 = v15;

    if (v14 == *(a3 + 16) && v16 == *(a3 + 24))
    {
    }

    else
    {
      v18 = sub_1C1A6FCEC();

      if ((v18 & 1) == 0)
      {
        return result;
      }
    }

    result = [v30 startDate];
    if (result)
    {
      v19 = result;
      sub_1C1A6D59C();

      sub_1C1A6D4DC();
      v21 = v20;
      sub_1C1A6D4DC();
      v23 = v22;
      result = (*(v8 + 8))(v11, v7);
      if (vabdd_f64(v21, v23) <= 1.0)
      {
        if (qword_1EDE63990 != -1)
        {
          swift_once();
        }

        v24 = sub_1C1A6F1BC();
        sub_1C1994600(v24, qword_1EDE665F0);
        v25 = sub_1C1A6F19C();
        v26 = sub_1C1A6F65C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1C198D000, v25, v26, "Calendar event already exists.", v27, 2u);
          MEMORY[0x1C6906260](v27, -1, -1);
        }

        swift_beginAccess();
        v28 = *(a4 + 16);
        *(a4 + 16) = v30;

        *a2 = 1;
        v29 = v30;

        return v29;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C1A25EF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C1A25F6C()
{

  v1 = OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_start;
  v2 = sub_1C1A6D5DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C1991140(v0 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_end, &qword_1EBF038A8);

  return v0;
}

uint64_t sub_1C1A2602C()
{
  sub_1C1A25F6C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalendarEvent()
{
  result = qword_1EBF048F8;
  if (!qword_1EBF048F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1A260D8()
{
  sub_1C1A6D5DC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C1A261D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x796C696164 && a2 == 0xE500000000000000 || (sub_1C1A6FCEC() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_1C1A6FCEC() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000 || (sub_1C1A6FCEC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
  {
    return 3;
  }

  if (sub_1C1A6FCEC())
  {
    return 3;
  }

  return 0;
}

uint8_t *sub_1C1A2633C(uint64_t a1)
{
  v100 = sub_1C1A6F6EC();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1A6F22C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1A6F6DC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v15 = sub_1C1A6D5DC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - v19;
  if (!*(a1 + 16) || (v93 = v18, v21 = sub_1C1991010(0x7470697263736564, 0xEB000000006E6F69), (v22 & 1) == 0) || (sub_1C19A1A5C(*(a1 + 56) + 32 * v21, v99), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v28 = sub_1C1A6F1BC();
    sub_1C1994600(v28, qword_1EDE665F0);
    v29 = sub_1C1A6F19C();
    v30 = sub_1C1A6F66C();
    if (os_log_type_enabled(v29, v30))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C198D000, v29, v30, "Cannot initialize the CalendarEvent: no description found.", v11, 2u);
      MEMORY[0x1C6906260](v11, -1, -1);
    }

    sub_1C1A27078();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return v11;
  }

  v83 = v97;
  v89 = v98;
  if (!*(a1 + 16))
  {
    v88 = 0;
    v82 = 0;
    goto LABEL_29;
  }

  v23 = sub_1C1991010(0x6E6F697461636F6CLL, 0xE800000000000000);
  if ((v24 & 1) == 0)
  {
    v82 = 0;
    v88 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_21;
    }

LABEL_29:
    v87 = 0;
    v81 = 0;
LABEL_30:
    v80 = 0;
    v86 = 0;
    goto LABEL_31;
  }

  sub_1C19A1A5C(*(a1 + 56) + 32 * v23, v99);
  v25 = swift_dynamicCast();
  v26 = v97;
  if (!v25)
  {
    v26 = 0;
  }

  v82 = v26;
  if (v25)
  {
    v27 = v98;
  }

  else
  {
    v27 = 0;
  }

  v88 = v27;
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_21:
  v33 = sub_1C1991010(0x7972616D6D7573, 0xE700000000000000);
  if (v34)
  {
    sub_1C19A1A5C(*(a1 + 56) + 32 * v33, v99);
    v35 = swift_dynamicCast();
    v36 = v97;
    if (!v35)
    {
      v36 = 0;
    }

    v81 = v36;
    if (v35)
    {
      v37 = v98;
    }

    else
    {
      v37 = 0;
    }

    v87 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v81 = 0;
    v87 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_30;
    }
  }

  v70 = sub_1C1991010(7107189, 0xE300000000000000);
  if ((v71 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1C19A1A5C(*(a1 + 56) + 32 * v70, v99);
  v72 = swift_dynamicCast();
  v73 = v97;
  if (!v72)
  {
    v73 = 0;
  }

  v80 = v73;
  if (v72)
  {
    v74 = v98;
  }

  else
  {
    v74 = 0;
  }

  v86 = v74;
LABEL_31:
  v38 = *(a1 + 16);
  v84 = v16;
  v91 = v14;
  if (v38)
  {
    v39 = sub_1C1991010(0x7961446C6C61, 0xE600000000000000);
    if ((v40 & 1) != 0 && (sub_1C19A1A5C(*(a1 + 56) + 32 * v39, v99), swift_dynamicCast()))
    {
      v79 = v97;
    }

    else
    {
      v79 = 0;
    }

    if (*(a1 + 16))
    {
      v41 = sub_1C1991010(0x6E65727275636572, 0xEA00000000006563);
      if (v42)
      {
        sub_1C19A1A5C(*(a1 + 56) + 32 * v41, v99);
        sub_1C19A9E58(&qword_1EBF04910);
        if (swift_dynamicCast())
        {
          v90 = sub_1C1A24814(v97);

          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    v79 = 0;
  }

  v90 = 0;
LABEL_42:
  v92 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v92 setFormatOptions_];
  v43 = *(a1 + 16);
  v85 = v15;
  if (v43)
  {
    v44 = sub_1C1991010(0x7472617473, 0xE500000000000000);
    if (v45)
    {
      sub_1C19A1A5C(*(a1 + 56) + 32 * v44, v99);
      swift_dynamicCast();
    }
  }

  v46 = sub_1C1A6F39C();

  v47 = [v92 dateFromString_];

  if (v47)
  {
    sub_1C1A6D59C();

    if (*(a1 + 16))
    {
      v48 = sub_1C1991010(6581861, 0xE300000000000000);
      if (v49)
      {
        sub_1C19A1A5C(*(a1 + 56) + 32 * v48, v99);
        swift_dynamicCast();
      }
    }

    v50 = sub_1C1A6F39C();

    v51 = [v92 &selRef:v50 webView:? createWebViewWithConfiguration:? forNavigationAction:? windowFeatures:? + 1];

    if (v51)
    {
      sub_1C1A6D59C();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v57 = v84;
    v58 = v85;
    (*(v84 + 56))(v11, v52, 1, v85);
    sub_1C19E2D00(v11, v91);
    if (*(a1 + 16) && (v59 = sub_1C1991010(0x6E65727275636572, 0xEA00000000006563), (v60 & 1) != 0))
    {
      sub_1C19A1A5C(*(a1 + 56) + 32 * v59, v99);

      sub_1C1991140(v99, &qword_1EBF03BD0);
      if (!v90)
      {

        if (qword_1EDE63990 != -1)
        {
          swift_once();
        }

        v61 = sub_1C1A6F1BC();
        sub_1C1994600(v61, qword_1EDE665F0);
        v62 = sub_1C1A6F19C();
        v63 = sub_1C1A6F66C();
        if (os_log_type_enabled(v62, v63))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_1C198D000, v62, v63, "Recurrence rule is not parsed correctly!", v11, 2u);
          MEMORY[0x1C6906260](v11, -1, -1);
        }

        sub_1C1A27078();
        swift_allocError();
        *v64 = 1;
        swift_willThrow();

        sub_1C1991140(v91, &qword_1EBF038A8);
        (*(v57 + 8))(v20, v58);
        return v11;
      }
    }

    else
    {

      memset(v99, 0, 32);
      sub_1C1991140(v99, &qword_1EBF03BD0);
    }

    (*(v57 + 16))(v93, v20, v58);
    v77 = v20;
    v78 = v8;
    sub_1C19AF080(v91, v8);
    type metadata accessor for CalendarEvent();
    v11 = swift_allocObject();
    v76 = OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_workQueue;
    sub_1C198FB8C(0, &qword_1EDE63F38);
    sub_1C1A6F6CC();
    sub_1C1A6F21C();
    (*(v96 + 104))(v95, *MEMORY[0x1E69E8090], v100);
    v65 = sub_1C1A6F71C();

    sub_1C1991140(v91, &qword_1EBF038A8);
    (*(v57 + 8))(v77, v58);
    *&v11[v76] = v65;
    v66 = v89;
    *(v11 + 2) = v83;
    *(v11 + 3) = v66;
    v67 = v88;
    *(v11 + 4) = v82;
    *(v11 + 5) = v67;
    v68 = v87;
    *(v11 + 6) = v81;
    *(v11 + 7) = v68;
    v69 = v86;
    *(v11 + 8) = v80;
    *(v11 + 9) = v69;
    (*(v57 + 32))(&v11[OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_start], v93, v58);
    sub_1C19E2D00(v78, &v11[OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_end]);
    v11[OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_allDay] = v79;
    *&v11[OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_recurrence] = v90;
    return v11;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v53 = sub_1C1A6F1BC();
  sub_1C1994600(v53, qword_1EDE665F0);
  v54 = sub_1C1A6F19C();
  v55 = sub_1C1A6F66C();
  if (os_log_type_enabled(v54, v55))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C198D000, v54, v55, "Cannot initialize the CalendarEvent: no startDate found.", v11, 2u);
    MEMORY[0x1C6906260](v11, -1, -1);
  }

  sub_1C1A27078();
  swift_allocError();
  *v56 = 2;
  swift_willThrow();

  return v11;
}

unint64_t sub_1C1A27078()
{
  result = qword_1EBF04908;
  if (!qword_1EBF04908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04908);
  }

  return result;
}

uint64_t sub_1C1A270CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (a1)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = a5;
      v17[3] = a1;
      v17[4] = v16;
      v18 = a1;
      v19 = a5;
    }

    else
    {
      v20 = [objc_opt_self() eventWithEventStore_];

      v21 = sub_1C1A6F39C();

      [v20 setTitle_];

      if (v15[7])
      {

        v22 = sub_1C1A6F39C();
      }

      else
      {
        v22 = 0;
      }

      [v20 setNotes_];

      if (v15[5])
      {

        v23 = sub_1C1A6F39C();
      }

      else
      {
        v23 = 0;
      }

      [v20 setLocation_];

      v24 = sub_1C1A6D52C();
      [v20 setStartDate_];

      sub_1C19AF080(v15 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_end, v13);
      v25 = sub_1C1A6D5DC();
      v26 = *(v25 - 8);
      v27 = 0;
      if ((*(v26 + 48))(v13, 1, v25) != 1)
      {
        v27 = sub_1C1A6D52C();
        (*(v26 + 8))(v13, v25);
      }

      [v20 setEndDate_];

      [v20 setAllDay_];
      v28 = *(v15 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_recurrence);
      if (v28)
      {
        sub_1C19A9E58(&qword_1EBF03E88);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1C1A74830;
        *(v29 + 32) = v28;
        sub_1C198FB8C(0, &qword_1EBF04928);
        v30 = v28;
        v31 = sub_1C1A6F50C();

        [v20 setRecurrenceRules_];
      }

      v32 = v20;
      if (v15[9])
      {

        sub_1C1A6D46C();

        v33 = sub_1C1A6D48C();
        v34 = *(v33 - 8);
        v32 = 0;
        if ((*(v34 + 48))(v10, 1, v33) != 1)
        {
          v32 = sub_1C1A6D41C();
          (*(v34 + 8))(v10, v33);
        }

        [v20 setURL_];
      }

      sub_1C198FB8C(0, &qword_1EDE63F38);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = a5;
      v36[3] = v20;
      v36[4] = v35;
      v37 = a5;
      v18 = v20;
    }

    sub_1C1A6F6BC();
  }

  return result;
}

void sub_1C1A27690(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1C1A6F1FC();
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v53 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C1A6F22C();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v46 - v13;
  v15 = sub_1C1A6D5DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v46 - v20;
  v21 = swift_allocObject();
  v59 = a3;
  v60 = a4;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v57 = v21;
  v58 = v22;
  *(v23 + 2) = v22;
  *(v23 + 3) = sub_1C1A27CCC;
  *(v23 + 4) = v21;
  *(v23 + 5) = a1;
  v55 = a1;
  sub_1C19AF080(a2 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_end, v14);
  v24 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v25 = v55;
    v26 = v59;
    v27 = v60;

    v28 = v58;

    sub_1C1991140(v14, &qword_1EBF038A8);
    v29 = v26;
    v30 = v27;
    sub_1C1A270CC(0, v28, v25, v29, v30);
  }

  else
  {
    v46[0] = *(v16 + 32);
    v31 = v56;
    (v46[0])(v56, v14, v15);
    v48 = *(a2 + OBJC_IVAR____TtC17PromotedContentUI13CalendarEvent_workQueue);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = *(v24 + 16);
    v47 = v15;
    v33(v18, v31, v15);
    v34 = v24;
    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = swift_allocObject();
    v46[1] = v32;
    *(v36 + 16) = v32;
    v37 = v55;
    *(v36 + 24) = v55;
    (v46[0])(v36 + v35, v18, v15);
    v38 = (v36 + ((v17 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_1C1A27CD4;
    v38[1] = v23;
    aBlock[4] = sub_1C1A27CE0;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F4141CD8;
    v39 = _Block_copy(aBlock);
    v40 = v37;
    v41 = v59;
    v42 = v60;

    v43 = v51;
    sub_1C1A6F21C();
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C19C4108();
    sub_1C19A9E58(&qword_1EBF03E28);
    sub_1C19BF710();
    v44 = v53;
    v45 = v49;
    sub_1C1A6F94C();
    MEMORY[0x1C69051C0](0, v43, v44, v39);
    _Block_release(v39);

    (*(v50 + 8))(v44, v45);
    (*(v52 + 8))(v43, v54);
    (*(v34 + 8))(v56, v47);
  }
}

void sub_1C1A27CE0()
{
  v1 = *(sub_1C1A6D5DC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C1A25A3C(v3, v4, v0 + v2, v5);
}

uint64_t sub_1C1A27D7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1C1A27DD8()
{
  result = qword_1EBF04930;
  if (!qword_1EBF04930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04930);
  }

  return result;
}

uint64_t sub_1C1A27E38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1C1991010(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1C1A6FCEC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1A27FDC(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 16);
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(v3 + 16);

  if (v2)
  {
    if (v4)
    {
      v5 = sub_1C1A27E38(v2, v4);

      if (v5)
      {
        return result;
      }

      v3 = *(v1 + 16);
    }

LABEL_7:
    if (v3)
    {
      *(v3 + 16) = v2;
    }

    else
    {
      type metadata accessor for AppRequestMetaFieldsSource();
      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      *(v1 + 16) = v6;
    }

    goto LABEL_13;
  }

  if (!v4)
  {
    return result;
  }

  *(v1 + 16) = 0;

LABEL_13:
  sub_1C19F34DC();
  v7 = *(v1 + 16);

  sub_1C19CFA90(1, v7);
}

uint64_t sub_1C1A280F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A28150()
{
  type metadata accessor for ImageCollectionViewCell();
  sub_1C19A9E58(&qword_1EBF04940);
  result = sub_1C1A6F41C();
  qword_1EDE664E8 = result;
  unk_1EDE664F0 = v1;
  return result;
}

char *sub_1C1A281A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ImageCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView;
  v12 = *&v10[OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView];
  v13 = v10;
  [v12 setClipsToBounds_];
  v14 = [v13 contentView];
  [v14 addSubview_];

  sub_1C1A2834C();
  return v13;
}

void sub_1C1A2834C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A74A20;
  v5 = [v2 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v2 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v4 + 56) = v20;
  sub_1C19C2864();
  v21 = sub_1C1A6F50C();

  [v3 activateConstraints_];
}

id sub_1C1A28614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C1A2867C()
{
  v1 = *v0;
  v2 = sub_1C1A6D41C();
  v3 = [v1 canOpenURL_];

  return v3;
}

uint64_t sub_1C1A286C8()
{
  v2 = *v0;
  v3 = sub_1C1A6D41C();
  v1[18] = v3;
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1C1A28958();
  v4 = sub_1C1A6F2FC();
  v1[19] = v4;
  v1[2] = v1;
  v1[7] = v1 + 20;
  v1[3] = sub_1C1A28844;
  v5 = swift_continuation_init();
  v1[17] = sub_1C19A9E58(&qword_1EBF04948);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C1A289B0;
  v1[13] = &unk_1F4141E98;
  v1[14] = v5;
  [v2 openURL:v3 options:v4 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C1A28844()
{
  v1 = *(*v0 + 144);
  v5 = *v0;
  v2 = *(*v0 + 160);

  v3 = *(v5 + 8);

  return v3(v2);
}

unint64_t sub_1C1A28958()
{
  result = qword_1EBF03868;
  if (!qword_1EBF03868)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03868);
  }

  return result;
}

uint64_t sub_1C1A289B0(uint64_t a1, char a2)
{
  **(*(*sub_1C1994048((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

void static UIButton.Configuration.mediumBorderless()()
{
  v0 = sub_1C19A9E58(&qword_1EBF04950);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_1C1A6F85C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = [v8 mainBundle];
  sub_1C1996754();
  LOBYTE(ObjCClassFromMetadata) = sub_1C1A6F7BC();

  if (ObjCClassFromMetadata)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v11 = sub_1C1A6F39C();
    v12 = [objc_opt_self() colorNamed:v11 inBundle:v9 compatibleWithTraitCollection:0];

    sub_1C1A6F7EC();
    (*(v4 + 104))(v6, *MEMORY[0x1E69DC568], v3);
    sub_1C1A6F7FC();
    sub_1C1A6F82C();
    v13 = v12;
    v14 = sub_1C1A6F7DC();
    sub_1C1A6F1CC();
    v14(v16, 0);
    sub_1C1A6F80C();
    sub_1C1A6F1EC();
    v15 = sub_1C1A6F1DC();
    (*(*(v15 - 8) + 56))(v2, 0, 1, v15);
    sub_1C1A6F84C();
  }
}

uint64_t sub_1C1A28D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1A6D35C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = sub_1C1A6F39C();
  v6 = objc_opt_self();
  v7 = [v6 fontWithName:v5 size:14.0];

  if (!v7)
  {
    [v6 boldSystemFontOfSize_];
  }

  sub_1C1A29014();
  sub_1C1A6D36C();
  [objc_opt_self() systemBlueColor];
  sub_1C1A29068();
  return sub_1C1A6D36C();
}

uint64_t sub_1C1A28E8C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = [v2 mainBundle];
  sub_1C1996754();
  LOBYTE(ObjCClassFromMetadata) = sub_1C1A6F7BC();

  if (ObjCClassFromMetadata)
  {
    result = sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v5 = sub_1C1A6F39C();
    v6 = [objc_opt_self() imageNamed:v5 inBundle:v3 compatibleWithTraitCollection:0];

    if (v6)
    {
      [v0 setImage:v6 forState:0];
    }

    return v0;
  }

  return result;
}

unint64_t sub_1C1A29014()
{
  result = qword_1EDE623D8;
  if (!qword_1EDE623D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE623D8);
  }

  return result;
}

unint64_t sub_1C1A29068()
{
  result = qword_1EDE623E0;
  if (!qword_1EDE623E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE623E0);
  }

  return result;
}

uint64_t sub_1C1A290BC()
{
  v0 = sub_1C1A6FC0C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1A29108(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_1C19A9E58(&qword_1EBF04958);
  v3[10] = swift_task_alloc();
  v4 = sub_1C1A6EB7C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_1C1A6F58C();
  v3[14] = sub_1C1A6F57C();
  v6 = sub_1C1A6F56C();
  v3[15] = v6;
  v3[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C1A29238, v6, v5);
}

uint64_t sub_1C1A29238()
{
  sub_1C19992F8(v0[8], (v0 + 2));
  sub_1C19A9E58(&qword_1EBF04960);
  v1 = swift_dynamicCast();
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  if (v1)
  {
    v5 = v0[13];
    (*(v3 + 56))(v0[10], 0, 1, v0[11]);
    (*(v3 + 32))(v5, v4, v2);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1C1A29420;
    v7 = v0[13];
    v8 = v0[7];

    return MEMORY[0x1EEDE8830](v8, v7);
  }

  else
  {

    (*(v3 + 56))(v4, 1, 1, v2);
    sub_1C1A29ADC(v4);
    sub_1C1A29B44();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1C1A29420()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1C1A295F8;
  }

  else
  {
    v5 = sub_1C1A2955C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C1A2955C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1A295F8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1A29694(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1A296DC()
{
  v2 = sub_1C1A6F2FC();
  v1[18] = v2;
  v1[2] = v1;
  v1[7] = v1 + 19;
  v1[3] = sub_1C1A2982C;
  v3 = swift_continuation_init();
  v1[17] = sub_1C19A9E58(&qword_1EBF04970);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C1A2996C;
  v1[13] = &unk_1F4141EF0;
  v1[14] = v3;
  [v0 loadProductWithParameters:v2 completionBlock:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C1A2982C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 8);
    v6 = 0;
  }

  else
  {
    v7 = *(v2 + 152);

    v5 = *(v3 + 8);
    v6 = v7;
  }

  return v5(v6);
}

uint64_t sub_1C1A2996C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1C1994048((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1C19A9E58(&qword_1EBF04990);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1C1A29A38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C19909C4;

  return sub_1C1A29108(a1, a2);
}

uint64_t sub_1C1A29ADC(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF04958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1A29B44()
{
  result = qword_1EBF04968;
  if (!qword_1EBF04968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04968);
  }

  return result;
}

id static PrivacyMarkerConfigurations.textColor.getter()
{
  if (qword_1EDE62828 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE62830;

  return v1;
}

uint64_t static PrivacyMarkerConfigurations.highlightedTextColor.getter()
{
  if (qword_1EDE62850 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE62858;
  v1 = qword_1EDE62858;
  return v0;
}

uint64_t (*static PrivacyMarkerConfigurations.backgroundColor.modify())()
{
  if (qword_1EDE62860 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1C1A29D20()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EBF04978 = v5;
  }
}

uint64_t (*static PrivacyMarkerConfigurations.backgroundColorDarkerSystemColors.modify())()
{
  if (qword_1EBF035B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1C19A0178;
}

uint64_t (*static PrivacyMarkerConfigurations.tintColor.modify())()
{
  if (qword_1EDE62818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1C19A0178;
}

void sub_1C1A2A018()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EBF04980 = v5;
  }
}

void *sub_1C1A2A194(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
  v4 = v3;
  return v3;
}

void sub_1C1A2A218(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static PrivacyMarkerConfigurations.tintColorDarkerSystemColors.modify())()
{
  if (qword_1EBF035B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1C19A0178;
}

id sub_1C1A2A308@<X0>(void *a1@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void sub_1C1A2A37C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v7 = *a1;
  v8 = *a5;
  v9 = *a1;
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = *a6;
  *a6 = v7;
}

uint64_t static PrivacyMarkerConfigurations.adString.getter()
{
  if (qword_1EDE62838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDE62840;

  return v0;
}

uint64_t static PrivacyMarkerConfigurations.adString.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE62838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDE62840 = a1;
  qword_1EDE62848 = a2;
}

uint64_t (*static PrivacyMarkerConfigurations.adString.modify())()
{
  if (qword_1EDE62838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1C19A0178;
}

uint64_t sub_1C1A2A598@<X0>(void *a1@<X8>)
{
  if (qword_1EDE62838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDE62848;
  *a1 = qword_1EDE62840;
  a1[1] = v2;
}

uint64_t sub_1C1A2A618(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EDE62838;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDE62840 = v2;
  qword_1EDE62848 = v1;
}

double static PrivacyMarkerConfigurations.padding(type:)(_BYTE *a1)
{
  result = 0.0;
  if (*a1 == 2)
  {
    return 9.0;
  }

  return result;
}

uint64_t sub_1C1A2A738()
{
  v0 = sub_1C1A4BD3C(&unk_1F413EE78);
  result = swift_arrayDestroy();
  qword_1EBF04988 = v0;
  return result;
}

uint64_t sub_1C1A2A784()
{
  v0 = sub_1C1A4BD3C(&unk_1F413EE38);
  result = swift_arrayDestroy();
  qword_1EBF076A0 = v0;
  return result;
}

id sub_1C1A2A7D0()
{
  sub_1C1A6D45C();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1C1A6F42C();
  v3 = v2;

  if (qword_1EBF035C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C1A63388(v1, v3, qword_1EBF076A0);

  if ((v4 & 1) == 0)
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_1C1A6D41C();
    v13 = [v11 canOpenURL_];

    return v13;
  }

  sub_1C1A6D44C();
  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C1A6F42C();
  v8 = v7;

  if (qword_1EBF035C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1A63388(v6, v8, qword_1EBF04988);

  return (v9 & 1);
}

double sub_1C1A2AA40()
{

  v0 = sub_1C19C224C(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v1 = sub_1C1A6F39C();
  [v0 setText_];

  v2 = v0;
  [v2 sizeToFit];
  [v2 frame];
  v4 = v3;

  return v4 + 4.0 + 120.0;
}

void sub_1C1A2AB44()
{
  sub_1C1999AD0();
  [*&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] removeFromSuperview];
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI32PromotedGroupedSponsorshipAdView_groupedSponsorshipLockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent];
    v22 = v1;
    [v2 serverUnfilledReason];
    v3 = sub_1C1A6DF6C();
    if (v3 == sub_1C1A6DF6C())
    {
      v4 = v22;
      [v0 addSubview_];
      v5 = objc_opt_self();
      sub_1C19A9E58(&qword_1EBF03E88);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C1A76BE0;
      v7 = [v4 leadingAnchor];
      v8 = [v0 leadingAnchor];
      v9 = [v7 constraintEqualToAnchor_];

      *(v6 + 32) = v9;
      v10 = [v4 topAnchor];

      v11 = [v0 topAnchor];
      v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

      *(v6 + 40) = v12;
      v13 = [v4 trailingAnchor];

      v14 = [v0 trailingAnchor];
      v15 = [v13 constraintLessThanOrEqualToAnchor_];

      *(v6 + 48) = v15;
      v16 = [v4 bottomAnchor];

      v17 = [v0 bottomAnchor];
      v18 = [v16 constraintLessThanOrEqualToAnchor_];

      *(v6 + 56) = v18;
      v19 = [v4 centerYAnchor];

      v20 = [v0 centerYAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v6 + 64) = v21;
      sub_1C19C2864();
      v22 = sub_1C1A6F50C();

      [v5 activateConstraints_];
    }
  }
}

id sub_1C1A2AEB8()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] serverUnfilledReason];
  v8 = sub_1C1A6DF6C();
  if (v8 == sub_1C1A6DF6C())
  {
    [v1 setReadiness_];
    [objc_msgSend(*&v1[v7] metricsHelper)];

    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = [*&v1[v7] context];
    if (v10)
    {
      v11 = [v10 identifier];
      swift_unknownObjectRelease();
      sub_1C1A6D60C();

      v12 = sub_1C1A6D5EC();
      v14 = v13;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v14 = 0x80000001C1A7CA00;
      v12 = 0xD000000000000012;
    }

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v15 = sub_1C1A6F1BC();
    sub_1C1994600(v15, qword_1EDE665F0);

    v16 = sub_1C1A6F19C();
    v17 = sub_1C1A6F64C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 67109378;
      *(v18 + 4) = 36;
      *(v18 + 8) = 2080;
      v20 = sub_1C19A1884(v12, v14, &v22);

      *(v18 + 10) = v20;
      _os_log_impl(&dword_1C198D000, v16, v17, "Context ID: %-*s Collapsing sponsorship view for promoted content.", v18, 0x12u);
      sub_1C199935C(v19);
      MEMORY[0x1C6906260](v19, -1, -1);
      MEMORY[0x1C6906260](v18, -1, -1);
    }

    else
    {
    }

    return [v1 setReadiness_];
  }
}

uint64_t sub_1C1A2B1E8()
{
}

uint64_t sub_1C1A2B284()
{
  v1 = v0;
  v2 = sub_1C1A6DBFC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C19A9E58(&qword_1EBF03E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1C1A6E4BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C19992F8(v1 + 304, &v47);
  v46 = xmmword_1C1A77040;
  v11 = *(v1 + 448);
  v12 = *(v8 + 104);
  v31 = *MEMORY[0x1E69C60B0];
  v32 = v8 + 104;
  v30 = v12;
  v12(v10);
  v13 = *(v1 + 456);
  v37 = type metadata accessor for AppAdRequestContextBuilder();
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_extraAdamId);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + 16) = v11;
  v16 = *(v8 + 32);
  v34 = v8 + 32;
  v35 = v7;
  v33 = v16;
  v16(v14 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_frequencyStorageType, v10, v7);
  *(v14 + OBJC_IVAR____TtC17PromotedContentUI26AppAdRequestContextBuilder_metaFieldsSource) = v13;
  sub_1C19992F8(v1 + 304, v40);
  v36 = type metadata accessor for AppStoreRequestTaskBuilder();
  v38 = swift_allocObject();
  sub_1C199274C(v40, v38 + 16);
  v17 = *MEMORY[0x1E6989DF0];
  v18 = sub_1C1A6EDFC();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v6, v17, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  v20 = sub_1C1A6ED0C();
  swift_allocObject();

  v21 = sub_1C1A6ECEC();
  sub_1C1A6DBAC();
  swift_allocObject();
  sub_1C1A6DB9C();
  type metadata accessor for AppStoreAd();
  sub_1C1A6DB7C();
  v29 = v20;

  sub_1C1A2C984(&v46, v40);
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  v23 = v40[1];
  *(v22 + 24) = v40[0];
  *(v22 + 40) = v23;
  *(v22 + 56) = v40[2];
  *(v22 + 72) = v41;

  sub_1C1A6DB7C();

  sub_1C1A6DB7C();

  v24 = sub_1C1A2C9F4();

  sub_1C1A6DB7C();

  v28 = v24;
  sub_1C1A6DB7C();
  v27 = v29;

  sub_1C1A6DB7C();

  sub_1C1A6DB8C();

  sub_1C1A6DB6C();

  sub_1C199274C(&v43, v40);
  v44 = v37;
  v45 = sub_1C1A2CAF8(&qword_1EBF049A8, type metadata accessor for AppAdRequestContextBuilder);
  *&v43 = v14;
  v42[13] = v36;
  v42[14] = sub_1C1A2CAF8(&qword_1EBF049B0, type metadata accessor for AppStoreRequestTaskBuilder);
  v42[10] = v38;
  v42[8] = v27;
  v42[9] = MEMORY[0x1E6989D98];
  v42[5] = v21;
  sub_1C19992F8(v40, v42);

  sub_1C1A6DBEC();
  sub_1C19A9E58(&unk_1EBF049B8);
  swift_allocObject();

  v25 = sub_1C1A6DAEC();

  sub_1C1A2C930(&v46);
  sub_1C199935C(v40);
  return v25;
}

uint64_t sub_1C1A2BBD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1C19992F8(v1 + 64, v29);
  sub_1C19992F8(v1 + 104, v28);
  v4 = sub_1C1A6D75C();
  swift_allocObject();
  v5 = sub_1C1A6D74C();
  v30 = v4;
  v31 = MEMORY[0x1E6986110];
  v29[0] = v5;
  sub_1C19992F8(v1 + 144, v28);
  v6 = sub_1C1A6EEDC();
  swift_allocObject();
  v7 = sub_1C1A6EECC();
  v28[3] = v6;
  v28[4] = sub_1C1A2CAF8(&qword_1EDE62338, MEMORY[0x1E6989E18]);
  v28[0] = v7;
  sub_1C19992F8(v2 + 224, v27);
  sub_1C1A6F0FC();
  swift_allocObject();
  sub_1C1A6F0EC();
  v8 = sub_1C1A6F0DC();
  swift_allocObject();
  v9 = sub_1C1A6F0CC();
  v26[3] = v8;
  v26[4] = MEMORY[0x1E6989FF8];
  v26[0] = v9;
  v10 = sub_1C1A6F05C();
  swift_allocObject();
  v11 = sub_1C1A6F04C();
  v27[3] = v10;
  v27[4] = sub_1C1A2CAF8(qword_1EDE62320, MEMORY[0x1E6989E68]);
  v27[0] = v11;
  sub_1C19992F8(v2 + 184, v26);
  sub_1C19992F8(v2 + 16, v23);
  v12 = sub_1C1A6EDDC();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_1C1A6EDCC();
  v24 = v12;
  v25 = MEMORY[0x1E6989DE0];
  v23[0] = v13;
  v14 = sub_1C1A6F07C();
  swift_allocObject();
  v15 = sub_1C1A6F06C();
  v24 = v14;
  v25 = MEMORY[0x1E6989EA8];
  v23[0] = v15;
  v16 = sub_1C1A6F09C();
  swift_allocObject();
  v17 = sub_1C1A6F08C();
  v30 = v16;
  v31 = MEMORY[0x1E6989FE8];
  v29[0] = v17;
  v18 = sub_1C1A6F0BC();
  swift_allocObject();
  v19 = sub_1C1A6F0AC();
  v30 = v18;
  v31 = MEMORY[0x1E6989FF0];
  v29[0] = v19;
  v20 = sub_1C1A6F29C();
  swift_allocObject();
  result = sub_1C1A6F28C();
  v22 = MEMORY[0x1E69C9E00];
  a1[3] = v20;
  a1[4] = v22;
  *a1 = result;
  return result;
}

uint64_t sub_1C1A2BEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C19A9E58(&qword_1EBF04A38);
  sub_1C19992F8(a1, v7);
  v5 = sub_1C1A6D89C();
  a2[3] = v4;
  result = sub_1C198FE5C(&unk_1EBF04A40, &qword_1EBF04A38);
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_1C1A2BF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C19992F8(a1, v12);
  sub_1C19992F8(a2 + 344, v11);
  sub_1C1A2CAA4();
  v10 = swift_allocObject();
  sub_1C1A2C984(a3, v10 + 16);
  v7 = sub_1C19A9E58(&qword_1EBF04A28);
  swift_allocObject();
  v8 = sub_1C1A6DC0C();
  a4[3] = v7;
  result = sub_1C198FE5C(&qword_1EBF04A30, &qword_1EBF04A28);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_1C1A2C09C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C19B75F8(MEMORY[0x1E69E7CC0]);
  v4 = sub_1C19A9E58(&qword_1EBF04A00);
  swift_allocObject();
  v5 = sub_1C1A6EFFC();
  v9[8] = v4;
  v9[9] = sub_1C198FE5C(&qword_1EBF04A08, &qword_1EBF04A00);
  v9[5] = v5;
  sub_1C19992F8(a1, v9);
  v6 = sub_1C19A9E58(&qword_1EBF04A10);
  swift_allocObject();
  v7 = sub_1C1A6DA8C();
  a2[3] = v6;
  result = sub_1C198FE5C(&qword_1EBF04A18, &qword_1EBF04A10);
  a2[4] = result;
  *a2 = v7;
  return result;
}

uint64_t sub_1C1A2C1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C1A6E4BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppStoreAdTranslator();
  sub_1C19992F8(a1, v21);
  sub_1C19992F8(a2 + 304, v20);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C60B0], v6);
  v11 = v22;
  v12 = v23;
  v13 = sub_1C199E1C0(v21, v22);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1C19DABC0(v16, v20, v9, v10, v11, v12);
  sub_1C199935C(v21);
  a3[3] = v10;
  result = sub_1C1A2CAF8(&qword_1EBF049A0, type metadata accessor for AppStoreAdTranslator);
  a3[4] = result;
  *a3 = v18;
  return result;
}

uint64_t sub_1C1A2C3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C1A6D3FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C1A6D48C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  sub_1C1A6D70C();
  v19 = 0xD000000000000011;
  v20 = 0x80000001C1A823D0;
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
  sub_1C1A2CA50();
  sub_1C1A6D47C();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v13 = sub_1C19A9E58(&qword_1EBF049E0);
  swift_allocObject();
  v14 = sub_1C1A6EDAC();
  v21 = v13;
  v22 = sub_1C198FE5C(&qword_1EBF049E8, &qword_1EBF049E0);
  v19 = v14;
  sub_1C19992F8(a1, v18);
  v15 = sub_1C19A9E58(&qword_1EBF049F0);
  swift_allocObject();
  v16 = sub_1C1A6DA8C();
  a2[3] = v15;
  result = sub_1C198FE5C(&qword_1EBF049F8, &qword_1EBF049F0);
  a2[4] = result;
  *a2 = v16;
  return result;
}

uint64_t sub_1C1A2C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C19992F8(a1, v10);
  v6 = *(a2 + 384);
  v5 = *(a2 + 392);
  v7 = sub_1C19A9E58(&qword_1EBF049C8);
  v8 = swift_allocObject();
  sub_1C199274C(v10, v8 + 16);
  *(v8 + 56) = v6;
  *(v8 + 64) = v5;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  a3[3] = v7;
  a3[4] = sub_1C198FE5C(&unk_1EBF049D0, &qword_1EBF049C8);
  *a3 = v8;
  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1A2C7C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C19992F8(a1 + 264, v6);
  v3 = sub_1C1A6E6BC();
  swift_allocObject();
  v4 = sub_1C1A6E6AC();
  a2[3] = v3;
  result = sub_1C1A2CAF8(&qword_1EBF04998, MEMORY[0x1E69C60D8]);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1C1A2C864()
{
  sub_1C199935C(v0 + 16);
  swift_unknownObjectRelease();
  sub_1C199935C(v0 + 64);
  sub_1C199935C(v0 + 104);
  sub_1C199935C(v0 + 144);
  sub_1C199935C(v0 + 184);
  sub_1C199935C(v0 + 224);
  sub_1C199935C(v0 + 264);
  sub_1C199935C(v0 + 304);
  sub_1C199935C(v0 + 344);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1C199935C(v0 + 408);

  return v0;
}

uint64_t sub_1C1A2C8FC()
{
  sub_1C1A2C864();

  return swift_deallocClassInstance();
}

unint64_t sub_1C1A2C9F4()
{
  result = qword_1EDE62710;
  if (!qword_1EDE62710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE62710);
  }

  return result;
}

unint64_t sub_1C1A2CA50()
{
  result = qword_1EDE63988;
  if (!qword_1EDE63988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63988);
  }

  return result;
}

unint64_t sub_1C1A2CAA4()
{
  result = qword_1EBF04A20;
  if (!qword_1EBF04A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04A20);
  }

  return result;
}

uint64_t sub_1C1A2CAF8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1C1A2CB40(uint64_t a1, char a2)
{
  v3 = sub_1C1A6F3CC();
  v5 = v4;
  v8 = v3 == sub_1C1A6F3CC() && v5 == v6;
  if ((a2 & 1) == 0)
  {
    v9 = 10.0;
    if (v8)
    {
      goto LABEL_30;
    }

    v17 = sub_1C1A6FCEC();

    if (v17)
    {
      return v9;
    }

    v18 = sub_1C1A6F3CC();
    v20 = v19;
    if (v18 == sub_1C1A6F3CC() && v20 == v21)
    {
      goto LABEL_29;
    }

    v23 = sub_1C1A6FCEC();

    if (v23)
    {
      return 8.835;
    }

    v28 = sub_1C1A6F3CC();
    v30 = v29;
    if (v28 == sub_1C1A6F3CC() && v30 == v31)
    {
LABEL_29:
      v9 = 8.835;
      goto LABEL_30;
    }

    v38 = sub_1C1A6FCEC();

    if (v38)
    {
      return 8.835;
    }

    v39 = sub_1C1A6F3CC();
    v41 = v40;
    if (v39 == sub_1C1A6F3CC() && v41 == v42)
    {
      v9 = 8.165;
      goto LABEL_30;
    }

    v44 = sub_1C1A6FCEC();

    if (v44)
    {
      return 8.165;
    }

    v54 = sub_1C1A6F3CC();
    v56 = v55;
    if (v54 == sub_1C1A6F3CC())
    {
      v9 = 7.5;
      if (v56 == v57)
      {
        goto LABEL_30;
      }
    }

    v58 = sub_1C1A6FCEC();

    v9 = 7.5;
    if (v58)
    {
      return v9;
    }

    v59 = sub_1C1A6F3CC();
    v61 = v60;
    if (v59 == sub_1C1A6F3CC() && v61 == v62)
    {
      v9 = 6.335;
      goto LABEL_30;
    }

    v64 = sub_1C1A6FCEC();

    if (v64)
    {
      return 6.335;
    }

    v69 = sub_1C1A6F3CC();
    v71 = v70;
    if (v69 == sub_1C1A6F3CC() && v71 == v72)
    {
      v9 = 5.835;
      goto LABEL_30;
    }

    v74 = sub_1C1A6FCEC();

    if (v74)
    {
      return 5.835;
    }

    v84 = sub_1C1A6F3CC();
    v86 = v85;
    if (v84 == sub_1C1A6F3CC())
    {
      v9 = 4.0;
      if (v86 == v87)
      {
        goto LABEL_30;
      }
    }

    v88 = sub_1C1A6FCEC();

    v9 = 4.0;
    if (v88)
    {
      return v9;
    }

    v89 = sub_1C1A6F3CC();
    v91 = v90;
    if (v89 == sub_1C1A6F3CC() && v91 == v92)
    {
LABEL_81:
      v9 = 2.165;
      goto LABEL_30;
    }

    v94 = sub_1C1A6FCEC();

    if ((v94 & 1) == 0)
    {
      v116 = sub_1C1A6F3CC();
      v118 = v117;
      if (v116 == sub_1C1A6F3CC() && v118 == v119)
      {
        goto LABEL_81;
      }

      v120 = sub_1C1A6FCEC();

      if ((v120 & 1) == 0)
      {
        v121 = sub_1C1A6F3CC();
        v123 = v122;
        if (v121 == sub_1C1A6F3CC() && v123 == v124)
        {
          goto LABEL_81;
        }

        v125 = sub_1C1A6FCEC();

        if ((v125 & 1) == 0)
        {
          v126 = sub_1C1A6F3CC();
          v128 = v127;
          if (v126 == sub_1C1A6F3CC() && v128 == v129)
          {
            goto LABEL_81;
          }

          v130 = sub_1C1A6FCEC();

          if ((v130 & 1) == 0)
          {
            v110 = sub_1C1A6F3CC();
            v112 = v131;
            v113 = sub_1C1A6F3CC();
            v115 = v132;
            v9 = 8.165;
            goto LABEL_106;
          }
        }
      }
    }

    return 2.165;
  }

  v9 = 16.0;
  if (v8)
  {
LABEL_30:

    return v9;
  }

  v10 = sub_1C1A6FCEC();

  if ((v10 & 1) == 0)
  {
    v11 = sub_1C1A6F3CC();
    v13 = v12;
    if (v11 == sub_1C1A6F3CC() && v13 == v14)
    {
      goto LABEL_26;
    }

    v16 = sub_1C1A6FCEC();

    if (v16)
    {
      return 14.835;
    }

    v24 = sub_1C1A6F3CC();
    v26 = v25;
    if (v24 == sub_1C1A6F3CC() && v26 == v27)
    {
LABEL_26:
      v9 = 14.835;
      goto LABEL_30;
    }

    v33 = sub_1C1A6FCEC();

    if (v33)
    {
      return 14.835;
    }

    v34 = sub_1C1A6F3CC();
    v36 = v35;
    if (v34 == sub_1C1A6F3CC() && v36 == v37)
    {
      v9 = 14.165;
      goto LABEL_30;
    }

    v43 = sub_1C1A6FCEC();

    if (v43)
    {
      return 14.165;
    }

    v45 = sub_1C1A6F3CC();
    v47 = v46;
    if (v45 == sub_1C1A6F3CC())
    {
      v9 = 13.5;
      if (v47 == v48)
      {
        goto LABEL_30;
      }
    }

    v49 = sub_1C1A6FCEC();

    v9 = 13.5;
    if (v49)
    {
      return v9;
    }

    v50 = sub_1C1A6F3CC();
    v52 = v51;
    if (v50 == sub_1C1A6F3CC() && v52 == v53)
    {
      v9 = 12.335;
      goto LABEL_30;
    }

    v63 = sub_1C1A6FCEC();

    if (v63)
    {
      return 12.335;
    }

    v65 = sub_1C1A6F3CC();
    v67 = v66;
    if (v65 == sub_1C1A6F3CC() && v67 == v68)
    {
      v9 = 11.835;
      goto LABEL_30;
    }

    v73 = sub_1C1A6FCEC();

    if (v73)
    {
      return 11.835;
    }

    v75 = sub_1C1A6F3CC();
    v77 = v76;
    if (v75 == sub_1C1A6F3CC())
    {
      v9 = 10.0;
      if (v77 == v78)
      {
        goto LABEL_30;
      }
    }

    v79 = sub_1C1A6FCEC();

    v9 = 10.0;
    if (v79)
    {
      return v9;
    }

    v80 = sub_1C1A6F3CC();
    v82 = v81;
    if (v80 == sub_1C1A6F3CC() && v82 == v83)
    {
LABEL_75:
      v9 = 8.165;
      goto LABEL_30;
    }

    v93 = sub_1C1A6FCEC();

    if (v93)
    {
      return 8.165;
    }

    v95 = sub_1C1A6F3CC();
    v97 = v96;
    if (v95 == sub_1C1A6F3CC() && v97 == v98)
    {
      goto LABEL_75;
    }

    v99 = sub_1C1A6FCEC();

    if (v99)
    {
      return 8.165;
    }

    v100 = sub_1C1A6F3CC();
    v102 = v101;
    if (v100 == sub_1C1A6F3CC() && v102 == v103)
    {
      goto LABEL_75;
    }

    v104 = sub_1C1A6FCEC();

    if (v104)
    {
      return 8.165;
    }

    v105 = sub_1C1A6F3CC();
    v107 = v106;
    if (v105 == sub_1C1A6F3CC() && v107 == v108)
    {
      goto LABEL_75;
    }

    v109 = sub_1C1A6FCEC();

    if (v109)
    {
      return 8.165;
    }

    v110 = sub_1C1A6F3CC();
    v112 = v111;
    v113 = sub_1C1A6F3CC();
    v115 = v114;
    v9 = 14.165;
LABEL_106:
    if (v110 != v113 || v112 != v115)
    {
      sub_1C1A6FCEC();
    }

    goto LABEL_30;
  }

  return v9;
}

uint64_t sub_1C1A2D630(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if (v1[OBJC_IVAR___APPCMetricsView_currentlyViewable] != 1 || v1[OBJC_IVAR___APPCMetricsView_needToSendOnScreen] == 1)
  {
    v1[OBJC_IVAR___APPCMetricsView_currentlyViewable] = 1;
    v1[OBJC_IVAR___APPCMetricsView_needToSendOnScreen] = 0;
    if ([objc_opt_self() isMainThread])
    {
      v4 = sub_1C19A2A40();
      v5 = v1[OBJC_IVAR___APPCMetricsView_viewCollapsedState];
    }

    else
    {
      v5 = v1[OBJC_IVAR___APPCMetricsView_viewCollapsedState];
      v4 = v5 != 2;
    }

    if (v5)
    {
      if (v4 & 1) != 0 || (v6 = OBJC_IVAR___APPCMetricsView_promotedContent, v7 = [objc_msgSend(*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper)], swift_unknownObjectRelease(), (v7))
      {
        v8 = OBJC_IVAR___APPCMetricsView_promotedContent;
        if ([*&v2[OBJC_IVAR___APPCMetricsView_promotedContent] placeholder])
        {
          [*&v2[v8] setConsumed_];
          v9 = [v2 promotedContentInfo];
          if (v9)
          {
            v10 = v9;
            [v9 setUnfilledReason_];
          }
        }

        v11 = swift_allocObject();
        *(v11 + 16) = 16718;
        *(v11 + 24) = 0xE200000000000000;
        if ((v4 & 1) != 0 && [v2 ready])
        {
          sub_1C198FB8C(0, &qword_1EDE63F38);
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          v13[2] = v12;
          v13[3] = v11;
          v13[4] = v3;

          sub_1C1A6F6BC();
        }
      }

      else
      {
        [*&v1[v6] setConsumed_];
        v20 = swift_allocObject();
        *(v20 + 16) = 16718;
        *(v20 + 24) = 0xE200000000000000;
      }

      sub_1C19DF168(v4 & 1);
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v14 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C1A73CD0;
      v22 = [*&v2[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v23 = sub_1C1A6F3CC();
      v25 = v24;

      *(v21 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1C199E518();
      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      v27 = MEMORY[0x1E69E65A8];
      *(v21 + 96) = MEMORY[0x1E69E6530];
      *(v21 + 104) = v27;
      *(v21 + 64) = v26;
      *(v21 + 72) = v3;
      sub_1C1A6F18C();
    }

    else
    {
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v14 = sub_1C1A6F8EC();
      sub_1C1A6F66C();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C1A73A30;
      v16 = [*&v2[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v17 = sub_1C1A6F3CC();
      v19 = v18;

      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C199E518();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      sub_1C1A6F17C();
    }
  }

  return result;
}

uint64_t sub_1C1A2DB28(uint64_t a1, Swift::String *a2, uint64_t a3)
{
  v5 = sub_1C1A6E6EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = 0xD00000000000001CLL;
    v12 = UIView.dumpParentDescription()();
    swift_beginAccess();
    a2[1] = v12;

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1C1A6FACC();
    MEMORY[0x1C6904F50](0xD000000000000015, 0x80000001C1A824B0);
    v26 = a3;
    v13 = sub_1C1A6FCCC();
    MEMORY[0x1C6904F50](v13);

    MEMORY[0x1C6904F50](0xD00000000000002ALL, 0x80000001C1A824D0);
    v14 = v10[OBJC_IVAR___APPCMetricsView_lastCollapsedState];
    if (v14 <= 2)
    {
      if (v10[OBJC_IVAR___APPCMetricsView_lastCollapsedState])
      {
        if (v14 == 1)
        {
          v15 = 0x80000001C1A82560;
          v11 = 0xD000000000000011;
        }

        else
        {
          v15 = 0xED0000302E30203DLL;
          v11 = 0x3D20746867696548;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        v11 = 16718;
      }

      goto LABEL_14;
    }

    if (v14 == 3)
    {
      v16 = "visibilityCheckingView = nil";
    }

    else
    {
      if (v14 == 4)
      {
        v15 = 0x80000001C1A82520;
        v11 = 0xD00000000000001DLL;
LABEL_14:
        MEMORY[0x1C6904F50](v11, v15);

        v17 = v24;
        v18 = v25;
        v26 = 0x7544746E65726150;
        v27 = 0xED00000A0D3A706DLL;
        swift_beginAccess();
        countAndFlagsBits = a2[1]._countAndFlagsBits;
        object = a2[1]._object;

        MEMORY[0x1C6904F50](countAndFlagsBits, object);

        v21 = v26;
        v22 = v27;
        *v8 = v17;
        v8[1] = v18;
        (*(v6 + 104))(v8, *MEMORY[0x1E69C60E0], v5);
        MetricsView.addDiagnostic(forEvent:dump:)(v8, v21, v22);

        return (*(v6 + 8))(v8, v5);
      }

      v16 = "hasValidParentViewSizes = NO";
    }

    v15 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C1A2DE60(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C1A2DE80, 0, 0);
}

uint64_t sub_1C1A2DE80()
{
  sub_1C1990FA8(*(v0 + 144), v0 + 56, &unk_1EBF042F0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    sub_1C199274C((v0 + 56), v0 + 16);
    if (*(v1 + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_isAAKEnabled) == 1)
    {
      v2 = *(v0 + 152);
      v3 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController;
      *(v0 + 160) = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController;
      v4 = v2 + v3;
      v5 = *v4;
      *(v0 + 168) = *v4;
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v8 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductInfo;
      *(v0 + 176) = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductInfo;
      swift_beginAccess();
      v9 = *(v2 + v8);
      *(v0 + 184) = v9;
      v10 = *(v6 + 40);
      v5;

      v25 = (v10 + *v10);
      v11 = swift_task_alloc();
      *(v0 + 192) = v11;
      *v11 = v0;
      v11[1] = sub_1C1A2E23C;

      return v25(v9, v0 + 16, ObjectType, v6);
    }

    sub_1C199935C(v0 + 16);
  }

  else
  {
    sub_1C1991140(v0 + 56, &unk_1EBF042F0);
  }

  v13 = [objc_opt_self() processInfo];
  v14 = [v13 isRunningTests];

  if (v14)
  {
    v15 = *(v0 + 8);

    return v15(1);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = v16 + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController;
    v18 = *(v16 + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController);
    *(v0 + 208) = v18;
    v19 = *(v17 + 8);
    v20 = swift_getObjectType();
    v21 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductInfo;
    swift_beginAccess();
    v22 = *(v16 + v21);
    *(v0 + 216) = v22;
    v23 = *(v19 + 32);
    v18;

    v26 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 224) = v24;
    *v24 = v0;
    v24[1] = sub_1C1A2E3CC;

    return v26(v22, v20, v19);
  }
}

uint64_t sub_1C1A2E23C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1C1A2E594;
  }

  else
  {

    v3 = sub_1C1A2E364;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C1A2E364()
{
  sub_1C199935C(v0 + 16);
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1C1A2E3CC(char a1)
{
  v4 = *v2;
  *(v4 + 232) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1A2E528, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_1C1A2E528()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1C1A2E594()
{
  v1 = *(v0 + 168);

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = sub_1C1A6F19C();
  v6 = sub_1C1A6F66C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C198D000, v5, v6, "Failure occurred attempting to load StoreProductViewController: %@", v8, 0xCu);
    sub_1C1991140(v9, &unk_1EBF04B10);
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  v12 = [objc_opt_self() processInfo];
  v13 = [v12 isRunningTests];

  if (v13)
  {

    sub_1C199935C(v0 + 16);
    v14 = *(v0 + 8);

    return v14(1);
  }

  else
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    v18 = v17 + *(v0 + 160);
    v19 = *v18;
    *(v0 + 240) = *v18;
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v22 = *(v17 + v16);
    *(v0 + 248) = v22;
    v23 = *(v20 + 32);
    v19;

    v25 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 256) = v24;
    *v24 = v0;
    v24[1] = sub_1C1A2E8B0;

    return v25(v22, ObjectType, v20);
  }
}

uint64_t sub_1C1A2E8B0(char a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1C1A2EA60;
  }

  else
  {

    *(v4 + 272) = a1 & 1;
    v5 = sub_1C1A2E9EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1A2E9EC()
{
  v1 = *(v0 + 272);

  sub_1C199935C(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C1A2EA60()
{
  v1 = v0[30];
  v2 = v0[25];

  sub_1C199935C((v0 + 2));
  v3 = v0[1];

  return v3(0);
}

uint64_t type metadata accessor for StoreProductRequester()
{
  result = qword_1EBF04A90;
  if (!qword_1EBF04A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1A2EC50()
{
  sub_1C1A6DDCC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C1A2ED5C()
{
  v0 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1A6D5CC();
    v5 = sub_1C1A6D5DC();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v2, v4 + v6);
    swift_endAccess();
  }
}

void sub_1C1A2EE78()
{
  v0 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28[-v1];
  v3 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28[-v4];
  v6 = sub_1C1A6D5DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11];
  sub_1C1A6D5CC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_backgroundedTime;
    v15 = Strong;
    swift_beginAccess();
    sub_1C1990FA8(v15 + v14, v5, &qword_1EBF038A8);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_1C1A6D5CC();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1C1991140(v5, &qword_1EBF038A8);
  }

LABEL_7:
  sub_1C1A6D50C();
  v17 = v16;
  v18 = v16;
  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v17 >= 301)
  {
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = v20 + OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 8);
        [*&v21[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_storeProductViewController] dismissViewControllerAnimated:0 completion:0];
        ObjectType = swift_getObjectType();
        v25 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionResult;
        swift_beginAccess();
        v26 = sub_1C1A6DDCC();
        v27 = *(v26 - 8);
        (*(v27 + 16))(v2, &v21[v25], v26);
        (*(v27 + 56))(v2, 0, 1, v26);
        (*(v23 + 8))(v2, ObjectType, v23);
        swift_unknownObjectRelease();

        sub_1C1991140(v2, &qword_1EBF03AD8);
      }

      else
      {
      }
    }
  }
}

void sub_1C1A2F35C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = v78 - v5;
  v6 = sub_1C1A6DDCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6158];
  v82 = v8;
  v83 = v1;
  v81 = v10;
  if (a1 > 7)
  {
    sub_1C19A9E58(&unk_1EBF03FD0);
    v50 = swift_allocObject();
    v80 = xmmword_1C1A73A30;
    v51 = MEMORY[0x1E69E6530];
    *(v50 + 16) = xmmword_1C1A73A30;
    v52 = MEMORY[0x1E69E65A8];
    *(v50 + 56) = v51;
    *(v50 + 64) = v52;
    *(v50 + 32) = a1;
    v53 = sub_1C1A6F3EC();
    v55 = v54;
    sub_1C1A6F66C();
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 56) = v11;
    *(v56 + 64) = sub_1C199E518();
    *(v56 + 32) = v53;
    *(v56 + 40) = v55;
    sub_1C198FB8C(0, &qword_1EDE63F30);

    v57 = sub_1C1A6F8DC();
    sub_1C1A6F18C();

    v16 = &qword_1EBF03FE8[3];
    v58 = sub_1C1A6F39C();

    APSimulateCrash();
  }

  else if (((1 << a1) & 0x6F) != 0)
  {
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v12 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1A73A30;
    v14 = *&v2[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_adamIdentifier];
    *(v13 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v13 + 64) = sub_1C1A0F564();
    *(v13 + 32) = v14;
    v15 = v14;
    v16 = &qword_1EBF03FE8[3];
    sub_1C1A6F18C();

    if (a1 == 1)
    {
      v17 = *&v2[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationObserver];
      if (v17)
      {
        v18 = objc_opt_self();
        swift_unknownObjectRetain();
        v19 = [v18 defaultCenter];
        [v19 removeObserver_];
        swift_unknownObjectRelease();
      }

      v20 = *&v2[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationOpenObserver];
      if (v20)
      {
        v21 = objc_opt_self();
        swift_unknownObjectRetain();
        v22 = [v21 defaultCenter];
        [v22 removeObserver_];
        swift_unknownObjectRelease();
      }
    }
  }

  else if (a1 == 4)
  {
    v23 = v7;
    v24 = v8;
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v25 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C1A73A30;
    v27 = *&v2[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_adamIdentifier];
    *(v26 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v26 + 64) = sub_1C1A0F564();
    *(v26 + 32) = v27;
    v28 = v27;
    sub_1C1A6F18C();

    v16 = &qword_1EBF03FE8[3];

    (*(v23 + 104))(v10, *MEMORY[0x1E69C5F20], v24);
    v29 = OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionResult;
    swift_beginAccess();
    v30 = v24;
    v7 = v23;
    (*(v23 + 40))(&v2[v29], v10, v30);
    swift_endAccess();
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    *&v80 = v7;
    v31 = sub_1C1A6F1BC();
    sub_1C1994600(v31, qword_1EDE665F0);
    v32 = v1;
    v33 = sub_1C1A6F19C();
    v34 = sub_1C1A6F67C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = *&v32[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_adamIdentifier];
      *(v35 + 4) = v37;
      *v36 = v37;
      v38 = v37;
      _os_log_impl(&dword_1C198D000, v33, v34, "Store product view controller with ADAM identifier %@ opened.", v35, 0xCu);
      sub_1C1991140(v36, &unk_1EBF04B10);
      MEMORY[0x1C6906260](v36, -1, -1);
      MEMORY[0x1C6906260](v35, -1, -1);
    }

    v39 = objc_opt_self();
    v40 = [v39 defaultCenter];
    v41 = *MEMORY[0x1E69DDAC8];
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = sub_1C1A2FEDC;
    v89 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_1C1A40D40;
    v87 = &unk_1F41420B8;
    v43 = _Block_copy(&aBlock);

    v44 = [v40 addObserverForName:v41 object:0 queue:0 usingBlock:v43];
    _Block_release(v43);

    *&v32[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationObserver] = v44;
    swift_unknownObjectRelease();
    v45 = [v39 defaultCenter];
    v46 = *MEMORY[0x1E69DDBC0];
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = sub_1C1A2FEE4;
    v89 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_1C1A40D40;
    v87 = &unk_1F41420E0;
    v48 = _Block_copy(&aBlock);

    v49 = [v45 addObserverForName:v46 object:0 queue:0 usingBlock:v48];
    _Block_release(v48);

    *&v32[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_notificationOpenObserver] = v49;
    swift_unknownObjectRelease();
    v2 = v83;
    v7 = v80;
    v16 = qword_1EBF03FE8 + 24;
  }

  LODWORD(v80) = sub_1C1A6F67C();
  v59 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v78[0] = "n>16@0:8";
  v78[1] = &qword_1C1A771B8[1];
  v78[2] = v59;
  v60 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1C1A73CD0;
  v62 = *&v2[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_adamIdentifier];
  *(v61 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
  *(v61 + 64) = sub_1C1A0F564();
  *(v61 + 32) = v62;
  v63 = v16[330];
  swift_beginAccess();
  v64 = *(v7 + 16);
  v65 = v81;
  v66 = v82;
  v64(v81, &v2[v63], v82);
  v67 = v62;
  v68 = sub_1C1A6DDBC();
  v70 = v69;
  (*(v7 + 8))(v65, v66);
  *(v61 + 96) = MEMORY[0x1E69E6158];
  *(v61 + 104) = sub_1C199E518();
  *(v61 + 72) = v68;
  *(v61 + 80) = v70;
  v71 = v83;
  sub_1C1A6F18C();

  v72 = &v71[OBJC_IVAR____TtC17PromotedContentUI21StoreProductRequester_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v73 = *(v72 + 1);
    ObjectType = swift_getObjectType();
    v75 = &v71[v63];
    v76 = v79;
    v64(v79, v75, v66);
    (*(v7 + 56))(v76, 0, 1, v66);
    (*(v73 + 8))(v76, ObjectType, v73);
    swift_unknownObjectRelease();
    sub_1C1991140(v76, &qword_1EBF03AD8);
  }

  else
  {
    sub_1C1A6F66C();
    v77 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

uint64_t AppStoreMetricDiscardReason.hashValue.getter()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

unint64_t sub_1C1A2FF80()
{
  result = qword_1EBF04B90;
  if (!qword_1EBF04B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreMetricDiscardReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreMetricDiscardReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C1A30124()
{
  sub_1C1A6E28C();
  swift_allocObject();
  v0 = sub_1C1A6E27C();
  sub_1C1A6E73C();
  v1 = sub_1C1A6E72C();
  v5 = &type metadata for StoreKitHelper;
  v6 = &off_1F41417F0;
  type metadata accessor for PromotedContentMetricCollector();
  v2 = swift_allocObject();
  sub_1C199E1C0(v4, &type metadata for StoreKitHelper);
  v2[7] = &type metadata for StoreKitHelper;
  v2[8] = &off_1F41417F0;
  v2[2] = v0;
  v2[3] = v1;
  result = sub_1C199935C(v4);
  qword_1EDE63920 = v2;
  return result;
}

uint64_t static PromotedContentMetricCollector.shared.getter()
{
  if (qword_1EDE63918 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1A3025C(uint64_t a1, const char *a2, unsigned int *a3)
{
  v6 = v3;
  v8 = sub_1C1A6E19C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v12 = sub_1C1A6F1BC();
  sub_1C1994600(v12, qword_1EDE665F0);

  v13 = sub_1C1A6F19C();
  v14 = sub_1C1A6F65C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a2;
    v16 = v15;
    v27 = swift_slowAlloc();
    v30 = v6;
    v31 = v27;
    *v16 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();
    v29 = a1;

    v17 = sub_1C1A6F41C();
    v19 = v11;
    v20 = a3;
    v21 = v9;
    v22 = v8;
    v23 = sub_1C19A1884(v17, v18, &v31);

    *(v16 + 4) = v23;
    v8 = v22;
    v9 = v21;
    a3 = v20;
    v11 = v19;
    _os_log_impl(&dword_1C198D000, v13, v14, v28, v16, 0xCu);
    v24 = v27;
    sub_1C199935C(v27);
    MEMORY[0x1C6906260](v24, -1, -1);
    MEMORY[0x1C6906260](v16, -1, -1);
  }

  result = sub_1C1A6E24C();
  if (result)
  {
    sub_1C1A6E55C();
    (*(v9 + 104))(v11, *a3, v8);
    sub_1C1A6E17C();

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void sub_1C1A304F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlacedAdEvent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v7 = sub_1C1A6F1BC();
  sub_1C1994600(v7, qword_1EDE665F0);

  v8 = sub_1C1A6F19C();
  v9 = sub_1C1A6F65C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v2;
    v28 = v11;
    *v10 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();

    v12 = sub_1C1A6F41C();
    v14 = sub_1C19A1884(v12, v13, &v28);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C198D000, v8, v9, "[%s] Received PlacedAdEvent", v10, 0xCu);
    sub_1C199935C(v11);
    MEMORY[0x1C6906260](v11, -1, -1);
    MEMORY[0x1C6906260](v10, -1, -1);
  }

  v15 = sub_1C1A6E6FC();
  if (v15)
  {
    v16 = v15;
    if ((sub_1C1A6E5BC() & 1) == 0)
    {
      sub_1C1A6E5CC();
      sub_1C1A6E25C();
      sub_1C1A6E55C();
      swift_allocObject();
      swift_weakInit();

      sub_1C1A6E18C();

      sub_1C1A6E58C();
      swift_allocObject();
      swift_weakInit();

      sub_1C1A6E4FC();

      sub_1C1A30970(a1, v16);

      return;
    }
  }

  sub_1C1A35640(a1, v6, type metadata accessor for PlacedAdEvent);

  v17 = sub_1C1A6F19C();
  v18 = sub_1C1A6F65C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v2;
    v28 = v20;
    *v19 = 136315394;
    type metadata accessor for PromotedContentMetricCollector();

    v21 = sub_1C1A6F41C();
    v23 = sub_1C19A1884(v21, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = *v6;
    v25 = v6[1];

    sub_1C1A356A8(v6, type metadata accessor for PlacedAdEvent);
    v26 = sub_1C19A1884(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1C198D000, v17, v18, "[%s] Not collecting placed event. We've either already recorded this, or we're not tracking the instance with identifier %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v20, -1, -1);
    MEMORY[0x1C6906260](v19, -1, -1);
  }

  else
  {

    sub_1C1A356A8(v6, type metadata accessor for PlacedAdEvent);
  }
}

void sub_1C1A30970(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = type metadata accessor for PlacedAdEvent();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1C1A6F10C();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6EBBC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1A6EBDC();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6EF1C();
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C19A9E58(&qword_1EBF04BC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v53 - v16;
  v18 = sub_1C1A6E91C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - v22;
  v24 = sub_1C1A6E4BC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  v62 = a2;
  sub_1C1A6E59C();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1C1991140(v23, &qword_1EBF03E48);
    v31 = v66;
LABEL_5:
    v32 = v67;
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v33 = sub_1C1A6F1BC();
    sub_1C1994600(v33, qword_1EDE665F0);
    sub_1C1A35640(v32, v5, type metadata accessor for PlacedAdEvent);

    v34 = sub_1C1A6F19C();
    v35 = sub_1C1A6F66C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68[0] = v37;
      *v36 = 136315394;
      v68[5] = v31;
      type metadata accessor for PromotedContentMetricCollector();

      v38 = sub_1C1A6F41C();
      v40 = sub_1C19A1884(v38, v39, v68);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      v41 = *v5;
      v42 = v5[1];

      sub_1C1A356A8(v5, type metadata accessor for PlacedAdEvent);
      v43 = sub_1C19A1884(v41, v42, v68);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_1C198D000, v34, v35, "[%s] Unable to access placement location for identifier %{public}s. Placed event cannot be sent without placement location information.", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v37, -1, -1);
      MEMORY[0x1C6906260](v36, -1, -1);
    }

    else
    {

      sub_1C1A356A8(v5, type metadata accessor for PlacedAdEvent);
    }

    return;
  }

  (*(v25 + 32))(v30, v23, v24);
  v31 = v66;
  sub_1C1A33188(v30, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    (*(v25 + 8))(v30, v24);
    sub_1C1991140(v17, &qword_1EBF04BC0);
    goto LABEL_5;
  }

  v53 = v19;
  v44 = *(v19 + 32);
  v66 = v18;
  v44(v65, v17, v18);
  if (*(v67 + 56))
  {

    v45 = sub_1C1A290BC();
    if (v45 == 7)
    {
      v46 = 0;
    }

    else
    {
      v46 = v45;
    }
  }

  else
  {
    v46 = 7;
  }

  (*(v25 + 16))(v27, v30, v24);
  v47 = (*(v25 + 88))(v27, v24);
  if (v47 == *MEMORY[0x1E69C6090])
  {
    v48 = 7147;
  }

  else if (v47 == *MEMORY[0x1E69C6098])
  {
    v48 = 7148;
  }

  else if (v47 == *MEMORY[0x1E69C60A0])
  {
    v48 = 7149;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v48 = 7141;
  }

  v56 = v48;
  (*(v54 + 104))(v63, *MEMORY[0x1E6989CD8], v55);
  sub_1C1A6E90C();
  if (v46 != 7)
  {
    sub_1C1A6DF4C();
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
  sub_1C1A6EF0C();
  sub_1C1A6E57C();
  sub_1C19B6BD8(v49);
  sub_1C1A35B50(&qword_1EDE62318, MEMORY[0x1E698A010]);
  v50 = v59;
  v51 = v61;
  v52 = v57;
  sub_1C1A6EE7C();

  sub_1C1A6E5AC();
  sub_1C1994048(v68, v68[3]);
  sub_1C1A6EBCC();
  (*(v60 + 8))(v50, v51);
  (*(v58 + 8))(v64, v52);
  (*(v53 + 8))(v65, v66);
  (*(v25 + 8))(v30, v24);
  sub_1C199935C(v68);
}

void sub_1C1A3130C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OnScreenAdEvent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C1A6E19C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v11 = sub_1C1A6F1BC();
  sub_1C1994600(v11, qword_1EDE665F0);

  v12 = sub_1C1A6F19C();
  v13 = sub_1C1A6F65C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v6;
    v15 = v14;
    v35 = swift_slowAlloc();
    v38 = v2;
    v39 = v35;
    *v15 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();
    v36 = v7;

    v16 = sub_1C1A6F41C();
    v18 = v10;
    v19 = a1;
    v20 = v8;
    v21 = sub_1C19A1884(v16, v17, &v39);
    v7 = v36;

    *(v15 + 4) = v21;
    v8 = v20;
    a1 = v19;
    v10 = v18;
    _os_log_impl(&dword_1C198D000, v12, v13, "[%s] Received OnScreenAdEvent", v15, 0xCu);
    v22 = v35;
    sub_1C199935C(v35);
    MEMORY[0x1C6906260](v22, -1, -1);
    v23 = v15;
    v6 = v37;
    MEMORY[0x1C6906260](v23, -1, -1);
  }

  if (sub_1C1A6E6FC())
  {
    sub_1C1A33EA0();
    sub_1C1A6E55C();
    (*(v8 + 104))(v10, *MEMORY[0x1E69C5FC0], v7);
    sub_1C1A6E17C();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1C1A35640(a1, v6, type metadata accessor for OnScreenAdEvent);

    v24 = sub_1C1A6F19C();
    v25 = sub_1C1A6F66C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v2;
      v39 = v27;
      *v26 = 136315394;
      type metadata accessor for PromotedContentMetricCollector();

      v28 = sub_1C1A6F41C();
      v30 = sub_1C19A1884(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = *v6;
      v32 = v6[1];

      sub_1C1A356A8(v6, type metadata accessor for OnScreenAdEvent);
      v33 = sub_1C19A1884(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_1C198D000, v24, v25, "[%s] Unable to look up tracking instance for identifier %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v27, -1, -1);
      MEMORY[0x1C6906260](v26, -1, -1);
    }

    else
    {

      sub_1C1A356A8(v6, type metadata accessor for OnScreenAdEvent);
    }
  }
}

void sub_1C1A31794(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OffScreenAdEvent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C1A6E19C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v11 = sub_1C1A6F1BC();
  sub_1C1994600(v11, qword_1EDE665F0);

  v12 = sub_1C1A6F19C();
  v13 = sub_1C1A6F65C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v6;
    v15 = v14;
    v35 = swift_slowAlloc();
    v38 = v2;
    v39 = v35;
    *v15 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();
    v36 = v7;

    v16 = sub_1C1A6F41C();
    v18 = v10;
    v19 = a1;
    v20 = v8;
    v21 = sub_1C19A1884(v16, v17, &v39);
    v7 = v36;

    *(v15 + 4) = v21;
    v8 = v20;
    a1 = v19;
    v10 = v18;
    _os_log_impl(&dword_1C198D000, v12, v13, "[%s] Received OffScreenAdEvent", v15, 0xCu);
    v22 = v35;
    sub_1C199935C(v35);
    MEMORY[0x1C6906260](v22, -1, -1);
    v23 = v15;
    v6 = v37;
    MEMORY[0x1C6906260](v23, -1, -1);
  }

  if (sub_1C1A6E6FC())
  {
    sub_1C1A340E4();
    sub_1C1A6E55C();
    (*(v8 + 104))(v10, *MEMORY[0x1E69C5FD0], v7);
    sub_1C1A6E17C();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1C1A35640(a1, v6, type metadata accessor for OffScreenAdEvent);

    v24 = sub_1C1A6F19C();
    v25 = sub_1C1A6F66C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v2;
      v39 = v27;
      *v26 = 136315394;
      type metadata accessor for PromotedContentMetricCollector();

      v28 = sub_1C1A6F41C();
      v30 = sub_1C19A1884(v28, v29, &v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = *v6;
      v32 = v6[1];

      sub_1C1A356A8(v6, type metadata accessor for OffScreenAdEvent);
      v33 = sub_1C19A1884(v31, v32, &v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_1C198D000, v24, v25, "[%s] Unable to look up tracking instance for identifier %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v27, -1, -1);
      MEMORY[0x1C6906260](v26, -1, -1);
    }

    else
    {

      sub_1C1A356A8(v6, type metadata accessor for OffScreenAdEvent);
    }
  }
}

void sub_1C1A31C1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisibilityAdEvent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v7 = sub_1C1A6F1BC();
  sub_1C1994600(v7, qword_1EDE665F0);

  v8 = sub_1C1A6F19C();
  v9 = sub_1C1A6F65C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v2;
    v26 = v11;
    *v10 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();

    v12 = sub_1C1A6F41C();
    v14 = sub_1C19A1884(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C198D000, v8, v9, "[%s] Received VisibilityAdEvent", v10, 0xCu);
    sub_1C199935C(v11);
    MEMORY[0x1C6906260](v11, -1, -1);
    MEMORY[0x1C6906260](v10, -1, -1);
  }

  if (sub_1C1A6E6FC())
  {
    sub_1C1A6E58C();
    sub_1C1A6E50C();
  }

  else
  {
    sub_1C1A35640(a1, v6, type metadata accessor for VisibilityAdEvent);

    v15 = sub_1C1A6F19C();
    v16 = sub_1C1A6F66C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v2;
      v26 = v18;
      *v17 = 136315394;
      type metadata accessor for PromotedContentMetricCollector();

      v19 = sub_1C1A6F41C();
      v21 = sub_1C19A1884(v19, v20, &v26);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = *v6;
      v23 = v6[1];

      sub_1C1A356A8(v6, type metadata accessor for VisibilityAdEvent);
      v24 = sub_1C19A1884(v22, v23, &v26);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C198D000, v15, v16, "[%s] Unable to look up tracking instance for identifier %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v18, -1, -1);
      MEMORY[0x1C6906260](v17, -1, -1);
    }

    else
    {

      sub_1C1A356A8(v6, type metadata accessor for VisibilityAdEvent);
    }
  }
}

void sub_1C1A31FB8(uint64_t a1, void (*a2)(void), int *a3)
{
  v4 = v3;
  v45 = a3;
  v46 = a2;
  v6 = type metadata accessor for InteractedAdEvent();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C1A6E19C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v13 = sub_1C1A6F1BC();
  sub_1C1994600(v13, qword_1EDE665F0);

  v14 = sub_1C1A6F19C();
  v15 = sub_1C1A6F65C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v8;
    v42 = v17;
    v47 = v4;
    v48 = v17;
    *v16 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();
    v43 = a1;

    v18 = sub_1C1A6F41C();
    v20 = v4;
    v21 = v12;
    v22 = v10;
    v23 = v9;
    v24 = sub_1C19A1884(v18, v19, &v48);
    a1 = v43;

    *(v16 + 4) = v24;
    v9 = v23;
    v10 = v22;
    v12 = v21;
    v4 = v20;
    _os_log_impl(&dword_1C198D000, v14, v15, "[%s] Received InteractedAdEvent", v16, 0xCu);
    v25 = v42;
    sub_1C199935C(v42);
    v26 = v25;
    v8 = v44;
    MEMORY[0x1C6906260](v26, -1, -1);
    MEMORY[0x1C6906260](v16, -1, -1);
  }

  v27 = sub_1C1A6E6FC();
  if (!v27)
  {
    sub_1C1A35640(a1, v8, type metadata accessor for InteractedAdEvent);

    v30 = sub_1C1A6F19C();
    v31 = sub_1C1A6F66C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v4;
      v48 = v33;
      *v32 = 136315394;
      type metadata accessor for PromotedContentMetricCollector();
      v34 = v8;

      v35 = sub_1C1A6F41C();
      v37 = sub_1C19A1884(v35, v36, &v48);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = *v8;
      v39 = *(v34 + 8);

      sub_1C1A356A8(v34, type metadata accessor for InteractedAdEvent);
      v40 = sub_1C19A1884(v38, v39, &v48);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1C198D000, v30, v31, "[%s] Unable to look up tracking instance for identifier %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v33, -1, -1);
      MEMORY[0x1C6906260](v32, -1, -1);

      if (!v46)
      {
        return;
      }
    }

    else
    {

      sub_1C1A356A8(v8, type metadata accessor for InteractedAdEvent);
      if (!v46)
      {
        return;
      }
    }

    v46();
    return;
  }

  v28 = v27;
  sub_1C1A34328(a1);
  sub_1C1A6E55C();
  (*(v10 + 104))(v12, *MEMORY[0x1E69C5FB8], v9);
  sub_1C1A6E17C();

  v29 = (*(v10 + 8))(v12, v9);
  if (*(a1 + 16) == 1)
  {
    if (v46)
    {
      (v46)(v29);
    }
  }

  else
  {
    sub_1C1A34DF0(v28, v46, v45);
  }
}

void sub_1C1A3249C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CompletedAdEvent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v7 = sub_1C1A6F1BC();
  sub_1C1994600(v7, qword_1EDE665F0);

  v8 = sub_1C1A6F19C();
  v9 = sub_1C1A6F65C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v2;
    v26 = v11;
    *v10 = 136315138;
    type metadata accessor for PromotedContentMetricCollector();

    v12 = sub_1C1A6F41C();
    v14 = sub_1C19A1884(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C198D000, v8, v9, "[%s] Received CompletedAdEvent", v10, 0xCu);
    sub_1C199935C(v11);
    MEMORY[0x1C6906260](v11, -1, -1);
    MEMORY[0x1C6906260](v10, -1, -1);
  }

  if (sub_1C1A6E6FC())
  {
    sub_1C1A35708();
    sub_1C1A6E71C();
    sub_1C1A6E26C();
  }

  else
  {
    sub_1C1A35640(a1, v6, type metadata accessor for CompletedAdEvent);

    v15 = sub_1C1A6F19C();
    v16 = sub_1C1A6F66C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v2;
      v26 = v18;
      *v17 = 136315394;
      type metadata accessor for PromotedContentMetricCollector();

      v19 = sub_1C1A6F41C();
      v21 = sub_1C19A1884(v19, v20, &v26);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = *v6;
      v23 = v6[1];

      sub_1C1A356A8(v6, type metadata accessor for CompletedAdEvent);
      v24 = sub_1C19A1884(v22, v23, &v26);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C198D000, v15, v16, "[%s] Unable to look up tracking instance for identifier %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v18, -1, -1);
      MEMORY[0x1C6906260](v17, -1, -1);
    }

    else
    {

      sub_1C1A356A8(v6, type metadata accessor for CompletedAdEvent);
    }
  }
}

uint64_t sub_1C1A32840(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1C1A6D62C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D61C();
  v11 = sub_1C1A6D5EC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v14 = sub_1C1A6F1BC();
  sub_1C1994600(v14, qword_1EDE665F0);

  v15 = sub_1C1A6F19C();
  v16 = sub_1C1A6F65C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v2;
    v29[0] = v18;
    *v17 = 136315394;
    type metadata accessor for PromotedContentMetricCollector();
    v27 = v11;

    v19 = sub_1C1A6F41C();
    v21 = sub_1C19A1884(v19, v20, v29);
    v11 = v27;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_1C19A1884(v11, v13, v29);
    _os_log_impl(&dword_1C198D000, v15, v16, "[%s] Produced adInstanceId for missed opportunity %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v18, -1, -1);
    MEMORY[0x1C6906260](v17, -1, -1);
  }

  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v22 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v23 = sub_1C1A6ECAC();
  swift_allocObject();
  v24 = sub_1C1A6EC9C();
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1A6EE2C();
  swift_allocObject();
  sub_1C1A6EE1C();
  sub_1C1A6EEAC();
  swift_allocObject();

  sub_1C1A6EE9C();
  v29[3] = v23;
  v29[4] = MEMORY[0x1E6989D88];
  v29[0] = v24;

  sub_1C1A32CB0(a1, v6);
  sub_1C1A6E5DC();
  swift_allocObject();
  sub_1C1A6E56C();
  sub_1C1A6E70C();

  return v11;
}

uint64_t sub_1C1A32CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1A6E91C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6E2DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69C6118])
  {
    (*(v5 + 8))(v7, v4);
    v19 = sub_1C1A6E4BC();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  (*(v5 + 96))(v7, v4);
  v16 = *(v9 + 32);
  v16(v15, v7, v8);
  v16(v11, v15, v8);
  v17 = (*(v9 + 88))(v11, v8);
  if (v17 == *MEMORY[0x1E69C5FF0])
  {
    v18 = MEMORY[0x1E69C60B0];
LABEL_11:
    v21 = *v18;
    v22 = sub_1C1A6E4BC();
    v23 = *(v22 - 8);
    (*(v23 + 104))(a2, v21, v22);
    return (*(v23 + 56))(a2, 0, 1, v22);
  }

  if (v17 == *MEMORY[0x1E69C5FF8])
  {
    v18 = MEMORY[0x1E69C60B8];
    goto LABEL_11;
  }

  if (v17 == *MEMORY[0x1E69C6000])
  {
    v18 = MEMORY[0x1E69C6098];
    goto LABEL_11;
  }

  if (v17 == *MEMORY[0x1E69C5FE0])
  {
    v18 = MEMORY[0x1E69C60A8];
    goto LABEL_11;
  }

  v24 = *MEMORY[0x1E69C5FE8];
  v25 = v17;
  v26 = sub_1C1A6E4BC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v29 = (v27 + 56);
  if (v25 == v24)
  {
    v28(a2, *MEMORY[0x1E69C60C0], v26);
    return (*v29)(a2, 0, 1, v26);
  }

  else
  {
    v28(a2, *MEMORY[0x1E69C60A0], v26);
    (*v29)(a2, 0, 1, v26);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t PromotedContentMetricCollector.deinit()
{

  sub_1C199935C(v0 + 32);
  return v0;
}

uint64_t PromotedContentMetricCollector.__deallocating_deinit()
{

  sub_1C199935C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A33188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1A6E4BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69C60B0])
  {
    v10 = MEMORY[0x1E69C5FF0];
  }

  else if (v9 == *MEMORY[0x1E69C60B8])
  {
    v10 = MEMORY[0x1E69C5FF8];
  }

  else if (v9 == *MEMORY[0x1E69C60C0])
  {
    v10 = MEMORY[0x1E69C5FE8];
  }

  else if (v9 == *MEMORY[0x1E69C60A8])
  {
    v10 = MEMORY[0x1E69C5FE0];
  }

  else
  {
    if (v9 != *MEMORY[0x1E69C6090] && v9 != *MEMORY[0x1E69C6098] && v9 != *MEMORY[0x1E69C60A0])
    {
      v18 = sub_1C1A6E91C();
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
      return (*(v5 + 8))(v8, v4);
    }

    v10 = MEMORY[0x1E69C6000];
  }

  v13 = *v10;
  v14 = sub_1C1A6E2DC();
  (*(*(v14 - 8) + 104))(a2, v13, v14);
  v15 = *MEMORY[0x1E69C6118];
  v16 = sub_1C1A6E91C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(a2, v15, v16);
  return (*(v17 + 56))(a2, 0, 1, v16);
}

uint64_t sub_1C1A3344C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 56) + 16 * v11);
        v13 = v12[1];
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v15 = (*(a1 + 48) + 16 * v11);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v12;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_1C1A48A70(v16 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v32;
      v28[1] = v22;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C1A336B4()
{
  v0 = sub_1C1A6EC2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6EF4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1A6E2CC();
    sub_1C1A6F5CC();
    v14 = v5;
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
    sub_1C1A6EF3C();
    sub_1C1A6E57C();
    sub_1C19B6BD8(v8);
    sub_1C1A35B50(&qword_1EDE62368, MEMORY[0x1E6989D28]);
    sub_1C1A6EE7C();

    sub_1C1A6E5AC();
    sub_1C1994048(v15, v15[3]);
    sub_1C1A6EBCC();

    (*(v1 + 8))(v3, v0);
    (*(v14 + 8))(v7, v4);
    sub_1C199935C(v15);
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v9 = sub_1C1A6F1BC();
    sub_1C1994600(v9, qword_1EDE665F0);
    v10 = sub_1C1A6F19C();
    v11 = sub_1C1A6F66C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C198D000, v10, v11, "Tried sending quick return metric but the tracking instance was already deallocated!", v12, 2u);
      MEMORY[0x1C6906260](v12, -1, -1);
    }
  }
}

void sub_1C1A33A1C()
{
  v0 = sub_1C1A6EB8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6EBAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v14 = v5;
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
    sub_1C1A6EB9C();
    sub_1C1A6E57C();
    sub_1C19B6BD8(v8);
    sub_1C1A35B50(&qword_1EBF04BC8, MEMORY[0x1E6989C70]);
    sub_1C1A6EE7C();

    sub_1C1A6E5AC();
    sub_1C1994048(v15, v15[3]);
    sub_1C1A6EBCC();

    (*(v1 + 8))(v3, v0);
    (*(v14 + 8))(v7, v4);
    sub_1C199935C(v15);
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v9 = sub_1C1A6F1BC();
    sub_1C1994600(v9, qword_1EDE665F0);
    v10 = sub_1C1A6F19C();
    v11 = sub_1C1A6F66C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C198D000, v10, v11, "Tried sending quick return metric but the tracking instance was already deallocated!", v12, 2u);
      MEMORY[0x1C6906260](v12, -1, -1);
    }
  }
}

unint64_t sub_1C1A33D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03D08);
    v3 = sub_1C1A6FBEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1A35AC8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C1991010(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C19916E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1C1A33EA0()
{
  v0 = sub_1C1A6EC4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6EF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
  sub_1C1A6EF5C();
  sub_1C1A6E57C();
  sub_1C19B6BD8(v8);
  sub_1C1A35B50(&qword_1EDE62360, MEMORY[0x1E6989D40]);
  sub_1C1A6EE7C();

  sub_1C1A6E5AC();
  sub_1C1994048(v11, v11[3]);
  sub_1C1A6EBCC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_1C199935C(v11);
}

uint64_t sub_1C1A340E4()
{
  v0 = sub_1C1A6EC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6EFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
  sub_1C1A6EFDC();
  sub_1C1A6E57C();
  sub_1C19B6BD8(v8);
  sub_1C1A35B50(&qword_1EDE62350, MEMORY[0x1E6989D70]);
  sub_1C1A6EE7C();

  sub_1C1A6E5AC();
  sub_1C1994048(v11, v11[3]);
  sub_1C1A6EBCC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_1C199935C(v11);
}

uint64_t sub_1C1A34328(void *a1)
{
  v2 = sub_1C1A6ED4C();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1A6F01C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
  sub_1C1A6F00C();
  sub_1C19A9E58(&qword_1EBF04BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73CD0;
  *(inited + 32) = 0x64496D616461;
  v10 = a1[5];
  v11 = a1[6];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 64) = 0x6449656C646E7562;
  v13 = a1[3];
  v12 = a1[4];
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v13;
  *(inited + 88) = v12;

  v14 = sub_1C19B760C(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&qword_1EBF04BB0);
  swift_arrayDestroy();
  v15 = sub_1C1A3344C(v14);

  sub_1C1A6E57C();
  sub_1C1A1E458(v15);

  sub_1C1A35B50(&qword_1EBF04BB8, MEMORY[0x1E6989DA8]);
  sub_1C1A6EE7C();

  sub_1C1A6E5AC();
  sub_1C1994048(v18, v18[3]);
  sub_1C1A6EBCC();
  (*(v17 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  return sub_1C199935C(v18);
}

id sub_1C1A34664(uint64_t a1)
{
  v27 = a1;
  v1 = objc_allocWithZone(MEMORY[0x1E698B4E8]);

  v2 = [v1 init];
  sub_1C1A6E5DC();
  v3 = sub_1C1A6E29C();

  if (!v3)
  {
    goto LABEL_46;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v4 = sub_1C19B6260(v25), (v5 & 1) == 0))
  {

LABEL_28:
    sub_1C19B78CC(v25);
    return 0;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v4, v26);
  sub_1C19B78CC(v25);
  sub_1C198FB8C(0, &qword_1EBF04870);
  if (!swift_dynamicCast())
  {
LABEL_45:

LABEL_46:

    return 0;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v6 = sub_1C19B6260(v25), (v7 & 1) == 0))
  {

    goto LABEL_28;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v6, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {
LABEL_44:

    goto LABEL_45;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v8 = sub_1C19B6260(v25), (v9 & 1) == 0))
  {

LABEL_31:

    goto LABEL_28;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v8, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v10 = sub_1C19B6260(v25), (v11 & 1) == 0))
  {

LABEL_33:

    goto LABEL_31;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v10, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {
LABEL_42:

    goto LABEL_43;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v12 = sub_1C19B6260(v25), (v13 & 1) == 0))
  {

    goto LABEL_33;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v12, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {
LABEL_41:

    goto LABEL_42;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v14 = sub_1C19B6260(v25), (v15 & 1) == 0))
  {

LABEL_36:

    goto LABEL_33;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v14, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v16 = sub_1C19B6260(v25), (v17 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v16, v26);
  sub_1C19B78CC(v25);
  if (!swift_dynamicCast())
  {

    goto LABEL_40;
  }

  sub_1C1A6FA6C();
  if (!*(v3 + 16) || (v18 = sub_1C19B6260(v25), (v19 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_1C19A1A5C(*(v3 + 56) + 32 * v18, v26);
  sub_1C19B78CC(v25);

  if (!swift_dynamicCast())
  {

    goto LABEL_46;
  }

  [v2 setAppAdamId_];
  v20 = sub_1C1A6F39C();

  [v2 setImpressionId_];

  [v2 setTimestamp_];
  v21 = sub_1C1A6F39C();

  [v2 setAdNetworkId_];

  v22 = sub_1C1A6F39C();

  [v2 setAttributionSignature_];

  [v2 setCampaignId_];
  [v2 setSourceAppBundleId_];
  [v2 setSourceAppAdamId_];
  [v2 setOverrideCampaignLimit_];
  v23 = sub_1C1A6F39C();

  [v2 setVersion_];

  return v2;
}

void sub_1C1A34DF0(uint64_t a1, void (*a2)(void), int *a3)
{
  v51 = a2;
  v5 = sub_1C19A9E58(&qword_1EBF03E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47 - v6;
  v58 = a1;

  v9 = sub_1C1A34664(v8);
  if (v9)
  {
    v10 = v9;
    sub_1C1A6F65C();
    v11 = sub_1C198FB8C(0, &qword_1EDE63F30);
    *&v49 = "n>16@0:8";
    v48 = &OBJC_IVAR____TtC17PromotedContentUI30PromotedContentMetricCollector_pageStorage;
    v50 = v11;
    v12 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1A73A30;
    v14 = sub_1C1A0EBDC();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C199E518();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1C1A6F18C();

    v17 = swift_allocObject();
    sub_1C1A6D78C();
    swift_allocObject();
    v18 = v51;
    sub_1C19A2D24(v51);
    *(v17 + 16) = MEMORY[0x1C6903220](v18, a3);
    v19 = sub_1C1A6EDFC();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1C1A6ED0C();
    swift_allocObject();
    v20 = sub_1C1A6ECEC();
    sub_1C1A6ECDC();
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    v22[2] = v10;
    v22[3] = v20;
    v22[4] = v17;
    v56 = sub_1C1A35B38;
    v57 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1C19B8FA0;
    v55 = &unk_1F4142210;
    v23 = _Block_copy(&aBlock);
    v24 = v10;

    v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:0.1];
    _Block_release(v23);
    v26 = [objc_opt_self() sharedInstance];
    v27 = swift_allocObject();
    v27[2] = v24;
    v27[3] = v25;
    v27[4] = v20;
    v27[5] = v17;
    v56 = sub_1C1A35B44;
    v57 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1C19E7330;
    v55 = &unk_1F4142260;
    v28 = _Block_copy(&aBlock);
    v29 = v24;

    v30 = v25;

    [v26 addInstallAttributionParamsWithConfig:v29 completionHandler:v28];
    _Block_release(v28);

    sub_1C198FB8C(0, &qword_1EDE63970);
    if (sub_1C19CFE34())
    {
      sub_1C1A6F67C();
      v31 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      v33 = MEMORY[0x1C6903230](v32);

      if (v33)
      {
        v33(v34);
        sub_1C19A504C(v33);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v48 = a3;
    v50 = a1;
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v35 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v36 = swift_allocObject();
    v49 = xmmword_1C1A73A30;
    *(v36 + 16) = xmmword_1C1A73A30;
    sub_1C1A6E5DC();
    aBlock = sub_1C1A6E29C();
    sub_1C19A9E58(&qword_1EBF04B98);
    v37 = sub_1C1A6F41C();
    v39 = v38;
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1C199E518();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    sub_1C1A6F18C();

    v41 = sub_1C1A6F39C();
    sub_1C19A9E58(&qword_1EBF04BA0);
    inited = swift_initStackObject();
    *(inited + 16) = v49;
    aBlock = 0xD000000000000012;
    v53 = 0x80000001C1A79450;
    sub_1C1A6FA6C();
    aBlock = sub_1C1A6E29C();
    v43 = sub_1C1A6F41C();
    *(inited + 96) = v40;
    *(inited + 72) = v43;
    *(inited + 80) = v44;
    sub_1C19B72D4(inited);
    swift_setDeallocating();
    sub_1C1991140(inited + 32, &qword_1EBF03C68);
    v45 = sub_1C1A6F2FC();

    v46 = sub_1C1A6F39C();
    CreateDiagnosticReport();

    if (v51)
    {
      v51();
    }
  }
}

uint64_t sub_1C1A35640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A356A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1A35708()
{
  v0 = sub_1C1A6EC5C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6EF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6E57C();
  sub_1C1A6EE8C();

  v8 = MEMORY[0x1E69E7CC0];
  sub_1C1A33D90(MEMORY[0x1E69E7CC0]);
  sub_1C1A6EF7C();
  sub_1C1A6E57C();
  sub_1C19B6BD8(v8);
  sub_1C1A35B50(&qword_1EDE62358, MEMORY[0x1E6989D50]);
  sub_1C1A6EE7C();

  sub_1C1A6E5AC();
  sub_1C1994048(v11, v11[3]);
  sub_1C1A6EBCC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_1C199935C(v11);
}

uint64_t sub_1C1A35AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A35B50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C1A35C3C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = 148.0;
  if (v2 != 1)
  {
    v3 = 0.0;
  }

  if (v2 == 2)
  {
    v4 = 260.0;
  }

  else
  {
    v4 = v3;
  }

  v100 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A77490;
  v6 = sub_1C19AF868();
  v7 = [v6 leadingAnchor];

  v8 = [v0 contentView];
  v9 = [v8 &off_1E8148528 + 1];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v12 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 &selRef_heightAnchor];

  v15 = [v12 &selRef:v14 preferredFontForTextStyle:? + 5];
  *(v5 + 40) = v15;
  v16 = [*&v0[v11] trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_didImpress + 4];

  v19 = [v16 &selRef:v18 preferredFontForTextStyle:? + 5];
  *(v5 + 48) = v19;
  v20 = [*&v0[v11] bottomAnchor];
  v21 = sub_1C19AF980();
  v22 = [v21 &selRef_heightAnchor];

  v23 = [v20 &selRef:v22 preferredFontForTextStyle:? + 5];
  *(v5 + 56) = v23;
  v24 = [*&v0[v11] heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v5 + 64) = v25;
  v26 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v27 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] leadingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 &selRef:v29 preferredFontForTextStyle:? + 5];
  *(v5 + 72) = v30;
  v31 = [*&v0[v26] &selRef_heightAnchor];
  v32 = [*&v0[v11] bottomAnchor];
  v33 = [v31 &selRef:v32 preferredFontForTextStyle:? + 5];

  *(v5 + 80) = v33;
  v34 = [*&v0[v26] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 &selRef:v36 preferredFontForTextStyle:? + 5];
  *(v5 + 88) = v37;
  v38 = [*&v0[v26] bottomAnchor];
  v39 = [v0 contentView];
  v40 = [v39 bottomAnchor];

  v41 = [v38 &selRef:v40 preferredFontForTextStyle:? + 5];
  *(v5 + 96) = v41;
  v42 = sub_1C19AF98C();
  v43 = [v42 leadingAnchor];

  v44 = [*&v0[v26] leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:6.0];

  *(v5 + 104) = v45;
  v46 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v47 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v48 = [*&v0[v26] topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:6.0];

  *(v5 + 112) = v49;
  v50 = [*&v0[v46] trailingAnchor];
  v51 = [*&v0[v26] trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-6.0];

  *(v5 + 120) = v52;
  v53 = [*&v0[v46] bottomAnchor];
  v54 = sub_1C19B139C();
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor:v55 constant:-8.0];
  *(v5 + 128) = v56;
  v57 = OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button;
  v58 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button] leadingAnchor];
  v59 = [*&v0[v26] leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:6.0];

  *(v5 + 136) = v60;
  v61 = [*&v0[v57] &selRef_heightAnchor];
  v62 = [*&v0[v46] bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:8.0];

  *(v5 + 144) = v63;
  v64 = [*&v0[v57] trailingAnchor];
  v65 = [*&v0[v26] trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:-6.0];

  *(v5 + 152) = v66;
  v67 = [*&v0[v57] bottomAnchor];
  v68 = [*&v0[v26] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-6.0];

  *(v5 + 160) = v69;
  v70 = [*&v0[v57] heightAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v5 + 168) = v71;
  v72 = sub_1C19AF9EC();
  v73 = [v72 leadingAnchor];

  v74 = [*&v0[v26] leadingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v5 + 176) = v75;
  v76 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v77 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v78 = [*&v0[v26] topAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v5 + 184) = v79;
  v80 = [*&v0[v76] trailingAnchor];
  v81 = [*&v0[v26] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v5 + 192) = v82;
  v83 = [*&v0[v76] bottomAnchor];
  v84 = [*&v0[v26] bottomAnchor];
  v85 = [v83 &selRef:v84 preferredFontForTextStyle:? + 5];

  *(v5 + 200) = v85;
  v86 = sub_1C19AFAB0();
  v87 = [v86 leadingAnchor];

  v88 = [*&v0[v26] leadingAnchor];
  v89 = [v87 &selRef:v88 preferredFontForTextStyle:? + 5];

  *(v5 + 208) = v89;
  v90 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v91 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v92 = [*&v0[v26] topAnchor];
  v93 = [v91 &selRef:v92 preferredFontForTextStyle:? + 5];

  *(v5 + 216) = v93;
  v94 = [*&v0[v90] trailingAnchor];
  v95 = [*&v0[v26] trailingAnchor];
  v96 = [v94 &selRef:v95 preferredFontForTextStyle:? + 5];

  *(v5 + 224) = v96;
  v97 = [*&v0[v90] bottomAnchor];
  v98 = [*&v0[v26] bottomAnchor];
  v99 = [v97 &selRef:v98 preferredFontForTextStyle:? + 5];

  *(v5 + 232) = v99;
  sub_1C19C2864();
  v101 = sub_1C1A6F50C();

  [v100 activateConstraints_];
}

id sub_1C1A367BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallCTACarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1A36814()
{
  v1 = v0;
  if (v0[OBJC_IVAR___APPCMetricsView_isCollapsedInternal])
  {
    v2 = 1;
    v3 = 1;
LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  [v0 frame];
  if (CGRectGetHeight(v24) == 0.0)
  {
    v3 = 1;
    v2 = 2;
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v3 = 1;
    v2 = 3;
    goto LABEL_5;
  }

  v6 = Strong;
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  v8 = *&v0[OBJC_IVAR___APPCMetricsView_contentView];
  if (v8 && (v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x2A8), v10 = v8, v9(), v12 = v11, LOBYTE(v9) = v13, v10, (v9 & 1) == 0))
  {
    v14 = v12;
  }

  else
  {
    v14 = 50.0;
  }

  v15 = [v1 superview];
  if (v15)
  {
    v16 = v15;
    sub_1C198FB8C(0, &qword_1EDE626B8);
    v17 = 1;
    while (1)
    {
      v18 = v16;
      v19 = v6;
      v20 = sub_1C1A6F7BC();

      if (v20)
      {
        break;
      }

      if ((v17 & 1) == 0)
      {

        goto LABEL_27;
      }

      [v18 bounds];
      v22 = Width <= ceil(v21);
      [v18 bounds];
      v17 = v14 <= ceil(v23) && v22;
      v16 = [v18 superview];

      if (!v16)
      {

        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_27:
    v3 = 1;
    v2 = 5;
    goto LABEL_5;
  }

LABEL_25:
  result = 0;
  v3 = 2;
  v2 = 4;
LABEL_6:
  *(v1 + OBJC_IVAR___APPCMetricsView_lastCollapsedState) = v2;
  *(v1 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) = v3;
  return result;
}

void sub_1C1A36AA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = sub_1C1A36C90();
  [v5 setNeedsUpdateConfiguration];
}

uint64_t sub_1C1A36B10()
{
  v1 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C1A36B54(char a1)
{
  v3 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1C1A36C90();
  [v4 setNeedsUpdateConfiguration];
}

void (*sub_1C1A36BBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1A36C20;
}

void sub_1C1A36C20(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3 = sub_1C1A36C90();
    [v3 setNeedsUpdateConfiguration];
  }
}

id sub_1C1A36C90()
{
  v1 = OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton;
  v2 = *(v0 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton);
  }

  else
  {
    v4 = sub_1C1A36CF4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1C1A36CF4(uint64_t a1)
{
  v72 = a1;
  v1 = sub_1C19A9E58(&qword_1EBF03A60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v68 = v56 - v2;
  v67 = sub_1C1A6D2EC();
  v59 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C19A9E58(&qword_1EBF04BF8);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = v56 - v4;
  v57 = sub_1C19A9E58(&qword_1EBF04C00);
  v5 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v7 = v56 - v6;
  v73 = sub_1C1A6D35C();
  v8 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v56 - v15;
  v71 = sub_1C1A6F88C();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  sub_1C1A6F86C();
  if (qword_1EDE62828 != -1)
  {
    swift_once();
  }

  v70 = v16;
  v21 = qword_1EDE62830;
  sub_1C1A6F83C();
  if (qword_1EDE62860 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_1EDE62868;
  v23 = sub_1C1A6F7DC();
  v62 = v20;
  v24 = v23;
  sub_1C1A6F1CC();
  v24(aBlock, 0);
  v25 = [objc_opt_self() currentTraitCollection];
  v26 = [v25 preferredContentSizeCategory];

  v61 = v26;
  v27 = sub_1C19B1A70();
  v28 = [objc_opt_self() systemFontOfSize:v27 weight:*MEMORY[0x1E69DB970]];
  sub_1C1A6D34C();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v56[-2] = v30;
  swift_getKeyPath();
  sub_1C1A29014();
  sub_1C1A6D32C();

  v31 = *(v8 + 8);
  v32 = v10;
  v33 = v73;
  v31(v32, v73);
  v60 = v28;
  aBlock[0] = v28;
  v34 = v57;
  sub_1C1A6D33C();
  (*(v5 + 8))(v7, v34);
  v35 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v35);
  v56[-2] = v36;
  swift_getKeyPath();
  sub_1C1A39E6C();
  v37 = v58;
  sub_1C1A6D32C();

  v57 = v31;
  v56[1] = v8 + 8;
  v31(v13, v33);
  v38 = v59;
  v39 = v63;
  v40 = v67;
  (*(v59 + 104))(v63, *MEMORY[0x1E6965578], v67);
  v41 = v70;
  v42 = v65;
  sub_1C1A6D33C();
  (*(v38 + 8))(v39, v40);
  (*(v64 + 8))(v37, v42);
  if (qword_1EDE62750 != -1)
  {
    swift_once();
  }

  v43 = v73;
  (*(v8 + 16))(v13, v41, v73);

  v44 = v68;
  sub_1C1A6D30C();
  v45 = sub_1C1A6D2FC();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = v62;
  sub_1C1A6F81C();
  v47 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  v48 = v72;
  swift_beginAccess();
  v49 = v61;
  sub_1C1A2CB40(v61, *(v48 + v47));
  sub_1C1A6F80C();
  sub_1C198FB8C(0, &qword_1EDE60C68);
  v50 = v69;
  v51 = v71;
  (*(v69 + 16))(v66, v46, v71);
  v52 = sub_1C1A6F89C();
  [v52 setPreferredBehavioralStyle_];
  [v52 addTarget:v48 action:sel_didSelectPrivacyMarker_ forControlEvents:64];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C1A39F08;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C19B8FA0;
  aBlock[3] = &unk_1F4142368;
  v54 = _Block_copy(aBlock);

  [v52 setConfigurationUpdateHandler_];
  _Block_release(v54);

  (v57)(v41, v43);
  (*(v50 + 8))(v46, v51);
  return v52;
}

uint64_t sub_1C1A376CC(void *a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03A60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v59 - v3;
  v5 = sub_1C1A6D2EC();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C19A9E58(&qword_1EBF04BF8);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  v10 = sub_1C19A9E58(&qword_1EBF04C00);
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v67 = sub_1C1A6D35C();
  v75 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v21 = sub_1C19A9E58(&qword_1EBF03A58);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v73 = result;
  if (result)
  {
    v60 = v4;
    v65 = a1;
    sub_1C1A6F8AC();
    v27 = [objc_opt_self() currentTraitCollection];
    v28 = [v27 preferredContentSizeCategory];

    v64 = v28;
    v29 = sub_1C19B1A70();
    v30 = [objc_opt_self() systemFontOfSize:v29 weight:*MEMORY[0x1E69DB970]];
    v61 = v20;
    v31 = v30;
    sub_1C1A6D34C();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v59 - 2) = v33;
    swift_getKeyPath();
    sub_1C1A29014();
    sub_1C1A6D32C();

    v34 = v10;
    v36 = v75 + 8;
    v35 = *(v75 + 8);
    v37 = v14;
    v38 = v67;
    (v35)(v37, v67);
    v63 = v31;
    v76 = v31;
    sub_1C1A6D33C();
    v66[1](v12, v34);
    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    *(&v59 - 2) = v40;
    swift_getKeyPath();
    sub_1C1A39E6C();
    sub_1C1A6D32C();

    v66 = v35;
    v62 = v36;
    (v35)(v17, v38);
    v42 = v70;
    v41 = v71;
    v43 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E6965578], v72);
    v44 = v61;
    v45 = v69;
    sub_1C1A6D33C();
    (*(v41 + 8))(v42, v43);
    (*(v68 + 8))(v9, v45);
    v46 = sub_1C1A6F88C();
    v47 = *(*(v46 - 8) + 48);
    v48 = v44;
    if (!v47(v25, 1, v46))
    {
      v72 = v47;
      v49 = v38;
      v50 = v75;
      if (qword_1EDE62750 != -1)
      {
        swift_once();
      }

      (*(v50 + 16))(v17, v48, v49);

      v51 = v48;
      v52 = v60;
      sub_1C1A6D30C();
      v53 = sub_1C1A6D2FC();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      v48 = v51;
      v38 = v49;
      sub_1C1A6F81C();
      v47 = v72;
    }

    v54 = v47(v25, 1, v46);
    v55 = v73;
    v56 = v64;
    if (!v54)
    {
      v57 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
      swift_beginAccess();
      sub_1C1A2CB40(v56, v55[v57]);
      sub_1C1A6F80C();
    }

    sub_1C19B1A00(v25, v74);
    v58 = v65;
    sub_1C1A6F8BC();
    [v58 invalidateIntrinsicContentSize];

    (v66)(v48, v38);
    return sub_1C1991140(v25, &qword_1EBF03A58);
  }

  return result;
}

void (*sub_1C1A37EB4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C1A36C90();
  return sub_1C1A37EFC;
}

void sub_1C1A37EFC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton);
  *(v1 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton) = v2;
}

id sub_1C1A37F50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6E6EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(*&v1[OBJC_IVAR___APPCMetricsVideoView_privacyMarker] + OBJC_IVAR___APPrivacyMarker_privacyMarkerType) = 3;
  sub_1C19970C4();
  v8 = OBJC_IVAR___APPCMetricsView_contentView;
  if (!*&v1[OBJC_IVAR___APPCMetricsView_contentView])
  {
    goto LABEL_48;
  }

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v9 = *&v1[v8];
  if (!v9)
  {
    goto LABEL_48;
  }

  v52 = v8;
  v53 = a1;
  v10 = *(v9 + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  [swift_unknownObjectRetain() serverUnfilledReason];
  v11 = sub_1C1A6DF6C();
  v12 = sub_1C1A6DF6C();
  v2[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = v11 != v12;
  if (v11 == v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v2[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = v13;
  v14 = sub_1C1A36814();
  if (v14)
  {
    v15 = 7562585;
  }

  else
  {
    v15 = 28494;
  }

  v16 = v5;
  if (v14)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  [v10 serverUnfilledReason];
  v18 = sub_1C1A6DF5C();
  v20 = v19;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1C1A6FACC();
  MEMORY[0x1C6904F50](0xD00000000000001DLL, 0x80000001C1A82B10);
  MEMORY[0x1C6904F50](v15, v17);
  v21 = v16;

  MEMORY[0x1C6904F50](0xD000000000000023, 0x80000001C1A82B30);
  MEMORY[0x1C6904F50](v18, v20);

  v22 = v55;
  *v7 = v54;
  v7[1] = v22;
  (*(v16 + 104))(v7, *MEMORY[0x1E69C60E0], v4);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    [*&v2[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper];
    sub_1C1A6E3AC();
    if (swift_dynamicCastClass())
    {
      v23 = sub_1C1A6E39C();
      v25 = v52;
      v24 = v53;
      if (v23)
      {
        v26 = v23;
        sub_1C1A6E6DC();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  v25 = v52;
  v24 = v53;
LABEL_20:
  swift_unknownObjectRelease();
  (*(v21 + 8))(v7, v4);
  v27 = *&v2[v25];
  if (v27)
  {
    if ([*(v27 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
    {
      sub_1C1A6E2BC();
      v28 = swift_dynamicCastClass();
      if (!v28)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = *&v2[v25];
    if (v29)
    {
      v30 = *&v2[OBJC_IVAR___APPCMetricsVideoView_videoView];
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        [v2 addSubview_];
        [v32 setTranslatesAutoresizingMaskIntoConstraints_];
        sub_1C19CA824(v31, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
      }
    }

    if (v28)
    {
      v33 = v28;
      if (v24)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    v38 = *&v2[v25];
    if (v38)
    {
      v39 = [*(v38 + OBJC_IVAR___APPCPromotedContentView_promotedContent) representations];
      sub_1C19A9E58(&unk_1EBF04670);
      v40 = sub_1C1A6F51C();

      if (v40 >> 62)
      {
        result = sub_1C1A6F9EC();
        if (result)
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_35:
          if ((v40 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C69055B0](0, v40);
          }

          else
          {
            if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            swift_unknownObjectRetain();
          }

          sub_1C1A6E2BC();
          v42 = swift_dynamicCastClass();
          if (v42)
          {
            v28 = v42;
            v33 = 0;
            if (v24)
            {
LABEL_30:
              v34 = *(v24 + OBJC_IVAR___APPCPromotedContentView_promotedContent);
              v35 = v33;
              if ([v34 metricEventsTracking])
              {
                swift_unknownObjectRelease();
                v36 = *(v24 + OBJC_IVAR___APPCPromotedContentView_promotedContent);
                v37 = *&v2[OBJC_IVAR___APPCMetricsView_promotedContent];
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                [v37 setMetricEventsTracking_];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              goto LABEL_41;
            }

LABEL_40:
            v43 = v33;
LABEL_41:
            v44 = &v2[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
            v45 = *&v2[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
            if (v45)
            {
              sub_1C19A2D24(v45);
              v46 = v28;
              v45(v28);

              sub_1C19A504C(v45);
            }

            else
            {
            }

            goto LABEL_52;
          }

          swift_unknownObjectRelease();
          goto LABEL_48;
        }
      }
    }
  }

LABEL_48:
  result = [v2 promotedContentInfo];
  if (result)
  {
    v47 = result;
    sub_1C1A6DCDC();

    v48 = sub_1C1A6DF6C();
    result = sub_1C1A6DF6C();
    if (v48 != result)
    {
      v44 = &v2[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
      v49 = *&v2[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
      if (!v49)
      {
        v50 = 0;
        goto LABEL_54;
      }

      v49(0);
      sub_1C19A504C(v49);
LABEL_52:
      v50 = *v44;
LABEL_54:
      *v44 = 0;
      v44[1] = 0;
      return sub_1C19A504C(v50);
    }
  }

  return result;
}

void *sub_1C1A3863C()
{
  v1 = *(v0 + OBJC_IVAR___APPCMetricsView_contentView);
  v2 = v1;
  return v1;
}

void sub_1C1A38670(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___APPCMetricsView_contentView);
  *(v1 + OBJC_IVAR___APPCMetricsView_contentView) = a1;
  v3 = a1;
  v4 = v2;
  sub_1C199CCE0(v2);

  sub_1C1A37F50(v2);
}

id sub_1C1A386F0()
{
  v1 = [*(v0 + OBJC_IVAR___APPCMetricsView_promotedContent) mediaMetricHelper];

  return v1;
}

void sub_1C1A38734(void *a1)
{
  v2 = OBJC_IVAR___APPCMetricsVideoView_videoView;
  v3 = *&v1[OBJC_IVAR___APPCMetricsVideoView_videoView];
  *&v1[OBJC_IVAR___APPCMetricsVideoView_videoView] = a1;
  v4 = a1;

  v5 = *&v1[OBJC_IVAR___APPCMetricsView_contentView];
  if (v5)
  {
    v6 = *&v1[v2];
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      [v1 addSubview_];
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_1C19CA824(v7, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
    }
  }
}

uint64_t sub_1C1A38814()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = sub_1C1A6D5DC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v52 - v19;
  v21 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v22 = [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) metricEventsTracking];
  if (!v22)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v7 = v13;
LABEL_16:
    sub_1C1991140(v7, &qword_1EBF038A8);
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v29 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C1A73A30;
    v31 = [*(v1 + v21) identifier];
    v32 = sub_1C1A6F3CC();
    v34 = v33;

    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C199E518();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    sub_1C1A6F18C();
  }

  v56 = v21;
  v23 = [v22 placeholderPlacedTimestamp];
  swift_unknownObjectRelease();
  v57 = v1;
  if (v23)
  {
    sub_1C1A6D59C();

    v24 = *(v15 + 56);
    v24(v10, 0, 1, v14);
  }

  else
  {
    v24 = *(v15 + 56);
    v24(v10, 1, 1, v14);
  }

  sub_1C19E2D00(v10, v13);
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    v7 = v13;
LABEL_15:
    v21 = v56;
    v1 = v57;
    goto LABEL_16;
  }

  v53 = *(v15 + 32);
  v53(v20, v13, v14);
  v26 = [*(v57 + v56) metricEventsTracking];
  if (!v26)
  {
    (*(v15 + 8))(v20, v14);
    v24(v7, 1, 1, v14);
    goto LABEL_15;
  }

  v54 = v20;
  v27 = [v26 prerollAdRequestTimestamp];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1C1A6D59C();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v24(v4, v28, 1, v14);
  sub_1C19E2D00(v4, v7);
  if (v25(v7, 1, v14) == 1)
  {
    (*(v15 + 8))(v54, v14);
    goto LABEL_15;
  }

  v53(v55, v7, v14);
  sub_1C1A6D50C();
  v37 = v36;
  v39 = v56;
  v38 = v57;
  v40 = [*(v57 + v56) context];
  if (v40 && (v41 = [v40 current], swift_unknownObjectRelease(), v41))
  {
    [v41 placement];
    swift_unknownObjectRelease();
    v53 = sub_1C1A6E9FC();
  }

  else
  {
    v53 = 0;
  }

  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v42 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C1A73CD0;
  v44 = [*(v38 + v39) identifier];
  v45 = sub_1C1A6F3CC();
  v47 = v46;

  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1C199E518();
  v48 = MEMORY[0x1E69E63B0];
  *(v43 + 32) = v45;
  *(v43 + 40) = v47;
  v49 = MEMORY[0x1E69E6438];
  *(v43 + 96) = v48;
  *(v43 + 104) = v49;
  *(v43 + 72) = v37;
  sub_1C1A6F18C();

  v50 = [*(v38 + v39) metricEventsTracking];
  if (v50)
  {
    [v50 sendAnalyticsEventFor:6 interval:0 networkType:v53 placementType:0 failed:v37];
    swift_unknownObjectRelease();
  }

  v51 = *(v15 + 8);
  v51(v55, v14);
  return (v51)(v54, v14);
}

uint64_t sub_1C1A38F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73A30;
  v8 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v9 = [*(v3 + OBJC_IVAR___APPCMetricsView_promotedContent) identifier];
  v10 = sub_1C1A6F3CC();
  v12 = v11;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C199E518();
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  sub_1C1A6F18C();

  v13 = [*(v3 + v8) metricEventsTracking];
  if (v13)
  {
    [v13 didRequestPrerollVideo];
    swift_unknownObjectRelease();
  }

  if (qword_1EDE63E78 != -1)
  {
    swift_once();
  }

  v14 = *(v3 + v8);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  swift_unknownObjectRetain();

  sub_1C1A186F0(v14, sub_1C1A3946C, v16);
  swift_unknownObjectRelease();
}

uint64_t sub_1C1A391B8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v7 = sub_1C1A6F1FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1A6F22C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C198FB8C(0, &qword_1EDE63F38);
  v14 = sub_1C1A6F6FC();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  *(v15 + 32) = v19;
  *(v15 + 40) = a4;
  aBlock[4] = sub_1C1A39E5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F4142300;
  v16 = _Block_copy(aBlock);

  sub_1C1A6F21C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C19C4108();
  sub_1C19A9E58(&qword_1EBF03E28);
  sub_1C19BF710();
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_1C1A39478(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = *&Strong[OBJC_IVAR___APPCMetricsView_promotedContent];
      v8 = Strong;
      if ([v9 bestRepresentation])
      {
        v19 = &unk_1F4172C68;
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = v10;

          swift_unknownObjectRetain();
          a3(v11);

          swift_unknownObjectRelease_n();
          return;
        }

        swift_unknownObjectRelease();
      }

      v15 = [v8 promotedContentInfo];

      if (!v15 || (sub_1C1A6DCDC(), v15, v16 = sub_1C1A6DF6C(), v16 == sub_1C1A6DF6C()))
      {
        v17 = &v8[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
        v18 = *&v8[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
        *v17 = a3;
        *(v17 + 1) = a4;

        sub_1C19A504C(v18);
LABEL_13:

        return;
      }
    }

    else if (*&Strong[OBJC_IVAR___APPCMetricsView_context])
    {
      sub_1C1A6EB6C();
      swift_unknownObjectRetain_n();
      v12 = sub_1C1A6EA3C();
      sub_1C1A6EB0C();
      sub_1C1A6DCFC();
      v13 = v12;
      v14 = sub_1C1A6DCBC();
      [v8 setPromotedContentInfo_];
      swift_unknownObjectRelease();
    }

    a3(0);
    goto LABEL_13;
  }
}

void sub_1C1A39770(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for MetricsVideoView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1C1A38814();
}

void sub_1C1A397C4(char *a1)
{
  v3 = OBJC_IVAR___APPCMetricsView_contentView;
  v4 = *&v1[OBJC_IVAR___APPCMetricsView_contentView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v1[OBJC_IVAR___APPCMetricsView_needToSendOnScreen] = 1;
    sub_1C19DE550();
  }

  *&v1[OBJC_IVAR___APPCMetricsView_promotedContent] = *&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  sub_1C1A6DCFC();
  swift_unknownObjectRetain();
  v5 = sub_1C1A6DCBC();
  [v1 setPromotedContentInfo_];
  sub_1C19CA824(v1, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = v6;
  v7 = a1;
  sub_1C199CCE0(v6);

  sub_1C1A37F50(v6);
}

void sub_1C1A39934()
{
  v1 = *(v0 + OBJC_IVAR___APPCMetricsView_contentView);
  if (v1)
  {
    v3 = v1;
    sub_1C1A428F4(0.0, 0.0);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v2 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v3 = sub_1C1A6F39C();
    APSimulateCrash();
  }
}

void sub_1C1A39AA8()
{
  sub_1C19A504C(*(v0 + OBJC_IVAR___APPCMetricsVideoView_representationFetched));
  v1 = *(v0 + OBJC_IVAR___APPCMetricsVideoView_videoView);
}

id MetricsVideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsVideoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1A39E6C()
{
  result = qword_1EBF04C08;
  if (!qword_1EBF04C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04C08);
  }

  return result;
}

void sub_1C1A39F18()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [v0 layer];
    if (qword_1EBF03598 != -1)
    {
      swift_once();
    }

    if (qword_1EBF07668)
    {
      v4 = [qword_1EBF07668 CGColor];
    }

    else
    {
      v4 = 0;
    }

    [v3 setBorderColor_];

    v5 = [v0 layer];
    [v5 setBorderWidth_];
  }
}

uint64_t sub_1C1A3A068()
{
  v1 = sub_1C1A3A138();
  [v1 frame];
  v3 = v2;

  v4 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView) frame];
  v6 = v5;
  if (v3 > 0.0)
  {
    [*(v0 + v4) frame];
    v7 = [objc_opt_self() currentDevice];
    [v7 userInterfaceIdiom];
  }

  return v6;
}

id sub_1C1A3A138()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E698B390]) initWithFrame_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    [v3 setOverrideUserInterfaceStyle_];
    [v3 setDelegate_];
    v6 = *&v0[v1];
    *&v0[v1] = v3;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C1A3A250(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    if (qword_1EBF03598 != -1)
    {
      swift_once();
    }

    [v5 setBackgroundColor_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_1C1A3A31C()
{
  v0[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation] = 1;
  v1 = &v0[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  v2 = v0[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8];
  *v1 = 0;
  v1[8] = 0;
  if ((v2 & 1) != 0 || (v3 = sub_1C1A6E45C(), v3 != sub_1C1A6E45C()))
  {
    sub_1C1999C50();
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
    sub_1C19A9E58(&qword_1EBF03E88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A753A0;
    *(inited + 32) = sub_1C1A3A238();
    v8 = inited + 32;
    *(inited + 40) = sub_1C1A3A138();
    *(inited + 48) = sub_1C1A3A244();
    v17 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C69055B0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v18 = *v8;
    }

    v19 = v18;
    [v0 addSubview_];

    if (v17)
    {
      v20 = MEMORY[0x1C69055B0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v20 = *(inited + 40);
    }

    v21 = v20;
    [v0 addSubview_];

    if (v17)
    {
      v22 = MEMORY[0x1C69055B0](2, inited);
      goto LABEL_18;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v22 = *(inited + 48);
LABEL_18:
      v23 = v22;
      [v0 addSubview_];

      swift_setDeallocating();
      swift_arrayDestroy();
      v61 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1A77650;
      v25 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___topBorder;
      v26 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___topBorder] topAnchor];
      v27 = [v0 topAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      *(v24 + 32) = v28;
      v29 = [*&v0[v25] heightAnchor];
      v30 = [v29 constraintEqualToConstant_];

      *(v24 + 40) = v30;
      v31 = [*&v0[v25] leadingAnchor];
      v32 = [v0 &off_1E8148528 + 1];
      v33 = [v31 constraintEqualToAnchor_];

      *(v24 + 48) = v33;
      v34 = [*&v0[v25] trailingAnchor];
      v35 = [v0 trailingAnchor];
      v36 = [v34 constraintEqualToAnchor_];

      *(v24 + 56) = v36;
      v37 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
      v38 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] topAnchor];
      v39 = [*&v0[v25] bottomAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      *(v24 + 64) = v40;
      v41 = [*&v0[v37] leadingAnchor];
      v42 = [v0 leadingAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      *(v24 + 72) = v43;
      v44 = [*&v0[v37] trailingAnchor];
      v45 = [v0 trailingAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      *(v24 + 80) = v46;
      v47 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___bottomBorder;
      v48 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___bottomBorder] bottomAnchor];
      v49 = [v0 bottomAnchor];
      v50 = [v48 constraintEqualToAnchor_];

      *(v24 + 88) = v50;
      v51 = [*&v0[v47] heightAnchor];
      v52 = [v51 constraintEqualToConstant_];

      *(v24 + 96) = v52;
      v53 = [*&v0[v47] leadingAnchor];
      v54 = [v0 leadingAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      *(v24 + 104) = v55;
      v56 = [*&v0[v47] trailingAnchor];
      v57 = [v0 trailingAnchor];
      v58 = [v56 constraintEqualToAnchor_];

      *(v24 + 112) = v58;
      sub_1C198FB8C(0, &qword_1EDE626F0);
      v59 = sub_1C1A6F50C();

      [v61 activateConstraints_];

      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = sub_1C1A3A138();
  [v0 addSubview_];

  inited = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1A753A0;
  v9 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
  v10 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v8 + 32) = v12;
  v13 = [*&v0[v9] centerXAnchor];
  v14 = [v0 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v8 + 40) = v15;
  v0 = [*&v0[v9] widthAnchor];
  if (qword_1EBF035A8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v16 = [v0 constraintEqualToConstant_];

  *(v8 + 48) = v16;
  sub_1C198FB8C(0, &qword_1EDE626F0);
  v60 = sub_1C1A6F50C();

  [inited activateConstraints_];
}