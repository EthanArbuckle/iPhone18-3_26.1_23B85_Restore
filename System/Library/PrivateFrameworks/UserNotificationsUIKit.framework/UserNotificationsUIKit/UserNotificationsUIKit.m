__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void __swiftcall NCInternalToolsOverlayView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = [v3 overlayButton];
  if (v7)
  {
    v8 = v7;
    [v7 convertPoint:v3 fromCoordinateSpace:{x, y}];
    v9 = [v8 hitTest:isa withEvent:?];
    if ((*(v8 + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_isPresentingMenu) & 1) == 0 && !v9)
    {
      sub_21E8B2FCC();
    }

LABEL_9:

    return;
  }

  v10 = *&v3[OBJC_IVAR___NCInternalToolsOverlayView_hosted];
  if (v10)
  {
    v11 = [v10 view];
    if (v11)
    {
      v8 = v11;
      [v11 convertPoint:v3 fromCoordinateSpace:{x, y}];
      v13 = v12;
      v15 = v14;
      v18.origin.x = sub_21E90E508();
      v17.x = v13;
      v17.y = v15;
      if (CGRectContainsPoint(v18, v17))
      {
        v16 = [v8 hitTest:isa withEvent:{v13, v15}];
      }

      goto LABEL_9;
    }
  }
}

__CFString *NCStringForAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_278371E48[a1];
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_21E7828CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E782A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NCNotificationRootModernList.deviceAuthenticated.setter(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v6 = v4[1];
  v7 = v4[2];

  LOBYTE(v9) = sub_21E783334(v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/UserNotificationsUIKit/UserNotificationsUIKit/NotificationRootModernList.swift", 116, 2, 1075, v5);

  v10 = &selRef_appendString_withName_;
  v11 = [v2 deviceAuthenticated];
  v36.receiver = v2;
  v36.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v36, sel_setDeviceAuthenticated_, a1 & 1);
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  v12 = qword_280D05F70;
  if (qword_280D05F70)
  {
    if (*(qword_280D05F70 + 48) == (a1 & 1))
    {
      *(qword_280D05F70 + 48) = a1 & 1;

      sub_21E787B34();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v34[1] = v34;
      MEMORY[0x28223BE20](KeyPath);
      v35 = v12;
      sub_21E786CC4(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);

      v10 = 0x1FAF67000;
      sub_21E929798();
    }
  }

  if (v11 != (a1 & 1))
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v14 = sub_21E929A78();
    __swift_project_value_buffer(v14, qword_280D05F58);
    v15 = v2;
    v16 = sub_21E929A58();
    v17 = sub_21E92A648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v10;
      v20 = v18;
      *v18 = 67240448;
      v18[1] = [v15 (v19 + 376)];
      *(v20 + 4) = 1026;
      *(v20 + 10) = sub_21E787D70() & 1;

      _os_log_impl(&dword_21E77E000, v16, v17, "Did change authentication status: %{BOOL,public}d, isUserEngagingView %{BOOL,public}d", v20, 0xEu);
      MEMORY[0x223D65FB0](v20, -1, -1);
    }

    else
    {

      v16 = v15;
    }
  }

  if ((a1 & 1) == 0 || !sub_21E788490() || v9 == 5)
  {
    return;
  }

  sub_21E784AD0(0);
  v21 = *v4;
  v22 = *(*v4 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v35 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v22, 0);
    v23 = v35;
    v24 = *(v35 + 16);
    v25 = 32;
    do
    {
      v26 = *(*&v21 + v25);
      v35 = v23;
      v27 = *(v23 + 24);
      if (v24 >= v27 >> 1)
      {
        sub_21E8D52D8((v27 > 1), v24 + 1, 1);
        v23 = v35;
      }

      *(v23 + 16) = v24 + 1;
      *(v23 + v24 + 32) = v26;
      v25 += 24;
      ++v24;
      --v22;
    }

    while (v22);
  }

  v28 = 0;
  v29 = *(v23 + 16);
  while (v29 != v28)
  {
    v30 = v23 + v28++;
    if (*(v30 + 32) == v9)
    {
LABEL_38:

      goto LABEL_39;
    }
  }

  while (1)
  {
    if (v9 > 2u)
    {
      if (v9 == 3)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      goto LABEL_35;
    }

    if (v9 == 1)
    {
      v9 = 0;
      goto LABEL_35;
    }

    if (v9 != 2)
    {
      break;
    }

    v9 = 1;
LABEL_35:
    v31 = *(v23 + 16);
    v32 = (v23 + 32);
    while (v31)
    {
      v33 = *v32++;
      --v31;
      if (v33 == v9)
      {
        goto LABEL_38;
      }
    }
  }

  if (v29)
  {
    LOBYTE(v9) = *(v23 + 32);
    goto LABEL_38;
  }

  LOBYTE(v9) = 4;
LABEL_39:
  sub_21E798E1C(v9);
}

uint64_t sub_21E783334(double a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a3.n128_f64[0] = a2;
  sub_21E783428(a8, &v14, a1, a3);
  v9 = v14;
  v10 = v21 >> 6;
  if (!v10)
  {
    return v9;
  }

  if (v10 == 1)
  {
    if (v20 > 0.5)
    {
      return v17;
    }

    return v9;
  }

  v12 = v18 | v19 | *&v20;
  if (v16 | v15 | v14 | v17 | v12 || v21 != 128)
  {
    if (v21 != 128 || v14 != 1 || v16 | v15 | v17 | v12)
    {
      v13 = *(a8 + 16);
      if (v13)
      {
        return *(a8 + 24 * v13 + 8);
      }
    }
  }

  else if (*(a8 + 16))
  {
    return *(a8 + 32);
  }

  return 5;
}

void sub_21E783428(uint64_t a1@<X4>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q2>)
{
  v4 = *(a1 + 16);
  v5 = 0uLL;
  v6 = 0.0;
  if (v4)
  {
    if (*(a1 + 40) <= a3)
    {
      v9 = (a1 + 72);
      v10 = 1;
      while (1)
      {
        v12 = *(v9 - 2);
        if (*&v12 <= a3)
        {
          if (*(&v12 + 1) >= a3)
          {
            v4 = 0;
            v8 = 0;
            v7 = *(v9 - 5) & 7;
            v5 = v12;
            goto LABEL_24;
          }

          if (v10 < v4)
          {
            v11 = *(v9 - 1);
            if (v11 > a3)
            {
              v18 = *(v9 - 1);
              v19 = *(v9 - 2);
              v13 = a2;
              v14 = *(v9 - 40);
              v15 = *(v9 - 16);
              v17 = *v9;
              v6 = (a3 - a4.n128_f64[0] - *(&v12 + 1)) / (v11 - *(&v12 + 1));
              if (BSFloatLessThanOrEqualToFloat())
              {
                v4 = 0;
                v8 = 0;
                v7 = v14 & 7;
                v5 = v19;
              }

              else if (BSFloatGreaterThanOrEqualToFloat())
              {
                v4 = 0;
                v8 = 0;
                *&v5 = v18;
                *(&v5 + 1) = v17;
                v7 = v15 & 7;
              }

              else
              {
                a4.n128_u64[0] = v18;
                a4.n128_u64[1] = v17;
                v7 = v14 & 7;
                v4 = v15 & 7;
                if (v6 <= 0.95)
                {
                  v8 = 64;
                }

                else
                {
                  v8 = 65;
                }

                v5 = v19;
              }

              a2 = v13;
              goto LABEL_24;
            }
          }

          else if (v10 == v4 && *(&v12 + 1) < a3)
          {
            v4 = 0;
            v8 = 0x80;
            v7 = 2;
            a4 = 0uLL;
            goto LABEL_24;
          }
        }

        ++v10;
        v9 += 3;
        if (v10 - v4 == 1)
        {
          sub_21E92A8A8();
          MEMORY[0x223D64660](0xD00000000000004FLL, 0x800000021E956FE0);
          v16 = sub_21E92A5E8();
          MEMORY[0x223D64660](v16);

          sub_21E92A988();
          __break(1u);
          return;
        }
      }
    }

    v7 = 0;
    v4 = 0;
    v8 = 0x80;
    a4 = 0uLL;
  }

  else
  {
    v8 = 0x80;
    v7 = 1;
    a4 = 0uLL;
  }

LABEL_24:
  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = a4;
  *(a2 + 48) = v6;
  *(a2 + 56) = v8;
}

void sub_21E784A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E784AD0(int a1)
{
  v7 = OBJC_IVAR___NCNotificationRootModernList_contentChangeCount;
  v8 = *&v1[OBJC_IVAR___NCNotificationRootModernList_contentChangeCount];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v4 = v1;
    v2 = a1;
    *&v1[OBJC_IVAR___NCNotificationRootModernList_contentChangeCount] = v10;
    sub_21E9183DC();
    v5 = v11;
    v3 = v12;
    v13 = v1[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
    v1[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = (v12 & 1) == 0;
    if (v13 == (v12 & 1))
    {
      sub_21E8C16E8();
    }

    v14 = *(v5 + 16);
    if (v14)
    {
      v15 = v5 + 24 * v14;
      v16 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentListMinY];
      *v16 = *(v15 + 16);
      v16[8] = 0;
      v17 = &v1[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      *v17 = *(v15 + 24);
      v17[8] = 0;
    }

    else
    {
      v18 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentListMinY];
      *v18 = 0;
      v18[8] = 0;
      v19 = &v1[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      *v19 = 0;
      v19[8] = 0;
      v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType] = 5;
      *v19 = 0;
      v19[8] = 1;
    }

    v20 = OBJC_IVAR___NCNotificationRootModernList_previousPages;
    if (sub_21E787444(v5, *&v4[OBJC_IVAR___NCNotificationRootModernList_previousPages]))
    {

      v21 = *&v4[v7];
      v9 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v9)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    *&v4[v20] = v5;

    v6 = &v4[OBJC_IVAR___NCNotificationRootModernList_layout];
    *&v4[OBJC_IVAR___NCNotificationRootModernList_layout] = v5;

    if (qword_280D041F8 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v274 = v3;
  LODWORD(v271) = v2;
  if (qword_280D05F70)
  {
    v23 = *(v6 + 80);
    v296[4] = *(v6 + 64);
    v296[5] = v23;
    v297 = *(v6 + 96);
    v24 = *(v6 + 16);
    v296[0] = *v6;
    v296[1] = v24;
    v25 = *(v6 + 48);
    v296[2] = *(v6 + 32);
    v296[3] = v25;

    sub_21E78A844(v296, &v282);
    sub_21E7935C0(v296);
    sub_21E78AACC(v296);
  }

  v26 = *(v5 + 16);
  v27 = MEMORY[0x277D84F90];
  v272 = v4;
  v273 = v7;
  v276 = v5;
  v277 = v6;
  if (v26)
  {
    *&v287 = MEMORY[0x277D84F90];
    sub_21E8D52F8(0, v26, 0);
    v27 = v287;
    v28 = (v5 + 48);
    v29 = MEMORY[0x277D85048];
    do
    {
      v30 = *(v28 - 16);
      v32 = *(v28 - 1);
      v31 = *v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_21E947520;
      *(v33 + 56) = v29;
      v34 = sub_21E79668C();
      *(v33 + 64) = v34;
      *(v33 + 32) = v32;
      *&v282 = sub_21E92A468();
      *(&v282 + 1) = v35;
      if (v32 != v31)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_21E947520;
        *(v36 + 56) = v29;
        *(v36 + 64) = v34;
        *(v36 + 32) = v31;
        v37 = sub_21E92A468();
        MEMORY[0x223D64660](v37);
      }

      *&v292 = 0;
      *(&v292 + 1) = 0xE000000000000000;
      MEMORY[0x223D64660](qword_21E948050[v30], 0xE100000000000000);

      MEMORY[0x223D64660](v282, *(&v282 + 1));

      v38 = v292;
      *&v287 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21E8D52F8((v39 > 1), v40 + 1, 1);
        v27 = v287;
      }

      *(v27 + 16) = v40 + 1;
      *(v27 + 16 * v40 + 32) = v38;
      v28 += 3;
      --v26;
    }

    while (v26);
    v4 = v272;
    v7 = v273;
    v6 = v277;
  }

  *&v282 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7468);
  sub_21E8D919C(&qword_280D03ED0, &unk_27CED7468);
  v41 = sub_21E92A408();
  v43 = v42;

  sub_21E7950DC(v41, v43, 0x7365676150uLL, 0xE500000000000000);

  v44 = 89;
  if ((v274 & 0x100) == 0)
  {
    v44 = 78;
  }

  v45 = MEMORY[0x277D837D0];
  *(&v283 + 1) = MEMORY[0x277D837D0];
  *&v284 = &off_282FE6A08;
  *&v282 = v44;
  *(&v282 + 1) = 0xE100000000000000;
  v46 = __swift_project_boxed_opaque_existential_1(&v282, MEMORY[0x277D837D0]);
  sub_21E90F574(v46, 0xD000000000000013, 0x800000021E957860, v45, &off_282FE6A08);
  __swift_destroy_boxed_opaque_existential_1Tm(&v282);
  v47 = OBJC_IVAR___NCNotificationRootModernList_exclusionManager;
  v48 = *&v4[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  v49 = &OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones;
  *&v48[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones] = sub_21E8CEB2C(v5);

  sub_21E91B9F4();

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v50 = sub_21E929A78();
  v51 = __swift_project_value_buffer(v50, qword_280D05F58);
  v52 = v4;
  v275 = v51;
  v53 = sub_21E929A58();
  v54 = sub_21E92A648();

  if (os_log_type_enabled(v53, v54))
  {
    v269 = v54;
    log = v53;
    v55 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    *&v287 = v268;
    *v55 = 136447234;

    v57 = MEMORY[0x223D646D0](v56, &type metadata for NotificationModernListPaginator.Page);
    v59 = v58;

    v60 = sub_21E79841C(v57, v59, &v287);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2082;
    v61 = *&v52[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
    v63 = *&v52[OBJC_IVAR___NCNotificationRootModernList__scrollState];
    v62 = *&v52[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
    v284 = *&v52[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
    v285 = v61;
    v282 = v63;
    v283 = v62;
    sub_21E799278(&v282, &v292);
    v64 = sub_21E7992D4();
    v66 = v65;
    sub_21E799568(&v282);
    v67 = sub_21E79841C(v64, v66, &v287);

    *(v55 + 14) = v67;
    *(v55 + 22) = 2082;
    v49 = *(*&v4[v47] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones);
    v68 = v49[2];
    v47 = MEMORY[0x277D84F90];
    if (v68)
    {
      v286[0] = MEMORY[0x277D84F90];

      sub_21E8D52F8(0, v68, 0);
      v47 = v286[0];
      v69 = (v49 + 7);
      do
      {
        v70 = *(v69 - 3);
        v71 = *(v69 - 2);
        v72 = *(v69 - 1);
        v73 = *v69;
        v298.origin.x = v70;
        v298.origin.y = v71;
        v298.size.width = v72;
        v298.size.height = *v69;
        CGRectGetMinY(v298);
        *&v292 = sub_21E92A5E8();
        *(&v292 + 1) = v74;
        MEMORY[0x223D64660](540945696, 0xE400000000000000);
        v299.origin.x = v70;
        v299.origin.y = v71;
        v299.size.width = v72;
        v299.size.height = v73;
        CGRectGetMaxY(v299);
        v75 = sub_21E92A5E8();
        MEMORY[0x223D64660](v75);

        v76 = v292;
        v286[0] = v47;
        v78 = *(v47 + 16);
        v77 = *(v47 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_21E8D52F8((v77 > 1), v78 + 1, 1);
          v47 = v286[0];
        }

        *(v47 + 16) = v78 + 1;
        *(v47 + 16 * v78 + 32) = v76;
        v69 += 5;
        --v68;
      }

      while (v68);

      v4 = v272;
      v7 = v273;
    }

    v79 = MEMORY[0x223D646D0](v47, MEMORY[0x277D837D0]);
    v81 = v80;

    v82 = sub_21E79841C(v79, v81, &v287);

    *(v55 + 24) = v82;
    *(v55 + 32) = 2082;
    v83 = v52[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
    if (v83 > 2)
    {
      v6 = v277;
      v84 = v268;
      if (v83 == 3)
      {
        v85 = 0xE100000000000000;
        v86 = 80;
      }

      else if (v83 == 4)
      {
        v85 = 0xE100000000000000;
        v86 = 76;
      }

      else
      {
        v85 = 0xE500000000000000;
        v86 = 0x3E6C696E3CLL;
      }
    }

    else
    {
      v6 = v277;
      v84 = v268;
      v85 = 0xE100000000000000;
      if (v52[OBJC_IVAR___NCNotificationRootModernList_currentPageType])
      {
        if (v83 == 1)
        {
          v86 = 83;
        }

        else
        {
          v86 = 69;
        }
      }

      else
      {
        v86 = 67;
      }
    }

    v87 = sub_21E79841C(v86, v85, &v287);

    *(v55 + 34) = v87;
    *(v55 + 42) = 2082;
    v88 = *v6;
    v89 = *(v6 + 8);
    v90 = *(v6 + 16);

    v91.n128_u64[0] = v90;
    sub_21E783428(v88, v286, v89, v91);

    v92 = sub_21E7953E4();
    v54 = sub_21E79841C(v92, v93, &v287);

    *(v55 + 44) = v54;
    _os_log_impl(&dword_21E77E000, log, v269, "Content changed. Recalculated pages: %{public}s, scrollState: %{public}s, exclusionZones: %{public}s, currentPageType: %{public}s, currentPosition: %{public}s", v55, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v84, -1, -1);
    MEMORY[0x223D65FB0](v55, -1, -1);

    v5 = v276;
  }

  else
  {
  }

  if (*&v4[v7] > 1 || (v271 & 1) != 0 || (v281.receiver = v52, v281.super_class = NCNotificationRootModernList, v47 = &selRef_revealHintingAnimationTension, v94 = objc_msgSendSuper2(&v281, sel_rootListView), v54 = [v94 isTracking], v94, (v54 & 1) != 0) || (v280.receiver = v52, v280.super_class = NCNotificationRootModernList, v95 = objc_msgSendSuper2(&v280, sel_rootListView), v54 = objc_msgSend(v95, sel_isDragging), v95, (v54 & 1) != 0))
  {

LABEL_51:
    v96 = *&v4[v7];
    v9 = __OFSUB__(v96, 1);
    v22 = v96 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_174;
  }

  v49 = &v52[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v6 = *&v52[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0x80) != 0)
    {
LABEL_64:
      v47 = v49[1];
      v271 = v49;
      v114 = sub_21E786808(0);
      if (!v114)
      {
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v115 = v114;
      LOBYTE(v49) = v47;

      v116 = [v115 count];

      if (v47 < 3u)
      {
        v5 = v47;
        v117 = *v277;
        v118 = *(*v277 + 16);
        v119 = MEMORY[0x277D84F90];
        if (v118)
        {
          v267 = v52;
          *&v292 = MEMORY[0x277D84F90];

          sub_21E8D52D8(0, v118, 0);
          v119 = v292;
          v120 = *(v292 + 16);
          v121 = 32;
          do
          {
            v122 = *(v117 + v121);
            *&v292 = v119;
            v123 = *(v119 + 24);
            if (v120 >= v123 >> 1)
            {
              sub_21E8D52D8((v123 > 1), v120 + 1, 1);
              v119 = v292;
            }

            *(v119 + 16) = v120 + 1;
            *(v119 + v120 + 32) = v122;
            v121 += 24;
            ++v120;
            --v118;
          }

          while (v118);

          v4 = v272;
          v7 = v273;
          v52 = v267;
        }

        v139 = 0;
        v22 = *(v119 + 16);
        LOBYTE(v47) = v5;
        do
        {
          if (v22 == v139)
          {
            while (1)
            {
              if (v49 > 2u)
              {
                if (v49 == 3)
                {
                  LODWORD(v49) = 2;
                }

                else
                {
                  LODWORD(v49) = 3;
                }
              }

              else if (v49 == 1)
              {
                LODWORD(v49) = 0;
              }

              else
              {
                if (v49 != 2)
                {
                  goto LABEL_182;
                }

                LODWORD(v49) = 1;
              }

              v141 = *(v119 + 16);
              v142 = (v119 + 32);
              while (v141)
              {
                v143 = *v142++;
                --v141;
                if (v143 == v49)
                {
                  goto LABEL_102;
                }
              }
            }
          }

          v140 = v119 + v139++;
        }

        while (*(v140 + 32) != v49);
LABEL_102:

LABEL_103:
        v144 = (*v277 + 32);
        v145 = *(*v277 + 16) + 1;
        while (--v145)
        {
          v126 = v144 + 24;
          v127 = *v144 == v49;
          v144 += 24;
          if (v127)
          {
            goto LABEL_107;
          }
        }

LABEL_113:
        v161 = v52;
        v162 = v7;
        v163 = v161;
        v164 = sub_21E929A58();
        v165 = sub_21E92A628();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = v47;
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v279[0] = v168;
          *v167 = 136446466;
          *(v167 + 4) = sub_21E79841C(qword_21E948050[v166], 0xE100000000000000, v279);
          *(v167 + 12) = 2082;
          v169 = *(v271 + 3);
          v171 = *v271;
          v170 = *(v271 + 1);
          v294 = *(v271 + 2);
          v295 = v169;
          v292 = v171;
          v293 = v170;
          sub_21E799278(&v292, &v287);
          v172 = sub_21E7992D4();
          v174 = v173;
          sub_21E799568(&v292);
          v175 = sub_21E79841C(v172, v174, v279);

          *(v167 + 14) = v175;
          _os_log_impl(&dword_21E77E000, v164, v165, "Skip retargeting with content chagned, new page not found with type %{public}s, scrollState: %{public}s", v167, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v168, -1, -1);
          MEMORY[0x223D65FB0](v167, -1, -1);
        }

        v176 = *&v4[v162];
        v9 = __OFSUB__(v176, 1);
        v22 = v176 - 1;
        if (!v9)
        {
          v7 = v162;
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_190;
      }

      if (v116 > 0)
      {
        v124 = (*v277 + 32);
        v125 = *(*v277 + 16) + 1;
        while (--v125)
        {
          v126 = v124 + 24;
          v127 = *v124 == v47;
          v124 += 24;
          if (v127)
          {
LABEL_107:
            v147 = *(v126 - 2);
            v146 = *(v126 - 1);
            v148 = BSFloatApproximatelyEqualToFloat();
            v47 = v52;
            v149 = sub_21E929A58();
            v150 = sub_21E92A648();

            v151 = os_log_type_enabled(v149, v150);
            if (!v148)
            {
              if (v151)
              {
                v52 = swift_slowAlloc();
                v181 = swift_slowAlloc();
                v279[0] = v181;
                *v52 = 136446466;
                *&v292 = 0x2065676150;
                *(&v292 + 1) = 0xE500000000000000;
                v182 = sub_21E8C11B8(v49, v147, v146);
                MEMORY[0x223D64660](v182);

                MEMORY[0x223D64660](2108704, 0xE300000000000000);
                if (v6)
                {
                  v183 = 1501061485;
                }

                else
                {
                  v183 = 1500408173;
                }

                MEMORY[0x223D64660](v183, 0xE400000000000000);

                v184 = sub_21E79841C(v292, *(&v292 + 1), v279);

                *(v52 + 4) = v184;
                *(v52 + 6) = 2082;
                v185 = *v271;
                v186 = *(v271 + 1);
                v187 = *(v271 + 3);
                v294 = *(v271 + 2);
                v295 = v187;
                v292 = v185;
                v293 = v186;
                sub_21E799278(&v292, &v287);
                v188 = sub_21E7992D4();
                v190 = v189;
                sub_21E799568(&v292);
                v191 = sub_21E79841C(v188, v190, v279);

                *(v52 + 14) = v191;
                _os_log_impl(&dword_21E77E000, v149, v150, "Retargeting with content chagned, scrollPosition updated to %{public}s, scrollState: %{public}s", v52, 0x16u);
                swift_arrayDestroy();
                v192 = v181;
                v4 = v272;
                MEMORY[0x223D65FB0](v192, -1, -1);
                MEMORY[0x223D65FB0](v52, -1, -1);
              }

              v7 = v273;
              v193 = swift_allocObject();
              *(v193 + 16) = v47;
              _s23ScrollCompletionHandlerCMa();
              v194 = swift_allocObject();
              *(v194 + 32) = 0;
              *(v194 + 16) = sub_21E8D976C;
              *(v194 + 24) = v193;
              *&v287 = 1;
              *(&v287 + 1) = v49;
              v288 = v147;
              v289 = v146;
              v290 = v6 & 0x81 | 0x4000000000000000;
              v291 = v194;
              v54 = v47;
              sub_21E8C2F48(&v287);
              goto LABEL_51;
            }

            if (v151)
            {
              v47 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              v279[0] = v152;
              *v47 = 136446210;
              v153 = *(v271 + 3);
              v155 = *v271;
              v154 = *(v271 + 1);
              v294 = *(v271 + 2);
              v295 = v153;
              v292 = v155;
              v293 = v154;
              sub_21E799278(&v292, &v287);
              v156 = sub_21E7992D4();
              v158 = v157;
              sub_21E799568(&v292);
              v159 = sub_21E79841C(v156, v158, v279);

              *(v47 + 4) = v159;
              _os_log_impl(&dword_21E77E000, v149, v150, "Skip retargeting with content chagned, scrollPosition is not updated, scrollState: %{public}s", v47, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v152);
              MEMORY[0x223D65FB0](v152, -1, -1);
              MEMORY[0x223D65FB0](v47, -1, -1);
            }

            v7 = v273;
            v160 = *&v4[v273];
            v9 = __OFSUB__(v160, 1);
            v22 = v160 - 1;
            if (v9)
            {
              __break(1u);
              goto LABEL_113;
            }

            goto LABEL_52;
          }
        }

        goto LABEL_113;
      }

      v195 = v52;
      v119 = v275;
      v196 = sub_21E929A58();
      v47 = sub_21E92A628();

      if (os_log_type_enabled(v196, v47))
      {
        v52 = v7;
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v279[0] = v198;
        *v197 = 67240706;
        *(v197 + 8) = 1026;
        *(v197 + 10) = 0;
        *(v197 + 14) = 2082;
        v199 = *(v271 + 3);
        v201 = *v271;
        v200 = *(v271 + 1);
        v294 = *(v271 + 2);
        v295 = v199;
        v292 = v201;
        v293 = v200;
        sub_21E799278(&v292, &v287);
        v202 = sub_21E7992D4();
        v119 = v203;
        sub_21E799568(&v292);
        v204 = sub_21E79841C(v202, v119, v279);

        *(v197 + 16) = v204;
        _os_log_impl(&dword_21E77E000, v196, v47, "Skip retargeting with content changed, currentPageLaysOutFromBottom: %{BOOL,public}d, contentBelowFold: %{BOOL,public}d scrollState: %{public}s", v197, 0x18u);
        __swift_destroy_boxed_opaque_existential_1Tm(v198);
        MEMORY[0x223D65FB0](v198, -1, -1);
        v205 = v197;
        v7 = v52;
        MEMORY[0x223D65FB0](v205, -1, -1);
      }

      v206 = *&v4[v7];
      v9 = __OFSUB__(v206, 1);
      v22 = v206 - 1;
      if (!v9)
      {
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_133;
    }

    v97 = *&v4[v7];
    v9 = __OFSUB__(v97, 1);
    v22 = v97 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v98 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  if (*(*&v52[v98] + 16))
  {

    v99 = v52;
    v100 = sub_21E929A58();
    v101 = sub_21E92A648();

    if (os_log_type_enabled(v100, v101))
    {
      v52 = v7;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = v49;
      v49 = v103;
      v278 = v103;
      *v102 = 136446210;
      v105 = *(v104 + 3);
      v107 = *v104;
      v106 = *(v104 + 1);
      v294 = *(v104 + 2);
      v295 = v105;
      v292 = v107;
      v293 = v106;
      sub_21E799278(&v292, &v287);
      v108 = sub_21E7992D4();
      v110 = v109;
      sub_21E799568(&v292);
      v111 = sub_21E79841C(v108, v110, &v278);

      *(v102 + 4) = v111;
      _os_log_impl(&dword_21E77E000, v100, v101, "Skip retargeting with content chagned, setScrollPositions requests are empty, scrollState: %{public}s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223D65FB0](v49, -1, -1);
      v112 = v102;
      v7 = v52;
      MEMORY[0x223D65FB0](v112, -1, -1);
    }

    v113 = *&v4[v7];
    v9 = __OFSUB__(v113, 1);
    v22 = v113 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_64;
  }

  v128 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v47 = v52[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v47 > 2)
  {
    v6 = v49;

    v177 = v52;
    v119 = v275;
    v47 = sub_21E929A58();
    LOBYTE(v49) = sub_21E92A628();

    if (os_log_type_enabled(v47, v49))
    {
      v5 = v7;
      v7 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v52;
      v52 = v178;
      v278 = v178;
      *v7 = 136446466;
      LODWORD(v22) = v179[v128];
      if (v22 > 2)
      {
LABEL_168:
        if (v22 == 3)
        {
          v54 = 0xE100000000000000;
          v180 = 80;
        }

        else if (v22 == 4)
        {
          v54 = 0xE100000000000000;
          v180 = 76;
        }

        else
        {
          v54 = 0xE500000000000000;
          v180 = 0x3E6C696E3CLL;
        }

        goto LABEL_178;
      }

      v54 = 0xE100000000000000;
      if (v179[v128])
      {
        if (v22 == 1)
        {
          v180 = 83;
        }

        else
        {
          v180 = 69;
        }

        goto LABEL_178;
      }

LABEL_174:
      v180 = 67;
LABEL_178:
      v259 = sub_21E79841C(v180, v54, &v278);

      *(v7 + 4) = v259;
      *(v7 + 12) = 2082;
      v260 = *v6;
      v261 = *(v6 + 16);
      v262 = *(v6 + 48);
      v294 = *(v6 + 32);
      v295 = v262;
      v292 = v260;
      v293 = v261;
      sub_21E799278(&v292, &v287);
      v263 = sub_21E7992D4();
      v119 = v264;
      sub_21E799568(&v292);
      v265 = sub_21E79841C(v263, v119, &v278);

      *(v7 + 14) = v265;
      _os_log_impl(&dword_21E77E000, v47, v49, "Skip retargeting with content chagned, currentPageType %{public}s is not layout from bottom, scrollState: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v52, -1, -1);
      MEMORY[0x223D65FB0](v7, -1, -1);

      v7 = v5;
      goto LABEL_179;
    }

LABEL_133:

LABEL_179:
    v266 = *&v4[v7];
    v9 = __OFSUB__(v266, 1);
    v22 = v266 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
LABEL_182:
    if (v22)
    {
      LOBYTE(v49) = *(v119 + 32);
    }

    else
    {

      LOBYTE(v49) = 4;
    }

    LOBYTE(v47) = v5;
    goto LABEL_103;
  }

  v129 = sub_21E786808(0);
  if (!v129)
  {
LABEL_191:
    __break(1u);
    return;
  }

  v130 = v129;

  v131 = [v130 count];

  if (v131 < 1)
  {
    v210 = v52;
    v134 = v275;
    v211 = sub_21E929A58();
    LOBYTE(v47) = sub_21E92A628();

    if (os_log_type_enabled(v211, v47))
    {
      v52 = v7;
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v214 = v49;
      v49 = v213;
      v278 = v213;
      *v212 = 136446210;
      v215 = *(v214 + 3);
      v217 = *v214;
      v216 = *(v214 + 1);
      v294 = *(v214 + 2);
      v295 = v215;
      v292 = v217;
      v293 = v216;
      sub_21E799278(&v292, &v287);
      v218 = sub_21E7992D4();
      v134 = v219;
      sub_21E799568(&v292);
      v220 = sub_21E79841C(v218, v134, &v278);

      *(v212 + 4) = v220;
      _os_log_impl(&dword_21E77E000, v211, v47, "Skip retargeting with content chagned, no content below the fold scroll height will animate, scrollState: %{public}s", v212, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223D65FB0](v49, -1, -1);
      v221 = v212;
      v7 = v52;
      MEMORY[0x223D65FB0](v221, -1, -1);
    }

    v222 = *&v4[v7];
    v9 = __OFSUB__(v222, 1);
    v22 = v222 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
    v132 = *v277;
    v133 = *(*v277 + 16);
    v134 = MEMORY[0x277D84F90];
    if (v133)
    {
      v5 = v49;
      v6 = v52;
      *&v292 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v133, 0);
      v134 = v292;
      v135 = *(v292 + 16);
      v136 = 32;
      do
      {
        v137 = *(v132 + v136);
        *&v292 = v134;
        v138 = *(v134 + 24);
        if (v135 >= v138 >> 1)
        {
          sub_21E8D52D8((v138 > 1), v135 + 1, 1);
          v134 = v292;
        }

        *(v134 + 16) = v135 + 1;
        *(v134 + v135 + 32) = v137;
        v136 += 24;
        ++v135;
        --v133;
      }

      while (v133);

      v52 = v6;
    }

    v207 = 0;
    v22 = *(v134 + 16);
    v208 = (v134 + 32);
    while (v22 != v207)
    {
      v209 = v134 + v207++;
      if (*(v209 + 32) == v47)
      {
        goto LABEL_137;
      }
    }
  }

  v4 = v272;
  while (1)
  {
    if (v47 > 2u)
    {
      if (v47 == 3)
      {
        v47 = 2;
      }

      else
      {
        v47 = 3;
      }

      goto LABEL_153;
    }

    if (v47 == 1)
    {
      v47 = 0;
      goto LABEL_153;
    }

    if (v47 != 2)
    {
      break;
    }

    v47 = 1;
LABEL_153:
    v223 = v22;
    v224 = v208;
    while (v223)
    {
      v225 = *v224++;
      --v223;
      if (v225 == v47)
      {

        goto LABEL_157;
      }
    }
  }

  if (v22)
  {
    v47 = *(v134 + 32);
LABEL_137:
  }

  else
  {

    v47 = 4;
  }

  v4 = v272;
LABEL_157:
  v226 = (*v277 + 32);
  v227 = *(*v277 + 16) + 1;
  while (--v227)
  {
    v228 = v226 + 24;
    v229 = *v226;
    v226 += 24;
    if (v229 == v47)
    {
      v230 = *(v228 - 2);
      v231 = *(v228 - 1);
      v6 = v47;
      v232 = v52;
      v233 = sub_21E929A58();
      v52 = sub_21E92A648();

      if (os_log_type_enabled(v233, v52))
      {
        v5 = v49;
        v49 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v278 = v234;
        *v49 = 136446466;
        v235 = sub_21E8C11B8(v47, v230, v231);
        v237 = sub_21E79841C(v235, v236, &v278);

        *(v49 + 4) = v237;
        *(v49 + 6) = 2082;
        v238 = *v5;
        v239 = *(v5 + 16);
        v240 = *(v5 + 48);
        v294 = *(v5 + 32);
        v295 = v240;
        v292 = v238;
        v293 = v239;
        sub_21E799278(&v292, &v287);
        v241 = sub_21E7992D4();
        v243 = v242;
        sub_21E799568(&v292);
        v244 = sub_21E79841C(v241, v243, &v278);

        *(v49 + 14) = v244;
        _os_log_impl(&dword_21E77E000, v233, v52, "Retargeting to new page %{public}s with content chagned, scrollState: %{public}s", v49, 0x16u);
        swift_arrayDestroy();
        v245 = v234;
        v4 = v272;
        MEMORY[0x223D65FB0](v245, -1, -1);
        MEMORY[0x223D65FB0](v49, -1, -1);
      }

      v246 = swift_allocObject();
      *(v246 + 16) = v232;
      _s23ScrollCompletionHandlerCMa();
      v247 = swift_allocObject();
      *(v247 + 32) = 0;
      *(v247 + 16) = sub_21E8D976C;
      *(v247 + 24) = v246;
      *&v287 = 1;
      *(&v287 + 1) = v47;
      v288 = v230;
      v289 = v231;
      v290 = 0x4000000000000080;
      v291 = v247;
      v54 = v232;
      sub_21E8C2F48(&v287);
      v7 = v273;
      goto LABEL_51;
    }
  }

  v5 = v49;
  v248 = v52;
  v249 = sub_21E929A58();
  LOBYTE(v49) = sub_21E92A628();

  if (os_log_type_enabled(v249, v49))
  {
    v250 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v278 = v52;
    *v250 = 136446466;
    *(v250 + 4) = sub_21E79841C(qword_21E948050[v47], 0xE100000000000000, &v278);
    *(v250 + 12) = 2082;
    v251 = *(v5 + 48);
    v253 = *v5;
    v252 = *(v5 + 16);
    v294 = *(v5 + 32);
    v295 = v251;
    v292 = v253;
    v293 = v252;
    sub_21E799278(&v292, &v287);
    v254 = sub_21E7992D4();
    v256 = v255;
    sub_21E799568(&v292);
    v257 = sub_21E79841C(v254, v256, &v278);

    *(v250 + 14) = v257;
    _os_log_impl(&dword_21E77E000, v249, v49, "Skip retargeting with content chagned, new page not found with type %{public}s, scrollState: %{public}s", v250, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v52, -1, -1);
    MEMORY[0x223D65FB0](v250, -1, -1);
  }

  v7 = v273;
  v258 = *&v4[v273];
  v9 = __OFSUB__(v258, 1);
  v22 = v258 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_168;
  }

LABEL_52:
  *&v4[v7] = v22;
}

uint64_t sub_21E7866B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void NCNotificationRootModernList.incomingCount.getter()
{
  v0 = sub_21E786808(2);
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  v2 = [v0 notificationCount];

  v3 = sub_21E786808(1);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 notificationCount];

  v6 = &v5[v2];
  if (__OFADD__(v2, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = sub_21E786808(0xA);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 notificationCount];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (__OFADD__(v6, v10))
  {
    goto LABEL_13;
  }
}

id sub_21E786808(id a1)
{
  if (a1 || (v10 = [v1 delegate]) == 0 || (v11 = objc_msgSend(v10, sel_notificationRootListShouldAllowNotificationHistoryReveal_, v1), swift_unknownObjectRelease(), v11))
  {
    v15.super_class = NCNotificationRootModernList;
    v3 = objc_msgSendSuper2(&v15, sel_notificationListSections);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450);
    v4 = sub_21E92A528();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_21:

      return 0;
    }

LABEL_4:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v5 = sub_21E92A828();
          if (!v5)
          {
            goto LABEL_21;
          }

          goto LABEL_4;
        }
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        if ([v8 sectionType] == a1)
        {

          return v9;
        }
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v7 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  v12 = objc_allocWithZone(NCNotificationStructuredSectionList);
  v13 = sub_21E92A428();
  v9 = [v12 initWithTitle:v13 sectionType:0];

  return v9;
}

uint64_t sub_21E786B68(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle);
  result = *(v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle);
  v6 = *(v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (sub_21E92AA58() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
  sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
  sub_21E929DB8();
LABEL_11:
}

uint64_t sub_21E786CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E786D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E786D5C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E786EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NCNotificationRootModernList.notificationListComponentChangedContent(_:)(uint64_t a1)
{
  if (v1[OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings] == 1)
  {
    v1[OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange] = 1;
  }

  else
  {
    sub_21E784AD0(0);
  }

  v3 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v4 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 8];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 16];

  v6.n128_u64[0] = v5;
  sub_21E783428(v3, v9, v4, v6);

  sub_21E8C800C(v9);
  result = [v1 delegate];
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 notificationListComponentChangedContent_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21E7871A0()
{
  v16.super_class = NCNotificationRootModernList;
  v0 = objc_msgSendSuper2(&v16, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v3 = 0;
    v4 = 0xEE00736569746976;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRetain();
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

LABEL_11:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 identifier];
        v9 = v4;
        v10 = sub_21E92A458();
        v12 = v11;

        if (v10 == 0x697463416576694CLL && v12 == v9)
        {

LABEL_19:

          return v7;
        }

        v4 = v9;
        v14 = sub_21E92AA58();

        if (v14)
        {
          goto LABEL_19;
        }
      }

      swift_unknownObjectRelease();
      ++v3;
      if (v5 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return 0;
}

uint64_t sub_21E787444(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 16) == *(v4 - 16) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E787798(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationListLayoutValidator.InputState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  if (*(v1 + 161) == 1)
  {
    swift_getKeyPath();
    v16 = v1;
    sub_21E9297A8();

    if (*(v1 + 24) != (a1 & 1))
    {
      swift_getKeyPath();
      v16 = v1;
      sub_21E9297A8();

      v9 = *(v1 + 24);
      sub_21E929768();
      v10 = *(v4 + 20);
      *&v7[v10] = CACurrentMediaTime();
      v7[*(v4 + 24)] = v9;
      swift_getKeyPath();
      v16 = v2;
      sub_21E9297A8();

      v16 = v2;
      swift_getKeyPath();
      sub_21E9297C8();

      v11 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_21E924774(0, v11[2] + 1, 1, v11);
        *(v2 + 16) = v11;
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_21E924774(v13 > 1, v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      sub_21E922C8C(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for NotificationListLayoutValidator.InputState);
      *(v2 + 16) = v11;
      v16 = v2;
      swift_getKeyPath();
      sub_21E9297B8();
    }
  }

  return result;
}

uint64_t sub_21E787B34()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_21E9297A8();

  swift_getKeyPath();
  sub_21E9297C8();

  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
  sub_21E787798(v2);
  swift_getKeyPath();
  sub_21E9297B8();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E787D70()
{
  v1 = v0;
  v28.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v28, sel_rootListView);
  v3 = [v2 traitCollection];

  v4 = [v3 _backlightLuminance];
  if (v4 != 2)
  {
    return 0;
  }

  v5 = sub_21E788090() < 2u ? 1 : sub_21E788090();
  v6 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v7 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v7 == 5 || v5 >= v7)
  {
    return 0;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v10 = sub_21E929A78();
  __swift_project_value_buffer(v10, qword_280D05F58);
  v11 = v1;
  v12 = sub_21E929A58();
  v13 = sub_21E92A648();
  if (os_log_type_enabled(v12, v13))
  {
    v25 = v13;
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 134349570;
    v26.receiver = v11;
    v26.super_class = NCNotificationRootModernList;
    v27 = v24;
    v15 = objc_msgSendSuper2(&v26, sel_rootListView);
    v16 = [v15 traitCollection];

    v17 = [v16 _backlightLuminance];
    *(v14 + 4) = v17;

    *(v14 + 12) = 2082;
    v18 = sub_21E788090();
    v19 = 0xE100000000000000;
    v20 = sub_21E79841C(qword_21E948050[v18], 0xE100000000000000, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    v21 = v1[v6];
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = 80;
      }

      else if (v21 == 4)
      {
        v22 = 76;
      }

      else
      {
        v19 = 0xE300000000000000;
        v22 = 7104878;
      }
    }

    else if (v1[v6])
    {
      if (v21 == 1)
      {
        v22 = 83;
      }

      else
      {
        v22 = 69;
      }
    }

    else
    {
      v22 = 67;
    }

    v23 = sub_21E79841C(v22, v19, &v27);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_21E77E000, v12, v25, "isUserEngagingView true; _backlightLuminance: %{public}ld; systemPreferredPageType: %{public}s; currentPageType: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v24, -1, -1);
    MEMORY[0x223D65FB0](v14, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_21E788090()
{
  v1 = [v0 currentListDisplayStyleSetting];
  if (v1)
  {
    return v1 == 1;
  }

  v3 = [v0 currentListDisplayStyleSettingReason];
  v4 = sub_21E92A458();
  v6 = v5;

  if (sub_21E92A458() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = sub_21E92AA58();

    if ((v9 & 1) == 0)
    {
      if ([v0 isNotificationHistoryRevealed])
      {
        return 4;
      }

      v28 = *&v0[OBJC_IVAR___NCNotificationRootModernList_layout];
      v29 = *(v28 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v29)
      {
        v44 = MEMORY[0x277D84F90];

        sub_21E8D52D8(0, v29, 0);
        v18 = v44;
        v30 = *(v44 + 16);
        v31 = 32;
        do
        {
          v32 = *(v28 + v31);
          v33 = *(v44 + 24);
          if (v30 >= v33 >> 1)
          {
            sub_21E8D52D8((v33 > 1), v30 + 1, 1);
          }

          *(v44 + 16) = v30 + 1;
          *(v44 + v30 + 32) = v32;
          v31 += 24;
          ++v30;
          --v29;
        }

        while (v29);
      }

      v34 = 0;
      v24 = *(v18 + 16);
      while (v24 != v34)
      {
        v35 = v18 + v34++;
        if (*(v35 + 32) == 2)
        {
          goto LABEL_42;
        }
      }

      v38 = 0;
      while (v24 != v38)
      {
        v39 = v18 + v38++;
        if (*(v39 + 32) == 3)
        {
          goto LABEL_50;
        }
      }

      v41 = 0;
      while (v24 != v41)
      {
        v42 = v18 + v41++;
        if (*(v42 + 32) == 4)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_55;
    }
  }

  v10 = sub_21E786808(0xA);
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 count];

      if (v13 > 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  result = sub_21E786808(2);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result count];

  if (v15 < 2)
  {
    return 1;
  }

  v16 = *&v0[OBJC_IVAR___NCNotificationRootModernList_layout];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v43 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v17, 0);
    v18 = v43;
    v19 = *(v43 + 16);
    v20 = 32;
    do
    {
      v21 = *(v16 + v20);
      v22 = *(v43 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_21E8D52D8((v22 > 1), v19 + 1, 1);
      }

      *(v43 + 16) = v19 + 1;
      *(v43 + v19 + 32) = v21;
      v20 += 24;
      ++v19;
      --v17;
    }

    while (v17);
  }

  v23 = 0;
  v24 = *(v18 + 16);
  while (v24 != v23)
  {
    v25 = v18 + v23++;
    if (*(v25 + 32) == 2)
    {
LABEL_42:

      return 2;
    }
  }

  v26 = 0;
  while (v24 != v26)
  {
    v27 = v18 + v26++;
    if (*(v27 + 32) == 3)
    {
LABEL_50:
      v40 = 3;
      goto LABEL_57;
    }
  }

  v36 = 0;
  while (v24 != v36)
  {
    v37 = v18 + v36++;
    if (*(v37 + 32) == 4)
    {
LABEL_54:
      v40 = 4;
      goto LABEL_57;
    }
  }

LABEL_55:
  if (v24)
  {
    v40 = *(v18 + 32);
LABEL_57:

    return v40;
  }

  else
  {

    return 4;
  }
}

BOOL sub_21E788490()
{
  v16.super_class = NCNotificationRootModernList;
  v1 = objc_msgSendSuper2(&v16, sel_rootListView);
  v2 = [v1 isTracking];

  if (v2)
  {
    return 0;
  }

  v15.receiver = v0;
  v15.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v15, sel_rootListView);
  v4 = [v3 isDragging];

  if (v4)
  {
    return 0;
  }

  v14.receiver = v0;
  v14.super_class = NCNotificationRootModernList;
  v5 = objc_msgSendSuper2(&v14, sel_rootListView);
  v6 = [v5 isDecelerating];

  if (v6)
  {
    return 0;
  }

  v13.receiver = v0;
  v13.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v13, sel_rootListView);
  objc_opt_self();
  v8 = [swift_dynamicCastObjCClassUnconditional() performingContentOffsetAnimation];

  if (v8)
  {
    return 0;
  }

  v10 = vorrq_s8(*&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState], *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16]);
  v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 40] | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48] | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 56];
  return *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32] == 0x8000000000000000 && v11 == 0;
}

id sub_21E788DE4()
{
  v1 = OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView;
  v2 = *(v0 + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  }

  else
  {
    v4 = [objc_allocWithZone(NCNotificationListSectionRevealHintView) initWithFrame_];
    [v4 setForceRevealed_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setAlpha_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t _NCIsNotVerticalSpaceConstrained(void *a1)
{
  if ([a1 verticalSizeClass] == 2)
  {
    return 1;
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v2 userInterfaceIdiom] == 1;

  return v1;
}

Swift::Void __swiftcall NCNotificationRootModernList.didUpdate(to:)(UIUserInterfaceSizeClass to)
{
  v3 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentUserInterfaceSizeClass];
  if ((v1[OBJC_IVAR___NCNotificationRootModernList_currentUserInterfaceSizeClass + 8] & 1) != 0 || *v3 != to)
  {
    *v3 = to;
    v3[8] = 0;
    v19.receiver = v1;
    v19.super_class = NCNotificationRootModernList;
    v7 = objc_msgSendSuper2(&v19, sel_rootListView);
    v8 = [v7 traitCollection];

    v9 = [v8 _backlightLuminance];
    if (v9 == 2)
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v14 = sub_21E929A78();
      __swift_project_value_buffer(v14, qword_280D05F58);
      v15 = sub_21E929A58();
      v16 = sub_21E92A648();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = to;
        _os_log_impl(&dword_21E77E000, v15, v16, "interfaceSizeClass changes to %{public}ld in CoverSheet; updating pages", v17, 0xCu);
        MEMORY[0x223D65FB0](v17, -1, -1);
      }

      sub_21E784AD0(0);
    }

    else if (v9 == 1)
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v10 = sub_21E929A78();
      __swift_project_value_buffer(v10, qword_280D05F58);
      v11 = sub_21E929A58();
      v12 = sub_21E92A648();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134349056;
        *(v13 + 4) = to;
        _os_log_impl(&dword_21E77E000, v11, v12, "interfaceSizeClass changes to %{public}ld in AOD; updating scroll position", v13, 0xCu);
        MEMORY[0x223D65FB0](v13, -1, -1);
      }

      sub_21E8C6D6C(4);
    }
  }

  else
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v4 = sub_21E929A78();
    __swift_project_value_buffer(v4, qword_280D05F58);
    oslog = sub_21E929A58();
    v5 = sub_21E92A648();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = to;
      _os_log_impl(&dword_21E77E000, oslog, v5, "interfaceSizeClass is not changed; currentInterfaceSizeClass %{public}ld", v6, 0xCu);
      MEMORY[0x223D65FB0](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationListWillLayoutSubviews()()
{
  v33.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v33, sel_notificationListWillLayoutSubviews);
  if (*(*&v0[OBJC_IVAR___NCNotificationRootModernList_layout] + 16))
  {
    v32.receiver = v0;
    v32.super_class = NCNotificationRootModernList;
    v1 = objc_msgSendSuper2(&v32, sel_rootListView);
    [v1 setMinimumContentHeight_];

    v2 = sub_21E786808(0xA);
    if (!v2)
    {
      return;
    }

    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && [v4 count] >= 1)
    {
      v31.receiver = v0;
      v31.super_class = NCNotificationRootModernList;
      v5 = objc_msgSendSuper2(&v31, sel_rootListView);
      v6 = v5;
      v7 = *&v0[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      if (v0[OBJC_IVAR___NCNotificationRootModernList_contentHeight + 8])
      {
        v7 = 0.0;
      }

      [v5 setMinimumContentHeight_];

      v30.receiver = v0;
      v30.super_class = NCNotificationRootModernList;
      v8 = objc_msgSendSuper2(&v30, sel_rootListView);
      v29.receiver = v0;
      v29.super_class = NCNotificationRootModernList;
      v9 = objc_msgSendSuper2(&v29, sel_rootListView);
      [v9 minimumContentHeight];
      v11 = v10;

      v28.receiver = v0;
      v28.super_class = NCNotificationRootModernList;
      v12 = objc_msgSendSuper2(&v28, sel_rootListView);
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      Height = CGRectGetHeight(v34);
      v27.receiver = v0;
      v27.super_class = NCNotificationRootModernList;
      v22 = objc_msgSendSuper2(&v27, sel_rootListView);
      [v22 visibleRectBottomMarginForRollUnder];
      v24 = v23;

      v25 = Height - v24 + Height - v24;
      if (v11 > v25)
      {
        v25 = v11;
      }

      [v8 setMinimumContentHeight_];
    }
  }

  else
  {
    v26.receiver = v0;
    v26.super_class = NCNotificationRootModernList;
    v3 = objc_msgSendSuper2(&v26, sel_rootListView);
    [v3 setMinimumContentHeight_];
  }
}

id sub_21E78A8A0(uint64_t a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 80);
  v14[4] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 64);
  v14[5] = v3;
  v15 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 96);
  v4 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 16);
  v14[0] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v14[1] = v4;
  v5 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 48);
  v14[2] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 32);
  v14[3] = v5;
  sub_21E78A844(v14, v13);
  sub_21E78A95C();
  v7 = v6;
  v9 = v8;
  sub_21E78AACC(v14);
  v10 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  if (a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  return [v10 initWithDouble_];
}

void sub_21E78A95C()
{
  v0 = [objc_opt_self() rootSettings];
  v1 = [v0 listAnimationSettings];

  [v1 viewSpacing];
}

void NCNotificationRootModernList.notificationListView(_:heightForItemAt:withWidth:inDisplayListAsStackMode:ignoreExpandedGroupStack:)(uint64_t a1, unint64_t a2, char a3, char a4, double a5)
{
  sub_21E78AD48(a2);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11 && ((v12 = v11, v13 = [v11 sectionType], v13 != 10) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = [v12 listView];
    if (v15)
    {
      v16 = v15;
      [v15 contentSize];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v17.receiver = v5;
    v17.super_class = NCNotificationRootModernList;
    objc_msgSendSuper2(&v17, sel_notificationListView_heightForItemAtIndex_withWidth_inDisplayListAsStackMode_ignoreExpandedGroupStack_, a1, a2, a3 & 1, a4 & 1, a5);
    swift_unknownObjectRelease();
  }
}

void sub_21E78AD48(unint64_t a1)
{
  v8.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v8, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450);
  v4 = sub_21E92A528();

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D64A50](a1, v4);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
LABEL_5:

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    if (![v5 sectionType])
    {
      v6 = [v1 delegate];
      if (v6)
      {
        v7 = [v6 notificationRootListShouldAllowNotificationHistoryReveal_];
        swift_unknownObjectRelease();
        if ((v7 & 1) == 0)
        {
          if (sub_21E786808(0))
          {
            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_15;
        }
      }
    }
  }
}

id NCStringFromAutomationAccessibilityIdentifierAndContentType(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = NCNotificationBodyContentTypeString(a2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

__CFString *NCNotificationBodyContentTypeString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2783717C8[a1 - 1];
  }
}

void sub_21E78D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E78D634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double _NCMainScreenScale()
{
  if (_NCMainScreenScale_onceToken != -1)
  {
    _NCMainScreenScale_cold_1();
  }

  return *&_NCMainScreenScale___mainScreenScale;
}

Swift::Void __swiftcall NCPlatterView.layoutSubviews()()
{
  v23.super_class = NCPlatterView;
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v1 = [v0 debugBorderView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
    v3 = [v0 backgroundView];
    if (v3)
    {
      v4 = v3;
      [v3 _continuousCornerRadius];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [v2 _setContinuousCornerRadius_];
    [v0 bringSubviewToFront_];
  }

  v7 = [v0 debugLabel];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v8;
    [v17 sizeThatFits_];
    v19 = v18;
    v21 = v20;
    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    v22 = CGRectGetMidX(v24) - v19 * 0.5;
    v25.origin.x = v10;
    v25.origin.y = v12;
    v25.size.width = v14;
    v25.size.height = v16;
    [v17 setFrame_];

    [v0 bringSubviewToFront_];
  }
}

void _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE19targetContentHeight015forNotificationD012CoreGraphics7CGFloatVSo0aD12ViewProtocol_p_tF_0()
{
  v4.super_class = NCNotificationRootModernList;
  v1 = objc_msgSendSuper2(&v4, sel_rootListView);
  [v1 safeAreaInsets];

  v3.receiver = v0;
  v3.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v3, sel_rootListView);
  UIRoundToViewScale();
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationListDidLayoutSubviews()()
{
  v1 = v0;
  v93.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v93, sel_notificationListDidLayoutSubviews);
  v2 = sub_21E786808(0xA);
  v3 = &selRef_revealHintingAnimationTension;
  if (v2)
  {
    v4 = v2;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v80.receiver = v1;
      v80.super_class = NCNotificationRootModernList;
      v7 = objc_msgSendSuper2(&v80, sel_rootListView);
      [v7 bounds];
      v9 = v8;
      v11 = v10;

      [v6 setContentSize_];
    }
  }

  sub_21E790FD8();
  v12 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v13 = *&v1[v12];
  v14 = *(v13 + 16);
  v15 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
  if (!v14)
  {
    goto LABEL_9;
  }

  v16 = *(v13 + 32);
  v17 = v14 - 1;
  if (v17)
  {
    v19 = (v13 + 33);
    do
    {
      v22 = *v19++;
      v21 = v22;
      v18 = v22;
      if (v16 >> 6)
      {
        if (v16 >> 6 == 1)
        {
          if ((v18 & 0x3Fu) >= (v16 & 0x3Fu))
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if ((v18 & 0xFFFFFFC0) == 0x40)
          {
            v18 = v20;
          }

          else
          {
            v18 = v16;
          }
        }

        else
        {
          v23 = v16;
          if (v18 <= -127)
          {
            v24 = -127;
          }

          else
          {
            v24 = v18;
          }

          if (v16 == 129)
          {
            v16 = v24;
          }

          if (v23 != 128)
          {
            v18 = v16;
          }
        }
      }

      else
      {
        v25 = v21 >> 6;
        if (v25)
        {
          if (v25 != 1)
          {
            if (v18 >= -126)
            {
              v18 = -126;
            }

            else
            {
              v18 = v16;
            }
          }
        }

        else if (v18 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v18;
        }
      }

      v16 = v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    LOBYTE(v18) = *(v13 + 32);
  }

  if (v18 != 128)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v26 = sub_21E929A78();
    __swift_project_value_buffer(v26, qword_280D05F58);
    v27 = v1;
    v28 = sub_21E929A58();
    v29 = sub_21E92A648();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = v79;
      *v30 = 136446978;
      v31 = sub_21E799190(v18);
      v33 = sub_21E79841C(v31, v32, &v84);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
      v36 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState];
      v35 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
      v94[2] = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
      v94[3] = v34;
      v94[0] = v36;
      v94[1] = v35;
      sub_21E799278(v94, v83);
      v37 = sub_21E7992D4();
      v39 = v38;
      sub_21E799568(v94);
      v40 = sub_21E79841C(v37, v39, &v84);

      *(v30 + 14) = v40;
      *(v30 + 22) = 1026;
      v82.receiver = v27;
      v82.super_class = NCNotificationRootModernList;
      v41 = objc_msgSendSuper2(&v82, sel_rootListView);
      objc_opt_self();
      LODWORD(v39) = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      *(v30 + 24) = v39;
      *(v30 + 28) = 2050;
      v81.receiver = v27;
      v81.super_class = NCNotificationRootModernList;
      v42 = objc_msgSendSuper2(&v81, sel_rootListView);
      v43 = [v42 traitCollection];

      v44 = [v43 _backlightLuminance];
      v15 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
      *(v30 + 30) = v44;

      _os_log_impl(&dword_21E77E000, v28, v29, "targetScrollPosition: %{public}s, scrollState: %{public}s, viewEffectivelyTracking: %{BOOL,public}d, _backlightLuminance: %{public}ld", v30, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v79, -1, -1);
      v45 = v30;
      v3 = &selRef_revealHintingAnimationTension;
      MEMORY[0x223D65FB0](v45, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v18) = 0x80;
  }

  v92.receiver = v1;
  v92.super_class = NCNotificationRootModernList;
  v46 = objc_msgSendSuper2(&v92, v3[20]);
  objc_opt_self();
  v47 = [swift_dynamicCastObjCClassUnconditional() v15[286]];

  if ((v47 & 1) == 0)
  {
    v91.receiver = v1;
    v91.super_class = NCNotificationRootModernList;
    v53 = objc_msgSendSuper2(&v91, v3[20]);
    v54 = [v53 window];

    if (v54)
    {

      v86.receiver = v1;
      v86.super_class = NCNotificationRootModernList;
      v55 = objc_msgSendSuper2(&v86, v3[20]);
      v56 = [v55 traitCollection];

      v57 = [v56 _backlightLuminance];
      v58 = v57 == 2;
      v59 = v18 >> 6;
      if (v18 >> 6)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v58 = 0;
      v59 = v18 >> 6;
      if (v18 >> 6)
      {
LABEL_47:
        if (v59 == 1)
        {
          v90.receiver = v1;
          v90.super_class = NCNotificationRootModernList;
          v60 = objc_msgSendSuper2(&v90, v3[20]);
          sub_21E799598();

          sub_21E8CBC48(v58, v18 & 0x3F);
        }

        else if (v18 != 128)
        {
          if (v18 == 129)
          {
            sub_21E8CB974();
          }

          else
          {
            v87.receiver = v1;
            v87.super_class = NCNotificationRootModernList;
            v75 = objc_msgSendSuper2(&v87, v3[20]);
            sub_21E799598();

            if (sub_21E788090() < 2u)
            {
              v76 = 1;
            }

            else
            {
              v76 = sub_21E788090();
            }

            v77 = swift_allocObject();
            *(v77 + 16) = v1;
            v78 = v1;
            sub_21E8C6068(v58, v76, sub_21E8D976C, v77);
LABEL_67:
          }
        }

LABEL_68:
        sub_21E791440(v1);
        return;
      }
    }

    v89.receiver = v1;
    v89.super_class = NCNotificationRootModernList;
    v61 = objc_msgSendSuper2(&v89, v3[20]);
    sub_21E799598();

    v62 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
    v63 = (v62 + 32);
    v64 = *(v62 + 16) + 1;
    while (--v64)
    {
      v65 = v63 + 24;
      v66 = *v63 == v18;
      v63 += 24;
      if (v66)
      {
        v67 = *(v65 - 2);
        v68 = *(v65 - 1);
        v88.receiver = v1;
        v88.super_class = NCNotificationRootModernList;
        v69 = objc_msgSendSuper2(&v88, v3[20]);
        [v69 contentOffset];
        v71 = v70;

        if (v67 > v71 || v71 > v68)
        {
          v73 = swift_allocObject();
          *(v73 + 16) = v1;
          v74 = v1;
          sub_21E8C6068(v58, v18, sub_21E8D976C, v73);
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    goto LABEL_68;
  }

  *&v1[v12] = MEMORY[0x277D84F90];

  v85.receiver = v1;
  v85.super_class = NCNotificationRootModernList;
  v48 = objc_msgSendSuper2(&v85, v3[20]);
  v49 = [v48 isDragging];

  if (v49)
  {
    *&v1[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = 0;
    v50 = sub_21E786808(0);
    if (v50)
    {
      v51 = v50;
      v52 = [v50 listView];

      if (v52)
      {
        [v52 setHidden_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_21E790FD8()
{
  v1 = sub_21E786808(1);
  if (!v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 count];

  v4 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection);
  v5 = v3 > 0;
  v6 = sub_21E786808(0xC);
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = v4 | v5;
  v9 = [v6 count];

  if (v9 <= 0)
  {
    v10 = sub_21E786808(0xB);
    if (!v10)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = v10;
    v12 = [v10 count];

    if (v12 <= 0)
    {
      v13 = sub_21E786808(1);
      if (!v13)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v14 = v13;
      v15 = [v13 count];

      if (v15 < 1)
      {
        if (v8)
        {
          v18 = sub_21E786808(2);
          if (!v18)
          {
LABEL_23:
            __break(1u);
            return;
          }

          v19 = v18;
          v20 = [v18 count];

          v8 = v20 > 0;
        }

        else
        {
          v8 = 0;
        }

        v16 = sub_21E786808(2);
        if (v16)
        {
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_18;
      }
    }
  }

  v16 = sub_21E786808(2);
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  v17 = v16;
  sub_21E791178(v16, v8 & 1);

  sub_21E8C16E8();
}

void sub_21E791178(void *a1, int a2)
{
  if ((([a1 isSectionListViewGroupedWithContentShown] ^ a2) & 1) == 0)
  {
    [a1 setAllowSectionListViewGroupedWithContentShownAnimations_];
    v20.receiver = v2;
    v20.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v20, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v19.receiver = v2;
      v19.super_class = NCNotificationRootModernList;
      v9 = objc_msgSendSuper2(&v19, sel_rootListView);
      objc_opt_self();
      v10 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      v8 = v10 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    v18.receiver = v2;
    v18.super_class = NCNotificationRootModernList;
    v11 = objc_msgSendSuper2(&v18, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v13 = v12;

    if (v13 >= 0.0)
    {
      v17.receiver = v2;
      v17.super_class = NCNotificationRootModernList;
      v15 = objc_msgSendSuper2(&v17, sel_rootListView);
      objc_opt_self();
      v16 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      if (a2)
      {
        if (v16)
        {
          return;
        }

        v14 = 0;
      }

      else
      {
        if (!v8)
        {
          return;
        }

        v14 = 1;
      }
    }

    else
    {
      if (((a2 | v8) & 1) == 0)
      {
        return;
      }

      v14 = a2 ^ 1;
    }

    [a1 setSectionListViewGroupedWithContentShown_];
    [a1 setSupportsDynamicGrouping_];
  }
}

uint64_t sub_21E791440(uint64_t a1)
{
  v2 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3[i + 32] & 0xC0) != 0x40)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + v2) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_24;
        }

        while (1)
        {
          *(a1 + v2) = v3;
          if (v7 == *(v3 + 2))
          {
            v6 = v7;
LABEL_10:
            v4 = i;
            if (v6 >= i)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v10 = i + 33;
            v11 = v3 + 32;
            v6 = *(v3 + 2);
            while (v10 - 32 < v6)
            {
              v14 = v3[v10];
              if ((v14 & 0xC0) == 0x40)
              {
                if (v10 - 32 != i)
                {
                  if (i >= v6)
                  {
                    __break(1u);
                    break;
                  }

                  v12 = v11[i];
                  v11[i] = v14;
                  v3[v10] = v12;
                  *(a1 + v2) = v3;
                  v6 = *(v3 + 2);
                }

                ++i;
              }

              v13 = v10 - 31;
              ++v10;
              if (v13 == v6)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v3 = sub_21E924E40(v3);
        }
      }
    }
  }

  v6 = *(v3 + 2);
LABEL_11:
  sub_21E791598(v4, v6);
  return swift_endAccess();
}

char *sub_21E791598(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21E79909C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_21E791658(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *sub_21E791658(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_21E7921FC(char a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, uint64_t (*a5)(), uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v27 = a3;
  v28 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_21E792C28;
  v26 = &block_descriptor_53;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 nc:v17 applyHighFrameRate:?];
  _Block_release(v17);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = [v8 animator];
    v27 = sub_21E79E1A4;
    v28 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21E792C28;
    v26 = &block_descriptor_60;
    v21 = _Block_copy(&aBlock);

    if (a5)
    {
      v27 = a5;
      v28 = a6;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21E799760;
      v26 = &block_descriptor_63;
      a5 = _Block_copy(&aBlock);
    }

    [v20 animateUsingSpringWithTension:a1 & 1 friction:a2 interactive:v21 type:a5 animations:a7 completion:a8];
    _Block_release(a5);
    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E792694(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t NCNotificationRootModernList.animateUsingSpring(withTension:friction:interactive:type:animations:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), void *a6, double a7, double a8)
{
  v33.super_class = NCNotificationRootModernList;
  v17 = objc_msgSendSuper2(&v33, sel_rootListView);
  v18 = [v17 traitCollection];

  v19 = [v18 _backlightLuminance];
  if (v19 + 1 >= 3 && v19 == 2)
  {
    v20 = NCDefaultAnimator();
  }

  else
  {
    v20 = *&v8[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v21 = v20;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a2;
  v22[5] = v8;
  v31 = sub_21E792C84;
  v32 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21E792C28;
  v30 = &block_descriptor_48;
  v23 = _Block_copy(&aBlock);

  v24 = v8;

  if (a5)
  {
    v31 = a5;
    v32 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_21E799760;
    v30 = &block_descriptor_51_0;
    v25 = _Block_copy(&aBlock);
  }

  else
  {
    v25 = 0;
  }

  [v21 animateUsingSpringWithTension:a1 & 1 friction:a2 interactive:v23 type:v25 animations:a7 completion:a8];
  _Block_release(v25);
  _Block_release(v23);
  return swift_unknownObjectRelease();
}

id NCDefaultAnimator()
{
  if (NCDefaultAnimator_onceToken != -1)
  {
    NCDefaultAnimator_cold_1();
  }

  v1 = NCDefaultAnimator_Animator;

  return v1;
}

void sub_21E792A60(char a1, uint64_t (*a2)(uint64_t a1, char a2), uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v22 = a2;
  v23 = a3;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21E792C28;
  v21 = &block_descriptor_164_0;
  v15 = _Block_copy(&v18);

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v22 = sub_21E7997C0;
  v23 = v16;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21E799760;
  v21 = &block_descriptor_170_0;
  v17 = _Block_copy(&v18);
  sub_21E792C10(a4, a5);

  [v14 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_21E792C14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E792C28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_21E792C94()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  if (v1 == 4 || v1 == 2)
  {
    sub_21E8CB974();
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.updateListViewVisibleRect(for:)(CGSize a1)
{
  v2 = *&a1.height;
  v3 = *&a1.width;
  v10.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v10, sel_updateListViewVisibleRectForSize_);
  v4 = v1 + OBJC_IVAR___NCNotificationRootModernList_layout;
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 80);
    v7 = *(v4 + 32);
    v11[3] = *(v4 + 48);
    v11[4] = v5;
    v11[5] = v6;
    v8 = *(v4 + 16);
    v11[0] = *v4;
    v12 = *(v4 + 96);
    v11[1] = v8;
    v11[2] = v7;

    sub_21E78A844(v11, v9);
    sub_21E7935C0(v11);
    sub_21E78AACC(v11);
  }

  sub_21E79411C(v3, v2, 0);
}

uint64_t sub_21E79316C(uint64_t result, int a2, int a3)
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

void sub_21E7931AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B00);
  sub_21E929728();
  sub_21E929718();
  v8 = BYTE1(v27);
  if ((v29 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if ((v27 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v8 = v27;
  if (v29)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v27 & 1) == 0 && CGRectEqualToRect(v28, v26))
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v29 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  size = v28.size;
  v9 = sub_21E795604(a3, a4);
  v10 = 0;
  if (v29)
  {
    v11 = 0.0;
    v12 = 0;
    v28.origin.y = 0.0;
    v28.size.width = 0.0;
  }

  else
  {
    type metadata accessor for CGRect(0);
    v11 = v13;
    v12 = sub_21E795D68(&unk_280D03C80, type metadata accessor for CGRect);
    v10 = swift_allocObject();
    *(v10 + 16) = v28.origin;
    *(v10 + 32) = size;
  }

  *&v28.origin.x = v10;
  v28.size.height = v11;
  v29 = v12;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *&v26.origin.x = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (v9 >= v15[2])
  {
LABEL_25:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v28, &v26, &qword_27CED7AF8);
  height = v26.size.height;
  if (*&v26.size.height)
  {
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v26, *&v26.size.height);
    v21 = (*(v20 + 16))(COERCE_CGFLOAT(*&height), v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

  else
  {
    sub_21E8B4CAC(&v26, &qword_27CED7AF8);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v26.origin.x = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v28, &qword_27CED7AF8);
}

uint64_t sub_21E7935C0(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED8460);
  (MEMORY[0x28223BE20])();
  v58 = &v54 - v3;
  v60 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  v4 = *(v60 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  MEMORY[0x28223BE20](v7);
  v56 = &v54 - v10;
  v11 = sub_21E92A378();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  *&v62[0] = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  if (*(v1 + 161) == 1)
  {
    sub_21E90EE4C();
    *v14 = sub_21E92A6C8();
    (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
    v17 = sub_21E92A3A8();
    (*(v12 + 8))(v14, v11);
    if ((v17 & 1) == 0)
    {
      goto LABEL_45;
    }

    swift_getKeyPath();
    *&v62[0] = v2;
    sub_21E9297A8();

    swift_beginAccess();
    v18 = *(v2 + 32);
    v19 = *(v18 + 16);
    if (!v19 || (v20 = v18 + ((v4[80] + 32) & ~v4[80]) + *(v4 + 9) * (v19 - 1) + *(v60 + 24), v62[3] = *(v20 + 48), v62[4] = *(v20 + 64), v62[5] = *(v20 + 80), v63 = *(v20 + 96), v62[0] = *v20, v62[1] = *(v20 + 16), v62[2] = *(v20 + 32), result = sub_21E8E66BC(v62, v59), (result & 1) == 0))
    {
      v57 = v9;
      v21 = v59;
      sub_21E78A844(v59, v61);
      v22 = v56;
      sub_21E929768();
      v23 = v60;
      v24 = *(v60 + 20);
      *&v22[v24] = CACurrentMediaTime();
      v25 = &v22[*(v23 + 24)];
      v26 = *(v21 + 16);
      *v25 = *v21;
      *(v25 + 1) = v26;
      *(v25 + 12) = *(v21 + 96);
      v27 = *(v21 + 80);
      *(v25 + 4) = *(v21 + 64);
      *(v25 + 5) = v27;
      v28 = *(v21 + 48);
      *(v25 + 2) = *(v21 + 32);
      *(v25 + 3) = v28;
      swift_getKeyPath();
      v61[0] = v2;
      sub_21E9297A8();

      v61[0] = v2;
      swift_getKeyPath();
      sub_21E9297C8();

      swift_beginAccess();
      v17 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 32) = v17;
      KeyPath = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        if (v31 >= v30 >> 1)
        {
          v17 = sub_21E924520(v30 > 1, v31 + 1, 1, v17);
        }

        *(v17 + 16) = v31 + 1;
        v32 = (KeyPath[80] + 32) & ~KeyPath[80];
        v33 = *(KeyPath + 9);
        sub_21E922C8C(v56, v17 + v32 + v33 * v31, type metadata accessor for NotificationListLayoutValidator.LayoutState);
        *(v2 + 32) = v17;
        swift_endAccess();
        v61[0] = v2;
        swift_getKeyPath();
        sub_21E9297B8();

        v34 = CACurrentMediaTime();
        swift_getKeyPath();
        v61[0] = v2;
        sub_21E9297A8();

        v35 = *(v2 + 32);
        if (!*(v35 + 16))
        {
          v38 = 0;
          goto LABEL_27;
        }

        v36 = v57;
        sub_21E922CF4(v35 + v32, v57);
        if (v34 - *(v36 + *(v60 + 20)) <= 15.0)
        {
          break;
        }

        v56 = (KeyPath + 56);
        KeyPath = &unk_21E94A2A8;
        v37 = v57;
        while (1)
        {
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v38 = BSFloatApproximatelyEqualToFloat();
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v61[0] = v2;
          swift_getKeyPath();
          sub_21E9297C8();

          swift_beginAccess();
          v17 = *(v2 + 32);
          if (!*(v17 + 16))
          {
            break;
          }

          v39 = v58;
          sub_21E922CF4(v17 + v32, v58);
          (*v56)(v39, 0, 1, v60);
          sub_21E922DB4(v39);
          v40 = *(v17 + 16);
          if (!v40)
          {
            goto LABEL_44;
          }

          v41 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 32) = v17;
          if (!v41 || (v40 - 1) > *(v17 + 24) >> 1)
          {
            v17 = sub_21E924520(v41, v40, 1, v17);
            *(v2 + 32) = v17;
          }

          sub_21E922D58(v17 + v32);
          if (v33 > 0 || v17 + v32 >= v17 + v32 + v33 + (*(v17 + 16) - 1) * v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --*(v17 + 16);
          *(v2 + 32) = v17;
          swift_endAccess();
          v61[0] = v2;
          swift_getKeyPath();
          sub_21E9297B8();

          sub_21E922D58(v37);
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v42 = *(v2 + 32);
          if (!*(v42 + 16))
          {
            goto LABEL_27;
          }

          sub_21E922CF4(v42 + v32, v37);
          if (v34 - *(v37 + *(v60 + 20)) <= 15.0)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v17 = sub_21E924520(0, *(v17 + 16) + 1, 1, v17);
        *(v2 + 32) = v17;
      }

      v38 = 0;
LABEL_26:
      result = sub_21E922D58(v57);
LABEL_27:
      v43 = *(*v59 + 16);
      if (!v43 || (v44 = *(*v59 + 24 * v43 + 24), swift_getKeyPath(), v61[0] = v2, sub_21E9297A8(), result = , *(v2 + 40) >= v44))
      {
        if (!v38)
        {
          return result;
        }

        swift_getKeyPath();
        v61[0] = v2;
        sub_21E9297A8();

        v45 = *(v2 + 32);
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = *(v60 + 24);
          v48 = v45 + v32;

          v44 = 0.0;
          v49 = v55;
          do
          {
            sub_21E922CF4(v48, v49);
            v50 = *(v49 + v47);
            v51 = *(v50 + 16);
            if (v51)
            {
              v52 = v50 + 24 * v51;
              if (v44 <= *(v52 + 24))
              {
                v44 = *(v52 + 24);
              }
            }

            sub_21E922D58(v49);
            v48 += v33;
            --v46;
          }

          while (v46);
        }

        else
        {
          v44 = 0.0;
        }

        if (*(v2 + 40) == v44)
        {
          *(v2 + 40) = v44;
          return result;
        }
      }

      v53 = swift_getKeyPath();
      MEMORY[0x28223BE20](v53);
      *(&v54 - 2) = v2;
      *(&v54 - 1) = v44;
      v61[0] = v2;
      sub_21E929798();
    }
  }

  return result;
}

void sub_21E79411C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v184.receiver = v3;
    v184.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v184, sel_rootListView);
    [v5 frame];
  }

  v183.receiver = v3;
  v183.super_class = NCNotificationRootModernList;
  v6 = objc_msgSendSuper2(&v183, sel_rootListView);
  v7 = *&v3[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  v164 = vaddq_f64(*&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__rubberbandingOffset], *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset]);
  v8 = *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView];
  v9 = v7;
  v10 = [v8 traitCollection];
  [v10 displayScale];

  UIPointRoundToScale();
  v12 = v11;

  [v6 setAdditionalYOffset_];
  [v6 contentOffset];
  [v6 contentOffset];
  v13 = CGRectMake_1();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v182.receiver = v4;
  v182.super_class = NCNotificationRootModernList;
  v20 = objc_msgSendSuper2(&v182, sel_rootListView);
  [v20 setVisibleRect_];

  [v6 contentOffset];
  v21 = &v4[OBJC_IVAR___NCNotificationRootModernList_layout];
  *(v21 + 7) = v22;
  *(v21 + 1) = v22;
  if (qword_280D041F8 != -1)
  {
LABEL_113:
    swift_once();
  }

  if (qword_280D05F70)
  {
    v23 = *(v21 + 5);
    v187[4] = *(v21 + 4);
    v187[5] = v23;
    v188 = *(v21 + 12);
    v24 = *(v21 + 1);
    v187[0] = *v21;
    v187[1] = v24;
    v25 = *(v21 + 3);
    v187[2] = *(v21 + 2);
    v187[3] = v25;

    sub_21E78A844(v187, v185);
    sub_21E7935C0(v187);
    sub_21E78AACC(v187);
  }

  *(v21 + 8) = v12;
  *(v21 + 2) = v12;
  if (qword_280D05F70)
  {
    v26 = *(v21 + 5);
    v185[4] = *(v21 + 4);
    v185[5] = v26;
    v186 = *(v21 + 12);
    v27 = *(v21 + 1);
    v185[0] = *v21;
    v185[1] = v27;
    v28 = *(v21 + 3);
    v185[2] = *(v21 + 2);
    v185[3] = v28;

    sub_21E78A844(v185, &v174);
    sub_21E7935C0(v185);
    sub_21E78AACC(v185);

    v12 = *(v21 + 2);
  }

  v29 = *v21;
  v30 = *(v21 + 1);

  v31.n128_f64[0] = v12;
  sub_21E783428(v29, &v174, v30, v31);

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = *v21;
  v34 = *(v21 + 1);
  v35 = *(v21 + 2);

  v37 = sub_21E783334(v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/UserNotificationsUIKit/UserNotificationsUIKit/NotificationRootModernList.swift", 116, 2, 2211, v33);
  v39 = v38;
  v41 = v40;

  if (v37 != 5)
  {
    v42 = v39;
    v12 = v41;
    v43 = *v21;
    v44 = sub_21E8E9218(v37, *v21, v42, v41);
    if ((v45 & 1) == 0)
    {
      v46 = *(v43 + 16);
      if (v44 < v46)
      {
        v47 = (v43 + 24 * v44 + 72);
        v48 = v44;
        while (v46 - 1 != v48)
        {
          if (++v48 >= v46)
          {
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          if (v44 < -1)
          {
            goto LABEL_112;
          }

          v49 = *(v47 - 1);
          v50 = *v47;
          v47 += 3;
          if (v50 > v49 || v49 > v41)
          {
            *(v32 + 16) = 1;
            break;
          }
        }
      }
    }
  }

  v52 = sub_21E7953E4();
  sub_21E7950DC(v52, v53, 0x6E6F697469736F70uLL, 0xE800000000000000);

  v54 = v174;
  v55 = v181;
  v56 = v181 >> 6;
  if (!v56)
  {
    goto LABEL_44;
  }

  if (v56 != 1)
  {
    v77 = v178 | v179 | *&v180;
    if (!(v176 | v175 | v174 | v177 | v77) && v181 == 128)
    {
      v167.receiver = v4;
      v167.super_class = NCNotificationRootModernList;
      v78 = objc_msgSendSuper2(&v167, &selRef_serviceForClientIdentifier_ + 3);
      objc_opt_self();
      v79 = [swift_dynamicCastObjCClassUnconditional() isTracking];

      if (v79)
      {
        v165.receiver = v4;
        v165.super_class = NCNotificationRootModernList;
        v80 = objc_msgSendSuper2(&v165, &selRef_serviceForClientIdentifier_ + 3);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
        v82 = v81;

        if (v82 > 0.0)
        {
          sub_21E8C7CA4();
        }
      }

      v166.receiver = v4;
      v166.super_class = NCNotificationRootModernList;
      v83 = objc_msgSendSuper2(&v166, &selRef_serviceForClientIdentifier_ + 3);
      v84 = [v83 traitCollection];

      LODWORD(v83) = _NCIsNotVerticalSpaceConstrained(v84);
      if (v83)
      {
        v85 = 0;
      }

      else
      {
        v85 = 4;
      }

      sub_21E8D0744(v85, v4, v32);
      goto LABEL_96;
    }

    if (v181 == 128 && v174 == 1 && !(v176 | v175 | v177 | v77))
    {
      goto LABEL_96;
    }

    v54 = 4;
LABEL_44:
    sub_21E8D0744(v54, v4, v32);
    goto LABEL_96;
  }

  v57 = v180;
  if (v174 != 3)
  {
    if (v174 != 1)
    {
      if (!v174)
      {
        if (v177 != 4)
        {
          if (v177 == 1)
          {
            v58 = sub_21E786808(2);
            if (!v58)
            {
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }

            v59 = v58;
            v60 = [v58 listView];

            if (!v60)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

            [v60 setRevealPercentage_];

            v61 = sub_21E786808(1);
            if (!v61)
            {
LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

            v62 = v61;
            v63 = [v61 listView];

            if (!v63)
            {
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            [v63 setRevealPercentage_];

            v64 = sub_21E786808(0xA);
            if (v64)
            {
              v65 = v64;
              objc_opt_self();
              v66 = swift_dynamicCastObjCClass();
              if (v66)
              {
                v67 = [v66 listView];

                if (!v67)
                {
LABEL_124:
                  __break(1u);
                  return;
                }

                [v67 setRevealPercentage_];
                v65 = v67;
              }
            }

            v169.receiver = v4;
            v169.super_class = NCNotificationRootModernList;
            v68 = objc_msgSendSuper2(&v169, &selRef_serviceForClientIdentifier_ + 3);
            [v68 visibleRectBottomMarginForRollUnder];
            v70 = v69;

            if (v70 != 0.0)
            {
              v71 = 1.0 - v57;
              if (v70 <= 0.0)
              {
                v71 = v57;
              }

              v72 = fmax(v70, 0.0);
              if (v70 <= 0.0)
              {
                v73 = v70;
              }

              else
              {
                v73 = 0.0;
              }

              v70 = v73 + v71 * (v72 - v73);
            }

            sub_21E8D0A18(v70);
            v168.receiver = v4;
            v168.super_class = NCNotificationRootModernList;
            v74 = objc_msgSendSuper2(&v168, &selRef_serviceForClientIdentifier_ + 3);
            [v74 visibleRectBottomMarginForRollUnder];
            v76 = v75;

            sub_21E8D0BE0(v76);
            sub_21E8D5ED4(0, 0.0);
            v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 0;
            goto LABEL_95;
          }

          goto LABEL_67;
        }

LABEL_64:
        v89 = sub_21E786808(0xA);
        if (v89)
        {
          v90 = v89;
          objc_opt_self();
          v91 = swift_dynamicCastObjCClass();
          if (!v91)
          {
          }
        }

        else
        {
          v91 = 0;
        }

        [v4 _setRevealed_forSection_];
        swift_unknownObjectRelease();
        v107 = sub_21E786808(1);
        if (!v107)
        {
          goto LABEL_118;
        }

        v108 = v107;
        [v4 _setRevealed_forSection_];

        v109 = sub_21E786808(2);
        if (!v109)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v110 = v109;
        [v4 _setRevealed_forSection_];

        v172.receiver = v4;
        v172.super_class = NCNotificationRootModernList;
        v111 = objc_msgSendSuper2(&v172, &selRef_serviceForClientIdentifier_ + 3);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
        v113 = v112;

        if (v113 <= 0.0)
        {
          goto LABEL_87;
        }

        v114 = sub_21E786808(0xA);
        if (!v114)
        {
          goto LABEL_87;
        }

        v115 = v114;
        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        if (v116)
        {
          v117 = [v116 isCollapsed];

          if (v117)
          {
            goto LABEL_87;
          }

          v118 = sub_21E786808(0xA);
          if (!v118)
          {
            goto LABEL_87;
          }

          v115 = v118;
          objc_opt_self();
          v119 = swift_dynamicCastObjCClass();
          if (v119)
          {
            [v119 setIsCollapsed_];
          }
        }

LABEL_87:
        sub_21E8D0A18(0.0);
        v171.receiver = v4;
        v171.super_class = NCNotificationRootModernList;
        v120 = objc_msgSendSuper2(&v171, &selRef_serviceForClientIdentifier_ + 3);
        [v120 visibleRectBottomMarginForRollUnder];
        v122 = v121;

        if (v122 != 0.0)
        {
          v123 = 1.0 - v57;
          if (v122 <= 0.0)
          {
            v123 = v57;
          }

          v124 = fmax(v122, 0.0);
          if (v122 <= 0.0)
          {
            v125 = v122;
          }

          else
          {
            v125 = 0.0;
          }

          v122 = v125 + v123 * (v124 - v125);
        }

        sub_21E8D0BE0(v122);
        sub_21E8D5ED4(v55 & 1, v57);
        v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 1;
LABEL_95:
        sub_21E790FD8();
        goto LABEL_96;
      }

      if (v177 == 4)
      {
        goto LABEL_64;
      }

LABEL_67:
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v92 = sub_21E929A78();
      __swift_project_value_buffer(v92, qword_280D05F58);
      v93 = sub_21E929A58();
      v94 = sub_21E92A628();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v173 = v96;
        *v95 = 136446210;
        v97 = sub_21E7953E4();
        v99 = sub_21E79841C(v97, v98, &v173);

        *(v95 + 4) = v99;
        _os_log_impl(&dword_21E77E000, v93, v94, "Unexpected position %{public}s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x223D65FB0](v96, -1, -1);
        MEMORY[0x223D65FB0](v95, -1, -1);
      }

      goto LABEL_96;
    }

    if (v177 == 4)
    {
      goto LABEL_64;
    }

    if (v177 != 2)
    {
      goto LABEL_67;
    }
  }

  v86 = sub_21E786808(0xA);
  if (v86)
  {
    v87 = v86;
    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (!v88)
    {
    }
  }

  else
  {
    v88 = 0;
  }

  [v4 _setRevealed_forSection_];
  swift_unknownObjectRelease();
  v100 = sub_21E786808(1);
  if (!v100)
  {
    goto LABEL_116;
  }

  v101 = v100;
  [v4 _setRevealed_forSection_];

  v102 = sub_21E786808(2);
  if (!v102)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v103 = v102;
  [v4 _setRevealed_forSection_];

  sub_21E8D0A18(0.0);
  v170.receiver = v4;
  v170.super_class = NCNotificationRootModernList;
  v104 = objc_msgSendSuper2(&v170, &selRef_serviceForClientIdentifier_ + 3);
  [v104 visibleRectBottomMarginForRollUnder];
  v106 = v105;

  sub_21E8D0BE0(v106);
  sub_21E8D5ED4(v55 & 1, v57);
  v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = v57 > 0.0;
  sub_21E790FD8();
LABEL_96:
  v126 = sub_21E786808(0xB);
  if (!v126)
  {
    __break(1u);
    goto LABEL_115;
  }

  v127 = v126;
  [v4 _setRevealed_forSection_];

  v128 = sub_21E786808(0xC);
  if (!v128)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v129 = v128;
  [v4 _setRevealed_forSection_];

  [v6 setShowsVerticalScrollIndicator_];
  v130 = sub_21E786808(0xA);
  if (v130)
  {
    v131 = v130;
    objc_opt_self();
    v132 = swift_dynamicCastObjCClass();
    if (v132 && (v133 = v132, (v134 = [v132 listView]) != 0))
    {
      v135 = v134;
      v136 = [v135 window];
      v137 = v135;
      if (v136)
      {
        v138 = v136;
        [v135 bounds];
        v140 = v139;
        v142 = v141;
        v144 = v143;
        v146 = v145;

        [v135 convertRect:v138 toCoordinateSpace:{v140, v142, v144, v146}];
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;
        [v138 bounds];
        v190.origin.x = v148;
        v190.origin.y = v150;
        v190.size.width = v152;
        v190.size.height = v154;
        [v133 setIsOnScreen_];
        v137 = v138;
      }
    }

    else
    {
      v137 = v131;
    }
  }

  sub_21E796184(&v174);
  sub_21E8C800C(&v174);
  sub_21E8C8A88(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_21E947B30;
  v156 = sub_21E786808(0xA);
  v157 = 0.0;
  if (v156)
  {
    v158 = v156;
    objc_opt_self();
    v159 = swift_dynamicCastObjCClass();
    if (v159)
    {
      [v159 expandedPercentage];
      v161 = v160;

      v157 = v161 * 100.0;
    }

    else
    {
    }
  }

  *(v155 + 56) = MEMORY[0x277D85048];
  *(v155 + 64) = sub_21E79668C();
  *(v155 + 32) = v157;
  *(v155 + 96) = MEMORY[0x277D837D0];
  *(v155 + 104) = sub_21E7966E0();
  *(v155 + 72) = 37;
  *(v155 + 80) = 0xE100000000000000;
  v162 = sub_21E92A468();
  sub_21E7950DC(v162, v163, 0x646E61707865uLL, 0xE600000000000000);
}

size_t sub_21E7950DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v24[3] = MEMORY[0x277D837D0];
  v24[4] = &off_282FE6A08;
  v24[0] = a1;
  v24[1] = a2;
  v6 = qword_280D047F8;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  v7 = qword_280D04800;
  v8 = sub_21E795604(a3, a4);
  sub_21E795EE0(v24, v23);
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v20[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v9 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v10 = *&v7[v9];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v9] = v10;
  if (result)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_21E924DE0(v10);
  v10 = result;
  *&v7[v9] = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v8 < v10[2])
  {
    v12 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v13 = v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v8;
    sub_21E795F8C(v23, v20);
    v14 = v21;
    if (v21)
    {
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v16 = (*(v15 + 16))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      sub_21E796078(v20);
      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = (v13 + *(v12 + 24));
    *v19 = v16;
    v19[1] = v18;
    sub_21E796078(v23);
    *&v7[v9] = v10;
    swift_endAccess();

    v20[0] = v7;
    swift_getKeyPath();
    sub_21E9297B8();

    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21E7953E4()
{
  v1 = *v0;
  v2 = *(v0 + 56);
  if (!(v2 >> 6))
  {
    v12 = v0[1];
    v13 = v0[2];
    v22 = 91;
    v11 = *v0;
    goto LABEL_5;
  }

  v3 = *(v0 + 3);
  if (v2 >> 6 == 1)
  {
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21E947520;
    *(v9 + 56) = MEMORY[0x277D85048];
    *(v9 + 64) = sub_21E79668C();
    *(v9 + 32) = v8 * 100.0;
    v22 = sub_21E92A468();
    MEMORY[0x223D64660](5975077, 0xE300000000000000);
    v10 = sub_21E8C11B8(SLOBYTE(v1), v4, v5);
    MEMORY[0x223D64660](v10);

    MEMORY[0x223D64660](1530801501, 0xE400000000000000);
    v11 = v3;
    v12 = v6;
    v13 = v7;
LABEL_5:
    v14 = sub_21E8C11B8(v11, v12, v13);
    MEMORY[0x223D64660](v14);

    MEMORY[0x223D64660](93, 0xE100000000000000);
    return v22;
  }

  v16 = *(v0 + 2) | *(v0 + 1);
  v17 = *(v0 + 4) | *(v0 + 5) | *(v0 + 6);
  if (!(v16 | *&v1 | v3 | v17) && v2 == 128)
  {
    return 0x706F5465766F6261;
  }

  v18 = v2 == 128;
  v19 = v16 | v3 | v17;
  v21 = *&v1 == 1 && v19 == 0;
  if (v18 && v21)
  {
    return 0x7974706D65;
  }

  else
  {
    return 0x746F42776F6C6562;
  }
}

uint64_t sub_21E795604(unint64_t a1, uint64_t a2)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AB8);
  MEMORY[0x28223BE20](v72);
  v6 = (&v63 - v5);
  v73 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  KeyPath = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v76 = v2;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v69 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel);
  if (*(v10 + 16))
  {

    v11 = sub_21E795DB0(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
LABEL_44:

      return v13;
    }
  }

  swift_getKeyPath();
  v14 = v69;
  v76 = v69;
  sub_21E9297A8();

  v15 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v16 = *(v14 + v15);

  sub_21E929768();
  v17 = v73;
  v18 = (KeyPath + *(v73 + 20));
  *v18 = a1;
  v18[1] = a2;
  v19 = (KeyPath + *(v17 + 24));
  *v19 = 0x3E7465736E753CLL;
  v19[1] = 0xE700000000000000;
  v74 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    v74 = sub_21E9244D0(0, v74[2] + 1, 1, v74);
  }

  v21 = v74[2];
  v20 = v74[3];
  v68 = a2;
  if (v21 >= v20 >> 1)
  {
    v74 = sub_21E9244D0(v20 > 1, v21 + 1, 1, v74);
  }

  v67 = a1;
  v22 = v74;
  v74[2] = v21 + 1;
  v23 = v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v70 = *(v7 + 72);
  sub_21E910224(KeyPath, v23 + v70 * v21, type metadata accessor for ListDebugHUDModel.PlotItem);
  v71 = v23;
  v75[0] = v23;
  v75[1] = v21 + 1;
  sub_21E90CBD8(v75);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v75[0] = v69;
  sub_21E929798();

  a2 = v22[2];
  if (!a2)
  {
    v7 = MEMORY[0x277D84F98];
LABEL_41:

    sub_21E8FEFD8(v59);
    if (!*(v7 + 16))
    {
      goto LABEL_51;
    }

    v60 = sub_21E795DB0(v67, v68);
    if ((v61 & 1) == 0)
    {
      goto LABEL_51;
    }

    v13 = *(*(v7 + 56) + 8 * v60);

    goto LABEL_44;
  }

  a1 = 0;
  v7 = MEMORY[0x277D84F98];
  while (1)
  {
    if (a1 >= v74[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v24 = v71 + a1 * v70;
    v25 = v6 + *(v72 + 48);
    *v6 = a1;
    sub_21E91028C(v24, v25, type metadata accessor for ListDebugHUDModel.PlotItem);
    v26 = (v25 + *(v73 + 20));
    v28 = *v26;
    v27 = v26[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v7;
    KeyPath = sub_21E795DB0(v28, v27);
    v31 = *(v7 + 16);
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_46;
    }

    v34 = v30;
    if (*(v7 + 24) >= v33)
    {
      break;
    }

    sub_21E90A37C(v33, isUniquelyReferenced_nonNull_native);
    v7 = v75[0];
    v35 = sub_21E795DB0(v28, v27);
    if ((v34 & 1) != (v36 & 1))
    {
      goto LABEL_50;
    }

    KeyPath = v35;
    if (v34)
    {
LABEL_10:
      *(*(v7 + 56) + 8 * KeyPath) = a1;
      goto LABEL_11;
    }

LABEL_20:
    *(v7 + 8 * (KeyPath >> 6) + 64) |= 1 << KeyPath;
    v37 = (*(v7 + 48) + 16 * KeyPath);
    *v37 = v28;
    v37[1] = v27;
    *(*(v7 + 56) + 8 * KeyPath) = a1;
    v38 = *(v7 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_47;
    }

    *(v7 + 16) = v40;

LABEL_11:
    ++a1;
    sub_21E8B4CAC(v6, &qword_27CED7AB8);
    if (a1 == a2)
    {
      goto LABEL_41;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v30)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AC0);
  v66 = sub_21E92A9B8();
  if (!*(v7 + 16))
  {
LABEL_38:

    v7 = v66;
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v41 = (v66 + 64);
  v42 = (v7 + 64);
  v43 = ((1 << *(v66 + 32)) + 63) >> 6;
  v64 = v7 + 64;
  if (v66 != v7 || v41 >= &v42[8 * v43])
  {
    memmove(v41, v42, 8 * v43);
  }

  v44 = 0;
  *(v66 + 16) = *(v7 + 16);
  v45 = 1 << *(v7 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v7 + 64);
  v48 = (v45 + 63) >> 6;
  if (v47)
  {
    do
    {
      v49 = __clz(__rbit64(v47));
      v65 = (v47 - 1) & v47;
LABEL_36:
      v52 = v49 | (v44 << 6);
      v53 = (*(v7 + 48) + 16 * v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(*(v7 + 56) + 8 * v52);
      v57 = v66;
      v58 = (*(v66 + 48) + 16 * v52);
      *v58 = v55;
      v58[1] = v54;
      *(*(v57 + 56) + 8 * v52) = v56;

      v47 = v65;
    }

    while (v65);
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_38;
    }

    v51 = *(v64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v65 = (v51 - 1) & v51;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_50:
  sub_21E92AA98();
  __break(1u);
LABEL_51:
  result = sub_21E92A988();
  __break(1u);
  return result;
}

uint64_t sub_21E795D68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E795DB0(uint64_t a1, uint64_t a2)
{
  sub_21E92AB28();
  sub_21E92A4A8();
  v4 = sub_21E92AB48();

  return sub_21E795E28(a1, a2, v4);
}

unint64_t sub_21E795E28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21E92AA58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21E795EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E795F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E795F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E795FFC()
{
  v1 = *v0;

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21E796078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21E796184(uint64_t a1)
{
  v23.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v23, sel_rootListView);
  v4 = [v3 isTracking];

  if ((v4 & 1) == 0)
  {
    v22.receiver = v1;
    v22.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v22, sel_rootListView);
    v6 = [v5 isDragging];

    if (!v6)
    {
      v19 = 0;
      goto LABEL_16;
    }
  }

  if ((*(a1 + 56) & 0xC0) == 0x40 && *(a1 + 24) == 4)
  {
    v7 = *(a1 + 48);
    v21.receiver = v1;
    v21.super_class = NCNotificationRootModernList;
    v8 = objc_msgSendSuper2(&v21, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v10 = v9;

    v20.receiver = v1;
    v20.super_class = NCNotificationRootModernList;
    v11 = objc_msgSendSuper2(&v20, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v13 = v12;

    v14 = sub_21E786808(0);
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = v7 < 0.5 && v13 > 0.0;
    v17 = v7 > 0.5 && v10 < 0.0;
    v18 = [v14 count];

    if (v18 >= 1 && (v17 || v16))
    {
      v19 = 1;
LABEL_16:
      sub_21E796374(v19);
    }
  }
}

void sub_21E796374(char a1)
{
  v2 = v1;
  v4 = sub_21E92A378();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E796644(0, &qword_280D03E40);
  *v7 = sub_21E92A6C8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_21E92A3A8();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_5:
    v9 = sub_21E929A78();
    __swift_project_value_buffer(v9, qword_280D05F58);
    v10 = sub_21E929A58();
    v11 = sub_21E92A648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21E77E000, v10, v11, "Haptics state changed from .perform to .release", v12, 2u);
      MEMORY[0x223D65FB0](v12, -1, -1);
    }

    *(v7 + v2) = 0;
    return;
  }

  v7 = OBJC_IVAR___NCNotificationRootModernList__feedbackHapticsState;
  if (*(v2 + OBJC_IVAR___NCNotificationRootModernList__feedbackHapticsState))
  {
    if (a1)
    {
      return;
    }

    if (qword_280D03F40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (a1)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v13 = sub_21E929A78();
    __swift_project_value_buffer(v13, qword_280D05F58);
    v14 = sub_21E929A58();
    v15 = sub_21E92A648();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21E77E000, v14, v15, "Haptics state changed from .release to .perform; Performing haptics", v16, 2u);
      MEMORY[0x223D65FB0](v16, -1, -1);
    }

    *(v7 + v2) = 1;
    [*(v2 + OBJC_IVAR___NCNotificationRootModernList_feedbackGenerator) impactOccurred];
  }
}

uint64_t sub_21E796644(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_21E79668C()
{
  result = qword_280D04A70;
  if (!qword_280D04A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04A70);
  }

  return result;
}

unint64_t sub_21E7966E0()
{
  result = qword_280D03EF0;
  if (!qword_280D03EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03EF0);
  }

  return result;
}

uint64_t sub_21E79677C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, double))
{
  v9 = sub_21E92A458();
  v11 = v10;
  v12 = a5;
  a6(v9, v11, a1);
}

size_t sub_21E7967F8(unint64_t a1, uint64_t a2, double a3)
{
  v23[3] = MEMORY[0x277D85048];
  v23[4] = sub_21E796B0C();
  *v23 = a3;
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  v6 = qword_280D04800;
  v7 = sub_21E795604(a1, a2);
  sub_21E795EE0(v23, v22);
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v19[0] = v6;
  swift_getKeyPath();
  sub_21E9297C8();

  v8 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v9 = *&v6[v8];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v6[v8] = v9;
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_21E924DE0(v9);
  v9 = result;
  *&v6[v8] = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v7 < v9[2])
  {
    v11 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v12 = v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v7;
    sub_21E795F8C(v22, v19);
    v13 = v20;
    if (v20)
    {
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v15 = (*(v14 + 16))(v13, v14);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_21E796078(v19);
      v17 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    v18 = (v12 + *(v11 + 24));
    *v18 = v15;
    v18[1] = v17;
    sub_21E796078(v22);
    *&v6[v8] = v9;
    swift_endAccess();

    v19[0] = v6;
    swift_getKeyPath();
    sub_21E9297B8();

    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_21E796B0C()
{
  result = qword_280D04A88;
  if (!qword_280D04A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04A88);
  }

  return result;
}

uint64_t sub_21E796B60(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E947520;
  *(v4 + 56) = a1;
  *(v4 + 64) = sub_21E79668C();
  *(v4 + 32) = v3;

  return sub_21E92A468();
}

Swift::Void __swiftcall NCNotificationStructuredListView.layoutSubviews()()
{
  v79.super_class = NCNotificationStructuredListView;
  objc_msgSendSuper2(&v79, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView];
  if (v2)
  {
    [v0 addSubview_];
  }

  v3 = [v0 revealHintView];
  v4 = [v3 superview];

  if (!v4)
  {
    v4 = [v0 revealHintView];
    [v0 addSubview_];
  }

  sub_21E923CF4();
  if (v5 <= 0.0 || (sub_21E923E88(), v6 <= 0.0))
  {
    v24 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView];
    [v0 bounds];
    [v24 setBounds_];
    [v0 bounds];
    MidX = CGRectGetMidX(v81);
    [v0 bounds];
  }

  else
  {
    [v0 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_21E923CF4();
    v16 = -v15;
    sub_21E923E88();
    v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, 0.0, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView];
    [v24 setBounds_];
    v80.origin.x = v17;
    v80.origin.y = v19;
    v80.size.width = v21;
    v80.size.height = v23;
    v25 = CGRectGetMidX(v80);
    v26 = v23;
    v27 = v21;
    v28 = v19;
    MidX = v25;
    v30 = v17;
  }

  [v24 setCenter_];
  v31 = [v0 listView];
  if (v31)
  {
    v32 = v31;
    [v0 bounds];
    [v32 setFrame_];
  }

  if (v2)
  {
    [v0 bounds];
    [v2 setFrame_];
  }

  [v0 bounds];
  Width = CGRectGetWidth(v82);
  [v0 footerInsets];
  v35 = v34;
  [v0 footerInsets];
  v37 = Width - (v35 + v36);
  [v0 footerInsets];
  v39 = v38;
  [v0 footerInsets];
  v41 = v39 - v40;
  v42 = [v0 footerView];
  if (v42)
  {
    v43 = v42;
    [v42 sizeThatFits_];
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  [v0 footerInsets];
  v47 = v46;
  [v0 frame];
  MaxY = CGRectGetMaxY(v83);
  v49 = [v0 footerInsets];
  CGRectMake(v49, v47, MaxY - v50 - v45, v37, v45);
  [v0 footerInsets];
  v52 = MaxY - v51;
  [v0 bounds];
  v53 = CGRectGetWidth(v84);
  CGRectMake(v54, 0.0, v52, v53, v41);
  UIRectCenteredRect();
  UIRectIntegralWithScale();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [v0 footerView];
  [v63 setFrame_];

  v64 = [v0 delegate];
  if (v64)
  {
    v65 = v64;
    v85.origin.x = v56;
    v85.origin.y = v58;
    v85.size.width = v60;
    v85.size.height = v62;
    CGRectGetMidY(v85);
    UIRoundToScale();
    [v65 notificationStructuredListView:v0 didChangeFooterCenterY:?];
    swift_unknownObjectRelease();
  }

  v66 = [v0 revealHintView];
  [v0 bounds];
  [v66 sizeThatFits_];

  v69 = [v0 revealHintView];
  [v69 frame];

  [v0 contentBottomMargin];
  [v0 bounds];
  UIRectCenteredXInRect();
  UIRectRoundToScale();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = [v0 revealHintView];
  [v78 setFrame_];

  [v1 commit];
}

uint64_t sub_21E79721C(uint64_t result, int a2, int a3)
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

void sub_21E797254(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B10);
  sub_21E929728();
  sub_21E929718();
  v8 = v27;
  if ((v31 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if (v27)
  {
    goto LABEL_6;
  }

  v8 = v26;
  if (v31)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v26 & 1) == 0 && *&v30 == v25[0] && *(&v30 + 1) == v25[1])
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v31 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  v9 = sub_21E795604(a3, a4);
  if (v31)
  {
    v10 = 0;
    v11 = 0;
    v31 = 0;
    v12 = 0uLL;
  }

  else
  {
    type metadata accessor for CGPoint(0);
    v10 = v13;
    v11 = sub_21E795D68(&unk_280D03C38, type metadata accessor for CGPoint);
    v12 = v30;
  }

  v30 = v12;
  v32 = v10;
  v33 = v11;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v9 >= v15[2])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v30, v25, &qword_27CED7AF8);
  v19 = v28;
  if (v28)
  {
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v25, v28);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_21E8B4CAC(v25, &qword_27CED7AF8);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v30, &qword_27CED7AF8);
}

void sub_21E797F04(char a1)
{
  v39.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v39, sel_rootListView);
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

  if (v4)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v5 = sub_21E929A78();
    __swift_project_value_buffer(v5, qword_280D05F58);
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Skip scroll to systemPreferred in full backlight, view is tracking";
    goto LABEL_6;
  }

  v10 = sub_21E788090();
  v11 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v11 != 5 && v11 == v10)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v12 = sub_21E929A78();
    __swift_project_value_buffer(v12, qword_280D05F58);
    v13 = v1;
    v6 = sub_21E929A58();
    v14 = sub_21E92A648();

    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v8 = 136446466;
    v16 = sub_21E788090();
    v17 = sub_21E79841C(qword_21E948050[v16], 0xE100000000000000, &v38);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2082;
    v18 = [v13 currentListDisplayStyleSettingReason];
    v19 = sub_21E92A458();
    v21 = v20;

    v22 = sub_21E79841C(v19, v21, &v38);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_21E77E000, v6, v14, "Skip scroll to systemPreferred in full backlight, already in systemPreferredPageType %{public}s (reason: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v15, -1, -1);
    goto LABEL_13;
  }

  if (a1)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v23 = sub_21E929A78();
    __swift_project_value_buffer(v23, qword_280D05F58);
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Skip scroll to systemPreferred in full backlight, has new incoming scrollPosition override";
LABEL_6:
    _os_log_impl(&dword_21E77E000, v6, v7, v9, v8, 2u);
LABEL_13:
    MEMORY[0x223D65FB0](v8, -1, -1);
LABEL_14:

    return;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v24 = sub_21E929A78();
  __swift_project_value_buffer(v24, qword_280D05F58);
  v25 = v1;
  v26 = sub_21E929A58();
  v27 = sub_21E92A648();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136446466;
    v30 = sub_21E788090();
    v31 = sub_21E79841C(qword_21E948050[v30], 0xE100000000000000, &v38);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    v32 = [v25 currentListDisplayStyleSettingReason];
    v33 = sub_21E92A458();
    v35 = v34;

    v36 = sub_21E79841C(v33, v35, &v38);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_21E77E000, v26, v27, "Scroll to systemPreferred %{public}s in full backlight (reason: %{public}s)", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v29, -1, -1);
    MEMORY[0x223D65FB0](v28, -1, -1);
  }

  v37 = sub_21E788090();
  sub_21E798E1C(v37);
}

unint64_t sub_21E79841C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21E798534(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21E79872C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_21E7984E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E798C6C(a1, a2);
  sub_21E798640(&unk_282FE37A0);
  return v3;
}

unint64_t sub_21E798534(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21E7984E8(a5, a6);
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
    result = sub_21E92A8D8();
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

uint64_t sub_21E798640(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21E8D51C4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21E79872C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall NCNotificationRootModernList._backlightChanged(toBacklightLuminance:)(Swift::Int toBacklightLuminance)
{
  v30.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v30, sel__backlightChangedToBacklightLuminance_, toBacklightLuminance);
  v29.receiver = v1;
  v29.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v29, sel_rootListView);
  v4 = [v3 traitCollection];

  v5 = [v4 _backlightLuminance];
  if (v5 == toBacklightLuminance)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v6 = sub_21E929A78();
    __swift_project_value_buffer(v6, qword_280D05F58);
    v7 = sub_21E929A58();
    v8 = sub_21E92A648();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = toBacklightLuminance;
    v10 = "No backlight changed for %{public}ld; skip scroll position update";
    goto LABEL_6;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v11 = sub_21E929A78();
  __swift_project_value_buffer(v11, qword_280D05F58);
  v12 = v1;
  v13 = sub_21E929A58();
  v14 = sub_21E92A648();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349312;
    v26.receiver = v12;
    v26.super_class = NCNotificationRootModernList;
    v16 = objc_msgSendSuper2(&v26, sel_rootListView);
    v17 = [v16 traitCollection];

    v18 = [v17 _backlightLuminance];
    *(v15 + 4) = v18;

    *(v15 + 12) = 2050;
    *(v15 + 14) = toBacklightLuminance;
    _os_log_impl(&dword_21E77E000, v13, v14, "Backlight changed from %{public}ld to %{public}ld", v15, 0x16u);
    MEMORY[0x223D65FB0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = sub_21E786808(0xA);
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
    }
  }

  else
  {
    v21 = 0;
  }

  [v21 setBacklightState_];

  v22 = OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask;
  v23 = *(&v12->isa + OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask);
  if (v23)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7300);
    sub_21E92A5C8();
  }

  *(&v12->isa + v22) = 0;

  v28.receiver = v12;
  v28.super_class = NCNotificationRootModernList;
  v24 = objc_msgSendSuper2(&v28, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setIsVFDEnabledForScrollAnimation_];

  v27.receiver = v12;
  v27.super_class = NCNotificationRootModernList;
  v25 = objc_msgSendSuper2(&v27, &selRef_serviceForClientIdentifier_ + 3);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setScrollEnabled_];

  if ((toBacklightLuminance + 1) < 2)
  {
    sub_21E8C752C(0, 0);
  }

  else if (toBacklightLuminance == 1)
  {
    sub_21E8C6D6C(4);
  }

  else
  {
    if (toBacklightLuminance != 2)
    {
      v7 = sub_21E929A58();
      v8 = sub_21E92A638();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = toBacklightLuminance;
      v10 = "New backlight value detected: %{public}ld, need to handle new case correctly";
LABEL_6:
      _os_log_impl(&dword_21E77E000, v7, v8, v10, v9, 0xCu);
      MEMORY[0x223D65FB0](v9, -1, -1);
LABEL_7:

      return;
    }

    sub_21E797F04(v23 != 0);
  }
}

uint64_t sub_21E798C6C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21E798D9C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21E92A8D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21E92A4D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21E798D9C(v10, 0);
        result = sub_21E92A898();
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

void *sub_21E798D9C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7478);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_21E798E1C(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = sub_21E929A58();
  v6 = sub_21E92A618();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446210;
    v9 = sub_21E799190(a1);
    v11 = sub_21E79841C(v9, v10, v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21E77E000, v5, v6, "setNeedsScroll %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223D65FB0](v8, -1, -1);
    MEMORY[0x223D65FB0](v7, -1, -1);
  }

  v12 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v13 = *&v2[v12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_21E79909C(0, *(v13 + 2) + 1, 1, v13);
    *&v2[v12] = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_21E79909C((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v13[v16 + 32] = a1;
  *&v2[v12] = v13;
  swift_endAccess();
  v18.receiver = v2;
  v18.super_class = NCNotificationRootModernList;
  v17 = objc_msgSendSuper2(&v18, sel_rootListView);
  [v17 setNeedsLayout];
}

char *sub_21E79909C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21E799190(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v4 = 0x2D65676170;
    v1 = a1;
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    v4 = 0x61506F54646C6F68;
    v1 = a1 & 0x3F;
LABEL_5:
    MEMORY[0x223D64660](qword_21E948050[v1], 0xE100000000000000);

    return v4;
  }

  v3 = 0x65746164696C6176;
  if (a1 != 129)
  {
    v3 = 7368564;
  }

  if (a1 == 128)
  {
    return 1701736302;
  }

  else
  {
    return v3;
  }
}

unint64_t get_enum_tag_for_layout_string_So28NCNotificationRootModernListC22UserNotificationsUIKitE11ScrollState33_FEF7D9AF22AA6C72E8E41A6F05824DD0LLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_21E7992D4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      return 0x6576697463616E69;
    }

    sub_21E92A8A8();
    MEMORY[0x223D64660](0xD000000000000013, 0x800000021E957820);
    sub_21E92A918();
    MEMORY[0x223D64660](0x3D7465677261742CLL, 0xE800000000000000);
    v6 = sub_21E8D0118(v1, v2, v3, v5);
    MEMORY[0x223D64660](v6);

    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E957800);
    v7 = v4 == 0;
  }

  else
  {
    v8 = v0[7];
    sub_21E92A8A8();
    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E9577E0);
    sub_21E92A918();
    MEMORY[0x223D64660](0x3D7465677261742CLL, 0xE800000000000000);
    v9 = sub_21E8D0118(v1, v2, v3, v5);
    MEMORY[0x223D64660](v9);

    MEMORY[0x223D64660](0x3D72657466612CLL, 0xE700000000000000);
    v10 = sub_21E92AB58();
    MEMORY[0x223D64660](v10);

    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E957800);
    v7 = v8 == 0;
  }

  if (v7)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v7)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223D64660](v11, v12);

  return 0;
}

void sub_21E799598()
{
  v1 = v0;
  v20.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v20, sel_rootListView);
  v3 = [v2 superview];

  if (v3 && (v4 = [v3 superview], v3, v4) && (v5 = objc_msgSend(v4, sel_superview), v4, v5))
  {
    [v5 safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v14 = v1 + OBJC_IVAR___NCNotificationRootModernList_layout;
  *(v14 + 24) = v7;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    v17 = *(v14 + 32);
    v21[3] = *(v14 + 48);
    v21[4] = v15;
    v21[5] = v16;
    v18 = *(v14 + 16);
    v21[0] = *v14;
    v22 = *(v14 + 96);
    v21[1] = v18;
    v21[2] = v17;

    sub_21E78A844(v21, v19);
    sub_21E7935C0(v21);
    sub_21E78AACC(v21);
  }

  sub_21E784AD0(0);
  sub_21E79411C(0, 0, 1);
}

uint64_t sub_21E799760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_21E7997DC(uint64_t result, char a2, void (*a3)(void, void))
{
  if (a3)
  {
    v5 = result;

    a3(v5 & 1, a2 & 1);

    return sub_21E792E48(a3);
  }

  return result;
}

id sub_21E799BCC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21E799DB4;
  *(v3 + 24) = v2;
  v7[4] = sub_21E799DD4;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21E799D8C;
  v7[3] = &block_descriptor_11;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    return [v5 setRevealHintVisible_];
  }

  __break(1u);
  return result;
}

uint64_t sub_21E799D44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21E799DFC(void *a1, double a2)
{
  v3 = [a1 revealHintView];
  [v3 setAlpha_];
}

double NCSizeThatFits(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
LABEL_6:
    [v7 sizeThatFits:{a3, a4}];
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      NCSizeThatFits_cold_1(v10);
    }

    goto LABEL_6;
  }

  [v7 sizeThatFits:v8 withTraits:{a3, a4}];
LABEL_7:
  v11 = v9;

  return v11;
}

uint64_t _sectionIdentifierIconDenyListContains(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (_sectionIdentifierIconDenyListContains___onceToken != -1)
  {
    _sectionIdentifierIconDenyListContains_cold_1();
  }

  if ([_sectionIdentifierIconDenyListContains___sectionIdentifierIconDenyList containsObject:v5])
  {
    v7 = [v6 nc_iconWouldUseApplicationIdentifierForFormat:a3] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _unContactFromBBContact(void *a1)
{
  v1 = a1;
  v2 = [v1 handleType];
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (v2 == 2);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE2050]);
  v5 = [v1 handle];
  [v4 setHandle:v5];

  [v4 setHandleType:v3];
  v6 = [v1 displayName];
  [v4 setDisplayName:v6];

  [v4 setDisplayNameSuggested:{objc_msgSend(v1, "isDisplayNameSuggested")}];
  v7 = [v1 serviceName];
  [v4 setServiceName:v7];

  v8 = [v1 customIdentifier];
  [v4 setCustomIdentifier:v8];

  v9 = [v1 cnContactIdentifier];
  [v4 setCnContactIdentifier:v9];

  v10 = [v1 cnContactFullname];
  [v4 setCnContactFullname:v10];

  v11 = [v1 isCNContactIdentifierSuggested];
  [v4 setCnContactIdentifierSuggested:v11];

  return v4;
}

id _NCQuickLooksAttachmentImageForNotificationRequest(void *a1, double a2, double a3, double a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a1;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  if (!v7)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v8 = [v7 primaryAttachment];
  v9 = [v8 URL];
  v10 = [v9 path];

  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    if (v11 && ([v8 type] - 1) <= 1)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__4;
      v38 = __Block_byref_object_dispose__4;
      v39 = 0;
      v31 = 0;
      v32[0] = &v31;
      v32[1] = 0x3032000000;
      v32[2] = __Block_byref_object_copy__4;
      v32[3] = __Block_byref_object_dispose__4;
      v33 = 0;
      v12 = [MEMORY[0x277D759A0] mainScreen];
      [v12 scale];
      v14 = v13;

      v15 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v11 size:4 scale:a2 representationTypes:{a3, v14}];
      [v15 setContentTypeUTI:@"com.apple.private.usernotifications.attachment"];
      v16 = [v8 thumbnailGeneratorUserInfo];
      if (v16)
      {
        [v15 setExternalThumbnailGeneratorData:v16];
      }

      if (__PAIR128__(_NCQuickLooksAttachmentImageForNotificationRequest___thumbnailGeneratorTimeoutQueue, _NCQuickLooksAttachmentImageForNotificationRequest_onceToken) < 0xFFFFFFFFFFFFFFFFLL)
      {
        _NCQuickLooksAttachmentImageForNotificationRequest_cold_1();
      }

      v17 = dispatch_time(0, (a4 * 1000000000.0));
      v18 = _NCQuickLooksAttachmentImageForNotificationRequest___thumbnailGeneratorTimeoutQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_2;
      block[3] = &unk_278371570;
      v29 = &v34;
      v30 = &v31;
      v19 = v15;
      v28 = v19;
      dispatch_after(v17, v18, block);
      v20 = [MEMORY[0x277CDAAE0] sharedGenerator];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_17;
      v26[3] = &unk_278371598;
      v26[4] = &v34;
      v26[5] = &v31;
      [v20 synchronousGenerateThumbnailForRequest:v19 updateHandler:0 statusHandler:0 completionHandler:v26];

      v21 = [v35[5] UIImage];
      v22 = *MEMORY[0x277D77DB8];
      v23 = *MEMORY[0x277D77DB8];
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v35[5];
          *buf = 138543618;
          v41 = v10;
          v42 = 2114;
          v43 = v24;
          _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "Generated thumbnail: filePath=%{public}@, representation=%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        _NCQuickLooksAttachmentImageForNotificationRequest_cold_2(v10, v32, v22);
      }

      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&v34, 8);

      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  v21 = 0;
LABEL_15:

LABEL_16:

  return v21;
}

void sub_21E79B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t NCApplicationIdentifierIsValid(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v1];
    if (!v2)
    {
      v3 = MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        NCApplicationIdentifierIsValid_cold_1();
      }

      v14 = 0;
      v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:1 error:&v14];
      v5 = v14;
      v6 = objc_opt_class();
      v7 = v4;
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v2 = v8;

      if (!v2 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        NCApplicationIdentifierIsValid_cold_2();
      }
    }

    v11 = [v2 applicationState];
    v10 = [v11 isValid];

    if ((v10 & 1) == 0)
    {
      v12 = os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR);
      if (v2)
      {
        if (v12)
        {
          NCApplicationIdentifierIsValid_cold_3();
        }
      }

      else if (v12)
      {
        NCApplicationIdentifierIsValid_cold_4();
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      NCApplicationIdentifierIsValid_cold_5(v9);
    }

    v10 = 0;
  }

  return v10;
}

id _attachmentImageForBulletin(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 accessoryImage];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 name];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v5 bundlePath];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v8];
    if (v9)
    {
      v10 = [MEMORY[0x277D755B8] imageNamed:v7 inBundle:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76A28]];
    v11 = MEMORY[0x277D755D0];
    [v9 pointSize];
    v12 = [v11 configurationWithPointSize:0 weight:3 scale:?];
    v10 = [MEMORY[0x277D755B8] _systemImageNamed:v7 withConfiguration:v12];
  }

  if (!v10)
  {
LABEL_9:
    v10 = _NCQuickLooksAttachmentImageForNotificationRequest(v3, a2, a2, 10.0);
  }

  return v10;
}

id _actionsForLayout(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 supplementaryActionsForLayout:{a3, 0}];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277D77E30] notificationActionForAction:*(*(&v16 + 1) + 8 * i) bulletin:v5 observer:v6];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

void NCNotificationRootModernList.remove(_:)(void *a1)
{
  v2 = a1;
  v3 = off_27836E000;
  v76.super_class = NCNotificationRootModernList;
  v73 = objc_msgSendSuper2(&v76, sel_removeNotificationRequest_, a1);
  *(*&v1[OBJC_IVAR___NCNotificationRootModernList_exclusionManager] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation) = 1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = v2;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v77[0] = v9;
    *v8 = 136446210;
    if (v2)
    {
      v10 = v9;
      v11 = [v5 notificationIdentifier];
      if (!v11)
      {
        sub_21E92A458();
        v11 = sub_21E92A428();
      }

      v12 = [v11 un_logDigest];

      if (v12)
      {
        v13 = sub_21E92A458();
        v15 = v14;

        v16 = sub_21E79841C(v13, v15, v77);

        *(v8 + 4) = v16;
        _os_log_impl(&dword_21E77E000, v6, v7, "Remove %{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x223D65FB0](v10, -1, -1);
        MEMORY[0x223D65FB0](v8, -1, -1);

        v2 = v71;
        v3 = off_27836E000;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_10:
  v17 = &v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  if (!*(*&v1[OBJC_IVAR___NCNotificationRootModernList_layout] + 16))
  {
    v40 = v5;
    v41 = sub_21E929A58();
    v42 = sub_21E92A648();
    if (!os_log_type_enabled(v41, v42))
    {

      goto LABEL_27;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v77[0] = v44;
    *v43 = 136446210;
    if (v2)
    {
      v45 = v44;
      v46 = [v40 notificationIdentifier];
      if (!v46)
      {
        sub_21E92A458();
        v46 = sub_21E92A428();
      }

      v47 = [v46 un_logDigest];

      if (v47)
      {
        v48 = sub_21E92A458();
        v50 = v49;

        v51 = sub_21E79841C(v48, v50, v77);

        *(v43 + 4) = v51;
        _os_log_impl(&dword_21E77E000, v41, v42, "Page is empty; scroll to top for %{public}s removal", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x223D65FB0](v45, -1, -1);
        MEMORY[0x223D65FB0](v43, -1, -1);
LABEL_27:

        sub_21E798E1C(0x82u);
        return;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = v2;
  v19 = v3;
  v20 = v3[29];
  v75.receiver = v1;
  v75.super_class = v20;
  v21 = objc_msgSendSuper2(&v75, sel_rootListView);
  v22 = [v21 traitCollection];

  v23 = [v22 _backlightLuminance];
  if (v23 == 2)
  {
    v24 = v1;
    v25 = v5;
    v26 = v24;
    v27 = sub_21E929A58();
    v28 = sub_21E92A648();
    if (!os_log_type_enabled(v27, v28))
    {

      return;
    }

    v29 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v77[0] = v72;
    *v29 = 134349314;
    v30 = v19[29];
    v74.receiver = v26;
    v74.super_class = v30;
    v31 = objc_msgSendSuper2(&v74, &selRef_serviceForClientIdentifier_ + 3);
    v32 = [v31 traitCollection];

    v33 = [v32 _backlightLuminance];
    *(v29 + 4) = v33;

    *(v29 + 12) = 2082;
    if (v18)
    {
      v34 = [v25 notificationIdentifier];
      if (!v34)
      {
        sub_21E92A458();
        v34 = sub_21E92A428();
      }

      v35 = [v34 un_logDigest];

      if (v35)
      {
        v36 = sub_21E92A458();
        v38 = v37;

        v39 = sub_21E79841C(v36, v38, v77);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_21E77E000, v27, v28, "_backlightLuminance is %{public}ld; skip scrolling for %{public}s removal", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x223D65FB0](v72, -1, -1);
        MEMORY[0x223D65FB0](v29, -1, -1);

        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v73)
  {
    v52 = sub_21E788090();
    v53 = swift_allocObject();
    *(v53 + 16) = v1;
    v54 = v1;
    sub_21E8C6068(0, v52, sub_21E8D9728, v53);

    v55 = *v17;
    v56 = *(v17 + 1);
    v57 = v17[2];

    v58.n128_u64[0] = v57;
    sub_21E783428(v55, v77, v56, v58);

    sub_21E8C800C(v77);
    return;
  }

  v59 = v5;
  v60 = sub_21E929A58();
  v61 = sub_21E92A648();
  if (!os_log_type_enabled(v60, v61))
  {

    return;
  }

  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v77[0] = v63;
  *v62 = 136446210;
  if (v18)
  {
    v64 = v63;
    v65 = [v59 notificationIdentifier];
    if (!v65)
    {
      sub_21E92A458();
      v65 = sub_21E92A428();
    }

    v66 = [v65 un_logDigest];

    if (v66)
    {
      v67 = sub_21E92A458();
      v69 = v68;

      v70 = sub_21E79841C(v67, v69, v77);

      *(v62 + 4) = v70;
      _os_log_impl(&dword_21E77E000, v60, v61, "Doesn't remove notification from any sections; skip scrolling for %{public}s removal", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x223D65FB0](v64, -1, -1);
      MEMORY[0x223D65FB0](v62, -1, -1);

      return;
    }

    goto LABEL_43;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_21E79D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21E79DE90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t NCNotificationRootModernList.perform(_:withoutAnimation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v17, sel_rootListView);
  v8 = [v7 traitCollection];

  v9 = [v8 _backlightLuminance];
  if (v9 + 1 >= 3 && v9 == 2)
  {
    v10 = NCDefaultAnimator();
  }

  else
  {
    v10 = *&v3[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v12[5] = v3;
  v16[4] = sub_21E79E1A8;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21E792C28;
  v16[3] = &block_descriptor_24;
  v13 = _Block_copy(v16);

  v14 = v3;

  [v11 performAnimationType:a1 withoutAnimation:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_21E79E168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21E79E1A8()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  if (v1 == 4)
  {
    sub_21E8CB974();
  }
}

void sub_21E79EB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NCUserNotificationsUIKitFrameworkBundle()
{
  if (NCUserNotificationsUIKitFrameworkBundle___once != -1)
  {
    NCUserNotificationsUIKitFrameworkBundle_cold_1();
  }

  v1 = NCUserNotificationsUIKitFrameworkBundle___bundle;

  return v1;
}

void sub_21E7A0BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NCNotificationListSectionTypeString(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"<invalid>";
  }

  else
  {
    return off_2783725B8[a1];
  }
}

void sub_21E7A0E3C(uint64_t a1@<X8>)
{
  v3 = sub_21E7871A0();
  v4 = sub_21E7871A0();
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 listView];

    if (v7)
    {
      v42.receiver = v1;
      v42.super_class = NCNotificationRootModernList;
      v8 = v7;
      v9 = objc_msgSendSuper2(&v42, sel_rootListView);
      [v9 frame];
      v11 = v10;

      [v8 sizeThatFits_];
      v5 = v12;
    }
  }

  type metadata accessor for LiveActivitySizer();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 513;
  *(v13 + 16) = v3;
  *(v13 + 24) = v5;
  v14 = sub_21E786808(0xC);
  if (!v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  type metadata accessor for StructureListSizer();
  v16 = swift_allocObject();
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  *(v16 + 56) = 0;
  *(v16 + 64) = 1;
  *(v16 + 72) = 0;
  *(v16 + 80) = 513;
  *(v16 + 88) = 0;
  *(v16 + 96) = 1;
  *(v16 + 97) = 514;
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  v17 = sub_21E786808(0xB);
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 32) = 1;
  *(v19 + 40) = 0;
  *(v19 + 48) = 1;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 513;
  *(v19 + 88) = 0;
  *(v19 + 96) = 1;
  *(v19 + 97) = 514;
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  v20 = sub_21E786808(0xA);
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = swift_allocObject();
  *(v23 + 32) = 1;
  *(v23 + 40) = 0;
  *(v23 + 48) = 1;
  *(v23 + 56) = 0;
  *(v23 + 64) = 1;
  *(v23 + 72) = 0;
  *(v23 + 80) = 513;
  *(v23 + 88) = 0;
  *(v23 + 96) = 1;
  *(v23 + 97) = 514;
  *(v23 + 16) = v22;
  *(v23 + 24) = 0;
  v24 = sub_21E786808(1);
  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = v24;
  v40 = v13;
  v41 = a1;
  v26 = swift_allocObject();
  *(v26 + 32) = 1;
  *(v26 + 40) = 0;
  *(v26 + 48) = 1;
  *(v26 + 56) = 0;
  *(v26 + 64) = 1;
  *(v26 + 72) = 0;
  *(v26 + 80) = 513;
  *(v26 + 88) = 0;
  *(v26 + 96) = 1;
  *(v26 + 97) = 514;
  *(v26 + 16) = v25;
  *(v26 + 24) = 0;
  v27 = sub_21E786808(2);
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 32) = 1;
  *(v29 + 40) = 0;
  *(v29 + 48) = 1;
  *(v29 + 56) = 0;
  *(v29 + 64) = 1;
  *(v29 + 72) = 0;
  *(v29 + 80) = 513;
  *(v29 + 88) = 0;
  *(v29 + 96) = 1;
  *(v29 + 97) = 514;
  *(v29 + 16) = v28;
  *(v29 + 24) = 0;
  v30 = sub_21E786808(4);
  if (v30)
  {
    v31 = v30;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = swift_allocObject();
  *(v33 + 32) = 1;
  *(v33 + 40) = 0;
  *(v33 + 48) = 1;
  *(v33 + 56) = 0;
  *(v33 + 64) = 1;
  *(v33 + 72) = 0;
  *(v33 + 80) = 513;
  *(v33 + 88) = 0;
  *(v33 + 96) = 1;
  *(v33 + 97) = 514;
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v34 = sub_21E786808(0);
  if (v34)
  {
    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 32) = 1;
    *(v36 + 40) = 0;
    *(v36 + 48) = 1;
    *(v36 + 56) = 0;
    *(v36 + 64) = 1;
    *(v36 + 72) = 0;
    *(v36 + 80) = 513;
    *(v36 + 88) = 0;
    *(v36 + 96) = 1;
    *(v36 + 97) = 514;
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    v45.receiver = v1;
    v45.super_class = NCNotificationRootModernList;
    v37 = objc_msgSendSuper2(&v45, sel_rootListView);
    [v37 visibleRectBottomMarginForRollUnder];
    v39 = v38;

    v44 = 1;
    v43 = 1;
    *v41 = v40;
    *(v41 + 8) = v16;
    *(v41 + 16) = v19;
    *(v41 + 24) = v23;
    *(v41 + 32) = v26;
    *(v41 + 40) = v29;
    *(v41 + 48) = v33;
    *(v41 + 56) = v36;
    *(v41 + 64) = v39;
    *(v41 + 72) = 0;
    *(v41 + 80) = 1;
    *(v41 + 88) = 0;
    *(v41 + 96) = 1;
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_21E7A130C()
{
  v1 = *(v0 + 81);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_21E7A138C() > 0;
    *(v0 + 81) = v1;
  }

  return v1 & 1;
}

uint64_t sub_21E7A1340()
{
  v1 = *(v0 + 73);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      LOBYTE(v1) = [v2 count] > 0;
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    *(v0 + 73) = v1;
  }

  return v1 & 1;
}

id sub_21E7A138C()
{
  if (*(v0 + 96) != 1)
  {
    return *(v0 + 88);
  }

  result = *(v0 + 16);
  if (result)
  {
    result = [result count];
  }

  *(v0 + 88) = result;
  *(v0 + 96) = 0;
  return result;
}

double sub_21E7A145C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  sub_21E7A1494(v0);
  *(v0 + 72) = result;
  *(v0 + 80) = 0;
  return result;
}

uint64_t sub_21E7A1494(uint64_t *a1)
{
  v2 = *a1;
  v36 = type metadata accessor for LiveActivitySizer();
  v37 = &off_282FE7A78;
  v35 = v2;
  v3 = a1[1];
  v39 = type metadata accessor for StructureListSizer();
  v40 = &off_282FE7AA0;
  v38 = v3;
  v4 = a1[2];
  v42 = v39;
  v43 = &off_282FE7AA0;
  v41 = v4;

  v5 = MEMORY[0x277D84F90];
  for (i = 32; i != 152; i += 40)
  {
    sub_21E795EE0(&v34[i], &v30);
    v7 = *(&v31 + 1);
    v8 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    if ((*(v8 + 32))(v7, v8))
    {
      sub_21E7A17AC(&v30, &v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21E8D5338(0, *(v5 + 16) + 1, 1);
        v5 = v33;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21E8D5338((v10 > 1), v11 + 1, 1);
        v5 = v33;
      }

      *(v5 + 16) = v11 + 1;
      sub_21E7A17AC(&v27, v5 + 40 * v11 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B88);
  result = swift_arrayDestroy();
  v13 = 0;
  v14 = *(v5 + 16);
  v15 = 0.0;
  while (1)
  {
    v16 = 0uLL;
    v17 = v14;
    v18 = 0uLL;
    v19 = 0uLL;
    if (v13 == v14)
    {
      goto LABEL_15;
    }

    if (v13 >= *(v5 + 16))
    {
      break;
    }

    v17 = v13 + 1;
    *&v27 = v13;
    sub_21E795EE0(v5 + 32 + 40 * v13, &v27 + 8);
    v16 = v27;
    v18 = v28;
    v19 = v29;
LABEL_15:
    v30 = v16;
    v31 = v18;
    v32 = v19;
    if (!v19)
    {
    }

    v26 = v16;
    sub_21E7A17AC((&v30 + 8), &v27);
    v20 = *(&v28 + 1);
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    v15 = v15 + (*(v21 + 16))(v20, v21);
    if (v26 < *(v5 + 16) - 1)
    {
      v22 = [objc_opt_self() rootSettings];
      v23 = [v22 listAnimationSettings];

      [v23 viewSpacing];
      v25 = v24;

      v15 = v15 + v25;
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    v13 = v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E7A17AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_21E7A17C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED82A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_21E7A18E0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 collapsedHeight];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 24) = v2;
    *(v0 + 32) = 0;
  }
}

void sub_21E7A1D60()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 expandedHeightIgnoringNotificationStacks];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 56) = v2;
    *(v0 + 64) = 0;
  }
}

BOOL sub_21E7A1DD4(void *a1, uint64_t *a2)
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

void *sub_21E7A1E40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21E7A1E70(uint64_t a1, int a2)
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

uint64_t _s22UserNotificationsUIKit23HighlightsDropletLayoutC23DropletSeparationFactorVwet_0(uint64_t a1, int a2)
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

uint64_t sub_21E7A1EC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E92A458();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E7A1F0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A1F44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A1F84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A1FD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2008()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2080()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21E7A210C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBackgroundHidden];
  *a2 = result;
  return result;
}

id sub_21E7A2154@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsGlass];
  *a2 = result;
  return result;
}

id sub_21E7A219C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsMitosis];
  *a2 = result;
  return result;
}

id sub_21E7A21E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 glassSmoothness];
  *a2 = v4;
  return result;
}

id sub_21E7A222C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 glassTintColor];
  *a2 = result;
  return result;
}

id sub_21E7A227C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unmanagedBackdropContrast];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A22C4()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A22FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2334()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21E7A236C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A23A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A240C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_21E7A2460(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A246C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A24B8()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A24F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21E7A2538()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_21E7A2604(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A2610()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2648()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A26C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A274C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21E7A278C()
{
  v1 = [v0 debugView];

  return v1;
}

void sub_21E7A27C4(void *a1)
{
  [v1 setDebugView_];
}

__n128 sub_21E7A2820(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A282C()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21E7A2864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cellView];
  *a2 = result;
  return result;
}

id sub_21E7A28B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A290C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_21E7A2944@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 listView];
  *a2 = result;
  return result;
}

id sub_21E7A2994@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRevealed];
  *a2 = result;
  return result;
}

id sub_21E7A29DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 revealPercentage];
  *a2 = v4;
  return result;
}

id sub_21E7A2A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

id sub_21E7A2A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A2AD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2B24()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2B5C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21E7A2B9C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21E7A2BD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2C14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2C4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2C8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2CC4()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21E7A2D0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_21E7A2D6C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 transform];
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id sub_21E7A2DB8(_OWORD *a1, void **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return [v2 setTransform_];
}

id sub_21E7A2EB8()
{
  v0 = objc_opt_self();

  return [v0 updateAllDebugViews];
}

uint64_t sub_21E7A2EF0()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A30C4@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_21E7A317C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentInset];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_21E7A31C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21E7A3264(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A32B4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21E7A32EC()
{
  v1 = *(type metadata accessor for NotificationListLayoutValidator.LayoutState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21E929778();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E7A3418()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7ED8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7ED0);
  sub_21E8D919C(&qword_27CED7F18, &qword_27CED7ED0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E7A35C8()
{
  sub_21E929F68();
  sub_21E92A198();
  sub_21E929E68();
  sub_21E929E68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21E7A3754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A378C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A3838()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A38D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A3908()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A3940()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A397C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A39C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_21E7A3A50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E929778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E7A3B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E929778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E7A3BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E929778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21E7A3C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E929778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

__n128 sub_21E7A3DB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A3DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21E7A572C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_21E7A5AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A5D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A624C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7A63C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7A669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A6F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NCStringFromStageChangeTrigger(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27836F580[a1 - 1];
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21E7A882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7AC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7AC790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7ACB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7AD5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7B1790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7B40B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v52 + 40));
  objc_destroyWeak(v50 + 7);
  objc_destroyWeak(v50 + 6);
  objc_destroyWeak(v50 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v51 + 56));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x270]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x2F8]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x338]);
  objc_destroyWeak(&STACK[0x370]);
  objc_destroyWeak((v53 - 200));
  objc_destroyWeak((v53 - 160));
  _Unwind_Resume(a1);
}

void sub_21E7B49FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_21E7B5AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x3E8]);
  objc_destroyWeak(&STACK[0x400]);
  objc_destroyWeak(&STACK[0x460]);
  objc_destroyWeak(&STACK[0x458]);
  objc_destroyWeak(&STACK[0x4C0]);
  objc_destroyWeak(&STACK[0x4B8]);
  objc_destroyWeak((v1 - 168));
  objc_destroyWeak((v1 - 160));
  _Unwind_Resume(a1);
}

void sub_21E7B5F8C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 8);
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  _Unwind_Resume(a1);
}

void sub_21E7B61B8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  _Unwind_Resume(a1);
}

void sub_21E7B6704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_21E7B6F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 256));
  objc_destroyWeak((v4 - 248));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 144));
  objc_destroyWeak((v4 - 136));
  _Unwind_Resume(a1);
}

void sub_21E7B7740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, id a50)
{
  objc_destroyWeak(v52 + 9);
  objc_destroyWeak(v52 + 8);
  objc_destroyWeak(v52 + 7);
  objc_destroyWeak(v52 + 6);
  objc_destroyWeak(v51 + 8);
  objc_destroyWeak(v51 + 7);
  objc_destroyWeak(v51 + 6);
  objc_destroyWeak(v51 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a50);
  objc_destroyWeak((v53 - 256));
  objc_destroyWeak((v53 - 248));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak((v53 - 144));
  objc_destroyWeak((v53 - 136));
  _Unwind_Resume(a1);
}

void sub_21E7B8128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7BC31C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x598], 8);
  _Block_object_dispose(&STACK[0x640], 8);
  _Block_object_dispose(&STACK[0x680], 8);
  _Block_object_dispose(&STACK[0x6F8], 8);
  _Unwind_Resume(a1);
}

void sub_21E7BDA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 144));
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_21E7C04B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E7C0D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C17A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C8BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NCStackElevationPriorityForSectionTypeString()
{
  if (NCStackElevationPriorityForSectionTypeString_onceToken != -1)
  {
    NCStackElevationPriorityForSectionTypeString_cold_1();
  }

  v1 = NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet;

  return v1;
}

void sub_21E7C9744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21E7CFF08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void __NCStackElevationPriorityForSectionTypeString_block_invoke()
{
  v0 = MEMORY[0x277CBEB70];
  v6 = NCNotificationListSectionTypeString(0xAuLL);
  v1 = NCNotificationListSectionTypeString(2uLL);
  v2 = NCNotificationListSectionTypeString(3uLL);
  v3 = NCNotificationListSectionTypeString(0);
  v4 = [v0 orderedSetWithObjects:{v6, v1, v2, v3, 0}];
  v5 = NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet;
  NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet = v4;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_21E7D3B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7D4310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D58D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7DB7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E7DC424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21E7DC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7DE0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void sub_21E7DEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21E7DF3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7E0464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7E1384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NCDefaultAnimator_block_invoke()
{
  v0 = objc_alloc_init(NCSimpleAnimator);
  NCDefaultAnimator_Animator = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21E7E4BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}