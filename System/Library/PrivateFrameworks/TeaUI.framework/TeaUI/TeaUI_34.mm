uint64_t ShineImageFactory.shineImage(for:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v60 = v13 - v12;
  v14 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v59 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = sub_1D8190BE4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  if (*(a1 + 64) > 0.0 && *(a1 + 72) > 0.0)
  {
    v54 = v22;
    v55 = v14;
    v57 = a3;
    v58 = a2;
    v56 = v10;
    sub_1D818EDB4();
    v26 = v4;
    v27 = *(a1 + 16);
    v28 = *(a1 + 24);
    aBlock[0] = v27;
    aBlock[1] = v28;

    sub_1D8190DB4();
    sub_1D818FCA4();

    v29 = v62;
    if (v62)
    {
      sub_1D818EDC4();
      OUTLINED_FUNCTION_1_63();
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = v57;
      v30[4] = v29;

      sub_1D818FD04();
    }

    swift_beginAccess();
    v32 = v26;
    v33 = sub_1D7E18740(v27, v28, *(v26 + 32));
    if (v33)
    {
      v34 = v33;
      swift_endAccess();
      v35 = v57;
      if (*(v34 + 16))
      {
        OUTLINED_FUNCTION_0_32();
        v36 = swift_allocObject();
        *(v36 + 16) = v58;
        *(v36 + 24) = v57;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_46();
          v34 = v52;
        }

        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D7EE569C(v37 > 1, v38 + 1, 1, v34);
          v34 = v53;
        }

        *(v34 + 16) = v38 + 1;
        v39 = v34 + 16 * v38;
        *(v39 + 32) = sub_1D8111E60;
        *(v39 + 40) = v36;
        OUTLINED_FUNCTION_10_56();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_8_56(*(v32 + 32));
        sub_1D7EF6540();
        *(v32 + 32) = v62;
        swift_endAccess();
        return sub_1D818EDC4();
      }
    }

    else
    {
      swift_endAccess();
      v35 = v57;
    }

    OUTLINED_FUNCTION_6_85();
    sub_1D8111AB8(0, v40, v41, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D819FAB0;
    OUTLINED_FUNCTION_0_32();
    v43 = swift_allocObject();
    *(v43 + 16) = v58;
    *(v43 + 24) = v35;
    *(v42 + 32) = sub_1D806220C;
    *(v42 + 40) = v43;
    OUTLINED_FUNCTION_10_56();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_8_56(*(v32 + 32));
    sub_1D7EF6540();
    *(v32 + 32) = v62;
    swift_endAccess();
    sub_1D818EDC4();
    sub_1D7E11E0C();
    (*(v54 + 104))(v25, *MEMORY[0x1E69E7F88], v20);
    v44 = sub_1D8191AF4();
    (*(v54 + 8))(v25, v20);
    OUTLINED_FUNCTION_0_32();
    v45 = swift_allocObject();
    *(v45 + 16) = v32;
    *(v45 + 24) = a1;
    OUTLINED_FUNCTION_3_123(v45);
    OUTLINED_FUNCTION_4_91(COERCE_DOUBLE(1107296256));
    aBlock[2] = v46;
    aBlock[3] = &block_descriptor_76;
    v47 = _Block_copy(aBlock);

    sub_1D8190BF4();
    v62 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5_77();
    sub_1D7E28784(v48, v49);
    sub_1D7E2885C();
    OUTLINED_FUNCTION_7_72();
    sub_1D7E28784(v50, v51);
    sub_1D8192004();
    MEMORY[0x1DA713CE0](0, v19, v60, v47);
    _Block_release(v47);

    (*(v56 + 8))(v60, v8);
    (*(v59 + 8))(v19, v55);
  }

  if (qword_1ECA0C3C0 != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  return a2(qword_1ECA112E0);
}

uint64_t static ShineImageFactory.shared.getter()
{
  if (qword_1EDBBA3F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D810F9B8()
{
  sub_1D818EE04();

  sub_1D818F884();
}

uint64_t sub_1D810FA44()
{

  sub_1D818FC64();
}

uint64_t sub_1D810FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8190BD4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8190C34();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D810FE5C(a2);
  aBlock[6] = *(a1 + 24);
  v18 = a1;
  v19 = v10;
  v20 = a2;
  sub_1D818EE04();
  sub_1D8111AB8(0, &unk_1EDBB32E0, sub_1D8111D94, MEMORY[0x1E69E6720]);

  sub_1D818F884();

  v11 = aBlock[0];
  sub_1D7E11E0C();
  v12 = sub_1D8191AB4();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  aBlock[4] = sub_1D8111DC8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_87_0;
  v14 = _Block_copy(aBlock);

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v9, v6, v14);
  _Block_release(v14);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1D810FE5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    v6 = *(v2 + 40);
    sub_1D7F38714(v3);
    sub_1D7F38714(v6);
    v7.n128_u64[0] = v5;
    v8.n128_u64[0] = v4;
    sub_1D7FA1B74(v7, v8);
    v10 = v9;
    v31[0] = v6;
    v11.n128_u64[0] = v5;
    v12.n128_u64[0] = v4;
    sub_1D7FA1B74(v11, v12);
    v4 = v13;
    sub_1D8111B5C(v3, v6);
    v5 = v10;
  }

  v14 = v5;
  if (*&v5 > *&v4)
  {
    if ((v4 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = v4;
    }

    if ((~v4 & 0x7FF0000000000000) != 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = v15;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = v14;
  v32 = CGRectIntegral(*(&v14 - 2));
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
  v24 = swift_allocObject();
  *(v24 + 2) = a1;
  v24[3] = x;
  v24[4] = y;
  v24[5] = width;
  v24[6] = height;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D8111B3C;
  *(v25 + 24) = v24;
  v31[4] = sub_1D8111B54;
  v31[5] = v25;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_1D7E6F8AC;
  v31[3] = &block_descriptor_21_5;
  v26 = _Block_copy(v31);

  v27 = [v23 imageWithActions_];
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    if (*(a1 + 121))
    {
      LOBYTE(v31[0]) = 1;
      v29 = sub_1D81112B4(a1);

      type metadata accessor for ShineImage();
      swift_allocObject();
      v30 = sub_1D8100D60(v27, v31, v29, *&v5, *&v4);
    }

    else
    {
      v30 = sub_1D8110908(a1, v27, *&v5, *&v4);
    }

    return v30;
  }

  return result;
}

uint64_t sub_1D8110154@<X0>(void *a1@<X8>)
{

  sub_1D8190DB4();
  sub_1D818FC54();

  swift_beginAccess();
  sub_1D7F04124();
  *a1 = v2;
  return swift_endAccess();
}

uint64_t sub_1D8110200(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v4 = result + 40;
      do
      {
        v5 = *(v4 - 8);
        v6 = a2;

        v5(&v6);

        v4 += 16;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t ShineImageFactory.syncShineImage(for:)(uint64_t a1)
{
  sub_1D818EDB4();

  sub_1D8190DB4();
  sub_1D818FCA4();

  v2 = v4;
  if (!v4)
  {
    v2 = sub_1D810FE5C(a1);
    sub_1D8190DB4();

    sub_1D818FC54();
  }

  sub_1D818EDC4();
  return v2;
}

void sub_1D8110364(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = &selRef_setMenu_;
  v13 = [a1 CGContext];
  v14 = *(a2 + 40);
  v15 = [v14 CGColor];
  CGContextSetFillColorWithColor(v13, v15);

  v16 = [v11 CGContext];
  v66.origin.x = a3;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  CGContextFillRect(v16, v66);

  v17 = *(*(a2 + 32) + 72);
  v18 = *(v17 + 16);
  if (!v18)
  {
    return;
  }

  v61 = v17 + 32;
  if (a6 >= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = a6;
  }

  v20 = v19 * 0.5;
  sub_1D8190DB4();
  v21 = 0;
  v22 = v18;
  v58 = v14;
  v59 = v18;
  v57 = v11;
  v60 = v17;
  while (v21 < v22)
  {
    memcpy(__dst, (v61 + 112 * v21), 0x70uLL);
    v23 = __dst[10];
    if (__dst[10])
    {
      sub_1D8111C84(__dst, v62);
      sub_1D7E19F24(v23);
      v24 = v23(v14);
      v25 = [v11 v12[261]];
      v26 = v24;
      v14 = v58;
      CGContextSetBlendMode(v25, v26);

      sub_1D7E0E10C(v23);
    }

    else
    {
      sub_1D8111C84(__dst, v62);
    }

    v27 = (__dst[12])(v14);
    v28 = [v11 v12[261]];
    CGContextSetAlpha(v28, v27);

    v29 = __dst[0];
    if ((SLOBYTE(__dst[9]) & 0x80000000) == 0)
    {
      v30 = __dst[0];
      v31 = [v11 v12[261]];
      v32 = [v30 CGColor];
      CGContextSetFillColorWithColor(v31, v32);

      v33 = [v11 v12[261]];
      v67.origin.x = a3;
      v67.origin.y = a4;
      v67.size.width = a5;
      v67.size.height = a6;
      CGContextFillRect(v33, v67);

      sub_1D8111CE0(__dst);
      goto LABEL_37;
    }

    v34 = __dst[1];
    sub_1D8190DB4();
    sub_1D8190DB4();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (v29 >> 62)
    {
      v36 = sub_1D81920A4();
      if (v36)
      {
LABEL_14:
        v62[0] = MEMORY[0x1E69E7CC0];
        v37 = DeviceRGB;
        sub_1D81922A4();
        if (v36 < 0)
        {
          goto LABEL_42;
        }

        v38 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x1DA714420](v38, v29);
          }

          else
          {
            v39 = *(v29 + 8 * v38 + 32);
          }

          v40 = v39;
          ++v38;
          v41 = [v39 CGColor];

          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
        }

        while (v36 != v38);
        goto LABEL_23;
      }
    }

    else
    {
      v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_14;
      }
    }

    v42 = DeviceRGB;
LABEL_23:
    type metadata accessor for CGColor();
    v43 = sub_1D8191304();

    if (v34)
    {
      v44 = v34[2];
      if (v44)
      {
        v45 = DeviceRGB;
        v62[0] = MEMORY[0x1E69E7CC0];
        sub_1D7F0906C(0, v44, 0);
        v46 = v62[0];
        v47 = v34 + 4;
        v48 = *(v62[0] + 16);
        do
        {
          v49 = *v47;
          v62[0] = v46;
          v50 = *(v46 + 24);
          if (v48 >= v50 >> 1)
          {
            sub_1D7F0906C(v50 > 1, v48 + 1, 1);
            v46 = v62[0];
          }

          *(v46 + 16) = v48 + 1;
          *(v46 + 8 * v48 + 32) = v49;
          ++v47;
          ++v48;
          --v44;
        }

        while (v44);
        sub_1D8111CE0(__dst);
        DeviceRGB = v45;
      }

      else
      {
        sub_1D8111CE0(__dst);
        v46 = MEMORY[0x1E69E7CC0];
      }

      v51 = (v46 + 32);
    }

    else
    {
      sub_1D8111CE0(__dst);
      v51 = 0;
    }

    v11 = v57;
    v52 = CGGradientCreateWithColors(DeviceRGB, v43, v51);
    swift_unknownObjectRelease();

    if (v52)
    {
      v12 = &selRef_setMenu_;
      v53 = [v57 CGContext];
      v68.origin.x = a3;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      MidX = CGRectGetMidX(v68);
      v69.origin.x = a3;
      v69.origin.y = a4;
      v69.size.width = a5;
      v69.size.height = a6;
      MidY = CGRectGetMidY(v69);
      v70.origin.x = a3;
      v70.origin.y = a4;
      v70.size.width = a5;
      v70.size.height = a6;
      v56 = CGRectGetMidX(v70);
      v71.origin.x = a3;
      v71.origin.y = a4;
      v71.size.width = a5;
      v71.size.height = a6;
      v65.y = CGRectGetMidY(v71);
      v64.x = MidX;
      v64.y = MidY;
      v65.x = v56;
      CGContextDrawRadialGradient(v53, v52, v64, 0.0, v65, v20, 2u);
    }

    else
    {

      v12 = &selRef_setMenu_;
    }

    v14 = v58;
LABEL_37:
    ++v21;
    sub_1D8111D34(__dst);
    if (v21 == v59)
    {

      return;
    }

    v22 = *(v60 + 16);
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1D8110908(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = swift_allocObject();
  v10[2] = sub_1D8111BA4;
  v10[3] = v9;
  v67 = sub_1D8111E64;
  v68 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1D7E6F8AC;
  v66 = &block_descriptor_31;
  v11 = _Block_copy(&aBlock);

  v12 = a2;

  v13 = [v8 imageWithActions_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
LABEL_17:
    v28 = qword_1ECA112E0;

    sub_1D8068BB0(v10, isEscapingClosureAtFileLocation, v60, 1);
  }

  else
  {
    [v13 size];
    v10 = *(a1 + 96);
    isEscapingClosureAtFileLocation = *(a1 + 104);
    v17 = *(a1 + 112);
    v18 = v15;
    v19 = v16;
    switch(*(a1 + 120))
    {
      case 1:
        v42 = swift_allocObject();
        *(v42 + 2) = v13;
        *(v42 + 3) = v10;
        v42[4] = 0.0;
        v42[5] = 0.0;
        v42[6] = v18;
        v42[7] = v19;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1D8111BC4;
        *(v43 + 24) = v42;
        v67 = sub_1D8111E64;
        v68 = v43;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D7E6F8AC;
        v66 = &block_descriptor_51_1;
        v44 = _Block_copy(&aBlock);
        v62 = v8;
        sub_1D80686F4(v10, isEscapingClosureAtFileLocation, v17, 1);
        v60 = v17;
        v61 = v13;
        sub_1D80686F4(v10, isEscapingClosureAtFileLocation, v17, 1);

        v11 = [v8 &selRef_gravity + 2];
        _Block_release(v44);
        v45 = swift_isEscapingClosureAtFileLocation();

        if (v45)
        {
          goto LABEL_21;
        }

        v46 = [v11 CGImage];
        if (v46)
        {
          v47 = v46;
          v58 = isEscapingClosureAtFileLocation;
          v59 = v11;
          v48 = swift_allocObject();
          v48[2] = 0.0;
          v48[3] = 0.0;
          v48[4] = v18;
          v48[5] = v19;
          *(v48 + 6) = v47;
          *(v48 + 7) = v61;
          v49 = swift_allocObject();
          *(v49 + 16) = sub_1D8111BD4;
          *(v49 + 24) = v48;
          v67 = sub_1D8111E64;
          v68 = v49;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_1D7E6F8AC;
          v66 = &block_descriptor_61;
          v50 = _Block_copy(&aBlock);
          v11 = v61;
          v61 = v47;

          isEscapingClosureAtFileLocation = v8;
          v51 = [v8 imageWithActions_];
          _Block_release(v50);
          v52 = swift_isEscapingClosureAtFileLocation();

          if (v52)
          {
            goto LABEL_22;
          }

          [v51 size];
          v54 = v53;
          v56 = v55;

          sub_1D8068BB0(v10, v58, v60, 1);
          LOBYTE(aBlock) = 0;
          type metadata accessor for ShineImage();
          swift_allocObject();
          v28 = sub_1D8100D60(v51, &aBlock, 0, v54, v56);

          goto LABEL_12;
        }

        if (qword_1ECA0C3C0 != -1)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      case 2:
        v29 = v10;
        v30 = swift_allocObject();
        v30[3] = 0.0;
        v30[4] = 0.0;
        *(v30 + 2) = v13;
        v30[5] = v18;
        v30[6] = v19;
        *(v30 + 7) = v29;
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = sub_1D8111BB0;
        *(isEscapingClosureAtFileLocation + 24) = v30;
        v67 = sub_1D8111E64;
        v68 = isEscapingClosureAtFileLocation;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D7E6F8AC;
        v66 = &block_descriptor_41_0;
        v31 = _Block_copy(&aBlock);
        v11 = v13;
        v32 = v29;

        v10 = [v8 &selRef_gravity + 2];
        _Block_release(v31);
        LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

        if (v31)
        {
          goto LABEL_19;
        }

        [v10 size];
        v34 = v33;
        v36 = v35;

        LOBYTE(aBlock) = 0;
        type metadata accessor for ShineImage();
        swift_allocObject();
        v28 = sub_1D8100D60(v10, &aBlock, 0, v34, v36);

        v37 = sub_1D8111BB0;
        goto LABEL_15;
      case 3:
        [v13 &_OBJC_LABEL_PROTOCOL___TUBarCompressionAnimating];
        v39 = v38;
        v41 = v40;

        LOBYTE(aBlock) = 0;
        type metadata accessor for ShineImage();
        swift_allocObject();
        v28 = sub_1D8100D60(v13, &aBlock, 0, v39, v41);
        goto LABEL_13;
      default:
        v20 = [objc_opt_self() bezierPathWithRoundedRect:isEscapingClosureAtFileLocation byRoundingCorners:0.0 cornerRadii:{0.0, v15, v16, *&v10, *&v10}];
        v21 = swift_allocObject();
        *(v21 + 2) = v20;
        *(v21 + 3) = v13;
        v21[4] = 0.0;
        v21[5] = 0.0;
        v21[6] = v18;
        v21[7] = v19;
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = sub_1D8111BE4;
        *(isEscapingClosureAtFileLocation + 24) = v21;
        v67 = sub_1D8111E64;
        v68 = isEscapingClosureAtFileLocation;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_1D7E6F8AC;
        v66 = &block_descriptor_71;
        v22 = _Block_copy(&aBlock);
        v11 = v20;
        v23 = v13;

        v10 = [v8 &selRef_gravity + 2];
        _Block_release(v22);
        LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

        if (v22)
        {
          goto LABEL_20;
        }

        [v10 size];
        v25 = v24;
        v27 = v26;

        LOBYTE(aBlock) = 0;
        type metadata accessor for ShineImage();
        swift_allocObject();
        v28 = sub_1D8100D60(v10, &aBlock, 0, v25, v27);
LABEL_12:

LABEL_13:

        break;
    }
  }

  v37 = 0;
LABEL_15:
  sub_1D7E0E10C(v37);
  return v28;
}

uint64_t sub_1D81112B4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a1;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 40) = _Q0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8111C54;
  *(v9 + 24) = v3;
  v13[4] = sub_1D8111E64;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D7E6F8AC;
  v13[3] = &block_descriptor_81;
  v10 = _Block_copy(v13);

  v11 = [v2 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

id sub_1D8111450(double a1, double a2, uint64_t a3, CGFloat *a4, void *a5)
{
  v9 = a1 * 0.5;
  v10 = a4[6];
  v11 = a4[7];
  v12 = a4[8];
  v13 = a4[9];
  v19.origin.x = v10;
  v19.origin.y = v11;
  v19.size.width = v12;
  v19.size.height = v13;
  rect.origin.x = v9 - CGRectGetWidth(v19) * 0.5;
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v14 = a2 * 0.5 - CGRectGetHeight(v20) * 0.5;
  v21.origin.x = v10;
  v21.origin.y = v11;
  v21.size.width = v12;
  v21.size.height = v13;
  Width = CGRectGetWidth(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = v12;
  v22.size.height = v13;
  Height = CGRectGetHeight(v22);
  CGAffineTransformMakeTranslation(&rect.origin.y, -a4[10], -a4[11]);
  v23.origin.x = rect.origin.x;
  v23.origin.y = v14;
  v23.size.width = Width;
  v23.size.height = Height;
  v24 = CGRectApplyAffineTransform(v23, &rect.origin.y);
  return [a5 drawInRect_];
}

id sub_1D8111580(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v14 = [a1 CGContext];
  [a2 size];
  CGContextTranslateCTM(v14, 0.0, v15);

  v16 = [a1 CGContext];
  CGContextScaleCTM(v16, 1.0, -1.0);

  return [a3 drawWithRect:33 options:0 context:{a4, a5, a6, a7}];
}

id sub_1D811166C(void *a1, CGImage *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = [objc_opt_self() whiteColor];
  [v14 setFill];

  v15 = [a1 CGContext];
  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  CGContextClipToMask(v15, v18, a2);

  return [a3 drawInRect_];
}

id sub_1D8111754(int a1, id a2, double a3, double a4, double a5, double a6, void *a7)
{
  [a2 drawInRect_];

  return [a7 drawInRect:22 blendMode:a3 alpha:{a4, a5, a6, 1.0}];
}

void sub_1D81117D8(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [a1 CGContext];
  v30 = *(a2 + 40);
  v13 = [v30 CGColor];
  CGContextSetFillColorWithColor(v12, v13);

  v14 = [a1 CGContext];
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGContextFillRect(v14, v33);

  v15 = *(*(a2 + 32) + 72);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_1D8190DB4();
    v17 = v16 - 1;
    v18 = 32;
    v29 = v15;
    while (1)
    {
      memcpy(__dst, (v15 + v18), 0x70uLL);
      if ((SLOBYTE(__dst[9]) & 0x80000000) == 0)
      {
        v19 = __dst[10];
        if (__dst[10])
        {
          v20 = __dst[12];
          v21 = __dst[0];
          sub_1D8111C84(__dst, v31);
          sub_1D80698B4(__dst, v31);
          v22 = v19(v30);
          v23 = [a1 CGContext];
          CGContextSetBlendMode(v23, v22);

          v24 = v20(v30);
          v25 = [a1 CGContext];
          CGContextSetAlpha(v25, v24);

          v26 = [a1 CGContext];
          v27 = [v21 CGColor];
          CGContextSetFillColorWithColor(v26, v27);

          v15 = v29;
          v28 = [a1 CGContext];
          v34.origin.x = a3;
          v34.origin.y = a4;
          v34.size.width = a5;
          v34.size.height = a6;
          CGContextFillRect(v28, v34);

          sub_1D8111CE0(__dst);
          sub_1D8111D34(__dst);
        }
      }

      if (!v17)
      {
        break;
      }

      --v17;
      v18 += 112;
    }
  }
}

uint64_t ShineImageFactory.deinit()
{

  return v0;
}

uint64_t ShineImageFactory.__deallocating_deinit()
{
  ShineImageFactory.deinit();
  OUTLINED_FUNCTION_1_63();

  return swift_deallocClassInstance();
}

void sub_1D8111AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D8111B5C(unint64_t result, unint64_t a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_1D7F387B0(result);

    return sub_1D7F387B0(a2);
  }

  return result;
}

id sub_1D8111BE4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  [*(v0 + 16) addClip];

  return [v1 drawInRect_];
}

uint64_t objectdestroy_9Tm_1()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D8111E94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v22 = sub_1D818E994();
  v23 = *(v22 - 8);
  v73 = v22;
  v74 = a2;
  (*(v23 + 16))(a6, a2);
  v24 = type metadata accessor for SwipeActionState(0);
  *(a6 + v24[14]) = a4;
  sub_1D8100C28(a5, a6 + v24[11]);
  *(a6 + v24[15]) = a11;
  v25 = (a6 + v24[16]);
  *v25 = a7;
  v25[1] = a8;
  v25[2] = a9;
  v25[3] = a10;
  v72 = a10;
  *(a6 + v24[13]) = [a1 allowsSelection];
  v26 = [a3 contentView];
  [v26 center];
  v28 = v27;

  *(a6 + v24[17]) = v28;
  v29 = a3;
  [v29 bounds];
  v30 = CGRectGetWidth(v75) * 0.5;
  *(a6 + v24[7]) = v30;
  v31 = a1;
  [v31 bounds];
  Width = CGRectGetWidth(v76);
  OUTLINED_FUNCTION_0_215();
  CGRectGetHeight(v77);
  v33 = sub_1D8112324(a5);
  OUTLINED_FUNCTION_0_215();
  CGRectGetHeight(v78);
  v34 = sub_1D81123E8(a5);
  v35 = objc_allocWithZone(type metadata accessor for SwipeActionContainerView());
  v36 = sub_1D8190DB4();
  v37 = sub_1D8059924(v36, a11 < 0.0, v33, v34);
  *(a6 + v24[10]) = v37;
  v38 = v37;
  [v31 layoutMargins];
  if (a11 >= 0.0)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0.0;
  }

  if (a11 >= 0.0)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v40;
  }

  v43 = v38;
  [v43 setLayoutMargins_];
  OUTLINED_FUNCTION_0_215();
  v44 = CGRectGetHeight(v79) - a7 - a9;
  OUTLINED_FUNCTION_0_215();
  [v43 setFrame_];

  sub_1D805958C();
  v46 = v45;

  OUTLINED_FUNCTION_0_215();
  v51 = Width - v46;
  if (a11 >= 0.0)
  {
    v58 = fabs(v51 + CGRectGetMinX(*&v47) - Width + a8);
    OUTLINED_FUNCTION_0_215();
    v59 = CGRectGetWidth(v84) * 0.4;
    *(a6 + v24[8]) = v30;
    if (v58 <= v59)
    {
      v58 = v59;
    }

    *(a6 + v24[9]) = v30 + v58;
    OUTLINED_FUNCTION_0_215();
    v60 = v58 + CGRectGetMinX(v85);
    [v43 frame];
    MinX = CGRectGetMinX(v86);
    sub_1D805958C();
    v57 = v60 - (MinX + v62);
  }

  else
  {
    v52 = vabdd_f64(CGRectGetMaxX(*&v47) - v72, v51);
    OUTLINED_FUNCTION_0_215();
    v53 = CGRectGetWidth(v81) * 0.4;
    if (v52 <= v53)
    {
      v52 = v53;
    }

    *(a6 + v24[8]) = v30 - v52;
    *(a6 + v24[9]) = v30;
    [v43 frame];
    MaxX = CGRectGetMaxX(v82);
    sub_1D805958C();
    v56 = MaxX - v55;
    OUTLINED_FUNCTION_0_215();
    v57 = v56 - (CGRectGetMaxX(v83) - v52);
  }

  *&v43[OBJC_IVAR____TtC5TeaUI24SwipeActionContainerView_autoActionThreshold] = v57 + 30.0;
  v63 = [v29 layer];

  [v63 zPosition];
  v65 = v64;

  *(a6 + v24[12]) = v65;
  sub_1D81124B4(v29, v31);
  v67 = v66;
  sub_1D81126CC(v66, v29, v31, a11);
  *(a6 + v24[5]) = v68;
  sub_1D8112BE4(v67, v29, v31, a11);
  v70 = v69;

  sub_1D8008794(a5);
  result = (*(v23 + 8))(v74, v73);
  *(a6 + v24[6]) = v70;
  return result;
}

double sub_1D8112324(uint64_t a1)
{
  sub_1D8113160(a1, v9);
  v1 = v10;
  if (!v10)
  {
    sub_1D8113250(v9);
    return 58.0;
  }

  v2 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v2 + 24))(v7, v1, v2);
  v3 = *v7;
  v4 = v7[1];
  LODWORD(v2) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (v2 != 1)
  {
    result = v3;
    v5 = 58.0;
    if (v3 <= 58.0)
    {
      return result;
    }

    return v5;
  }

  if (*&v3 ^ 1 | v4)
  {
    return 58.0;
  }

  return 44.0;
}

double sub_1D81123E8(uint64_t a1)
{
  sub_1D8113160(a1, v8);
  v1 = v9;
  if (!v9)
  {
    sub_1D8113250(v8);
    return 197.0;
  }

  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 24))(v6, v1, v2);
  v4 = v6[0];
  v3 = *&v6[1];
  LODWORD(v2) = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  if (v2 == 1)
  {
    if (!(v4 ^ 1 | *&v3))
    {
      return 148.0;
    }

    return 197.0;
  }

  result = v3;
  if (v3 > 197.0)
  {
    return 197.0;
  }

  return result;
}

void sub_1D81124B4(void *a1, void *a2)
{
  [a1 frame];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MinY = CGRectGetMinY(v17);
  [a2 frame];
  v8 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v9 = CGRectGetHeight(v19);
  v10 = [a2 visibleCells];
  sub_1D7E0A1A8(0, &qword_1EDBB3110);
  v11 = sub_1D8191314();

  v16 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D7E36AB8(v11);
  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA714420](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if ((sub_1D8191CC4() & 1) == 0 && ([v15 frame], v21.origin.x = 0.0, v21.origin.y = MinY, v21.size.width = v8, v21.size.height = v9, CGRectIntersectsRect(v20, v21)))
    {
      MEMORY[0x1DA713500]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      ++v13;
    }

    else
    {

      ++v13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1D81126CC(uint64_t a1, void *a2, void *a3, double a4)
{
  v66 = a3;
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v11;
  v12 = type metadata accessor for SwipeActionState.NeighborData(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v56 - v15;
  v69 = MEMORY[0x1E69E7CC0];
  v16 = sub_1D7E36AB8(a1);
  for (i = 0; v16 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA714420](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v18 = *(a1 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (a4 >= 0.0)
    {
      if (a4 > 0.0)
      {
        v26 = [v18 layer];
        [v26 position];
        v28 = v27;

        v29 = [a2 layer];
        [v29 position];
        v31 = v30;

        if (v31 < v28)
        {
LABEL_12:
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
          continue;
        }
      }
    }

    else
    {
      v20 = [v18 layer];
      [v20 position];
      v22 = v21;

      v23 = [a2 layer];
      [v23 position];
      v25 = v24;

      if (v22 < v25)
      {
        goto LABEL_12;
      }
    }
  }

  v32 = v69;
  v33 = sub_1D7E36AB8(v69);
  v34 = 0;
  v35 = v66;
  v58 = (v65 + 2);
  v59 = (v65 + 4);
  ++v65;
  v36 = MEMORY[0x1E69E7CC0];
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1DA714420](v34, v32);
    }

    else
    {
      if (v34 >= *(v32 + 16))
      {
        goto LABEL_34;
      }

      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_33;
    }

    v40 = [v35 indexPathForCell_];
    if (v40)
    {
      v41 = v40;
      v42 = v63;
      sub_1D818E924();

      v43 = *v59;
      v57 = v36;
      v44 = v62;
      v45 = v64;
      v43(v62, v42, v64);
      (*v58)(v68, v44, v45);
      v46 = [v38 layer];
      [v46 zPosition];
      v48 = v47;

      v49 = v44;
      v36 = v57;
      (*v65)(v49, v45);
      v51 = v67;
      v50 = v68;
      *&v68[*(v61 + 20)] = v48;
      sub_1D81130FC(v50, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE56E4(0, *(v36 + 16) + 1, 1, v36);
        v36 = v54;
      }

      v53 = *(v36 + 16);
      v52 = *(v36 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1D7EE56E4(v52 > 1, v53 + 1, 1, v36);
        v36 = v55;
      }

      *(v36 + 16) = v53 + 1;
      sub_1D81130FC(v67, v36 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v53);
      v34 = v39;
    }

    else
    {

      ++v34;
    }
  }
}

void sub_1D8112BE4(uint64_t a1, void *a2, void *a3, double a4)
{
  v66 = a3;
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v11;
  v12 = type metadata accessor for SwipeActionState.NeighborData(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v56 - v15;
  v69 = MEMORY[0x1E69E7CC0];
  v16 = sub_1D7E36AB8(a1);
  for (i = 0; v16 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA714420](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v18 = *(a1 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (a4 <= 0.0)
    {
      if (a4 < 0.0)
      {
        v26 = [v18 layer];
        [v26 position];
        v28 = v27;

        v29 = [a2 layer];
        [v29 position];
        v31 = v30;

        if (v31 < v28)
        {
LABEL_12:
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
          continue;
        }
      }
    }

    else
    {
      v20 = [v18 layer];
      [v20 position];
      v22 = v21;

      v23 = [a2 layer];
      [v23 position];
      v25 = v24;

      if (v22 < v25)
      {
        goto LABEL_12;
      }
    }
  }

  v32 = v69;
  v33 = sub_1D7E36AB8(v69);
  v34 = 0;
  v35 = v66;
  v58 = (v65 + 2);
  v59 = (v65 + 4);
  ++v65;
  v36 = MEMORY[0x1E69E7CC0];
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1DA714420](v34, v32);
    }

    else
    {
      if (v34 >= *(v32 + 16))
      {
        goto LABEL_34;
      }

      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_33;
    }

    v40 = [v35 indexPathForCell_];
    if (v40)
    {
      v41 = v40;
      v42 = v63;
      sub_1D818E924();

      v43 = *v59;
      v57 = v36;
      v44 = v62;
      v45 = v64;
      v43(v62, v42, v64);
      (*v58)(v68, v44, v45);
      v46 = [v38 layer];
      [v46 zPosition];
      v48 = v47;

      v49 = v44;
      v36 = v57;
      (*v65)(v49, v45);
      v51 = v67;
      v50 = v68;
      *&v68[*(v61 + 20)] = v48;
      sub_1D81130FC(v50, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE56E4(0, *(v36 + 16) + 1, 1, v36);
        v36 = v54;
      }

      v53 = *(v36 + 16);
      v52 = *(v36 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1D7EE56E4(v52 > 1, v53 + 1, 1, v36);
        v36 = v55;
      }

      *(v36 + 16) = v53 + 1;
      sub_1D81130FC(v67, v36 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v53);
      v34 = v39;
    }

    else
    {

      ++v34;
    }
  }
}

uint64_t sub_1D81130FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwipeActionState.NeighborData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8113160(uint64_t a1, uint64_t a2)
{
  sub_1D7E2E314(0, &unk_1ECA0F3A0, sub_1D81131F4, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D81131F4()
{
  result = qword_1EDBB0898;
  if (!qword_1EDBB0898)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB0898);
  }

  return result;
}

uint64_t sub_1D8113250(uint64_t a1)
{
  sub_1D7E2E314(0, &unk_1ECA0F3A0, sub_1D81131F4, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat SectionFooterViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, CGFloat *a3@<X8>)
{
  v71 = a3;
  v82 = sub_1D818E7D4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v74 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v70 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[13];
  v72 = a1[12];
  v76 = v16;
  v17 = *(a2 + 1);
  v18 = *(a2 + 8);
  v19 = *(a2 + 56);
  v20 = *(a2 + 88);
  v79 = *(a2 + 104);
  v21 = *(a2 + 168);
  v22 = *(a2 + 184);
  v75 = *(a2 + 232);
  v23 = *(a2 + 376);
  v24 = *(a2 + 392);
  v86 = *(a2 + 568);
  v84 = v20;
  v85 = v19;
  if (v17 == 1)
  {
    v25 = *&v19;
  }

  else
  {
    v25 = *&v20;
  }

  v73 = v17;
  v87 = v18;
  if (!v17)
  {
    v25 = *&v18;
  }

  v26 = *(a2 + 576);
  v77 = v23;
  v78 = v21;
  v27 = v25 - (v23 + v24) - (v21 + v22);
  __swift_project_boxed_opaque_existential_1((*&v83 + 16), *(*&v83 + 40));
  v94[0] = v11;
  v94[1] = v12;
  v95 = v13;
  v96 = v70;
  v97 = v14;
  v98 = v15;
  v28 = v74;
  v88 = v74;
  v89 = v6;
  v90 = v7;
  v91 = v8;
  v92 = v10;
  v93 = v9;
  v29 = v76;
  v70 = v76;
  sub_1D7FF1208(v28, v6, v7);
  sub_1D8190DB4();
  v30 = v13;
  v31 = v75;
  v32 = sub_1D7F84D08(v94, &v88, v72, v29, v75);
  sub_1D7F855E8(v88, v89, v90);

  v83 = v27;
  [v32 boundingRectWithSize:33 options:0 context:{v27, 1.79769313e308}];
  v37 = v35;
  v38 = v36;
  if (v29)
  {
    v39 = v33;
    v40 = v34;
    Width = CGRectGetWidth(*&v33);
    v42 = v70;
    [v70 size];
    v44 = Width + v43;
    v99.origin.x = v39;
    v99.origin.y = v40;
    v99.size.width = v37;
    v99.size.height = v38;
    Height = CGRectGetHeight(v99);
    [v42 size];
    v47 = v46;

    v38 = Height + v47;
    v37 = v44;
  }

  v48 = v73;
  v49 = *&v84;
  if (v73 == 1)
  {
    v49 = *&v85;
  }

  if (!v73)
  {
    v49 = *&v87;
  }

  v100.origin.x = v49 - v24 - v22 - v37;
  v100.origin.y = v86 + v26;
  v100.size.width = v37;
  v100.size.height = v38;
  v101 = CGRectIntegral(v100);
  x = v101.origin.x;
  y = v101.origin.y;
  v52 = v101.size.width;
  v53 = v101.size.height;
  if (v48)
  {
    v87 = v85;
    if (v48 != 1)
    {
      v87 = v84;
    }
  }

  v54 = v86;
  v102.size.height = v26 + v26 + v86 + v38;
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  *&v102.size.width = v87;
  v103 = CGRectIntegral(v102);
  *&v85 = v103.origin.x;
  v55 = v103.origin.y;
  v56 = v103.size.width;
  *&v84 = v103.size.height;
  v57 = v78 + v77;
  v79 = 1.0 / v79;
  v58 = v80;
  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  inited = swift_initStackObject();
  v60 = v82;
  *(inited + 40) = v82;
  *(inited + 48) = sub_1D7E4E9A0();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 16));
  v62 = v81;
  (*(v81 + 16))(boxed_opaque_existential_0, v58, v60);
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = v87;
  (*(v62 + 8))(v58, v60);
  LOBYTE(v94[0]) = 0;
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = v52;
  v104.size.height = v53;
  v105 = RTLAdjuster.frame(_:alignment:)(v104, v94);
  v63 = v105.origin.x;
  v64 = v105.origin.y;
  v65 = v105.size.width;
  v66 = v105.size.height;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 16);

  v67 = v71;
  *v71 = v85;
  v67[1] = v55;
  v68 = v84;
  v67[2] = v56;
  *(v67 + 3) = v68;
  v67[4] = v57;
  v67[5] = v54;
  result = v79;
  v67[6] = v83;
  v67[7] = result;
  v67[8] = v63;
  v67[9] = v64;
  v67[10] = v65;
  v67[11] = v66;
  *(v67 + 12) = v31;
  return result;
}

uint64_t SectionFooterViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D81138E8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_124();
  BlueprintLayout.subscript.getter(a1, a2);
  (*(v7 + 32))(v10, v2, v5);
  sub_1D8113DA4();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v16, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v13 + 8))(v16, v12, v13);
    v14 = LOBYTE(v16[0]) ^ 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1D8113E00(v16);
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1D8113AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BlueprintLayoutSection();
  swift_getWitnessTable();
  result = sub_1D8191834();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t sub_1D8113B94()
{
  swift_getWitnessTable();
  sub_1D81911F4();
  return v1;
}

uint64_t sub_1D8113C1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for BlueprintLayoutSection();
  v7 = *(a2 + *(result + 56) + 8);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

Swift::Int sub_1D8113CCC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = BlueprintLayout.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8113CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D8113D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

unint64_t sub_1D8113DA4()
{
  result = qword_1EDBBAAA8[0];
  if (!qword_1EDBBAAA8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBBAAA8);
  }

  return result;
}

uint64_t sub_1D8113E00(uint64_t a1)
{
  sub_1D8113E5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8113E5C()
{
  if (!qword_1EDBBAAA0)
  {
    sub_1D8113DA4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBAAA0);
    }
  }
}

void LayeredViewOptions.init(nativeScreenSize:boundingSize:scale:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

Swift::Bool __swiftcall BlueprintViewItemVisibility.isVisible(frame:in:)(__C::CGRect frame, __C::CGRect in)
{
  switch(*v2)
  {
    case 1:
      OUTLINED_FUNCTION_0_216();
      OUTLINED_FUNCTION_2_140();
      result = CGRectContainsRect(v9, v13);
      break;
    case 2:
      result = in.origin.x <= frame.origin.x && in.origin.y <= frame.origin.y;
      break;
    case 3:
      v7.origin.x = OUTLINED_FUNCTION_0_216();
      MaxX = CGRectGetMaxX(v7);
      v8.origin.x = OUTLINED_FUNCTION_80();
      if (CGRectGetMaxX(v8) <= MaxX)
      {
        v10.origin.x = OUTLINED_FUNCTION_0_216();
        MaxY = CGRectGetMaxY(v10);
        v11.origin.x = OUTLINED_FUNCTION_80();
        result = CGRectGetMaxY(v11) <= MaxY;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      OUTLINED_FUNCTION_0_216();
      OUTLINED_FUNCTION_2_140();
      result = CGRectIntersectsRect(v6, v12);
      break;
  }

  return result;
}

uint64_t BlueprintViewItemVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D81140C0()
{
  result = qword_1ECA11498;
  if (!qword_1ECA11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11498);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintViewItemVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D81141F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
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

uint64_t sub_1D8114230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

BOOL static BlueprintLayoutCollectionRubberbandTrait.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void BlueprintLayoutCollectionRubberbandTrait.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_104();
  v16 = v15;
  v28 = v17;
  OUTLINED_FUNCTION_2_141();
  sub_1D8114F0C(0, v18, v19, &type metadata for BlueprintLayoutCollectionRubberbandTrait.CodingKeys, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1D8114994();
  OUTLINED_FUNCTION_5_79();
  sub_1D81928A4();
  if (!v14)
  {
    sub_1D81149E8();
    OUTLINED_FUNCTION_6_87();
    if (a14)
    {
      if (a14 == 1)
      {
        sub_1D8114A3C();
        OUTLINED_FUNCTION_6_87();
        v21 = OUTLINED_FUNCTION_3_125();
        v22(v21);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_3_125();
        v27(v26);
        a12 = 2;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_3_125();
      v25(v24);
      a12 = 3;
    }

    *v28 = a12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_105();
}

void BlueprintLayoutCollectionRubberbandTrait.encode(to:)()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  OUTLINED_FUNCTION_2_141();
  sub_1D8114F0C(0, v4, v5, &type metadata for BlueprintLayoutCollectionRubberbandTrait.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v14 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  v12 = *v0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D8114994();
  OUTLINED_FUNCTION_5_79();
  sub_1D81928C4();
  if (v12 == 2 || v12 == 3)
  {
    sub_1D8114A90();
LABEL_7:
    sub_1D8192574();
    goto LABEL_8;
  }

  sub_1D8114A90();
  sub_1D8192574();
  if (!v1)
  {
    sub_1D8114AE4();
    goto LABEL_7;
  }

LABEL_8:
  (*(v14 + 8))(v11, v7);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1D81146C0()
{
  v0 = sub_1D81924B4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D811470C(char a1)
{
  if (!a1)
  {
    return 0x6764456F546E6970;
  }

  if (a1 == 1)
  {
    return 0x726F66736E617274;
  }

  return 1701736302;
}

uint64_t sub_1D811476C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8114FD8();
  *a1 = result;
  return result;
}

uint64_t sub_1D81147A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8114FD8();
  *a1 = result;
  return result;
}

uint64_t sub_1D81147D4(uint64_t a1)
{
  v2 = sub_1D8114994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8114810(uint64_t a1)
{
  v2 = sub_1D8114994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8114870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D81146C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D81148A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D811470C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D8114994()
{
  result = qword_1ECA114A8;
  if (!qword_1ECA114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114A8);
  }

  return result;
}

unint64_t sub_1D81149E8()
{
  result = qword_1ECA114B0;
  if (!qword_1ECA114B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114B0);
  }

  return result;
}

unint64_t sub_1D8114A3C()
{
  result = qword_1ECA114B8;
  if (!qword_1ECA114B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114B8);
  }

  return result;
}

unint64_t sub_1D8114A90()
{
  result = qword_1ECA114C8;
  if (!qword_1ECA114C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114C8);
  }

  return result;
}

unint64_t sub_1D8114AE4()
{
  result = qword_1ECA114D0;
  if (!qword_1ECA114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114D0);
  }

  return result;
}

void BlueprintLayoutCollectionRubberbandTraitTransform.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_104();
  v15 = v14;
  v28 = v16;
  OUTLINED_FUNCTION_1_153();
  sub_1D8114F0C(0, v17, v18, &type metadata for BlueprintLayoutCollectionRubberbandTraitTransform.CodingKeys, MEMORY[0x1E69E6F48]);
  v20 = v19;
  OUTLINED_FUNCTION_9();
  v22 = v21;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v27 - v24;
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1D8114CF8();
  OUTLINED_FUNCTION_5_79();
  sub_1D81928A4();
  if (!v13)
  {
    v26 = v28;
    sub_1D8114D4C();
    sub_1D8192524();
    (*(v22 + 8))(v25, v20);
    *v26 = a13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_105();
}

unint64_t sub_1D8114CF8()
{
  result = qword_1ECA114E0;
  if (!qword_1ECA114E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114E0);
  }

  return result;
}

unint64_t sub_1D8114D4C()
{
  result = qword_1ECA114E8;
  if (!qword_1ECA114E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114E8);
  }

  return result;
}

void BlueprintLayoutCollectionRubberbandTraitTransform.encode(to:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  OUTLINED_FUNCTION_1_153();
  sub_1D8114F0C(0, v2, v3, &type metadata for BlueprintLayoutCollectionRubberbandTraitTransform.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D8114CF8();
  OUTLINED_FUNCTION_5_79();
  sub_1D81928C4();
  sub_1D8114F74();
  sub_1D8192574();
  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_105();
}

void sub_1D8114F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D8114F74()
{
  result = qword_1ECA114F8;
  if (!qword_1ECA114F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA114F8);
  }

  return result;
}

uint64_t sub_1D8114FD8()
{
  v0 = sub_1D81924B4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D811505C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D7ECD9A0();
  *a1 = result;
  return result;
}

uint64_t sub_1D8115090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8114FC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D81150BC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D7ECD9A0();
  *a1 = result;
  return result;
}

uint64_t sub_1D81150E8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8115114(uint64_t a1)
{
  v2 = sub_1D8114CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8115150(uint64_t a1)
{
  v2 = sub_1D8114CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D81151B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8114FD8();
  *a1 = result;
  return result;
}

uint64_t sub_1D81151E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8115028();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BlueprintLayoutCollectionRubberbandTraitTransform.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8115344()
{
  result = qword_1ECA11500;
  if (!qword_1ECA11500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11500);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for BlueprintLayoutCollectionRubberbandTrait(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionRubberbandTrait(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8115550(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D8115564(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionRubberbandTraitTransform.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionRubberbandTrait.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1D811571C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D81157FC()
{
  result = qword_1ECA11508;
  if (!qword_1ECA11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11508);
  }

  return result;
}

unint64_t sub_1D8115854()
{
  result = qword_1ECA11510;
  if (!qword_1ECA11510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11510);
  }

  return result;
}

unint64_t sub_1D81158AC()
{
  result = qword_1ECA11518;
  if (!qword_1ECA11518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11518);
  }

  return result;
}

unint64_t sub_1D8115904()
{
  result = qword_1ECA11520;
  if (!qword_1ECA11520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11520);
  }

  return result;
}

unint64_t sub_1D811595C()
{
  result = qword_1ECA11528;
  if (!qword_1ECA11528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11528);
  }

  return result;
}

unint64_t sub_1D81159B4()
{
  result = qword_1ECA11530;
  if (!qword_1ECA11530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11530);
  }

  return result;
}

unint64_t sub_1D8115A0C()
{
  result = qword_1ECA11538;
  if (!qword_1ECA11538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11538);
  }

  return result;
}

unint64_t sub_1D8115A64()
{
  result = qword_1ECA11540;
  if (!qword_1ECA11540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11540);
  }

  return result;
}

unint64_t sub_1D8115AB8()
{
  result = qword_1ECA11548;
  if (!qword_1ECA11548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11548);
  }

  return result;
}

unint64_t sub_1D8115B0C()
{
  result = qword_1ECA11550;
  if (!qword_1ECA11550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11550);
  }

  return result;
}

void sub_1D8115B90(void *a1)
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v2 = a1;
  }

  else
  {
    v3 = [a1 childViewControllers];
    sub_1D7E194D0();
    v4 = sub_1D8191314();

    v5 = sub_1D7E36AB8(v4);
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
LABEL_10:

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = sub_1D8115B90(v7);

      ++v6;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1D8115CD0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8115D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI21SwipeActionAppearance_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t DynamicValue.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    v3 += *(a2 + 28);
  }

  v5 = *(*(*(a2 + 16) - 8) + 16);

  return v5(a3, v3);
}

uint64_t DynamicValue.init(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for DynamicValue() + 28);

  return v9(v7, a2, a3);
}

uint64_t DynamicValue.value(forColor:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  [a1 ts_luminance];
  if (v6 <= 0.7)
  {
    v3 += *(a2 + 28);
  }

  v7 = *(*(*(a2 + 16) - 8) + 16);

  return v7(a3, v3);
}

uint64_t DynamicValue.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(a2 - 8);
  (*(v10 + 16))(a3, a1, a2);
  v6 = type metadata accessor for DynamicValue();
  v7 = *(v10 + 32);
  v8 = a3 + *(v6 + 28);

  return v7(v8, a1, a2);
}

id DynamicValue<A>.value(forDynamicColor:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = a1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7 = v3;
  v8 = v4;
  v9 = a1;
  return sub_1D80C2E50(sub_1D8116184, v5);
}

id sub_1D81160FC(uint64_t a1, void *a2, void *a3, id a4)
{
  v6 = [a4 resolvedColorWithTraitCollection_];
  [v6 ts_luminance];
  v8 = v7;

  if (v8 <= 0.7)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  return v9;
}

uint64_t static DynamicValue<A>.== infix(_:_:)()
{
  if ((sub_1D8190ED4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DynamicValue();
  return sub_1D8190ED4() & 1;
}

uint64_t sub_1D8116208()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8116278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1D81163C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t PageBlueprint.init(pages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D818F394();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PageBlueprint.page(for:)()
{
  OUTLINED_FUNCTION_0_217();
  sub_1D818F394();

  return sub_1D818F3A4();
}

uint64_t PageBlueprint.page(before:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_0_217();
  sub_1D818F394();
  OUTLINED_FUNCTION_1_154();
  OUTLINED_FUNCTION_2_142();
  sub_1D81917D4();
  v4 = 1;
  if ((v7 & 1) == 0 && v6 >= 1)
  {
    sub_1D818F3B4();
    v4 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v3);
}

uint64_t PageBlueprint.page(after:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_0_217();
  sub_1D818F394();
  OUTLINED_FUNCTION_1_154();
  OUTLINED_FUNCTION_2_142();
  result = sub_1D81917D4();
  if (v7 == 1)
  {
    goto LABEL_5;
  }

  if (!__OFADD__(v6, 1))
  {
    if (v6 + 1 < sub_1D8191834())
    {
      sub_1D818F3B4();
      v5 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v5, 1, v3);
    }

LABEL_5:
    v5 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v5, 1, v3);
  }

  __break(1u);
  return result;
}

uint64_t PageBlueprint.pagesMatching(marker:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a2, v5);
  v10 = *(a2 + 16);
  v11 = a1;
  swift_getWitnessTable();
  return sub_1D81911D4();
}

uint64_t sub_1D81169E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D818EF94() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D8192634();
  }

  return v6 & 1;
}

uint64_t sub_1D8116AD8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_217();
  v2 = sub_1D818F394();

  return a2(v2);
}

uint64_t PageBlueprint.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = PageBlueprint.startIndex.getter(a2);
  result = PageBlueprint.endIndex.getter(a2);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 > a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_217();
  sub_1D818F394();

  return sub_1D818F3B4();
}

Swift::Int __swiftcall PageBlueprint.index(after:)(Swift::Int after)
{
  sub_1D818F394();

  return sub_1D818F2F4();
}

uint64_t sub_1D8116C08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PageBlueprint.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8116C30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PageBlueprint.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1D8116C58(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D8116CCC(v6, *a2, a3);
  return sub_1D7E46A38;
}

void (*sub_1D8116CCC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  PageBlueprint.subscript.getter(a2, a3);
  return sub_1D7E96864;
}

Swift::Int sub_1D8116D88@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = PageBlueprint.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1D8116DB4(Swift::Int *a1)
{
  result = PageBlueprint.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8116DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1D8192344() + 36);
  v7 = PageBlueprint.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D8116ECC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D8116F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1D8116F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a4 + 40))(a3, a4, v8);
  swift_getAssociatedConformanceWitness();
  v11 = sub_1D8190ED4();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t RTLAdjuster.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8117218(uint64_t a1, uint64_t (*a2)(double))
{
  OUTLINED_FUNCTION_155();
  v4 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  (*(v8 + 16))(v7 - v6);
  v9 = OUTLINED_FUNCTION_80();
  v10 = a2(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v10;
}

CGPoint __swiftcall RTLAdjuster.horizontalContentOffset(contentSize:contentInset:boundingSize:)(CGSize contentSize, UIEdgeInsets contentInset, CGSize boundingSize)
{
  width = boundingSize.width;
  right = contentInset.right;
  left = contentInset.left;
  top = contentInset.top;
  v7 = contentSize.width;
  if (OUTLINED_FUNCTION_5_80())
  {
    v8 = v7 - width + right;
    top = 0.0;
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = -left;
  }

  v9 = top;
  result.y = v9;
  result.x = v8;
  return result;
}

uint64_t sub_1D81173B0(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  v19 = sub_1D81174F0(v17, v18, a7, a8, a2, a3, a4, a5);
  (*(v15 + 8))(a1, a7);
  return v19;
}

uint64_t sub_1D81174F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 16));
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = a7;
  *(a2 + 80) = a8;
  return a2;
}

unint64_t sub_1D811758C()
{
  result = qword_1ECA11558;
  if (!qword_1ECA11558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTLAdjuster.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id BlankReusableView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id BlankReusableView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id BlankReusableView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TableViewHeaderFooterView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D8190EE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

char *TableViewHeaderFooterView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v2[qword_1EDBB1EE0] = OUTLINED_FUNCTION_3_126(v5);
  v6 = objc_allocWithZone(type metadata accessor for SeparatorView());
  *&v2[qword_1EDBB1ED8] = OUTLINED_FUNCTION_3_126(v6);
  if (a2)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v2;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_initWithReuseIdentifier_, v7);

  v9 = v8;
  v10 = [v9 contentView];
  [v10 addSubview_];

  v11 = [v9 contentView];
  [v11 addSubview_];

  return v9;
}

char *sub_1D8117A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = sub_1D8190F14();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return TableViewHeaderFooterView.init(reuseIdentifier:)(v3, v4);
}

id TableViewHeaderFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall TableViewHeaderFooterView.layoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_layoutSubviews);
  v2 = [v0 contentView];
  v3 = [v2 layoutMarginsGuide];

  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;

  v8 = *&v1[qword_1EDBB1EE0];
  [v1 frame];
  [v8 setFrame_];
  v9 = *&v1[qword_1EDBB1ED8];
  v10 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  swift_beginAccess();
  if (*(v9 + v10))
  {
    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v1 ts_cellSeparatorInsets];
    OUTLINED_FUNCTION_1_155();
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v37 = SeparatorView.makeFrame(in:insets:anchor:)(v36, v42, v19);
    [v9 setFrame_];
  }

  else
  {
    v20 = [v1 contentView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [v1 ts_cellSeparatorInsets];
    OUTLINED_FUNCTION_1_155();
    v38.origin.x = v22;
    v38.origin.y = v24;
    v38.size.width = v26;
    v38.size.height = v28;
    v39 = SeparatorView.makeFrame(in:insets:anchor:)(v38, v43, v29);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    if ([v1 ts_safeAreaWidthExceedsReadableWidth])
    {
      [v8 frame];
      width = CGRectGetWidth(v40);
    }

    [v1 safeAreaInsets];
    if (v34 > 0.0)
    {
      [v8 frame];
      width = CGRectGetWidth(v41);
      x = v5;
    }

    [v9 setFrame_];
  }
}

void sub_1D8117D74(void *a1)
{
  v1 = a1;
  TableViewHeaderFooterView.layoutSubviews()();
}

Swift::Void __swiftcall TableViewHeaderFooterView.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  (*(*((v3 & v2) + 0x58) + 16))(*((v3 & v2) + 0x50));
}

void sub_1D8117E64(void *a1)
{
  v1 = a1;
  TableViewHeaderFooterView.prepareForReuse()();
}

void sub_1D8117EB0(uint64_t a1)
{
  v2 = *(a1 + qword_1EDBB1ED8);
}

uint64_t sub_1D8118284()
{
  v1 = *v0;
  result = 0;
  switch(*(v0 + 48))
  {
    case 1:
    case 3:
    case 6:
      sub_1D8190DB4();
      result = v1;
      break;
    case 7:
      if (v1)
      {
        result = 5457241;
      }

      else
      {
        result = 20302;
      }

      break;
    case 9:
      v4 = *(v0 + 32);
      v3 = *(v0 + 40);
      v5 = *(v0 + 16);
      sub_1D8190DB4();
      MEMORY[0x1DA713260](10272, 0xE200000000000000);
      MEMORY[0x1DA713260](v4, v3);
      MEMORY[0x1DA713260](41, 0xE100000000000000);
      result = v5;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D81183B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D81184A4;

  return v5();
}

uint64_t sub_1D81184A4()
{
  OUTLINED_FUNCTION_9_14();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1D8118630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a5 = a3;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a4;
}

uint64_t sub_1D81186A8(uint64_t a1, uint64_t a2)
{
  sub_1D7F1D91C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_1D818FAA4();
}

uint64_t sub_1D8118764(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF3 && *(a1 + 49))
    {
      v2 = *a1 + 242;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 0xD)
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

uint64_t sub_1D81187A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8118810()
{
  OUTLINED_FUNCTION_9_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_4(v1);

  return v4(v3);
}

uint64_t sub_1D81188A4()
{
  OUTLINED_FUNCTION_9_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_4(v1);

  return v4(v3);
}

id AdsLocationServicesViewControllerProvider.viewController(onboardingFlowDelegate:primaryAction:secondaryAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(type metadata accessor for AdsLocationServicesViewController());
  swift_unknownObjectRetain();
  sub_1D7E19F24(a3);
  sub_1D7E19F24(a5);
  return sub_1D818C3BC(a1, a2, a3, a4, a5, a6);
}

uint64_t Settings.Card.DimmingColor.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D81924B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Card.DimmingColor.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B63616C62;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D8118B50@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Card.DimmingColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8118B78(uint64_t a1)
{
  v2 = sub_1D8119240();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D8118BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8119240();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D8118C28(uint64_t a1)
{
  v2 = sub_1D8119240();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D8118C7C()
{
  v1 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_156();
  sub_1D7E258C4();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E88], v1);
  result = sub_1D818EC44();
  qword_1EDBB20B8 = result;
  return result;
}

uint64_t sub_1D8118DA8()
{
  v1 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_156();
  v5 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8119294();
  v13[1] = "teaui.card.dimming_alpha";
  v13[2] = v11;
  v16 = 1;
  sub_1D8119344();
  sub_1D811939C();
  *(swift_allocObject() + 16) = xmmword_1D819FAC0;
  v15 = 1;
  sub_1D818EC14();
  v14 = 0;
  sub_1D818EC14();
  (*(v7 + 104))(v10, *MEMORY[0x1E69D6EA0], v5);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E88], v1);
  sub_1D81193EC();
  result = sub_1D818EC34();
  qword_1EDBB20A0 = result;
  return result;
}

unint64_t sub_1D8119064()
{
  result = qword_1EDBB20D8;
  if (!qword_1EDBB20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20D8);
  }

  return result;
}

_BYTE *_s4CardVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s4CardV12DimmingColorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8119240()
{
  result = qword_1EDBB20D0;
  if (!qword_1EDBB20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20D0);
  }

  return result;
}

void sub_1D8119294()
{
  if (!qword_1EDBB2088)
  {
    sub_1D81192F0();
    v0 = sub_1D818EC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2088);
    }
  }
}

unint64_t sub_1D81192F0()
{
  result = qword_1EDBB20C0;
  if (!qword_1EDBB20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20C0);
  }

  return result;
}

void sub_1D8119344()
{
  if (!qword_1EDBAE328)
  {
    sub_1D811939C();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE328);
    }
  }
}

void sub_1D811939C()
{
  if (!qword_1EDBB2090)
  {
    v0 = sub_1D818EC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2090);
    }
  }
}

unint64_t sub_1D81193EC()
{
  result = qword_1EDBB20C8;
  if (!qword_1EDBB20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20C8);
  }

  return result;
}

uint64_t PluginLayoutTransition.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x235uLL);
  memcpy(a1, v1, 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

uint64_t sub_1D81194AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 584))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D81194EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 584) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 584) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CardViewPresentationState.description.getter()
{
  result = 0x657263736C6C7566;
  switch(*v0)
  {
    case 1:
      return 0x6465646E61707865;
    case 2:
      v2 = 0x70616C6C6F63;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 3:
      v3 = 1953653104;
      goto LABEL_9;
    case 4:
      v2 = 0x73696D736964;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 5:
      v3 = 1953066601;
LABEL_9:
      result = v3 | 0x6C616900000000;
      break;
    case 6:
      result = 0x64657261656C63;
      break;
    case 7:
      result = 0x6E6564646968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CardViewPresentationState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

double UIUserInterfaceActiveAppearance.alpha.getter(uint64_t a1)
{
  result = 0.4;
  if ((a1 + 1) >= 2)
  {
    return 1.0;
  }

  return result;
}

uint64_t BlueprintImpressionActiveSession.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t BlueprintImpressionActiveSession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlueprintImpressionActiveSession() + 20);
  v4 = sub_1D818E754();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_1D81198EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_onChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_label;
  *&v3[v6] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v7 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel;
  *&v3[v7] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v8 = &v3[OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_precision];
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider;
  *&v3[v9] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF60]), sel_initWithFrame_);
  if (a3)
  {
    v10 = sub_1D8190EE4();
  }

  else
  {
    v10 = 0;
  }

  v58.receiver = v3;
  v58.super_class = type metadata accessor for SliderTableViewCell();
  v11 = objc_msgSendSuper2(&v58, sel_initWithStyle_reuseIdentifier_, 1, v10);

  v12 = v11;
  v13 = [v12 contentView];
  v14 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_label;
  [v13 addSubview_];

  v15 = [v12 &selRef_verticalOffset];
  v16 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel;
  [v15 addSubview_];

  v17 = v12;
  v18 = [v17 &selRef_verticalOffset];
  v19 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider;
  v57 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider;
  [v18 addSubview_];

  v20 = *&v17[v19];
  [v20 addTarget:v17 action:sel_valueChanged forControlEvents:4096];

  [*&v12[v14] setNumberOfLines_];
  [*&v12[v16] setNumberOfLines_];
  [*&v12[v14] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [*&v12[v14] topAnchor];
  v22 = [v17 &selRef_verticalOffset];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 topAnchor];
  v25 = [v21 constraintEqualToAnchor:v24 constant:5.0];

  [v25 setActive_];
  v26 = [*&v12[v14] leadingAnchor];
  v27 = [v17 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v26 constraintEqualToAnchor_];

  [v30 setActive_];
  [*&v12[v16] setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [*&v12[v16] topAnchor];
  v32 = [v17 contentView];
  v33 = [v32 layoutMarginsGuide];

  v34 = [v33 topAnchor];
  v35 = [v31 constraintEqualToAnchor:v34 constant:5.0];

  [v35 setActive_];
  v36 = [*&v12[v16] trailingAnchor];
  v37 = [v17 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 &selRef_indexPathForItemAtPoint_ + 4];
  v40 = OUTLINED_FUNCTION_2_143();

  OUTLINED_FUNCTION_14_3();
  [*&v17[v57] setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [*&v17[v57] leadingAnchor];
  v42 = [v17 &selRef_verticalOffset];
  v43 = [v42 layoutMarginsGuide];

  v44 = [v43 leadingAnchor];
  v45 = OUTLINED_FUNCTION_2_143();

  OUTLINED_FUNCTION_14_3();
  v46 = [*&v17[v57] trailingAnchor];
  v47 = [v17 contentView];
  v48 = [v47 layoutMarginsGuide];

  v49 = [v48 trailingAnchor];
  v50 = OUTLINED_FUNCTION_2_143();

  OUTLINED_FUNCTION_14_3();
  v51 = [*&v17[v57] bottomAnchor];
  v52 = [v17 contentView];

  v53 = [v52 layoutMarginsGuide];
  v54 = [v53 bottomAnchor];

  v55 = OUTLINED_FUNCTION_2_143();
  OUTLINED_FUNCTION_14_3();

  return v17;
}

void sub_1D8119FD8()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_onChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_label;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v4 = v0 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_precision;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider;
  *(v0 + v5) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF60]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D811A0E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_slider);
  v3 = v0 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_precision;
  v4 = *v3;
  v5 = *(v3 + 8);
  [v2 value];
  v7 = v6;
  if (v5 == 1)
  {
    *&v8 = roundf(v6);
  }

  else
  {
    v9 = __exp10f(v4);
    *&v8 = roundf(v9 * v7) / v9;
  }

  [v2 setValue_];
  v10 = *(v1 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_valueLabel);
  v11 = sub_1D81925B4();
  MEMORY[0x1DA713260](v11);

  MEMORY[0x1DA713260](102, 0xE100000000000000);
  sub_1D7E1A4D0();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D819FAB0;
  [v2 value];
  v13 = MEMORY[0x1E69E64A8];
  *(v12 + 56) = MEMORY[0x1E69E6448];
  *(v12 + 64) = v13;
  *(v12 + 32) = v14;
  v15 = sub_1D8190F54();
  v17 = v16;

  sub_1D7FC8234(v15, v17, v10);
  v18 = v1 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_onChange;
  v19 = *(v1 + OBJC_IVAR____TtC5TeaUI19SliderTableViewCell_onChange);
  if (v19)
  {
    v20 = *(v18 + 8);

    v19([v2 value]);
    sub_1D7E418F4(v19, v20);
  }
}

id sub_1D811A308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DynamicMenuItemProviderType.needsUpdate.getter()
{
  sub_1D7E40308();
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TabBarSplitViewFocus.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D811A498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TabBarSplitViewFocus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t TabBarSplitViewFocusChangeAction.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D811A4E4()
{
  result = qword_1ECA11588;
  if (!qword_1ECA11588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11588);
  }

  return result;
}

unint64_t sub_1D811A53C()
{
  result = qword_1ECA11590;
  if (!qword_1ECA11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11590);
  }

  return result;
}

unint64_t sub_1D811A590@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TabBarSplitViewFocusChangeAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1D811A608()
{
  v0 = sub_1D8191014();
  if (v0)
  {
    v1 = v0;
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E34();
    if (v1 < 0)
    {
      __break(1u);
    }

    else
    {
      do
      {
        v2 = sub_1D8191104();
        v4 = v3;
        v5 = *(v7 + 16);
        if (v5 >= *(v7 + 24) >> 1)
        {
          sub_1D7F08E34();
        }

        *(v7 + 16) = v5 + 1;
        v6 = v7 + 16 * v5;
        *(v6 + 32) = v2;
        *(v6 + 40) = v4;
        sub_1D8191024();
        --v1;
      }

      while (v1);
    }
  }
}

uint64_t static String.alphabet.getter()
{
  if (qword_1ECA0C3D0 != -1)
  {
    swift_once();
  }

  return sub_1D8190DB4();
}

id FrameworkAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SectionFooterViewLayoutOptions.SeparatorStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void *SectionFooterViewLayoutOptions.init(layoutOptions:topPadding:bottomPadding:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OUTLINED_FUNCTION_0_219(a1, a2);
  *(v2 + 568) = v4;
  *(v2 + 576) = v3;
  return result;
}

void *SectionFooterViewLayoutOptions.init(layoutOptions:topPadding:bottomPadding:separatorStyle:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OUTLINED_FUNCTION_0_219(a1, a2);
  *(v2 + 568) = v4;
  *(v2 + 576) = v3;
  return result;
}

unint64_t sub_1D811A918()
{
  result = qword_1ECA115A8;
  if (!qword_1ECA115A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SectionFooterViewLayoutOptions.SeparatorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Activity.eligibilities.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 24))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t Settings.Container.Environment.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D81924B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D811ACF4(uint64_t a1)
{
  v2 = sub_1D7E05864();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D811AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7E05864();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t Settings.Container.TestSuite.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D81924B4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Container.TestSuite.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x6974616D6F747561;
      break;
    case 2:
      result = 0x616D726F66726570;
      break;
    case 3:
      result = 1869440356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D811AEA8@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Container.TestSuite.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D811AED0(uint64_t a1)
{
  v2 = sub_1D811B4F0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D811AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D811B4F0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D811AF80(uint64_t a1)
{
  v2 = sub_1D811B4F0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D811AFF8()
{
  v0 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  sub_1D7E05600(0, &qword_1EDBBE070, sub_1D811B544);
  (*(v9 + 104))(v13, *MEMORY[0x1E69D6E90], v7);
  sub_1D811B598();
  sub_1D811B5F0();
  *(swift_allocObject() + 16) = xmmword_1D81A3F90;
  OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_2_87();
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6EA0], v0);
  sub_1D811B640();
  result = sub_1D818EC34();
  qword_1EDBBE0A8 = result;
  return result;
}

unint64_t sub_1D811B310()
{
  result = qword_1EDBBE0C8;
  if (!qword_1EDBBE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0C8);
  }

  return result;
}

_BYTE *_s9ContainerVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s9ContainerV9TestSuiteOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D811B4F0()
{
  result = qword_1EDBBE0C0;
  if (!qword_1EDBBE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0C0);
  }

  return result;
}

unint64_t sub_1D811B544()
{
  result = qword_1EDBBE0B0;
  if (!qword_1EDBBE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0B0);
  }

  return result;
}

void sub_1D811B598()
{
  if (!qword_1EDBBD190)
  {
    sub_1D811B5F0();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBD190);
    }
  }
}

void sub_1D811B5F0()
{
  if (!qword_1EDBBE080)
  {
    v0 = sub_1D818EC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBE080);
    }
  }
}

unint64_t sub_1D811B640()
{
  result = qword_1EDBBE0B8;
  if (!qword_1EDBBE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0B8);
  }

  return result;
}

uint64_t sub_1D811B69C(uint64_t a1)
{
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v1 = *(a1 + 128);
  v9 = *(a1 + 368);
  v2 = *(a1 + 384);
  v10 = *(a1 + 376);
  v3 = *(a1 + 392);
  v14 = MEMORY[0x1E69E7CD0];
  v4 = [v1 userInterfaceIdiom];
  if (v4 == 6 || v4 == 1)
  {
    *&v6 = v12;
    *(&v6 + 1) = v11;
    *&v7 = v9;
    *(&v7 + 1) = v10;
    v18[0] = v6;
    v18[1] = v7;
    v19 = v2;
    v20 = v3;
    sub_1D7F5A1F8(v17, v18);
    if (v11 < v12)
    {
      v17[0] = v12 + -320.0;
      v17[1] = v11;
      v17[2] = v9;
      v17[3] = v10;
      v17[4] = v2;
      v17[5] = v3;
      sub_1D7F5A1F8(v16, v17);
    }

    v16[0] = v11;
    v16[1] = v12;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v2;
    v16[5] = v3;
    sub_1D7F5A1F8(v15, v16);
    if (v12 < v11)
    {
      v15[0] = v11 + -320.0;
      v15[1] = v12;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v2;
      v15[5] = v3;
      sub_1D7F5A1F8(v13, v15);
    }
  }

  return v14;
}

uint64_t BlueprintLayoutCollectionPipelineProcessorConfig.Viewport.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

unint64_t sub_1D811B894()
{
  result = qword_1ECA115B0;
  if (!qword_1ECA115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115B0);
  }

  return result;
}

_BYTE *sub_1D811B8E8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D811B984()
{
  sub_1D7F18BF0(*v0, v0[1]);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA714A20](*&v1);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x1DA714A20](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA714A20](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  return MEMORY[0x1DA714A20](*&v7);
}

BOOL sub_1D811BA0C(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D811BA6C()
{
  sub_1D81927E4();
  sub_1D811B984();
  return sub_1D8192824();
}

uint64_t sub_1D811BAB4()
{
  sub_1D81927E4();
  sub_1D811B984();
  return sub_1D8192824();
}

unint64_t sub_1D811BB04()
{
  result = qword_1ECA115B8;
  if (!qword_1ECA115B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115B8);
  }

  return result;
}

TeaUI::ColorSpace_optional __swiftcall ColorSpace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ColorSpace.rawValue.getter()
{
  if (*v0)
  {
    return 13168;
  }

  else
  {
    return 0x647261646E617473;
  }
}

unint64_t sub_1D811BC00()
{
  result = qword_1ECA115C0;
  if (!qword_1ECA115C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115C0);
  }

  return result;
}

uint64_t sub_1D811BC78@<X0>(uint64_t *a1@<X8>)
{
  result = ColorSpace.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorSpace(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D811BDDC()
{
  result = qword_1EDBB1D28[0];
  if (!qword_1EDBB1D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB1D28);
  }

  return result;
}

id SharingActivityItem.init(type:title:image:performBlock:)()
{
  OUTLINED_FUNCTION_0_72();
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = *(v3 + 2);
  *&v1[qword_1EDBB0D30] = v6;
  v10 = &v1[qword_1EDBB0D20];
  *v10 = v5;
  *(v10 + 1) = v4;
  v11 = &v1[qword_1EDBB0D28];
  *v11 = v8;
  *(v11 + 2) = v9;
  *(v11 + 24) = *(v3 + 24);
  v12 = &v1[qword_1EDBB0D38];
  *v12 = v2;
  *(v12 + 1) = v0;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1D811BF94()
{
  v0 = SharingActivityItem.activityType.getter();

  return v0;
}

void *SharingActivityItem.activityType.getter()
{
  v1 = *(v0 + qword_1EDBB0D30);
  v2 = v1;
  return v1;
}

id sub_1D811BFF8()
{
  SharingActivityItem.activityTitle.getter();
  if (v0)
  {
    v1 = sub_1D8190EE4();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t SharingActivityItem.activityTitle.getter()
{
  v1 = *(v0 + qword_1EDBB0D20);
  sub_1D8190DB4();
  return v1;
}

Swift::String __swiftcall SharingActivityItem._bundleIdentifierForActivityImageCreation()()
{
  if (*&v0[qword_1EDBB0D28 + 32])
  {
    v1 = *&v0[qword_1EDBB0D28 + 24];
    v2 = *&v0[qword_1EDBB0D28 + 32];
  }

  else
  {
    v8.receiver = v0;
    v8.super_class = swift_getObjectType();
    v3 = objc_msgSendSuper2(&v8, sel__bundleIdentifierForActivityImageCreation);
    v1 = sub_1D8190F14();
    v2 = v4;
  }

  sub_1D8190DB4();
  v5 = v1;
  v6 = v2;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_1D811C120(void *a1)
{
  v1 = a1;
  SharingActivityItem._bundleIdentifierForActivityImageCreation()();

  v2 = sub_1D8190EE4();

  return v2;
}

uint64_t sub_1D811C190()
{
  sub_1D8191314();

  return 1;
}

Swift::Void __swiftcall SharingActivityItem.perform()()
{
  (*&v0[qword_1EDBB0D38])();

  [v0 activityDidFinish_];
}

void sub_1D811C218(void *a1)
{
  v1 = a1;
  SharingActivityItem.perform()();
}

Swift::String __swiftcall SharingActivityItem._systemImageName()()
{
  v1 = *(v0 + qword_1EDBB0D28 + 8);
  v2 = *(v0 + qword_1EDBB0D28 + 16);
  sub_1D8190DB4();
  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1D811C29C()
{
  SharingActivityItem._systemImageName()();
  v0 = sub_1D8190EE4();

  return v0;
}

id SharingActivityItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingActivityItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D811C3F8(uint64_t a1)
{

  v2 = *(a1 + qword_1EDBB0D28);
}

uint64_t BlueprintLayoutDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D811C580()
{
  result = qword_1ECA115C8;
  if (!qword_1ECA115C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t CardSplitViewState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D811C74C()
{
  result = qword_1ECA115D0;
  if (!qword_1ECA115D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA115D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardSplitViewState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D811C8A8(uint64_t a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;

    return sub_1D7EFFDCC();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for JSONSchemaValue(0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D811C9B4();
  }
}

uint64_t sub_1D811CA3C(uint64_t a1)
{
  v3 = sub_1D818E8B4();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v4);
  sub_1D8120A14(&qword_1EDBBC6E8, MEMORY[0x1E6969B50]);
  v10 = sub_1D8191164();
  sub_1D811F4E4(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

BOOL sub_1D811CB74()
{
  OUTLINED_FUNCTION_20_39();
  OUTLINED_FUNCTION_21_35();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15_44();
  OUTLINED_FUNCTION_13_47();
  sub_1D7EB0164(0, v2, v3, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D8120BD4(v7 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8120C38(v0);
    return 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v5 = sub_1D7F8F0B0();
  }

  return v5;
}

uint64_t sub_1D811CCD4()
{
  OUTLINED_FUNCTION_20_39();
  OUTLINED_FUNCTION_21_35();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15_44();
  OUTLINED_FUNCTION_13_47();
  sub_1D7EB0164(0, v4, v5, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D8120BD4(v10 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v2);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8190DB4();
    sub_1D8120C38(v2);
  }

  else
  {
    v6 = sub_1D7EDF684(v1, v0, *(v2 + 16));
    v8 = v7;

    if (v8)
    {
      return v6;
    }

    else
    {
      sub_1D8190DB4();
    }
  }

  return v1;
}

uint64_t sub_1D811CE14()
{
  sub_1D81905D4();
  sub_1D811DB84();
  sub_1D811E044(&qword_1ECA11620, sub_1D811DB84, sub_1D811DF88, sub_1D811E18C);
  return sub_1D8190AF4();
}

uint64_t sub_1D811CF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  sub_1D811DC1C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D811DB84();
  v18 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  v22[1] = a2;
  sub_1D7EB0164(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v11 = sub_1D7EFC74C();

  v22[0] = sub_1D7F76BC0(v11);
  sub_1D811F478(v22);

  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D811F434;
  *(v13 + 24) = v12;
  sub_1D7EB0164(0, &qword_1ECA115E8, sub_1D7F05FE0, MEMORY[0x1E69E62F8]);
  sub_1D811DCE4();
  sub_1D811DE60();
  sub_1D811E044(&qword_1ECA11630, sub_1D811DCE4, sub_1D811E0D0, sub_1D811E104);

  sub_1D8190AD4();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D811F470;
  *(v15 + 24) = v14;
  (*(v19 + 32))(v10, v7, v20);
  v16 = &v10[*(v18 + 36)];
  *v16 = sub_1D7E95FBC;
  v16[1] = v15;
  sub_1D8120990(v10, v21);
}

BOOL sub_1D811D2B0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = sub_1D811CB74();
  sub_1D8191534();

  v12 = sub_1D8191524();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;

  v15 = sub_1D8191524();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a3;
  sub_1D8190AB4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = v20;

  sub_1D8190DB4();

  result = sub_1D811D5BC(v18, a5);
  *a6 = v20;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22;
  *(a6 + 24) = v23;
  *(a6 + 32) = sub_1D8120BC0;
  *(a6 + 40) = v17;
  *(a6 + 48) = result;
  return result;
}

__n128 sub_1D811D454@<Q0>(uint64_t a1@<X4>, char a2@<W5>, uint64_t a3@<X8>)
{
  v6 = sub_1D811CCD4();
  v8 = v7;
  sub_1D8191534();

  v9 = sub_1D8191524();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;

  v12 = sub_1D8191524();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = a1;
  sub_1D8190AB4();

  sub_1D800D4B8(v14);
  sub_1D8190984();
  result = v16;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 33) = a2;
  *(a3 + 40) = v16;
  return result;
}

BOOL sub_1D811D5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[2] = a1;
  v9[3] = a2;
  sub_1D7EB0164(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D8120BD4(v9[1] + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v6);

  v7 = swift_getEnumCaseMultiPayload() != 1;
  sub_1D8120C38(v6);
  return v7;
}

uint64_t sub_1D811D6C8()
{
  sub_1D8190B34();
  sub_1D8190384();
}

uint64_t sub_1D811D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  sub_1D7EB0164(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v6 = sub_1D7EFC74C();

  v33 = sub_1D7F76BC0(v6);
  sub_1D811F478(&v33);
  if (v3)
  {
LABEL_19:

    __break(1u);
    return result;
  }

  v7 = v33;
  v8 = sub_1D811CA3C(a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E34();
    v10 = v33;
    v32 = v7 + 32;
    v11 = 32;
    while (1)
    {
      v12 = *(v8 + v11);
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v12 >= *(v7 + 16))
      {
        goto LABEL_18;
      }

      v4 = v7;
      v13 = (v32 + 24 * v12);
      v15 = *v13;
      v14 = v13[1];
      v33 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      sub_1D8190DB4();
      if (v17 >= v16 >> 1)
      {
        sub_1D7F08E34();
        v10 = v33;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v11 += 8;
      --v9;
      v7 = v4;
      if (!v9)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = (v10 + 40);
    do
    {
      v21 = *v20;
      v31 = *(v20 - 1);
      v33 = a1;
      v34 = a2;
      sub_1D8190DB4();
      sub_1D8190994();
      v22 = v35;
      swift_getKeyPath();
      v33 = v22;
      sub_1D8120A14(&qword_1ECA0D810, type metadata accessor for JSONSchemaValueObject);
      sub_1D818E9D4();

      v33 = v22;
      swift_getKeyPath();
      sub_1D818E9F4();

      v23 = OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject__value;
      swift_beginAccess();
      sub_1D7E11428(v31, v21);
      v25 = v24;

      if (v25)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v22 + v23);
        *(v22 + v23) = 0x8000000000000000;
        sub_1D7EF7340();
        sub_1D8192374();
        v26 = v35;

        sub_1D7EB0164(0, &qword_1ECA0D298, type metadata accessor for JSONSchemaValue, type metadata accessor for JSONSchemaValueObject.EnablableValue);
        sub_1D8192384();
        *(v22 + v23) = v26;
      }

      v27 = swift_endAccess();
      sub_1D7F02238(v27);
      v33 = v22;
      swift_getKeyPath();
      sub_1D818E9E4();

      v20 += 2;
      --v19;
    }

    while (v19);
  }
}

void sub_1D811DB84()
{
  if (!qword_1ECA115D8)
  {
    sub_1D811DC1C();
    sub_1D811DEE8(255, &qword_1ECA0EF38, MEMORY[0x1E697C230], sub_1D811DF54);
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA115D8);
    }
  }
}

void sub_1D811DC1C()
{
  if (!qword_1ECA115E0)
  {
    sub_1D7EB0164(255, &qword_1ECA115E8, sub_1D7F05FE0, MEMORY[0x1E69E62F8]);
    sub_1D811DCE4();
    sub_1D811DE60();
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA115E0);
    }
  }
}

void sub_1D811DCE4()
{
  if (!qword_1ECA115F0)
  {
    sub_1D811DD7C();
    sub_1D811DEE8(255, &qword_1ECA11608, MEMORY[0x1E697C918], sub_1D811DE2C);
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA115F0);
    }
  }
}

void sub_1D811DD7C()
{
  if (!qword_1ECA115F8)
  {
    sub_1D811DDD8();
    v0 = type metadata accessor for CheckboxView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA115F8);
    }
  }
}

unint64_t sub_1D811DDD8()
{
  result = qword_1ECA11600;
  if (!qword_1ECA11600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11600);
  }

  return result;
}

unint64_t sub_1D811DE60()
{
  result = qword_1ECA11618;
  if (!qword_1ECA11618)
  {
    sub_1D7EB0164(255, &qword_1ECA115E8, sub_1D7F05FE0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11618);
  }

  return result;
}

void sub_1D811DEE8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (!*a2)
  {
    v6 = OUTLINED_FUNCTION_35();
    v7(v6);
    a4();
    v8 = sub_1D81906D4();
    if (!v9)
    {
      atomic_store(v8, v4);
    }
  }
}

unint64_t sub_1D811DF88()
{
  result = qword_1ECA11628;
  if (!qword_1ECA11628)
  {
    sub_1D811DC1C();
    sub_1D811E044(&qword_1ECA11630, sub_1D811DCE4, sub_1D811E0D0, sub_1D811E104);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11628);
  }

  return result;
}

uint64_t sub_1D811E044(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D811E104()
{
  result = qword_1ECA11640;
  if (!qword_1ECA11640)
  {
    sub_1D811DEE8(255, &qword_1ECA11608, MEMORY[0x1E697C918], sub_1D811DE2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11640);
  }

  return result;
}

unint64_t sub_1D811E18C()
{
  result = qword_1ECA0EF58;
  if (!qword_1ECA0EF58)
  {
    sub_1D811DEE8(255, &qword_1ECA0EF38, MEMORY[0x1E697C230], sub_1D811DF54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF58);
  }

  return result;
}

void sub_1D811E214()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_5_2(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D7E2D3DC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_17_37();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v13 == v14)
  {
LABEL_7:
    v15 = *(v7 + 16);
    if (v12 <= v15)
    {
      v16 = *(v7 + 16);
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      v17 = OUTLINED_FUNCTION_16_44();
      sub_1D7E98510(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_23_2();
      v22 = _swift_stdlib_malloc_size(v21);
      v21[2] = v15;
      v21[3] = 2 * ((v22 - 32) / 8);
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v15, v21 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v21 + 4, (v7 + 32), 8 * v15);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v13)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1D811E43C()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EB0164(0, &qword_1ECA11658, sub_1D8120E18, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v6);
      OUTLINED_FUNCTION_5_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D7ED0768(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1D8120E18(0);
    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811E51C()
{
  OUTLINED_FUNCTION_17_37();
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v5 == v6)
  {
LABEL_7:
    v7 = *(v0 + 16);
    if (v4 <= v7)
    {
      v8 = *(v0 + 16);
    }

    else
    {
      v8 = v4;
    }

    if (v8)
    {
      sub_1D8120E4C();
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8_10(v9);
      *(v8 + 16) = v7;
      *(v8 + 24) = 2 * (v10 / 40);
      if (v1)
      {
LABEL_12:
        sub_1D7E3F97C(v0 + 32);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_12;
    }

    sub_1D8120ED0(0, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType, MEMORY[0x1E69E6720]);
    OUTLINED_FUNCTION_13_3();
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1D811E648(char a1, uint64_t a2, char a3, uint64_t a4, void *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(a4 + 16);
    if (v13 <= v16)
    {
      v17 = *(a4 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_1D8120ED0(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      v18[2] = v16;
      v18[3] = 2 * ((v19 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v16, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1D7E0631C(0, a6);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1D811E774()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5C48(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811E834()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5C6C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, void (*a8)(void, void, void))
{
  OUTLINED_FUNCTION_17_37();
  if (v15)
  {
    OUTLINED_FUNCTION_2_16();
    if (v17 != v18)
    {
      OUTLINED_FUNCTION_12_4();
      if (v17)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v16 = v13;
  }

  v19 = *(v8 + 16);
  if (v16 <= v19)
  {
    v20 = *(v8 + 16);
  }

  else
  {
    v20 = v16;
  }

  if (!v20)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v31 = v9;
  v21 = a8;
  v22 = MEMORY[0x1E69D6EA8];
  sub_1D8120F34(0, v14);
  sub_1D7E98510(0, a6, a7, v22);
  v24 = *(*(v23 - 8) + 72);
  v25 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v26 = swift_allocObject();
  v27 = _swift_stdlib_malloc_size(v26);
  if (!v24)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v27 - v25 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_23;
  }

  v26[2] = v19;
  v26[3] = 2 * ((v27 - v25) / v24);
  a8 = v21;
  v9 = v31;
LABEL_18:
  sub_1D7E98510(0, a6, a7, MEMORY[0x1E69D6EA8]);
  if (v9)
  {
    v30 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
    a8(v8 + v30, v19, v26 + v30);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D811EB90()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    v6 = MEMORY[0x1E69E7CA0];
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v7, v6 + 8, v8);
      v9 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_5_2(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D7E5CB78(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_3();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  OUTLINED_FUNCTION_17_37();
  if (v13)
  {
    OUTLINED_FUNCTION_2_16();
    if (v15 != v16)
    {
      OUTLINED_FUNCTION_12_4();
      if (v15)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v14 = v12;
  }

  v17 = *(v8 + 16);
  if (v14 <= v17)
  {
    v18 = *(v8 + 16);
  }

  else
  {
    v18 = v14;
  }

  if (!v18)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v19 = OUTLINED_FUNCTION_16_44();
  sub_1D7EB0164(v19, v20, v21, v22);
  v23 = *(a7(0) - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v27 = _swift_stdlib_malloc_size(v26);
  if (!v24)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v27 - v25 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_23;
  }

  v26[2] = v17;
  v26[3] = 2 * ((v27 - v25) / v24);
LABEL_18:
  v29 = *(a7(0) - 8);
  if (v9)
  {
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    a8(v8 + v30, v17, v26 + v30);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D811EE64()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D8120F34(0, &qword_1EDBAE2D8);
      v6 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_13();
        sub_1D7E3F97C(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1D7E98510(0, qword_1EDBAFE88, &type metadata for CardSplitViewPreservedItem, MEMORY[0x1E69E6720]);
    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811EF8C()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5F7C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811F04C()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EB0164(0, &qword_1EDBB2C20, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v6);
      OUTLINED_FUNCTION_5_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D7E5CB78(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_13_3();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D811F124()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_127(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5FF8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D811F1E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_1D7EB0164(0, &qword_1ECA0D910, sub_1D7F05FE0, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1D80E5C20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1D7F05FE0();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D811F314()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EB0164(0, &qword_1ECA11650, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90]);
      v6 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v6);
      OUTLINED_FUNCTION_5_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D80E75BC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_13_3();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D811F478(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8120B60(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D811F550(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D811F4E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120B74(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1D811F648(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1D811F550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D81925A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7F05FE0();
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1D811F874(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D811F73C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D811F648(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D81925A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1D811FDC4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D811F818(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D811F73C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1D8192634();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D811F818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D811F874(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1D8192634();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1D8192634()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1D8192634() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1D7EE4840();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1D81204C8((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1D8120264(&v96, *a1, a3);
LABEL_103:
}

void sub_1D811FDC4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1D7EE4840();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1D8120690((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1D812039C(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1D8120264(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1D81204C8((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1D812039C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D8120690((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D81204C8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1D80E5C20(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1D80E5C20(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1D8192634() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_1D8120690(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1D7ED0768(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1D7ED0768(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

char *sub_1D8120818(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1D8120844(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7EB0164(0, &qword_1ECA0CF20, sub_1D80F808C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}