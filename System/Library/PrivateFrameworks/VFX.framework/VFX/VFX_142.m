uint64_t sub_1AFBDFFFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = *a12;
  if (!*(*a12 + 16))
  {
    return result;
  }

  v18 = result;
  result = sub_1AF419914(result, a2);
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v20 = (*(v12 + 56) + 32 * result);
  if (v20[3] != 28 || !*(v12 + 16))
  {
    return result;
  }

  v21 = *v20;
  v80 = v20[1];
  swift_unknownObjectRetain();
  v22 = sub_1AF419914(a3, a4);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  v82 = v21;
  v24 = (*(v12 + 56) + 32 * v22);
  if (v24[3] != 28 || !*(v12 + 16))
  {
    goto LABEL_18;
  }

  v25 = *v24;
  v78 = v24[1];
  swift_unknownObjectRetain();
  v26 = sub_1AF419914(a5, a6);
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

  v28 = (*(v12 + 56) + 32 * v26);
  if (v28[3] != 28 || !*(v12 + 16))
  {
    goto LABEL_17;
  }

  v77 = v25;
  v29 = *v28;
  v74 = v28[1];
  swift_unknownObjectRetain();
  v30 = sub_1AF419914(a7, a8);
  if ((v31 & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v76 = v29;
  v32 = (*(v12 + 56) + 32 * v30);
  if (v32[3] == 28)
  {
    v33 = *v32;
    v69 = v32[1];
    v34 = a12[2];
    v35 = a12[3];
    v85 = a12[1];
    v86 = v34;
    v73 = v33;
    swift_unknownObjectRetain();

    MEMORY[0x1B2718AE0](45, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a9, a10);
    v70 = v35;
    v71 = v85;
    v36 = 16 * v35;
    v37 = v34;
    v38 = *(a11 + 16);
    v39 = v36;

    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v38, v39, 0);
    if (BufferWithLength)
    {
      v68 = v39;
      v41 = BufferWithLength;
      v42 = sub_1AFDFCEC8();

      v72 = v41;
      [v41 setLabel_];

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v81 = 0;
      }

      else
      {
        v49 = [v82 contents];
        v50 = v82;
        v81 = &v80[v49];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v79 = 0;
      }

      else
      {
        v51 = [v77 contents];
        v52 = v77;
        v79 = &v78[v51];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v75 = 0;
      }

      else
      {
        v53 = [v76 contents];
        v54 = v76;
        v75 = &v74[v53];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v55 = 0;
      }

      else
      {
        v56 = [v73 contents];
        v57 = v73;
        v55 = &v69[v56];
      }

      if ([swift_unknownObjectRetain() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v58 = 0;
      }

      else
      {
        v58 = [v72 contents];
        v59 = v72;
      }

      v60 = v70;
      v62 = v79;
      v61 = v81;
      for (i = v75; v60; --v60)
      {
        v64 = *v61;
        v61 += 4;
        LODWORD(v65) = v64;
        DWORD1(v65) = *v62;
        v62 += 4;
        DWORD2(v65) = *i;
        i += 4;
        HIDWORD(v65) = *v55;
        v55 += 4;
        *v58++ = v65;
      }

      sub_1AF8264B8(0, 0, 0, 0, v18, a2);

      sub_1AF8264B8(0, 0, 0, 0, a3, a4);

      sub_1AF8264B8(0, 0, 0, 0, a5, a6);

      sub_1AF8264B8(0, 0, 0, 0, a7, a8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *a12;
      sub_1AF85917C(v72, 0, v68, 31, a9, a10, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *a12 = v85;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v86 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
      MEMORY[0x1B2718AE0](v85, v37);

      MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
      v43 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v43);

      MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
      type metadata accessor for MTLResourceOptions(0);
      sub_1AFDFE458();
      v44 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v67 = v44;
        swift_once();
        v44 = v67;
      }

      v85 = 0;
      sub_1AF0D4F18(v44, &v85, 0, 0xE000000000000000);

      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1AFDFE218();

      v85 = 0xD000000000000010;
      v86 = 0x80000001AFF4AEC0;
      MEMORY[0x1B2718AE0](v71, v37);
      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
      v45 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v45);

      v46 = v85;
      v47 = v86;
      v48 = sub_1AFDFDA08();
      v85 = 0;
      sub_1AF0D4F18(v48, &v85, v46, v47);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return result;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_18:

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFBE07CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = *a12;
  if (!*(*a12 + 16))
  {
    return result;
  }

  v17 = result;
  result = sub_1AF419914(result, a2);
  if ((v18 & 1) == 0)
  {
    return result;
  }

  v19 = (*(v12 + 56) + 32 * result);
  if (v19[3] != 45 || !*(v12 + 16))
  {
    return result;
  }

  v20 = *v19;
  v99 = v19[1];
  swift_unknownObjectRetain();
  v21 = sub_1AF419914(a3, a4);
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  v103 = v20;
  v23 = (*(v12 + 56) + 32 * v21);
  if (v23[3] != 45 || !*(v12 + 16))
  {
    goto LABEL_15;
  }

  v24 = *v23;
  v95 = v23[1];
  swift_unknownObjectRetain();
  v25 = sub_1AF419914(a5, a6);
  if ((v26 & 1) == 0 || (v27 = (*(v12 + 56) + 32 * v25), v27[3] != 45))
  {
    swift_unknownObjectRelease();
LABEL_15:

    return swift_unknownObjectRelease();
  }

  v89 = v24;
  v28 = *v27;
  v84 = v27[1];
  v29 = a12[2];
  v30 = a12[3];
  v107 = a12[1];
  v108 = v29;
  v90 = v28;
  swift_unknownObjectRetain();

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a9, a10);
  v91 = v107;
  v87 = v30;
  v31 = *(a11 + 16);
  v32 = v108;

  v86 = 16 * v30;
  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v31, (16 * v30), 0);
  if (BufferWithLength)
  {
    v34 = BufferWithLength;
    v35 = sub_1AFDFCEC8();

    [v34 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v100 = 0;
    }

    else
    {
      v42 = [v103 contents];
      v43 = v103;
      v100 = &v99[v42];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v96 = 0;
    }

    else
    {
      v44 = [v89 contents];
      v45 = v89;
      v96 = &v95[v44];
    }

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v92 = 0;
    }

    else
    {
      v46 = [v90 contents];
      v47 = v90;
      v92 = &v84[v46];
    }

    v48 = v87;
    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v85 = 0;
    }

    else
    {
      v85 = [v34 contents];
      v49 = v34;
    }

    v83 = v34;
    if (a8 && *(v12 + 16))
    {

      v50 = sub_1AF419914(a7, a8);
      if (v51)
      {
        v52 = *(v12 + 56) + 32 * v50;
        if (*(v52 + 24) == 28)
        {
          v53 = *v52;
          v54 = *(v52 + 8);
          if ([swift_unknownObjectRetain_n() storageMode] == 2)
          {
            swift_unknownObjectRelease();
            v55 = 0;
          }

          else
          {
            v71 = [v53 contents];
            v72 = v53;
            v55 = &v71[v54];
          }

          v73 = v87;
          v74 = v100;
          v75 = v96;
          v76 = v92;
          for (i = v85; v73; --v73)
          {
            v98 = v55;
            v102 = v74 + 1;
            v93 = sub_1AFBE4594(*v74);
            v78 = *v75++;
            v88 = sub_1AFBE4594(v78);
            v79 = *v76++;
            v80 = sub_1AFBE4594(v79);
            v74 = v102;
            *&v81 = __PAIR64__(LODWORD(v88), LODWORD(v93));
            *(&v81 + 2) = v80;
            HIDWORD(v81) = *v98;
            v55 = v98 + 4;
            *i++ = v81;
          }

          sub_1AF8264B8(0, 0, 0, 0, a7, a8);
          swift_unknownObjectRelease();
LABEL_43:

          sub_1AF8264B8(0, 0, 0, 0, v17, a2);

          sub_1AF8264B8(0, 0, 0, 0, a3, a4);

          sub_1AF8264B8(0, 0, 0, 0, a5, a6);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = *a12;
          sub_1AF85917C(v83, 0, v86, 31, a9, a10, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          *a12 = v107;
          return result;
        }
      }
    }

    v56 = v100;
    v57 = v96;
    v58 = v92;
    v59 = v85;
    if (v87)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v94 = HIDWORD(_Q0);
      do
      {
        v65 = *v56++;
        v101 = sub_1AFBE4594(v65);
        v66 = *v57++;
        v97 = sub_1AFBE4594(v66);
        v67 = *v58++;
        v68 = sub_1AFBE4594(v67);
        *&v69 = __PAIR64__(LODWORD(v97), LODWORD(v101));
        *(&v69 + 1) = __PAIR64__(v94, LODWORD(v68));
        *v59++ = v69;
        --v48;
      }

      while (v48);
    }

    goto LABEL_43;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v108 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](v107, v32);

  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v36 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v36);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v37 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v82 = v37;
    swift_once();
    v37 = v82;
  }

  v107 = 0;
  sub_1AF0D4F18(v37, &v107, 0, 0xE000000000000000);

  v107 = 0;
  v108 = 0xE000000000000000;
  sub_1AFDFE218();

  v107 = 0xD000000000000010;
  v108 = 0x80000001AFF4AEC0;
  MEMORY[0x1B2718AE0](v91, v32);
  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
  v38 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v38);

  v39 = v107;
  v40 = v108;
  v41 = sub_1AFDFDA08();
  v107 = 0;
  sub_1AF0D4F18(v41, &v107, v39, v40);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1AFBE1028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v288 = a5;
  v278 = a2;
  sub_1AF0D4E74();
  v292 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v291 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1AFDFC298();
  v11 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290, v12);
  v289 = &v269 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298.i64[0] = sub_1AFDFDCB8();
  v14 = *(v298.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v298.i64[0], v15);
  v297.i64[0] = &v269 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AFDFBCE8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v304.i64[0] = &v269 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v281 = &v269 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302.i64[0] = a1;
  v24 = sub_1AF7580D0();
  if (!v25)
  {
    goto LABEL_96;
  }

  if (v24 == 7957616 && v25 == 0xE300000000000000)
  {

    goto LABEL_6;
  }

  v26 = sub_1AFDFEE28();

  if ((v26 & 1) == 0)
  {
LABEL_96:
    sub_1AFBDC8FC();
    swift_allocError();
    *v111 = 0;
    v111[1] = 0;
    return swift_willThrow();
  }

LABEL_6:
  v293 = v17;
  v299.i64[0] = v11;
  *&v277 = a3;
  *(&v277 + 1) = a4;
  v303.i64[0] = 0;
  v27 = *(v302.i64[0] + 8);
  v301.i64[0] = *v302.i64[0];
  v283 = v27 - v301.i64[0];
  v287 = v18 + 8;
  v300.i64[0] = 0x80000001AFF4B180;
  LODWORD(v296) = *MEMORY[0x1E696A028];
  v295 = (v14 + 104);
  v294 = (v14 + 8);
  *&v285 = 0x80000001AFF4AEC0;
  v279 = "Failed creating ";
  v284 = MEMORY[0x1E69E7CC0];
  v280 = 0xE000000000000000;
  v28 = 0;
  LODWORD(v286) = 5;
  v29 = 0x1E696A000;
LABEL_7:
  v282 = v28;
LABEL_36:
  v53 = v301.i64[0];
  while (1)
  {
    v30 = *(v302.i64[0] + 16);
    if (v53)
    {
      v31 = v283;
      if (v30 >= v283)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_98;
      }

      v31 = 0;
    }

    v32 = *(v302.i64[0] + 16);
    while (*(v53 + v32) != *(v302.i64[0] + 24))
    {
      if (v31 == ++v32)
      {
        v32 = v31;
        break;
      }
    }

    *&v309 = *(v302.i64[0] + 16);
    *(&v309 + 1) = v32;
    *&v310 = v53;
    *(&v310 + 1) = v31;
    sub_1AFDFCF68();
    sub_1AF7582E0();
    sub_1AFBE453C();
    v33 = sub_1AFDFCF28();
    if (!v34)
    {
      goto LABEL_98;
    }

    v35 = v33;
    v36 = v34;

    v37 = sub_1AFDFD048();

    v38 = v30 + v37 + 1;
    *(v302.i64[0] + 16) = v38;
    v39 = objc_allocWithZone(*(v29 + 3720));
    v40 = sub_1AFDFCEC8();
    v41 = [v39 initWithString_];

    sub_1AFDFDC98();
    if (v42)
    {

      goto LABEL_36;
    }

    sub_1AFDFDC98();
    if (v43)
    {
      break;
    }

    sub_1AFDFDC98();
    if (!v44)
    {
      sub_1AFDFDC98();
      if (!v54)
      {

        sub_1AFDFDC98();
        if (!v60)
        {
LABEL_49:

LABEL_50:
          v28 = v282;
          goto LABEL_7;
        }

        if (v286)
        {
          if (v286 == 5)
          {

            v59 = 5;
LABEL_47:
            LODWORD(v286) = v59;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v66 = v304.i64[0];
        sub_1AFDFBC88();
        v67 = sub_1AFDFDCA8();
        v69 = v68;
        v70 = *v287;
        v71 = v293;
        (*v287)(v66, v293);
        if (v69)
        {
          v286 = v67;
          sub_1AFDFBC88();
          v276 = sub_1AFDFDCA8();
          v73 = v72;
          v70(v66, v71);
          if (v73)
          {
            v74 = sub_1AFBDEC48(v286, v69);

            v309 = v277;

            MEMORY[0x1B2718AE0](45, 0xE100000000000000);
            v75 = v73;
            MEMORY[0x1B2718AE0](v276, v73);
            v76 = v309;
            v77 = sub_1AF471A88(v74);
            v78 = v77 * v282;
            v79 = sub_1AF6F35A0((v77 * v282), 0, v76, *(&v76 + 1));
            v275 = v80;
            v274 = v81;
            if (!v79)
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v309 = 0xD000000000000010;
              *(&v309 + 1) = v285;
              MEMORY[0x1B2718AE0](v76, *(&v76 + 1));
              MEMORY[0x1B2718AE0](0xD000000000000013, v279 | 0x8000000000000000);
              v307 = v78;
              v102 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v102);

              v103 = v309;
              v104 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v110 = v104;
                swift_once();
                v104 = v110;
              }

              *&v309 = 0;
              sub_1AF0D4F18(v104, &v309, v103, *(&v103 + 1));

              LODWORD(v286) = 0;
              goto LABEL_95;
            }

            v82 = v79;

            v273 = v75;
            v272 = v74;
            if (v74 == 28)
            {
              if ([swift_unknownObjectRetain() storageMode] != 2)
              {
                v92 = [v82 contents];
                v93 = v82;
                v87 = 0;
                v271 = 0;
                v88 = 0;
                v85 = &v92[v275];
                v270 = v274 / 4;
                goto LABEL_74;
              }
            }

            else
            {
              if (v74 != 45)
              {
                v270 = 0;
                v85 = 0;
                v271 = 0;
                v88 = 0;
                v87 = 1;
                v86 = 1;
                v91 = v284;
LABEL_76:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v91 = sub_1AF42819C(0, v91[2] + 1, 1, v91);
                }

                v284 = v91;
                v95 = v91[2];
                v94 = v91[3];
                if (v95 >= v94 >> 1)
                {
                  v284 = sub_1AF42819C(v94 > 1, v95 + 1, 1, v284);
                }

                LODWORD(v286) = 0;
                LOBYTE(v307) = v87;
                LOBYTE(v305) = v86;
                v96 = v284;
                v284[2] = v95 + 1;
                v97 = &v96[12 * v95];
                v98 = v273;
                v97[4] = v276;
                v97[5] = v98;
                v99 = v275;
                v97[6] = v82;
                v97[7] = v99;
                v100 = v272;
                v97[8] = v274;
                v97[9] = v100;
                v101 = v270;
                v97[10] = v85;
                v97[11] = v101;
                *(v97 + 96) = v307;
                LODWORD(v101) = *(&v309 + 3);
                *(v97 + 97) = v309;
                *(v97 + 25) = v101;
                v97[13] = v271;
                v97[14] = v88;
                *(v97 + 120) = v305;
                v28 = v282;
                v29 = 0x1E696A000;
                goto LABEL_7;
              }

              if ([swift_unknownObjectRetain() storageMode] != 2)
              {
                v83 = [v82 contents];
                v84 = v82;
                v270 = 0;
                v85 = 0;
                v86 = 0;
                v271 = &v83[v275];
                v87 = 1;
                v88 = v274;
LABEL_75:
                v91 = v284;
                goto LABEL_76;
              }
            }

            swift_unknownObjectRelease();
            v270 = 0;
            v85 = 0;
            v271 = 0;
            v88 = 0;
            v87 = 1;
LABEL_74:
            v86 = 1;
            goto LABEL_75;
          }
        }

        LODWORD(v286) = 0;
        goto LABEL_50;
      }

      v55 = v304.i64[0];
      sub_1AFDFBC88();
      v56 = sub_1AFDFDCA8();
      v58 = v57;
      (*v287)(v55, v293);
      if (!v58)
      {

        goto LABEL_49;
      }

      if (v56 == 1701011814 && v58 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v59 = 1;
        goto LABEL_47;
      }

      if (v56 == 0x786574726576 && v58 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v61 = v297.i64[0];
        v62 = v298.i64[0];
        (*v295)(v297.i64[0], v296, v298.i64[0]);
        v63 = sub_1AFDFDCC8();
        v65 = v64;

        (*v294)(v61, v62);
        LODWORD(v286) = 0;
        if (v65)
        {
          v28 = 0;
        }

        else
        {
          v28 = v63;
        }

        goto LABEL_7;
      }

      if (v56 == 0x6E6F6973726576 && v58 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v89 = v297.i64[0];
        v90 = v298.i64[0];
        (*v295)(v297.i64[0], v296, v298.i64[0]);
        sub_1AFDFDCC8();

        (*v294)(v89, v90);
        LODWORD(v286) = 2;
        goto LABEL_50;
      }

      if (v56 == 0x69736E6972746E69 && v58 == 0xE900000000000063 || (sub_1AFDFEE28() & 1) != 0)
      {

        v105 = v297.i64[0];
        v106 = v298.i64[0];
        (*v295)(v297.i64[0], v296, v298.i64[0]);
        sub_1AFDFDCC8();

        (*v294)(v105, v106);
        v107 = 3;
      }

      else
      {
        if ((v56 != 0x69736E6972747865 || v58 != 0xE900000000000063) && (sub_1AFDFEE28() & 1) == 0)
        {

          *&v309 = v56;
          *(&v309 + 1) = v58;
          MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF4B1D0);
LABEL_210:
          MEMORY[0x1B2718AE0](v35, v36);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v254 = v309;
          sub_1AFBDC8FC();
          swift_allocError();
          *v255 = v254;
          swift_willThrow();
        }

        v108 = v297.i64[0];
        v109 = v298.i64[0];
        (*v295)(v297.i64[0], v296, v298.i64[0]);
        sub_1AFDFDCC8();

        (*v294)(v108, v109);
        v107 = 4;
      }

      LODWORD(v286) = v107;
LABEL_95:
      v28 = v282;
      goto LABEL_7;
    }

    v45 = v304.i64[0];
    sub_1AFDFBC88();
    v46 = sub_1AFDFDCA8();
    v48 = v47;
    (*v287)(v45, v293);

    if (v48)
    {
      if (v46 == 0x6969637361 && v48 == 0xE500000000000000)
      {
        v280 = 0xE500000000000000;
        v303.i64[0] = 0x6969637361;
        goto LABEL_32;
      }
    }

    else
    {
      v46 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = sub_1AFDFEE28();
    v303.i64[0] = v46;
    if (v49)
    {
      goto LABEL_31;
    }

    if (v46 != 0xD000000000000014 || v300.i64[0] != v48)
    {
      if ((sub_1AFDFEE28() & 1) == 0)
      {

        *&v309 = 0xD000000000000015;
        *(&v309 + 1) = 0x80000001AFF4B200;
        MEMORY[0x1B2718AE0](v303.i64[0], v48);
        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v266 = v309;
        sub_1AFBDC8FC();
        swift_allocError();
        *v267 = v266;
        swift_willThrow();
      }

LABEL_31:
      v280 = v48;
      goto LABEL_32;
    }

    v280 = v48;
    v303.i64[0] = 0xD000000000000014;
LABEL_32:
    v50 = v297.i64[0];
    v51 = v298.i64[0];
    (*v295)(v297.i64[0], v296, v298.i64[0]);
    v52 = sub_1AFDFDCD8();
    (*v294)(v50, v51);
    if ((v52 & 0x100000000) != 0 || *&v52 != 1.0)
    {

      *&v309 = 0xD000000000000010;
      *(&v309 + 1) = 0x80000001AFF4AF40;
      goto LABEL_210;
    }

    v53 = v301.i64[0];
    v29 = 0x1E696A000uLL;
  }

  v53 = v301.i64[0];
  v30 = v38;
LABEL_98:
  v113 = v303.i64[0];
  if ((v303.i64[0] != 0x6969637361 || v280 != 0xE500000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {
    if (v113 == 0xD000000000000014 && v300.i64[0] == v280)
    {
      v114 = v282;
      if (!v282)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v192 = sub_1AFDFEE28();
      v114 = v282;
      if ((v192 & 1) == 0 || !v282)
      {
        goto LABEL_143;
      }
    }

    v193 = 0;
    v194 = v284[2];
    v294 = (v284 + 4);
    v298.i64[0] = "ecute+JavaScript.swift";
    v297.i64[0] = v299.i64[0] + 32;
    v296 = xmmword_1AFE431C0;
    v295 = v194;
    while (1)
    {
      v303.i64[0] = v30;
      if (v194)
      {
        break;
      }

LABEL_171:
      ++v193;
      v114 = v282;
      v30 = v303.i64[0];
      v194 = v295;
      if (v193 == v282)
      {
        goto LABEL_143;
      }
    }

    v195 = v294;
    v299.i64[0] = v193;
    while (1)
    {
      v198 = *v195;
      v310 = v195[1];
      v200 = v195[3];
      v199 = v195[4];
      v201 = *(v195 + 73);
      v311 = v195[2];
      v312 = v200;
      v309 = v198;
      *&v313[9] = v201;
      *v313 = v199;
      v202 = *(&v198 + 1);
      v203 = *(&v311 + 1);
      v204 = v198;
      sub_1AFBE4478(&v309, &v307);
      sub_1AFBE4478(&v309, &v307);
      swift_unknownObjectRelease();

      if (v203 == 28)
      {
        v196 = v312;
        v197 = *(v301.i64[0] + v303.i64[0]);
        v303.i64[0] += 4;
        *(v302.i64[0] + 16) = v303.i64[0];
        sub_1AFBE4478(&v309, &v307);

        swift_unknownObjectRelease();
        *(v196 + 4 * v193) = v197;
      }

      else
      {
        if (v203 != 45)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v307 = 0;
          v308 = 0xE000000000000000;
          sub_1AFDFE218();
          v305 = v307;
          v306 = v308;
          MEMORY[0x1B2718AE0](0xD000000000000011, v298.i64[0] | 0x8000000000000000);
          sub_1AFBE4478(&v309, &v307);
          swift_unknownObjectRelease();

          v307 = v203;
          type metadata accessor for MTLVertexFormat(0);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0x20726F6620, 0xE500000000000000);
          MEMORY[0x1B2718AE0](v204, v202);
          v207 = v305;
          v208 = v306;
          v209 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF6EFB60();
          v210 = swift_allocObject();
          *(v210 + 16) = v296;
          *(v210 + 56) = MEMORY[0x1E69E6158];
          *(v210 + 64) = sub_1AF0D544C();
          *(v210 + 32) = v207;
          *(v210 + 40) = v208;

          sub_1AFDFC4C8();

          v304.i64[0] = v208;
          v300.i64[0] = v207;
          v211 = v289;
          sub_1AFDFC288();
          v212 = v292[12];
          v213 = v292[16];
          v214 = v291;
          v215 = &v291[v292[20]];
          (*v297.i64[0])(v291, v211, v290);
          *(v214 + v212) = v209;
          *(v214 + v213) = 0;
          v216 = v304.i64[0];
          *v215 = v300.i64[0];
          *(v215 + 1) = v216;
          sub_1AFDFC608();

          sub_1AFBE44DC(&v309, sub_1AF4433E4);
          sub_1AFBE44DC(v214, sub_1AF0D4E74);
          v193 = v299.i64[0];
          goto LABEL_176;
        }

        v205 = *&v313[8];
        v206 = *(v301.i64[0] + v303.i64[0]++);
        *(v302.i64[0] + 16) = v303.i64[0];
        sub_1AFBE4478(&v309, &v307);

        swift_unknownObjectRelease();
        *(v205 + v193) = v206;
      }

      sub_1AFBE44DC(&v309, sub_1AF4433E4);
LABEL_176:
      v195 += 6;
      v194 = (v194 - 1);
      if (!v194)
      {
        goto LABEL_171;
      }
    }
  }

  v114 = v282;
  if (v282)
  {
    v300.i64[0] = 0;
    v279 = (v284 + 4);
    v287 = "ecute+JavaScript.swift";
    v286 = (v299.i64[0] + 32);
    v285 = xmmword_1AFE431C0;
    v114 = v282;
    while (1)
    {
      if (v53)
      {
        v115 = v283;
        if (v30 >= v283)
        {
          break;
        }
      }

      else
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          break;
        }

        v115 = 0;
      }

      v116 = v30;
      if (v30 != v115)
      {
        v116 = v30;
        while (*(v53 + v116) != *(v302.i64[0] + 24))
        {
          if (v115 == ++v116)
          {
            v116 = v115;
            break;
          }
        }
      }

      *&v309 = v30;
      *(&v309 + 1) = v116;
      *&v310 = v53;
      *(&v310 + 1) = v115;
      sub_1AFDFCF68();
      sub_1AF7582E0();
      sub_1AFBE453C();
      sub_1AFDFCF28();
      if (!v117)
      {
        break;
      }

      v303.i64[0] = v30 + sub_1AFDFD048() + 1;
      *(v302.i64[0] + 16) = v303.i64[0];
      v118 = objc_allocWithZone(*(v29 + 3720));
      v119 = sub_1AFDFCEC8();

      v120 = [v118 initWithString_];

      v121 = v284[2];
      if (v121)
      {
        v299.i64[0] = v120;
        v122 = v121 - 1;
        for (i = v279; ; i += 6)
        {
          v124 = *i;
          v310 = i[1];
          v126 = i[3];
          v125 = i[4];
          v127 = *(i + 73);
          v311 = i[2];
          v312 = v126;
          v309 = v124;
          *&v313[9] = v127;
          *v313 = v125;
          v128 = *(&v124 + 1);
          v129 = *(&v311 + 1);
          v130 = v124;
          sub_1AFBE4478(&v309, &v307);
          sub_1AFBE4478(&v309, &v307);
          swift_unknownObjectRelease();

          v304.i64[0] = v122;
          if (v129 == 45)
          {
            break;
          }

          if (v129 == 28)
          {
            v131 = v297.i64[0];
            v132 = v298.i64[0];
            (*v295)(v297.i64[0], v296, v298.i64[0]);
            v133 = sub_1AFDFDCD8();
            (*v294)(v131, v132);
            if ((v133 & 0x100000000) != 0)
            {
              v134 = 0.0;
            }

            else
            {
              v134 = *&v133;
            }

            v135 = v312;
            sub_1AFBE4478(&v309, &v307);

            swift_unknownObjectRelease();
            *(v135 + 4 * v300.i64[0]) = v134;
LABEL_127:
            sub_1AFBE44DC(&v309, sub_1AF4433E4);
            goto LABEL_135;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v307 = 0;
          v308 = 0xE000000000000000;
          sub_1AFDFE218();
          v305 = v307;
          v306 = v308;
          MEMORY[0x1B2718AE0](0xD000000000000011, v287 | 0x8000000000000000);
          sub_1AFBE4478(&v309, &v307);
          swift_unknownObjectRelease();

          v307 = v129;
          type metadata accessor for MTLVertexFormat(0);
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0x20726F6620, 0xE500000000000000);
          MEMORY[0x1B2718AE0](v130, v128);
          v142 = v305;
          v143 = v306;
          v144 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF6EFB60();
          v145 = swift_allocObject();
          *(v145 + 16) = v285;
          *(v145 + 56) = MEMORY[0x1E69E6158];
          *(v145 + 64) = sub_1AF0D544C();
          *(v145 + 32) = v142;
          *(v145 + 40) = v143;

          sub_1AFDFC4C8();

          v146 = v289;
          sub_1AFDFC288();
          v293 = v292[12];
          v147 = v292[16];
          v148 = v291;
          v149 = v143;
          v150 = v142;
          v151 = &v291[v292[20]];
          (*v286)(v291, v146, v290);
          *(v148 + v293) = v144;
          *(v148 + v147) = 0;
          *v151 = v150;
          *(v151 + 1) = v149;
          sub_1AFDFC608();

          sub_1AFBE44DC(&v309, sub_1AF4433E4);
          sub_1AFBE44DC(v148, sub_1AF0D4E74);
LABEL_135:
          if (!v304.i64[0])
          {

            v114 = v282;
            v29 = 0x1E696A000uLL;
            goto LABEL_104;
          }

          v122 = v304.i64[0] - 1;
        }

        v136 = v297.i64[0];
        v137 = v298.i64[0];
        (*v295)(v297.i64[0], v296, v298.i64[0]);
        v138 = sub_1AFDFDCC8();
        v140 = v139;
        (*v294)(v136, v137);
        v141 = *&v313[8];
        if (v140)
        {
          v138 = 0;
        }

        sub_1AFBE4478(&v309, &v307);

        swift_unknownObjectRelease();
        *(v141 + v300.i64[0]) = v138;
        goto LABEL_127;
      }

LABEL_104:
      ++v300.i64[0];
      v53 = v301.i64[0];
      v30 = v303.i64[0];
      if (v300.i64[0] == v114)
      {
        goto LABEL_143;
      }
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v309 = 0;
    *(&v309 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v309 = 0xD000000000000027;
    *(&v309 + 1) = 0x80000001AFF4B1A0;
    v307 = v300.i64[0];
    v152 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v152);

    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v307 = v114;
    v153 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v153);

    v154 = v309;
    v155 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v268 = v155;
      swift_once();
      v155 = v268;
    }

    *&v309 = 0;
    sub_1AF0D4F18(v155, &v309, v154, *(&v154 + 1));
  }

LABEL_143:
  v156 = v288;
  *(v288 + 1) = v277;
  v156[3] = v114;

  v157 = v284;
  v158 = v284[2];
  if (v158)
  {
    v304.i64[0] = v158 - 1;
    for (j = 32; ; j = v303.i64[0] + 96)
    {
      v303.i64[0] = j;
      v160 = (v157 + j);
      v161 = *v160;
      v310 = v160[1];
      v163 = v160[3];
      v162 = v160[4];
      v164 = *(v160 + 73);
      v311 = v160[2];
      v312 = v163;
      v309 = v161;
      *&v313[9] = v164;
      *v313 = v162;
      v165 = v310;
      v166 = v311;
      v167 = v161;
      sub_1AFBE4478(&v309, &v307);
      sub_1AFBE4478(&v309, &v307);
      swift_unknownObjectRelease();
      sub_1AFBE4478(&v309, &v307);

      v168 = v288;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v307 = *v168;
      v170 = v307;
      *v168 = 0x8000000000000000;
      v171 = sub_1AF419914(v167, *(&v167 + 1));
      v173 = v172;
      v174 = *(v170 + 16) + ((v172 & 1) == 0);
      if (*(v170 + 24) >= v174)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v180 = v171;
          sub_1AF84FE04();
          v171 = v180;
        }
      }

      else
      {
        sub_1AF841984(v174, isUniquelyReferenced_nonNull_native);
        v171 = sub_1AF419914(v167, *(&v167 + 1));
        if ((v173 & 1) != (v175 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }
      }

      v157 = v284;
      if (v173)
      {
        v176 = v171;

        v177 = v307;
        v178 = (*(v307 + 56) + 32 * v176);
        *v178 = v165;
        v178[1] = v166;
        swift_unknownObjectRelease();
        sub_1AFBE44DC(&v309, sub_1AF4433E4);
      }

      else
      {
        v177 = v307;
        *(v307 + 8 * (v171 >> 6) + 64) |= 1 << v171;
        *(v177[6] + 16 * v171) = v167;
        v179 = (v177[7] + 32 * v171);
        *v179 = v165;
        v179[1] = v166;
        sub_1AFBE44DC(&v309, sub_1AF4433E4);
        ++v177[2];
      }

      *v288 = v177;

      if (!v304.i64[0])
      {
        break;
      }

      --v304.i64[0];
    }
  }

  if (!*(*v288 + 16) || (sub_1AF419914(0x305F63645F66, 0xE600000000000000), (v181 & 1) == 0))
  {
    v190 = v288;
    v191 = v278;
    sub_1AFBDF754(120, 0xE100000000000000, 121, 0xE100000000000000, 122, 0xE100000000000000, 0x6E6F697469736F70, 0xE800000000000000, 30, v278, v288);
    sub_1AFBDF754(30830, 0xE200000000000000, 31086, 0xE200000000000000, 31342, 0xE200000000000000, 0x6C616D726F6ELL, 0xE600000000000000, 30, v191, v190);
    sub_1AFBDF754(0x305F656C616373, 0xE700000000000000, 0x315F656C616373, 0xE700000000000000, 0x325F656C616373, 0xE700000000000000, 1702521203, 0xE400000000000000, 30, v191, v190);
    sub_1AFBDF064(117, 0xE100000000000000, 118, 0xE100000000000000, 30325, 0xE200000000000000, v191, v190);
    sub_1AFBE07CC(6579570, 0xE300000000000000, 0x6E65657267, 0xE500000000000000, 1702194274, 0xE400000000000000, 0, 0, 0x726F6C6F63, 0xE500000000000000, v191, v190);
    sub_1AFBE07CC(0x5F65737566666964, 0xEB00000000646572, 0x5F65737566666964, 0xED00006E65657267, 0x5F65737566666964, 0xEC00000065756C62, 0x7469736E65746E69, 0xE900000000000079, 0x726F6C6F63, 0xE500000000000000, v191, v190);
    sub_1AFBDFFFC(0x305F63645F66, 0xE600000000000000, 0x315F63645F66, 0xE600000000000000, 0x325F63645F66, 0xE600000000000000, 0x7974696361706FLL, 0xE700000000000000, 0x726F6C6F63, 0xE500000000000000, v191, v190);
    sub_1AFBDFFFC(0x315F746F72, 0xE500000000000000, 0x325F746F72, 0xE500000000000000, 0x335F746F72, 0xE500000000000000, 0x305F746F72, 0xE500000000000000, 0x7461746E6569726FLL, 0xEB000000006E6F69, v191, v190);
  }

  v182 = v288;
  v183 = v278;
  sub_1AFBDF754(120, 0xE100000000000000, 121, 0xE100000000000000, 122, 0xE100000000000000, 0x6E6F697469736F70, 0xE800000000000000, 30, v278, v288);
  sub_1AFBDF754(30830, 0xE200000000000000, 31086, 0xE200000000000000, 31342, 0xE200000000000000, 0x6C616D726F6ELL, 0xE600000000000000, 30, v183, v182);
  sub_1AFBDF754(0x305F656C616373, 0xE700000000000000, 0x315F656C616373, 0xE700000000000000, 0x325F656C616373, 0xE700000000000000, 1702521203, 0xE400000000000000, 30, v183, v182);
  sub_1AFBDF064(117, 0xE100000000000000, 118, 0xE100000000000000, 30325, 0xE200000000000000, v183, v182);
  sub_1AFBE07CC(6579570, 0xE300000000000000, 0x6E65657267, 0xE500000000000000, 1702194274, 0xE400000000000000, 0, 0, 0x726F6C6F63, 0xE500000000000000, v183, v182);
  sub_1AFBE07CC(0x5F65737566666964, 0xEB00000000646572, 0x5F65737566666964, 0xED00006E65657267, 0x5F65737566666964, 0xEC00000065756C62, 0x7469736E65746E69, 0xE900000000000079, 0x726F6C6F63, 0xE500000000000000, v183, v182);
  sub_1AFBDFFFC(0x305F63645F66, 0xE600000000000000, 0x315F63645F66, 0xE600000000000000, 0x325F63645F66, 0xE600000000000000, 0x7974696361706FLL, 0xE700000000000000, 0x726F6C6F63, 0xE500000000000000, v183, v182);
  sub_1AFBDFFFC(0x315F746F72, 0xE500000000000000, 0x325F746F72, 0xE500000000000000, 0x335F746F72, 0xE500000000000000, 0x305F746F72, 0xE500000000000000, 0x7461746E6569726FLL, 0xEB000000006E6F69, v183, v182);
  v184 = *v182;
  if (*(*v182 + 16))
  {
    v185 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
    if (v186)
    {
      v187 = *(v184 + 56) + 32 * v185;
      if (*(v187 + 24) == 31)
      {
        v188 = *v187;
        v189 = *(v187 + 8);
        if ([swift_unknownObjectRetain_n() storageMode] == 2)
        {
          swift_unknownObjectRelease_n();
        }

        else
        {
          v217 = [v188 contents];
          v218 = v188;
          swift_unknownObjectRelease();
          if (v282)
          {
            v219 = &v217[v189];
            v302 = vdupq_n_s32(0x3E906EBBu);
            v301 = vdupq_n_s32(0x3D6147AEu);
            v300 = vdupq_n_s32(0x3F870A3Du);
            v299 = vdupq_n_s32(0x414EB852u);
            v298 = xmmword_1AFE42AB0;
            v297 = vdupq_n_s32(0x3D25AEE6u);
            v220 = v282;
            do
            {
              v304 = *v219;
              v221.i64[0] = 0x3F0000003F000000;
              v221.i64[1] = 0x3F0000003F000000;
              v222.i64[0] = vaddq_f32(vmulq_f32(v304, v302), v221).u64[0];
              v222.f32[2] = vmuls_lane_f32(0.28209, v304, 2) + 0.5;
              v222.i32[3] = 0;
              v303 = vmaxnmq_f32(v222, 0);
              v223 = vdivq_f32(vaddq_f32(v303, v301), v300);
              v223.i32[3] = 0;
              v224 = _simd_pow_f4(v223, v298);
              v225 = vcgeq_f32(v297, v303);
              v225.i32[3] = 0;
              v303 = vbslq_s8(vcltzq_s32(v225), vdivq_f32(v303, v299), v224);
              v226 = expf(-v304.f32[3]);
              v227 = v303;
              v227.f32[3] = 1.0 / (v226 + 1.0);
              *v219++ = v227;
              --v220;
            }

            while (v220);
          }
        }
      }
    }
  }

  v228 = *v288;
  if (!*(*v288 + 16))
  {
    goto LABEL_200;
  }

  v229 = sub_1AF419914(1702521203, 0xE400000000000000);
  if ((v230 & 1) == 0)
  {
    goto LABEL_200;
  }

  v231 = *(v228 + 56) + 32 * v229;
  if (*(v231 + 24) != 30)
  {
    goto LABEL_200;
  }

  v232 = *v231;
  v233 = *(v231 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] == 2)
  {
    swift_unknownObjectRelease_n();
  }

  else
  {
    v234 = [v232 contents];
    v235 = v232;
    swift_unknownObjectRelease();
    if (v282)
    {
      if (v282 >= 6)
      {
        v237 = 0;
        v256 = &v234[v233];
        v257 = 12 * (v282 - 1);
        if (&v234[v233 + 8 + v257] >= &v234[v233 + 8] && is_mul_ok(v282 - 1, 0xCuLL) && &v256->i32[v257 / 4 + 1] >= &v256->i32[1] && is_mul_ok(v282 - 1, 0xCuLL) && (v256 + v257) >= v256 && is_mul_ok(v282 - 1, 0xCuLL))
        {
          v237 = v282 & 0xFFFFFFFFFFFFFFFELL;
          v258 = v282 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v236.i64[0] = v256[1].i64[0];
            v302 = v236;
            v304 = *v256;
            v259.f32[0] = expf(v236.f32[1]);
            v303 = v259;
            v260.f32[0] = expf(*v302.i32);
            v260.i32[1] = v303.i32[0];
            v302 = v260;
            v261.f32[0] = expf(v304.f32[1]);
            v303 = v261;
            v262.f32[0] = expf(v304.f32[0]);
            v262.i32[1] = v303.i32[0];
            v303 = v262;
            v263 = expf(v304.f32[2]);
            v264 = v303;
            v264.f32[2] = v263;
            v303 = v264;
            v265 = expf(v304.f32[3]);
            v236 = v303;
            v236.f32[3] = v265;
            *v256 = v236;
            v256[1].i64[0] = v302.i64[0];
            v256 = (v256 + 24);
            v258 -= 2;
          }

          while (v258);
          if (v282 == v237)
          {
            goto LABEL_200;
          }
        }
      }

      else
      {
        v237 = 0;
      }

      v238 = v282 - v237;
      v239 = &v234[12 * v237 + 8 + v233];
      do
      {
        *(v239 - 2) = expf(*(v239 - 2));
        *(v239 - 1) = expf(*(v239 - 1));
        *v239 = expf(*v239);
        v239 += 3;
        --v238;
      }

      while (v238);
    }
  }

LABEL_200:
  v240 = *v288;
  if (!*(*v288 + 16))
  {
  }

  v241 = sub_1AF419914(0x7461746E6569726FLL, 0xEB000000006E6F69);
  if ((v242 & 1) == 0)
  {
  }

  v243 = *(v240 + 56) + 32 * v241;
  if (*(v243 + 24) != 31)
  {
  }

  v244 = *v243;
  v245 = *(v243 + 8);
  if ([swift_unknownObjectRetain_n() storageMode] != 2)
  {
    v246 = [v244 contents];
    v247 = v244;
    swift_unknownObjectRelease();
    v248 = v282;
    if (v282)
    {
      v249 = &v246[v245];
      do
      {
        v250 = vmulq_f32(*v249, *v249);
        *v250.i8 = vadd_f32(*v250.i8, *&vextq_s8(v250, v250, 8uLL));
        v251 = vdupq_lane_s32(vadd_f32(*v250.i8, vdup_lane_s32(*v250.i8, 1)), 0);
        v252 = vrsqrteq_f32(v251);
        v253 = vmulq_f32(v252, vrsqrtsq_f32(v251, vmulq_f32(v252, v252)));
        *v249 = vbslq_s8(vceqzq_f32(v251), *v249, vmulq_f32(*v249, vmulq_f32(v253, vrsqrtsq_f32(v251, vmulq_f32(v253, v253)))));
        ++v249;
        --v248;
      }

      while (v248);
    }
  }

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1AFBE3D98(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1AFBE3EEC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v5 = a1;
    v6 = a1 >> 32;
    return sub_1AFBE3EEC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v11[0] = a1;
  LOWORD(v11[1]) = a2;
  BYTE2(v11[1]) = BYTE2(a2);
  BYTE3(v11[1]) = BYTE3(a2);
  BYTE4(v11[1]) = BYTE4(a2);
  BYTE5(v11[1]) = BYTE5(a2);
LABEL_9:
  v12[0] = sub_1AF758248(v11);
  v12[1] = v8;
  v12[2] = v9;
  v13 = v10;
  return a3(v12);
}

uint64_t sub_1AFBE3EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = sub_1AFDFBDB8();
  if (v6)
  {
    v6 = v6 + a1 - sub_1AFDFBDE8();
  }

  sub_1AFDFBDD8();
  v11[0] = sub_1AF758248(v6);
  v11[1] = v7;
  v11[2] = v8;
  v12 = v9;
  return a4(v11);
}

uint64_t sub_1AFBE3F9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = sub_1AFDFE428();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  if (a6)
  {

    v20 = sub_1AFDFE408();
    MEMORY[0x1EEE9AC00](v20, v21);
    v50 = v22;
    *(&v42 - 4) = v22;
    *(&v42 - 3) = a3;
    v44 = a3;
    v46 = a4;
    v40 = a4;
    v41 = a5;
    sub_1AFBE3D98(a1, a2, sub_1AFBE4458);
    v47 = v6;
    if (v6)
    {
      sub_1AFDFE408();
      v23 = v19;
      sub_1AFDFE418();
      v24 = v45;
      v25 = *(v43 + 8);
      v25(v15, v45);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1AFDFE218();

      v48 = 0x6E6964616F4C202DLL;
      v49 = 0xEA00000000002067;
      MEMORY[0x1B2718AE0](v44, v46);
      MEMORY[0x1B2718AE0](0x203A656D6954202ELL, 0xE800000000000000);
      v26 = sub_1AFDFF418();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v28 = v48;
      v27 = v49;
      v29 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v38 = v29;
        swift_once();
        v29 = v38;
      }

      v48 = 0;
      sub_1AF0D4F18(v29, &v48, v28, v27);

      return (v25)(v23, v24);
    }

    else
    {
      sub_1AFDFE408();
      v31 = v19;
      sub_1AFDFE418();
      v32 = *(v43 + 8);
      v33 = v45;
      v32(v15, v45);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1AFDFE218();

      v48 = 0x6E6964616F4C202DLL;
      v49 = 0xEA00000000002067;
      MEMORY[0x1B2718AE0](v44, v46);
      MEMORY[0x1B2718AE0](0x203A656D6954202ELL, 0xE800000000000000);
      v34 = sub_1AFDFF418();
      MEMORY[0x1B2718AE0](v34);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v36 = v48;
      v35 = v49;
      v37 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v39 = v37;
        swift_once();
        v37 = v39;
      }

      v48 = 0;
      sub_1AF0D4F18(v37, &v48, v36, v35);

      return (v32)(v31, v33);
    }
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFBE4478(uint64_t a1, uint64_t a2)
{
  sub_1AF4433E4(0, a2);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFBE44DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFBE453C()
{
  result = qword_1EB63E3E8;
  if (!qword_1EB63E3E8)
  {
    sub_1AF7582E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E3E8);
  }

  return result;
}

id sub_1AFBE45A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  v5 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
  }

  os_unfair_lock_unlock(*(v5 + 24));
  v7 = *(v2 + 16);
  v8 = *(v7 + 656);
  v104[6] = *(v7 + 640);
  v104[7] = v8;
  v105[0] = *(v7 + 672);
  v9 = *(v7 + 592);
  v104[2] = *(v7 + 576);
  v104[3] = v9;
  v10 = *(v7 + 624);
  v104[4] = *(v7 + 608);
  v104[5] = v10;
  v11 = *(v7 + 560);
  v104[0] = *(v7 + 544);
  v104[1] = v11;
  *(v105 + 9) = *(v7 + 681);

  if (sub_1AF448314(v104) == 1)
  {

    return 0;
  }

  if (*(v7 + 696) != 1)
  {
    v13 = *(v7 + 552);
    ObjectType = swift_getObjectType();
    *(v7 + 688) = (*(v13 + 8))(*(v7 + 568), v4, v6, ObjectType, v13, *(v7 + 560));
    swift_unknownObjectRelease();
    *(v7 + 696) = 1;
  }

  v15 = *(v7 + 688);
  swift_unknownObjectRetain();

  if (!v15)
  {
    return 0;
  }

  v16 = *(v2 + 16);
  v17 = *(v16 + 656);
  v102[6] = *(v16 + 640);
  v102[7] = v17;
  v103[0] = *(v16 + 672);
  v18 = *(v16 + 592);
  v102[2] = *(v16 + 576);
  v102[3] = v18;
  v19 = *(v16 + 624);
  v102[4] = *(v16 + 608);
  v102[5] = v19;
  v20 = *(v16 + 560);
  v102[0] = *(v16 + 544);
  v102[1] = v20;
  *(v103 + 9) = *(v16 + 681);

  if (sub_1AF448314(v102) == 1)
  {
  }

  else
  {
    v21 = *(v16 + 552);
    v22 = *(v16 + 560);
    v23 = *(v16 + 568);
    v24 = swift_getObjectType();
    v25 = (*(v21 + 16))(v23, v4, v24, v21, v22);

    if (v25)
    {
      v71 = [swift_unknownObjectRetain() storageMode] != 3;
LABEL_27:
      v27 = 2;
      goto LABEL_28;
    }
  }

  v26 = *(v2 + 24);
  if (v26 == 2)
  {
    goto LABEL_34;
  }

  if ((v26 & 0x1000000000000) == 0)
  {
    v71 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_28;
  }

  v25 = sub_1AF750DEC(0x445F45555141504FLL, 0xEC00000048545045, 0, 0, 0, 1, 1);

  if (!v25)
  {
    CFXTextureDescriptorMakeDefault(&v72);
    sub_1AF46749C([v15 width], &v72);
    sub_1AF4674A4([v15 height], &v72);
    v28 = *(v2 + 16);
    sub_1AF46748C(*(v28 + 448), &v72);
    sub_1AFA4DCA8(&v72);
    sub_1AF48F3EC(&v72);
    v29 = *(v28 + 16);

    v30 = CFXGPUDeviceGetMTLDevice(v29);

    LODWORD(v28) = [v30 supportsMemorylessRenderTargets];
    swift_unknownObjectRelease();
    if (v28 && *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_canUseImGUI) != 1)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    sub_1AF5F7474(v31, &v72);
    v32 = *(*(*(v2 + 16) + 192) + 16);

    v93 = v72;
    *&v94 = v73;
    v33 = CFXTextureAllocatorPerFrameAllocate(v32, &v93);
    if (!v33)
    {
      while (1)
      {
LABEL_34:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v25 = v33;
    v34 = sub_1AFDFCEC8();
    [v25 setLabel_];

    v35 = swift_unknownObjectRetain();
    sub_1AF824548(v35, 0x445F45555141504FLL, 0xEC00000048545045);

    swift_unknownObjectRetain();
    v71 = 0;
    goto LABEL_27;
  }

  v71 = 0;
  if ([swift_unknownObjectRetain() storageMode] == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

LABEL_28:
  v36 = *(v2 + 16);
  v37 = v36[41];
  v38 = v36[39];
  v90 = v36[40];
  v91 = v37;
  v39 = v36[41];
  v92[0] = v36[42];
  v40 = v36[37];
  v41 = v36[35];
  v86 = v36[36];
  v87 = v40;
  v42 = v36[37];
  v43 = v36[39];
  v88 = v36[38];
  v89 = v43;
  v44 = v36[35];
  v85[0] = v36[34];
  v85[1] = v44;
  *(v92 + 9) = *(v36 + 681);
  v99 = v90;
  v100 = v39;
  v101[0] = v36[42];
  *(v101 + 9) = *(v36 + 681);
  v95 = v86;
  v96 = v42;
  v97 = v88;
  v98 = v38;
  v93 = v85[0];
  v94 = v41;

  if (sub_1AF448314(&v93) == 1)
  {
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  sub_1AF6B724C(v85, v83, &unk_1ED730830);

  v45 = *(&v93 + 1);
  swift_unknownObjectRetain();
  sub_1AF0D9DB0(v85, &unk_1ED730830);
  v46 = swift_getObjectType();
  v47 = (*(v45 + 112))(v46, v45);
  swift_unknownObjectRelease();
  v48 = *(v2 + 16);
  v49 = v48[41];
  v50 = v48[39];
  v80 = v48[40];
  v81 = v49;
  v51 = v48[41];
  v82[0] = v48[42];
  v52 = v48[37];
  v53 = v48[35];
  v76 = v48[36];
  v77 = v52;
  v54 = v48[37];
  v55 = v48[39];
  v78 = v48[38];
  v79 = v55;
  v56 = v48[35];
  v75[0] = v48[34];
  v75[1] = v56;
  *(v82 + 9) = *(v48 + 681);
  v83[6] = v80;
  v83[7] = v51;
  v84[0] = v48[42];
  *(v84 + 9) = *(v48 + 681);
  v83[2] = v76;
  v83[3] = v54;
  v83[4] = v78;
  v83[5] = v50;
  v83[0] = v75[0];
  v83[1] = v53;

  if (sub_1AF448314(v83) == 1)
  {
    goto LABEL_34;
  }

  sub_1AF6B724C(v75, v74, &unk_1ED730830);

  v57 = *(&v83[0] + 1);
  swift_unknownObjectRetain();
  sub_1AF0D9DB0(v75, &unk_1ED730830);
  v58 = swift_getObjectType();
  (*(v57 + 120))(v58, v57);
  swift_unknownObjectRelease();
  v59 = objc_allocWithZone(MEMORY[0x1E6974128]);
  swift_unknownObjectRetain();
  v12 = [v59 init];
  v60 = [v12 colorAttachments];
  v61 = [v60 objectAtIndexedSubscript_];

  v62 = nullsub_106();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  [v61 setTexture_];
  [v61 setLoadAction_];
  [v61 setStoreAction_];
  [v61 setClearColor_];
  [v61 setLevel_];

  if (v25)
  {
    v69 = [v12 depthAttachment];
    swift_unknownObjectRetain();
    [v69 setTexture_];
    [v69 setLoadAction_];
    [v69 setStoreAction_];
    [v69 setClearDepth_];
    [v69 setLevel_];

    swift_unknownObjectRelease();
    sub_1AF474EC4();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease_n();
  return v12;
}

uint64_t sub_1AFBE4EC4()
{
  sub_1AF0D879C(v8);
  v1 = *(&v8[0] + 1);
  v0 = *&v8[0];

  v2 = sub_1AF750DEC(v0, v1, 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v8);

  if (!v2)
  {
    sub_1AF0D879C(v9);
    v4 = *(&v9[0] + 1);
    v3 = *&v9[0];

    v2 = sub_1AF750DEC(v3, v4, 0, 0, 0, 1, 1);
    sub_1AF0D8F38(v9);

    if (!v2)
    {
      sub_1AF0D879C(v10);
      v6 = *(&v10[0] + 1);
      v5 = *&v10[0];

      v2 = sub_1AF750DEC(v5, v6, 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v10);

      if (!v2)
      {

        v2 = sub_1AF7055E4();
      }
    }
  }

  return v2;
}

uint64_t sub_1AFBE502C(uint64_t a1)
{
  v2 = v1;
  v127 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  if ((*(*(v1 + 16) + 392) & 1) == 0)
  {
    v39 = 0;
    while (1)
    {
      v51 = *(v2 + 56);
      if (*(v51 + 16) && (v52 = sub_1AF0D8ED4(v3), (v53 & 1) != 0))
      {
        v54 = (*(v51 + 56) + 80 * v52);
        v146 = *v54;
        v55 = v54[3];
        v56 = v54[4];
        v57 = v54[2];
        v147 = v54[1];
        v148 = v57;
        v149 = v55;
        v150 = v56;
        v131 = v54[1];
        v132 = v54[2];
        v133 = v54[3];
        v134 = v54[4];
        v130 = *v54;
        sub_1AF0D8EDC(&v146, &v151);
        v153 = v132;
        v154 = v133;
        v151 = v130;
        v152 = v131;
        v155 = v134;
        v129 = v130;
        v128 = *(&v131 + 1);
        v58 = v131;
        v59 = v132;
        v60 = v133;
        v61 = BYTE8(v133);
        v62 = BYTE8(v132);
      }

      else
      {
        v61 = 0;
        v60 = 0;
        v62 = 0;
        v59 = 0;
        v128 = 0;
        v58 = 0;
        v129 = 0uLL;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v151 = 0u;
      }

      v63 = v2;
      v64 = *(*(*(v2 + 16) + 192) + 32);
      v65 = *(v64 + 16);

      if (v65 && (v66 = sub_1AF419914(v129, *(&v129 + 1)), (v67 & 1) != 0))
      {
        v40 = *(*(v64 + 56) + 8 * v66);
        swift_unknownObjectRetain();

        v2 = v63;
      }

      else
      {

        v68 = nullsub_106();
        LOBYTE(v146) = v62 & 1;
        LOBYTE(v139) = v62 & 1;
        v157 = v59;
        v72 = 32;
        if (!v60)
        {
          v72 = 1;
        }

        v158 = v62 & 1;
        if ((v61 & 1) == 0)
        {
          v72 = v60;
        }

        v159 = v59;
        v160 = v62 & 1;
        v161 = v58;
        v162 = v72;
        v163 = v128;
        v164 = v68;
        v165 = v69;
        v166 = v70;
        v167 = v71;
        v2 = v63;
        v73 = *(v63 + 16);
        v74 = v73[41];
        v136 = v73[40];
        v137 = v74;
        v138[0] = v73[42];
        v75 = v73[37];
        v132 = v73[36];
        v133 = v75;
        v76 = v73[39];
        v134 = v73[38];
        v135 = v76;
        v77 = v73[35];
        v130 = v73[34];
        v131 = v77;
        *(v138 + 9) = *(v73 + 681);

        if (sub_1AF448314(&v130) == 1)
        {
          goto LABEL_44;
        }

        v78 = *(&v130 + 1);
        ObjectType = swift_getObjectType();
        v80 = *(v78 + 80);
        swift_unknownObjectRetain();
        v81 = v80(ObjectType, v78);
        v83 = v82;

        swift_unknownObjectRelease();
        v84 = sub_1AFBE973C(0, 2, v81, v83);
        v86 = v85;
        v88 = v87;

        v40 = sub_1AF750DEC(v129, *(&v129 + 1), v84, v86, v88, 0, 1);
      }

      v41 = v39 + 1;
      v42 = [v127 colorAttachments];
      v43 = [v42 objectAtIndexedSubscript_];

      v44 = nullsub_106();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      sub_1AF0D9DB0(&v151, &qword_1ED730AD0);
      [v43 setTexture_];
      [v43 setLoadAction_];
      [v43 setStoreAction_];
      [v43 setClearColor_];
      [v43 setLevel_];
      swift_unknownObjectRelease();

      v39 = v41;
      if (v41 == 4)
      {
        goto LABEL_10;
      }
    }
  }

  sub_1AF0D879C(&v139);
  v4 = v139;

  v5 = sub_1AF750DEC(v4, *(&v4 + 1), 0, 0, 0, 1, 1);

  if (!v5)
  {
    v6 = nullsub_106();
    v10 = v144;
    v11 = 32;
    if (!v144)
    {
      v11 = 1;
    }

    if (v145)
    {
      v10 = v11;
    }

    v157 = v142;
    v158 = v143;
    v159 = v142;
    v160 = v143;
    v161 = v140;
    v162 = v10;
    v163 = v141;
    v164 = v6;
    v165 = v7;
    v166 = v8;
    v167 = v9;
    v12 = *(v2 + 16);
    v13 = v12[41];
    v136 = v12[40];
    v137 = v13;
    v138[0] = v12[42];
    v14 = v12[37];
    v132 = v12[36];
    v133 = v14;
    v15 = v12[39];
    v134 = v12[38];
    v135 = v15;
    v16 = v12[35];
    v130 = v12[34];
    v131 = v16;
    *(v138 + 9) = *(v12 + 681);

    if (sub_1AF448314(&v130) == 1)
    {
      goto LABEL_44;
    }

    v17 = *(&v130 + 1);
    v18 = swift_getObjectType();
    v19 = *(v17 + 80);
    swift_unknownObjectRetain();
    v20 = v19(v18, v17);
    v22 = v21;

    swift_unknownObjectRelease();
    v23 = sub_1AFBE973C(0, 2, v20, v22);
    v25 = v24;
    v27 = v26;

    v5 = sub_1AF750DEC(v4, *(&v4 + 1), v23, v25, v27, 0, 1);
  }

  v28 = [v127 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript_];

  v30 = nullsub_106();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1AF0D8F38(&v139);
  [v29 setTexture_];
  [v29 setLoadAction_];
  [v29 setStoreAction_];
  [v29 setClearColor_];
  [v29 setLevel_];
  swift_unknownObjectRelease();

LABEL_10:
  sub_1AF0D879C(&v146);
  v37 = v146;

  v38 = sub_1AF750DEC(v37, *(&v37 + 1), 0, 0, 0, 1, 1);

  if (v38)
  {
    sub_1AF0D8F38(&v146);
    goto LABEL_33;
  }

  v89 = nullsub_106();
  v93 = v149;
  v94 = 32;
  if (!v149)
  {
    v94 = 1;
  }

  if (BYTE8(v149))
  {
    v93 = v94;
  }

  *&v151 = v148;
  BYTE8(v151) = BYTE8(v148);
  *&v152 = v148;
  BYTE8(v152) = BYTE8(v148);
  *&v153 = v147;
  *(&v153 + 1) = v93;
  *&v154 = *(&v147 + 1);
  *(&v154 + 1) = v89;
  *&v155 = v90;
  *(&v155 + 1) = v91;
  v156 = v92;
  v95 = *(v2 + 16);
  v96 = v95[41];
  v136 = v95[40];
  v137 = v96;
  v138[0] = v95[42];
  v97 = v95[37];
  v132 = v95[36];
  v133 = v97;
  v98 = v95[39];
  v134 = v95[38];
  v135 = v98;
  v99 = v95[35];
  v130 = v95[34];
  v131 = v99;
  *(v138 + 9) = *(v95 + 681);

  if (sub_1AF448314(&v130) != 1)
  {
    v100 = *(&v130 + 1);
    v101 = swift_getObjectType();
    v102 = *(v100 + 80);
    swift_unknownObjectRetain();
    v103 = v102(v101, v100);
    v105 = v104;

    swift_unknownObjectRelease();
    v106 = sub_1AFBE973C(0, 2, v103, v105);
    v108 = v107;
    v110 = v109;

    v38 = sub_1AF750DEC(v37, *(&v37 + 1), v106, v108, v110, 0, 1);
    sub_1AF0D8F38(&v146);

    if (!v38)
    {
      return v127;
    }

LABEL_33:
    v111 = *(v2 + 16);
    v112 = *(v111 + 656);
    v136 = *(v111 + 640);
    v137 = v112;
    v138[0] = *(v111 + 672);
    v113 = *(v111 + 592);
    v132 = *(v111 + 576);
    v133 = v113;
    v114 = *(v111 + 624);
    v134 = *(v111 + 608);
    v135 = v114;
    v115 = *(v111 + 560);
    v130 = *(v111 + 544);
    v131 = v115;
    *(v138 + 9) = *(v111 + 681);

    if (sub_1AF448314(&v130) == 1)
    {
    }

    else
    {
      v116 = *(v111 + 552);
      v117 = *(v111 + 560);
      v118 = *(v111 + 568);
      v119 = swift_getObjectType();
      v120 = (*(v116 + 16))(v118, a1, v119, v116, v117);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      if (v120)
      {
        swift_unknownObjectRelease();
        if (v38 == v120)
        {
          v121 = 1;
        }

        else
        {
          v121 = 2;
        }

LABEL_40:
        v122 = [v38 storageMode];
        v123 = v122 != 3;
        if (v122 == 3)
        {
          v121 = 2;
        }

        v124 = [v127 depthAttachment];
        swift_unknownObjectRetain();
        [v124 setTexture_];
        [v124 setLoadAction_];
        [v124 setStoreAction_];
        [v124 setClearDepth_];
        [v124 setLevel_];

        swift_unknownObjectRelease();
        sub_1AF474EC4();
        swift_unknownObjectRelease();
        return v127;
      }
    }

    v121 = 2;
    goto LABEL_40;
  }

LABEL_44:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBE5ADC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 280);
    v5 = v4[8];

    if (v5)
    {
      if (*v4[12])
      {
        swift_unknownObjectRetain();
      }

      else
      {
        v7 = [swift_unknownObjectRetain() renderCommandEncoder];
        v8 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v8);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v9 = sub_1AFDFCEC8();

        [v7 setLabel_];

        v10 = v4[12];
        *v10 = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v11 = *v4[12];
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (!v11)
        {
        }
      }
    }

    else
    {
      v6 = v4[7];
      swift_unknownObjectRetain();
      if (!v6)
      {
      }
    }

    swift_getObjectType();
    sub_1AFB19490(v3, a2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFBE5C9C(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  sub_1AF0D879C(&v141);
  v4 = v141;

  v5 = sub_1AF750DEC(v4, *(&v4 + 1), 0, 0, 0, 1, 1);

  if (!v5)
  {
    v6 = nullsub_106();
    v10 = v146;
    v11 = 32;
    if (!v146)
    {
      v11 = 1;
    }

    if (v147)
    {
      v10 = v11;
    }

    v166 = v144;
    v167 = v145;
    v168 = v144;
    v169 = v145;
    v170 = v142;
    v171 = v10;
    v172 = v143;
    v173 = v6;
    v174 = v7;
    v175 = v8;
    v176 = v9;
    v12 = *(v1 + 16);
    v13 = v12[41];
    v138 = v12[40];
    v139 = v13;
    v140[0] = v12[42];
    v14 = v12[37];
    v134 = v12[36];
    v135 = v14;
    v15 = v12[39];
    v136 = v12[38];
    v137 = v15;
    v16 = v12[35];
    v132 = v12[34];
    v133 = v16;
    *(v140 + 9) = *(v12 + 681);

    if (sub_1AF448314(&v132) == 1)
    {
      goto LABEL_57;
    }

    v17 = *(&v132 + 1);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 80);
    swift_unknownObjectRetain();
    v20 = v19(ObjectType, v17);
    v22 = v21;

    swift_unknownObjectRelease();
    v23 = sub_1AFBE973C(0, 2, v20, v22);
    v25 = v24;
    LODWORD(ObjectType) = v26;

    v5 = sub_1AF750DEC(v4, *(&v4 + 1), v23, v25, ObjectType, 0, 1);
  }

  v27 = [v3 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  v29 = nullsub_106();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v28 setTexture_];
  [v28 setLoadAction_];
  [v28 setStoreAction_];
  [v28 setClearColor_];
  [v28 setLevel_];

  v36 = *(v2 + 24);
  if (v36 != 2)
  {
    sub_1AF0D8F38(&v141);
    if (v145)
    {
      v131 = -log2f(*&v144);
      if ((v36 & 1) == 0)
      {
LABEL_11:
        v37 = *(*(v2 + 16) + 16);

        v38 = CFXGPUDeviceGetMTLDevice(v37);

        v39 = [v38 supportsMemorylessRenderTargets];
        swift_unknownObjectRelease();
        if ((v36 & 0x100000000000000) != 0 || !v39)
        {
          sub_1AF0D879C(&v148);
          v44 = *(&v148 + 1);
          v45 = v148;

          v41 = sub_1AF750DEC(v45, v44, 0, 0, 0, 1, 1);

          if (v41)
          {
LABEL_19:
            sub_1AF0D8F38(&v148);
            v46 = &selRef_setAnimationTimingFunction_;
            v47 = &selRef_setMotionTexture_;
LABEL_40:
            swift_unknownObjectRetain_n();
LABEL_41:
            v114 = *(v2 + 16);
            v115 = *(v114 + 656);
            v138 = *(v114 + 640);
            v139 = v115;
            v140[0] = *(v114 + 672);
            v116 = *(v114 + 592);
            v134 = *(v114 + 576);
            v135 = v116;
            v117 = *(v114 + 624);
            v136 = *(v114 + 608);
            v137 = v117;
            v118 = *(v114 + 560);
            v132 = *(v114 + 544);
            v133 = v118;
            *(v140 + 9) = *(v114 + 681);

            if (sub_1AF448314(&v132) == 1)
            {

              if (!v41)
              {
                v119 = 1;
LABEL_55:
                v125 = [v3 depthAttachment];
                [v125 setTexture_];
                [v125 setLoadAction_];
                [v125 v47[283]];
                [v125 setClearDepth_];
                [v125 v46[424]];

                swift_unknownObjectRelease_n();
                goto LABEL_56;
              }

LABEL_52:
              swift_unknownObjectRelease();
              v119 = 2;
              goto LABEL_55;
            }

            v120 = *(v114 + 552);
            v121 = *(v114 + 560);
            v122 = *(v114 + 568);
            v123 = swift_getObjectType();
            v124 = (*(v120 + 16))(v122, a1, v123, v120, v121);

            if (v41)
            {
              if (!v124)
              {
                v47 = &selRef_setMotionTexture_;
                goto LABEL_52;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v41 == v124)
              {
                v119 = 1;
              }

              else
              {
                v119 = 2;
              }
            }

            else if (v124)
            {
              swift_unknownObjectRelease();
              v119 = 2;
            }

            else
            {
              v119 = 1;
            }

            v47 = &selRef_setMotionTexture_;
            goto LABEL_55;
          }

          v127 = v44;
          v129 = v3;
          v70 = nullsub_106();
          v74 = v153;
          v75 = 32;
          if (!v153)
          {
            v75 = 1;
          }

          if (v154)
          {
            v74 = v75;
          }

          v155 = v151;
          v156 = v152;
          v157 = v151;
          v158 = v152;
          v159 = v149;
          v160 = v74;
          v161 = v150;
          v162 = v70;
          v163 = v71;
          v164 = v72;
          v165 = v73;
          v76 = *(v2 + 16);
          v77 = v76[41];
          v138 = v76[40];
          v139 = v77;
          v140[0] = v76[42];
          v78 = v76[37];
          v134 = v76[36];
          v135 = v78;
          v79 = v76[39];
          v136 = v76[38];
          v137 = v79;
          v80 = v76[35];
          v132 = v76[34];
          v133 = v80;
          *(v140 + 9) = *(v76 + 681);

          if (sub_1AF448314(&v132) != 1)
          {
            v81 = *(&v132 + 1);
            v82 = swift_getObjectType();
            v83 = *(v81 + 80);
            swift_unknownObjectRetain();
            v84 = v83(v82, v81);
            v86 = v85;

            swift_unknownObjectRelease();
            v87 = sub_1AFBE973C(0, 2, v84, v86);
            v89 = v88;
            v91 = v90;

            v41 = sub_1AF750DEC(v45, v127, v87, v89, v91, 0, 1);
            sub_1AF0D8F38(&v148);

            goto LABEL_39;
          }
        }

        else
        {
          sub_1AF0D879C(&v148);
          v40 = v148;

          v41 = sub_1AF750DEC(v40, *(&v40 + 1), 0, 0, 0, 1, 1);

          if (v41)
          {
            goto LABEL_19;
          }

          v129 = v3;
          v92 = nullsub_106();
          v96 = v153;
          v97 = 32;
          if (!v153)
          {
            v97 = 1;
          }

          if (v154)
          {
            v96 = v97;
          }

          v155 = v151;
          v156 = v152;
          v157 = v151;
          v158 = v152;
          v159 = v149;
          v160 = v96;
          v161 = v150;
          v162 = v92;
          v163 = v93;
          v164 = v94;
          v165 = v95;
          v98 = *(v2 + 16);
          v99 = v98[41];
          v138 = v98[40];
          v139 = v99;
          v140[0] = v98[42];
          v100 = v98[37];
          v134 = v98[36];
          v135 = v100;
          v101 = v98[39];
          v136 = v98[38];
          v137 = v101;
          v102 = v98[35];
          v132 = v98[34];
          v133 = v102;
          *(v140 + 9) = *(v98 + 681);

          if (sub_1AF448314(&v132) != 1)
          {
            v103 = *(&v132 + 1);
            v104 = swift_getObjectType();
            v105 = *(v103 + 80);
            swift_unknownObjectRetain();
            v106 = v105(v104, v103);
            v108 = v107;

            swift_unknownObjectRelease();
            v109 = sub_1AFBE973C(0, 3, v106, v108);
            v111 = v110;
            v113 = v112;

            v41 = sub_1AF750DEC(v40, *(&v40 + 1), v109, v111, v113, 0, 1);
            sub_1AF0D8F38(&v148);

LABEL_39:
            v3 = v129;
            v46 = &selRef_setAnimationTimingFunction_;
            v47 = &selRef_setMotionTexture_;
            if (!v41)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }

        goto LABEL_57;
      }
    }

    else
    {
      v131 = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1AF0D879C(&v148);
    v42 = v148;

    v43 = sub_1AF750DEC(v42, *(&v42 + 1), 0, 0, 0, 1, 1);

    if (v43)
    {
      sub_1AF0D8F38(&v148);
    }

    else
    {
      v128 = v3;
      v48 = nullsub_106();
      v52 = v153;
      v53 = 32;
      if (!v153)
      {
        v53 = 1;
      }

      if (v154)
      {
        v52 = v53;
      }

      v155 = v151;
      v156 = v152;
      v157 = v151;
      v158 = v152;
      v159 = v149;
      v160 = v52;
      v161 = v150;
      v162 = v48;
      v163 = v49;
      v164 = v50;
      v165 = v51;
      v54 = *(v2 + 16);
      v55 = v54[41];
      v138 = v54[40];
      v139 = v55;
      v140[0] = v54[42];
      v56 = v54[37];
      v134 = v54[36];
      v135 = v56;
      v57 = v54[39];
      v136 = v54[38];
      v137 = v57;
      v58 = v54[35];
      v132 = v54[34];
      v133 = v58;
      *(v140 + 9) = *(v54 + 681);

      if (sub_1AF448314(&v132) == 1)
      {
        goto LABEL_57;
      }

      v59 = *(&v132 + 1);
      v60 = swift_getObjectType();
      v61 = *(v59 + 80);
      swift_unknownObjectRetain();
      v62 = v61(v60, v59);
      v64 = v63;

      swift_unknownObjectRelease();
      v65 = sub_1AFBE973C(0, 2, v62, v64);
      v67 = v66;
      LODWORD(v59) = v68;

      v43 = sub_1AF750DEC(v42, *(&v42 + 1), v65, v67, v59, 0, 1);
      sub_1AF0D8F38(&v148);

      v3 = v128;
    }

    v69 = [v3 depthAttachment];
    [v69 setTexture_];
    [v69 setLoadAction_];
    [v69 setStoreAction_];
    [v69 setClearDepth_];
    [v69 setLevel_];
    swift_unknownObjectRelease();

LABEL_56:
    sub_1AF474EC4();
    swift_unknownObjectRelease();
    return v3;
  }

LABEL_57:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBE68C8(void *a1)
{
  v3 = v1;
  sub_1AFBE8750(0, &qword_1EB6434E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBE86FC();
  sub_1AFDFF3F8();
  *&v12 = *v3;
  v13 = 0;
  type metadata accessor for MTLPixelFormat(0);
  sub_1AFBE87B4(&qword_1EB640390, type metadata accessor for MTLPixelFormat);
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    v12 = *(v3 + 16);
    v13 = 3;
    type metadata accessor for CGSize(0);
    sub_1AFBE87B4(&qword_1EB6406A0, type metadata accessor for CGSize);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AFBE6B2C()
{
  v1 = 0x74616D726F66;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    v1 = 0x615265757161706FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFBE6BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBE82B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFBE6BDC(uint64_t a1)
{
  v2 = sub_1AFBE86FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBE6C18(uint64_t a1)
{
  v2 = sub_1AFBE86FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFBE6C54@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFBE8438(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

double sub_1AFBE6CA8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AFBE6CBC()
{

  return swift_deallocClassInstance();
}

void sub_1AFBE6D18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 200);
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 2;
  }
}

void sub_1AFBE6D4C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) != 1)
  {
    v14 = *(v139 + 32);
    v157[0] = *(v139 + 16);
    v157[1] = v14;
    v158 = *(v139 + 48);

    sub_1AF6B06C0(v3, v157, 0x200000000, &v159);
    if (v159)
    {
      v15 = *(v2 + 273);
      v127 = v15 ^ 1;
      if ((v15 & 1) != 0 || v167 < 1)
      {
        v138 = 0;
        v17 = 0;
        goto LABEL_40;
      }

      v132 = v164;
      if (v164)
      {
        v122 = v4;
        v124 = v2;
        v138 = 0;
        v16 = 0;
        v17 = 0;
        v130 = v163;
        v18 = v166;
        v19 = *(v165 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *&v196 = v159;
        DWORD2(v196) = DWORD2(v159);
        BYTE12(v196) = BYTE12(v159);
        v142 = *(v166 + 32);
        *&v197 = v160;
        BYTE8(v197) = v161;
        v198 = v162;
        v128 = v19;
        do
        {
          v20 = (v130 + 48 * v16);
          v21 = *v20;
          v136 = v20[1];
          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          v25 = *(v20 + 4);
          v24 = *(v20 + 5);
          if (v19)
          {
            v26 = *(v24 + 376);

            os_unfair_lock_lock(v26);
            os_unfair_lock_lock(*(v24 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v142);
          v27 = *(v18 + 64);
          v155[0] = *(v18 + 48);
          v155[1] = v27;
          v156 = *(v18 + 80);
          v28 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
          *(v18 + 48) = ecs_stack_allocator_allocate(*(v18 + 32), 48 * v28, 8);
          *(v18 + 56) = v28;
          *(v18 + 72) = 0;
          *(v18 + 80) = 0;
          *(v18 + 64) = 0;
          v29 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v23, v22, v25, v18);
          if (v23)
          {
            v19 = v128;
            if (v25)
            {
              do
              {
                v30 = *v29++;
                v17 |= *(v30 + 224);
                --v25;
              }

              while (v25);
              v138 = v17 & 1;
            }
          }

          else
          {
            v19 = v128;
            if (v21 != v136)
            {
              v31 = &v29[v21];
              v32 = v136 - v21;
              do
              {
                v33 = *v31++;
                v17 |= *(v33 + 224);
                --v32;
              }

              while (v32);
              v138 = v17 & 1;
            }
          }

          sub_1AF630994(v18, &v196, v155);
          sub_1AF62D29C(v24);
          ecs_stack_allocator_pop_snapshot(v142);
          if (v19)
          {
            os_unfair_lock_unlock(*(v24 + 344));
            os_unfair_lock_unlock(*(v24 + 376));
          }

          ++v16;
        }

        while (v16 != v132);
        v4 = v122;
        v2 = v124;
        v3 = a1;
        goto LABEL_40;
      }
    }

    else
    {
      v127 = 0;
    }

    v138 = 0;
    v17 = 0;
LABEL_40:
    v35 = *(v139 + 112);
    v193 = *(v139 + 96);
    v194 = v35;
    v195 = *(v139 + 128);
    sub_1AF6B06C0(v3, &v193, 0x200000000, v168);
    v36 = *&v168[0];
    if (*&v168[0])
    {
      sub_1AF0D9DB0(v168, &qword_1ED725EA0);
    }

    v190 = *(v139 + 56);
    v191 = *(v139 + 72);
    v192 = *(v139 + 88);
    sub_1AF6B06C0(v3, &v190, 0x200000000, &v169);
    if (v169 && (v37 = *(v2 + 274), (v37 & 1) == 0))
    {
      if (v177 >= 1 && (v131 = v174) != 0)
      {
        v121 = v36;
        v123 = v4;
        v125 = v2;
        v40 = v176;
        v129 = v173;
        v134 = v37 ^ 1;
        v144 = *(v176 + 32);
        v41 = *(v175 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        *&v184 = v169;
        DWORD2(v184) = DWORD2(v169);
        BYTE12(v184) = BYTE12(v169);
        *&v185 = v170;
        BYTE8(v185) = v171;
        v186 = v172;
        sub_1AF6B724C(&v169, v153, &qword_1ED725EA0);
        sub_1AF6B724C(&v169, v153, &qword_1ED725EA0);
        v34 = 0;
        v42 = 0;
        v126 = v41;
        do
        {
          v141 = v42;
          v43 = (v129 + 48 * v42);
          v45 = *v43;
          v44 = v43[1];
          v46 = *(v43 + 2);
          v137 = *(v43 + 3);
          v48 = *(v43 + 4);
          v47 = *(v43 + 5);
          if (v41)
          {
            v49 = *(v47 + 376);

            os_unfair_lock_lock(v49);
            os_unfair_lock_lock(*(v47 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v144);
          v50 = *(v40 + 64);
          v187 = *(v40 + 48);
          v188 = v50;
          v189 = *(v40 + 80);
          v51 = *(*(*(*(v47 + 40) + 16) + 32) + 16) + 1;
          *(v40 + 48) = ecs_stack_allocator_allocate(*(v40 + 32), 48 * v51, 8);
          *(v40 + 56) = v51;
          *(v40 + 72) = 0;
          *(v40 + 80) = 0;
          *(v40 + 64) = 0;
          v52 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v46, v137, v48, v40);
          if (v46)
          {
            if (v48)
            {
              v53 = 0;
              v3 = a1;
              do
              {
                v54 = *(v52 + 8 * v53);
                v17 |= *(v54 + 224);
                if ((*(v54 + 338) & 4) != 0)
                {
                  v34 = 1;
                }

                v55 = *(v54 + 272);
                v56 = (v55 + 56);
                v57 = *(v55 + 16) + 1;
                while (--v57)
                {
                  v58 = v56;
                  v56 += 40;
                  if (*v58 == 3 && *(v58 - 24) == 2)
                  {
                    v34 = 1;
                    break;
                  }
                }

                ++v53;
              }

              while (v53 != v48);
              v138 = v17 & 1;
            }

            else
            {
              v3 = a1;
            }

            v59 = v47;
            v41 = v126;
          }

          else
          {
            v3 = a1;
            v59 = v47;
            v41 = v126;
            if (v45 != v44)
            {
              do
              {
                v60 = *(v52 + 8 * v45++);
                v17 |= *(v60 + 224);
                if ((*(v60 + 338) & 4) != 0)
                {
                  v34 = 1;
                }

                v61 = *(v60 + 272);
                v62 = (v61 + 56);
                v63 = *(v61 + 16) + 1;
                while (--v63)
                {
                  v64 = v62;
                  v62 += 40;
                  if (*v64 == 3 && *(v64 - 24) == 2)
                  {
                    v34 = 1;
                    break;
                  }
                }
              }

              while (v45 != v44);
              v138 = v17 & 1;
            }
          }

          sub_1AF630994(v40, &v184, &v187);
          sub_1AF62D29C(v59);
          ecs_stack_allocator_pop_snapshot(v144);
          if (v41)
          {
            os_unfair_lock_unlock(*(v59 + 344));
            os_unfair_lock_unlock(*(v59 + 376));
          }

          v42 = v141 + 1;
        }

        while (v141 + 1 != v131);
        sub_1AF0D9DB0(&v159, &qword_1ED725EA0);
        sub_1AF0D9DB0(&v169, &qword_1ED725EA0);
        v39 = &v169;
        v4 = v123;
        v2 = v125;
        v38 = v134;
        v36 = v121;
      }

      else
      {
        v34 = 0;
        v38 = 1;
        v39 = &v159;
      }
    }

    else
    {
      v38 = 0;
      v34 = 0;
      v39 = &v159;
    }

    v143 = v36 != 0;
    sub_1AF0D9DB0(v39, &qword_1ED725EA0);
    sub_1AF0D9DB0(&v169, &qword_1ED725EA0);
    v133 = v38;
    v140 = v127 & v38;
    goto LABEL_82;
  }

  v196 = *(v139 + 136);
  v197 = *(v139 + 152);
  v198 = *(v139 + 168);

  sub_1AF6B06C0(v3, &v196, 0x200000000, v155);
  v5 = *&v155[0];
  if (*&v155[0])
  {
    sub_1AF0D9DB0(v155, &qword_1ED725EA0);
  }

  v6 = *(v139 + 192);
  v193 = *(v139 + 176);
  v194 = v6;
  v195 = *(v139 + 208);
  sub_1AF6B06C0(v3, &v193, 0x200000000, v157);
  v7 = *&v157[0];
  if (*&v157[0])
  {
    sub_1AF0D9DB0(v157, &qword_1ED725EA0);
  }

  v190 = *(v139 + 216);
  v191 = *(v139 + 232);
  v192 = *(v139 + 248);
  sub_1AF6B06C0(v3, &v190, 0x200000000, &v159);
  v8 = v159;
  if (v159)
  {
    sub_1AF0D9DB0(&v159, &qword_1ED725EA0);
  }

  v9 = *(v139 + 272);
  v187 = *(v139 + 256);
  v188 = v9;
  v189 = *(v139 + 288);
  sub_1AF6B06C0(v3, &v187, 0x200000000, v168);
  v10 = *&v168[0];
  if (*&v168[0])
  {
    sub_1AF0D9DB0(v168, &qword_1ED725EA0);
  }

  v186 = *(v139 + 328);
  v11 = *(v139 + 312);
  v184 = *(v139 + 296);
  v185 = v11;
  sub_1AF6B06C0(v3, &v184, 0x200000000, &v169);
  v12 = v169;
  if (v169)
  {
    sub_1AF0D9DB0(&v169, &qword_1ED725EA0);
  }

  if (v7 | v5)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v10 | v8 | v12) != 0;
  }

  v138 = v13;
  v143 = 0;
  v127 = 1;
  v133 = 1;
  v34 = 1;
  v140 = 1;
LABEL_82:
  v65 = (v2 + 544);
  v66 = *(v2 + 656);
  v153[6] = *(v2 + 640);
  v153[7] = v66;
  v154[0] = *(v2 + 672);
  v67 = *(v2 + 592);
  v153[2] = *(v2 + 576);
  v153[3] = v67;
  v68 = *(v2 + 624);
  v153[4] = *(v2 + 608);
  v153[5] = v68;
  v69 = *(v2 + 560);
  v153[0] = *(v2 + 544);
  v153[1] = v69;
  *(v154 + 9) = *(v2 + 681);
  if (sub_1AF448314(v153) != 1)
  {
    v70 = *(v2 + 552);
    v71 = *(v2 + 560);
    v72 = *(v2 + 568);
    ObjectType = swift_getObjectType();
    v74 = (*(v70 + 16))(v72, v4, ObjectType, v70, v71);
    if (v74)
    {
      v75 = v74;
      sub_1AF0D879C(&v178);
      v76 = v2;
      v78 = *(&v178 + 1);
      v77 = v178;

      swift_unknownObjectRetain();

      v79 = v77;
      v2 = v76;
      v80 = v78;
      v3 = a1;
      sub_1AF824548(v75, v79, v80);
      swift_unknownObjectRelease();
    }
  }

  v81 = v65[7];
  v150 = v65[6];
  v151 = v81;
  v152[0] = v65[8];
  *(v152 + 9) = *(v65 + 137);
  v82 = v65[3];
  v146 = v65[2];
  v147 = v82;
  v83 = v65[5];
  v148 = v65[4];
  v149 = v83;
  v84 = v65[1];
  v145[0] = *v65;
  v145[1] = v84;
  if (sub_1AF448314(v145) == 1)
  {
    sub_1AFDFE518();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v85 = v146;
    v86 = *(v3 + 184);

    os_unfair_recursive_lock_lock_with_options();
    v87 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
    v90 = v133;
    if (v88 == 2 || (v88 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();

      v95 = 0x3F80000000000000;
      v96 = v138;
    }

    else
    {
      v91 = *(v86 + 16);
      v92 = 32 * v89;
      v93 = v87;
      os_unfair_lock_lock(*(*(v86 + 32) + 32 * v89 + 24));
      os_unfair_recursive_lock_unlock();
      v94 = *(v91 + v93);
      os_unfair_lock_unlock(*(*(v86 + 32) + v92 + 24));

      if (sub_1AF67CACC(&type metadata for CameraDepthOfField, &off_1F25127C0, v94))
      {
        v34 = 1;
      }

      sub_1AF3CAFEC(v94, v179);
      if (v181)
      {
        v95 = 0x3F80000000000000;
      }

      else
      {
        v97 = v180;

        v99 = sub_1AF0D9730(v183, 4);
        if (*(v98 + 8))
        {
          v100 = v97;
          *(v98 + 32) = v97;
          *(v98 + 40) = 1;
          (v99)(v183, 0);
        }

        else
        {
          (v99)(v183, 0);

          v100 = v97;
        }

        v95 = v100 << 32;
      }

      v96 = v138;
      v90 = v133;
    }

    v101 = *(v2 + 200);
    v102 = 256;
    if (v85)
    {
      v103 = 256;
    }

    else
    {
      v103 = 0;
    }

    if (v90)
    {
      v104 = 0x10000;
    }

    else
    {
      v104 = 0;
    }

    v105 = v104 | v143 | v103;
    v106 = v95 | (v96 << 16) | v34;
    if (!v90)
    {
      v102 = 0;
    }

    v107 = 0x100000000;
    if (!v140)
    {
      v107 = 0;
    }

    v101[3] = v107 | v102 | (v105 << 40) | v127;
    v101[4] = v106;
    v101[5] = 0x3F8000003F800000;
    if ((v127 & (v90 | v140)) == 1 || (sub_1AF0D879C(v182), v108 = v182[0], , v109 = sub_1AF750DEC(v108, *(&v108 + 1), 0, 0, 0, 1, 1), sub_1AF0D8F38(v182), , !v109))
    {
    }

    else
    {
      v110 = objc_allocWithZone(MEMORY[0x1E6974128]);
      swift_unknownObjectRetain();
      v111 = [v110 init];
      v112 = [v111 colorAttachments];
      v113 = [v112 objectAtIndexedSubscript_];

      v114 = nullsub_106();
      v116 = v115;
      v118 = v117;
      v120 = v119;
      [v113 setTexture_];
      [v113 setLoadAction_];
      [v113 setStoreAction_];
      [v113 setClearColor_];
      [v113 setLevel_];
      swift_unknownObjectRelease();

      sub_1AF7180FC();

      sub_1AF6F3D60(v111, 0, 0);
      sub_1AF474680(v183);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFBE7C28()
{

  return v0;
}

uint64_t sub_1AFBE7C80()
{
  sub_1AFBE7C28();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for RenderGraph.RenderTargetDesc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for RenderGraph.RenderTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraph.RenderTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RenderGraph.Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraph.Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBE7FD0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v35 = qword_1ED73B840;
  v36 = 0;
  v37 = 2;
  v38 = 0;
  v39 = 2;
  v40 = 0;
  sub_1AF702F3C(1, v16);
  sub_1AFA1CF6C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 0;
  v2 = inited + 32;
  sub_1AF5FC330(inited, v17);
  sub_1AF5FD724(v16);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v3 = v17[1];
  *(v0 + 16) = v17[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v18;
  sub_1AF702F3C(1, v19);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 56) = &type metadata for DrawCallLayer;
  *(v4 + 64) = &off_1F2560C28;
  *(v4 + 32) = 1;
  v5 = v4 + 32;
  sub_1AF5FC330(v4, v20);
  sub_1AF5FD724(v19);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  v6 = v20[1];
  *(v0 + 56) = v20[0];
  *(v0 + 72) = v6;
  *(v0 + 88) = v21;
  sub_1AF702F3C(1, v22);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 56) = &type metadata for DrawCallLayer;
  *(v7 + 64) = &off_1F2560C28;
  *(v7 + 32) = 2;
  v8 = v7 + 32;
  sub_1AF5FC330(v7, v23);
  sub_1AF5FD724(v22);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v9 = v23[1];
  *(v0 + 96) = v23[0];
  *(v0 + 112) = v9;
  *(v0 + 128) = v24;
  sub_1AF5C7B00(v25);
  v10 = v25[1];
  *(v0 + 136) = v25[0];
  *(v0 + 152) = v10;
  *(v0 + 168) = v26;
  sub_1AF5C7B14(v27);
  v11 = v27[1];
  *(v0 + 176) = v27[0];
  *(v0 + 192) = v11;
  *(v0 + 208) = v28;
  sub_1AF5C7CBC(v29);
  v12 = v29[1];
  *(v0 + 216) = v29[0];
  *(v0 + 232) = v12;
  *(v0 + 248) = v30;
  sub_1AF5C8A44(v31);
  v13 = v31[1];
  *(v0 + 256) = v31[0];
  *(v0 + 272) = v13;
  *(v0 + 288) = v32;
  sub_1AF826E08(v33);
  v14 = v33[1];
  *(v0 + 296) = v33[0];
  *(v0 + 312) = v14;
  *(v0 + 328) = v34;
  return v0;
}

uint64_t sub_1AFBE8260()
{
  v0 = swift_allocObject();
  sub_1AFBE7FD0();
  return v0;
}

uint64_t sub_1AFBE82B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615265757161706FLL && a2 == 0xEB000000006F6974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29660 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AFBE8438@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBE8750(0, &qword_1EB6434D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v19 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBE86FC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  type metadata accessor for MTLPixelFormat(0);
  v20 = 0;
  sub_1AFBE87B4(&qword_1EB632A40, type metadata accessor for MTLPixelFormat);
  sub_1AFDFE768();
  v11 = v19[0];
  LOBYTE(v19[0]) = 1;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v19[0]) = 2;
  sub_1AFDFE738();
  v15 = v14;
  type metadata accessor for CGSize(0);
  v20 = 3;
  sub_1AFBE87B4(&qword_1EB640680, type metadata accessor for CGSize);
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v16 = v19[0];
  v17 = v19[1];
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 12) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  return result;
}

unint64_t sub_1AFBE86FC()
{
  result = qword_1EB6434D8;
  if (!qword_1EB6434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434D8);
  }

  return result;
}

void sub_1AFBE8750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBE86FC();
    v7 = a3(a1, &type metadata for RenderSettings.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFBE87B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AFBE8810()
{
  result = qword_1EB6434E8;
  if (!qword_1EB6434E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434E8);
  }

  return result;
}

unint64_t sub_1AFBE8868()
{
  result = qword_1EB6434F0;
  if (!qword_1EB6434F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434F0);
  }

  return result;
}

unint64_t sub_1AFBE88C0()
{
  result = qword_1EB6434F8;
  if (!qword_1EB6434F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6434F8);
  }

  return result;
}

char *sub_1AFBE8934(int a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1AF4228D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1AF4228D4(v3 > 1, v4 + 1, 1, v2);
  }

  LOBYTE(v59) = 0;
  *(v2 + 2) = v4 + 1;
  v5 = &v2[112 * v4];
  *(v5 + 2) = xmmword_1AFEA52A0;
  v5[48] = 0;
  v5[64] = 1;
  v5[128] = 13;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1AF4228D4(v6 > 1, v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[112 * v7];
    *(v8 + 2) = xmmword_1AFEA52B0;
    v8[48] = 0;
    *(v8 + 7) = *&v62[7];
    *(v8 + 49) = *v62;
    v8[64] = 1;
    *(v8 + 7) = *&v61[15];
    *(v8 + 97) = *v61;
    *(v8 + 81) = v60;
    *(v8 + 65) = v59;
    v8[128] = 13;
  }

LABEL_12:
  if ((a1 & 0x400) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_1AF4228D4(v10 > 1, v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[112 * v11];
    *(v12 + 2) = xmmword_1AFEA52C0;
    v12[48] = 0;
    *(v12 + 7) = *&v62[7];
    *(v12 + 49) = *v62;
    v12[64] = 1;
    *(v12 + 7) = *&v61[15];
    *(v12 + 97) = *v61;
    *(v12 + 81) = v60;
    *(v12 + 65) = v59;
    v12[128] = 13;
    if ((a1 & 0x40) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_1AF4228D4(v13 > 1, v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[112 * v14];
  *(v15 + 2) = xmmword_1AFE7E5B0;
  v15[48] = 0;
  *(v15 + 7) = *&v62[7];
  *(v15 + 49) = *v62;
  v15[64] = 1;
  *(v15 + 7) = *&v61[15];
  *(v15 + 97) = *v61;
  *(v15 + 81) = v60;
  *(v15 + 65) = v59;
  v15[128] = 13;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_1AF4228D4(v16 > 1, v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[112 * v17];
  *(v18 + 2) = xmmword_1AFEA52D0;
  v18[48] = 0;
  *(v18 + 7) = *&v62[7];
  *(v18 + 49) = *v62;
  v18[64] = 1;
  *(v18 + 7) = *&v61[15];
  *(v18 + 97) = *v61;
  *(v18 + 81) = v60;
  *(v18 + 65) = v59;
  v18[128] = 13;
  if ((a1 & 0x10000) == 0)
  {
LABEL_16:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_44:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_1AF4228D4(v19 > 1, v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[112 * v20];
  *(v21 + 2) = xmmword_1AFEA52E0;
  v21[48] = 0;
  *(v21 + 7) = *&v62[7];
  *(v21 + 49) = *v62;
  v21[64] = 1;
  *(v21 + 7) = *&v61[15];
  *(v21 + 97) = *v61;
  *(v21 + 81) = v60;
  *(v21 + 65) = v59;
  v21[128] = 13;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_17:
    v9 = "RenderGraphSystem";
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_49:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_1AF4228D4(v22 > 1, v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[112 * v23];
  *(v24 + 2) = xmmword_1AFEA52F0;
  v24[48] = 0;
  *(v24 + 7) = *&v62[7];
  *(v24 + 49) = *v62;
  v24[64] = 1;
  *(v24 + 7) = *&v61[15];
  *(v24 + 97) = *v61;
  *(v24 + 81) = v60;
  *(v24 + 65) = v59;
  v24[128] = 13;
  v9 = "RenderGraphSystem";
  if ((a1 & 0x20000) == 0)
  {
LABEL_18:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_54:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_1AF4228D4(v25 > 1, v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[112 * v26];
  *(v27 + 2) = *(v9 + 48);
  v27[48] = 0;
  *(v27 + 7) = *&v62[7];
  *(v27 + 49) = *v62;
  *(v27 + 16) = 1;
  *(v27 + 7) = *&v61[12];
  *(v27 + 100) = *v61;
  *(v27 + 84) = v60;
  *(v27 + 68) = v59;
  v27[128] = 14;
  if ((a1 & 0x40000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_59:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_1AF4228D4(v28 > 1, v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[112 * v29];
  *(v30 + 2) = *(v9 + 48);
  v30[48] = 0;
  *(v30 + 7) = *&v62[7];
  *(v30 + 49) = *v62;
  *(v30 + 16) = 2;
  *(v30 + 7) = *&v61[12];
  *(v30 + 100) = *v61;
  *(v30 + 84) = v60;
  *(v30 + 68) = v59;
  v30[128] = 14;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_64:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_1AF4228D4(v31 > 1, v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[112 * v32];
  *(v33 + 2) = *(v9 + 48);
  v33[48] = 0;
  *(v33 + 7) = *&v62[7];
  *(v33 + 49) = *v62;
  *(v33 + 16) = 3;
  *(v33 + 7) = *&v61[12];
  *(v33 + 100) = *v61;
  *(v33 + 84) = v60;
  *(v33 + 68) = v59;
  v33[128] = 14;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_69:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_1AF4228D4(v34 > 1, v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[112 * v35];
  *(v36 + 2) = *(v9 + 48);
  v36[48] = 0;
  *(v36 + 7) = *&v62[7];
  *(v36 + 49) = *v62;
  *(v36 + 16) = 4;
  *(v36 + 7) = *&v61[12];
  *(v36 + 100) = *v61;
  *(v36 + 84) = v60;
  *(v36 + 68) = v59;
  v36[128] = 14;
  if ((a1 & 0x200000) == 0)
  {
LABEL_22:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

LABEL_74:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_1AF4228D4(v37 > 1, v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[112 * v38];
  *(v39 + 2) = *(v9 + 48);
  v39[48] = 0;
  *(v39 + 7) = *&v62[7];
  *(v39 + 49) = *v62;
  *(v39 + 16) = 5;
  *(v39 + 7) = *&v61[12];
  *(v39 + 100) = *v61;
  *(v39 + 84) = v60;
  *(v39 + 68) = v59;
  v39[128] = 14;
  if ((a1 & 0x400000) == 0)
  {
LABEL_23:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_79:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_1AF4228D4(v40 > 1, v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[112 * v41];
  *(v42 + 2) = *(v9 + 48);
  v42[48] = 0;
  *(v42 + 7) = *&v62[7];
  *(v42 + 49) = *v62;
  *(v42 + 16) = 6;
  *(v42 + 7) = *&v61[12];
  *(v42 + 100) = *v61;
  *(v42 + 84) = v60;
  *(v42 + 68) = v59;
  v42[128] = 14;
  if ((a1 & 0x800000) == 0)
  {
LABEL_24:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_89;
  }

LABEL_84:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v44 = *(v2 + 2);
  v43 = *(v2 + 3);
  if (v44 >= v43 >> 1)
  {
    v2 = sub_1AF4228D4(v43 > 1, v44 + 1, 1, v2);
  }

  *(v2 + 2) = v44 + 1;
  v45 = &v2[112 * v44];
  *(v45 + 2) = *(v9 + 48);
  v45[48] = 0;
  *(v45 + 7) = *&v62[7];
  *(v45 + 49) = *v62;
  *(v45 + 16) = 7;
  *(v45 + 7) = *&v61[12];
  *(v45 + 100) = *v61;
  *(v45 + 84) = v60;
  *(v45 + 68) = v59;
  v45[128] = 14;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_94;
  }

LABEL_89:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v47 = *(v2 + 2);
  v46 = *(v2 + 3);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_1AF4228D4(v46 > 1, v47 + 1, 1, v2);
  }

  *(v2 + 2) = v47 + 1;
  v48 = &v2[112 * v47];
  *(v48 + 2) = *(v9 + 48);
  v48[48] = 0;
  *(v48 + 7) = *&v62[7];
  *(v48 + 49) = *v62;
  *(v48 + 16) = 8;
  *(v48 + 7) = *&v61[12];
  *(v48 + 100) = *v61;
  *(v48 + 84) = v60;
  *(v48 + 68) = v59;
  v48[128] = 14;
  if ((a1 & 0x4000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_99;
  }

LABEL_94:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v50 = *(v2 + 2);
  v49 = *(v2 + 3);
  if (v50 >= v49 >> 1)
  {
    v2 = sub_1AF4228D4(v49 > 1, v50 + 1, 1, v2);
  }

  *(v2 + 2) = v50 + 1;
  v51 = &v2[112 * v50];
  *(v51 + 2) = xmmword_1AFEA5310;
  v51[48] = 0;
  *(v51 + 7) = *&v62[7];
  *(v51 + 49) = *v62;
  v51[64] = 1;
  *(v51 + 7) = *&v61[15];
  *(v51 + 97) = *v61;
  *(v51 + 81) = v60;
  *(v51 + 65) = v59;
  v51[128] = 13;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x80000000) == 0)
    {
      return v2;
    }

    goto LABEL_104;
  }

LABEL_99:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
  }

  v53 = *(v2 + 2);
  v52 = *(v2 + 3);
  if (v53 >= v52 >> 1)
  {
    v2 = sub_1AF4228D4(v52 > 1, v53 + 1, 1, v2);
  }

  *(v2 + 2) = v53 + 1;
  v54 = &v2[112 * v53];
  *(v54 + 2) = xmmword_1AFEA5320;
  v54[48] = 0;
  *(v54 + 7) = *&v62[7];
  *(v54 + 49) = *v62;
  v54[64] = 1;
  *(v54 + 7) = *&v61[15];
  *(v54 + 97) = *v61;
  *(v54 + 81) = v60;
  *(v54 + 65) = v59;
  v54[128] = 13;
  if (a1 < 0)
  {
LABEL_104:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AF4228D4(0, *(v2 + 2) + 1, 1, v2);
    }

    v56 = *(v2 + 2);
    v55 = *(v2 + 3);
    if (v56 >= v55 >> 1)
    {
      v2 = sub_1AF4228D4(v55 > 1, v56 + 1, 1, v2);
    }

    *(v2 + 2) = v56 + 1;
    v57 = &v2[112 * v56];
    *(v57 + 2) = xmmword_1AFEA5330;
    v57[48] = 0;
    *(v57 + 7) = *&v62[7];
    *(v57 + 49) = *v62;
    v57[64] = 1;
    *(v57 + 7) = *&v61[15];
    *(v57 + 97) = *v61;
    *(v57 + 81) = v60;
    *(v57 + 65) = v59;
    v57[128] = 13;
  }

  return v2;
}

uint64_t sub_1AFBE96E8(unsigned int a1)
{
  result = (a1 >> 1) & 1;
  if ((a1 & 8) != 0)
  {
    result = sub_1AFBEA340(result);
    if ((a1 & 0x20) == 0)
    {
LABEL_3:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = sub_1AFBEA338(result);
  if ((a1 & 0x200) == 0)
  {
LABEL_4:
    if ((a1 & 0x8000000) == 0)
    {
      return result;
    }

    return sub_1AFBEA328(result);
  }

LABEL_9:
  result = sub_1AFBEA330(result);
  if ((a1 & 0x8000000) == 0)
  {
    return result;
  }

  return sub_1AFBEA328(result);
}

uint64_t sub_1AFBE973C(char a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v6 = 7;
  }

  else
  {
    v6 = 5;
  }

  v7 = *v4;
  v8 = a3;
  v9 = v8 * COERCE_FLOAT(*v4);
  if (v4[1])
  {
    v7 = v9;
  }

  v10 = v4[2];
  v11 = a4;
  if (v4[3])
  {
    v10 = (v11 * COERCE_FLOAT(v4[2]));
  }

  v13 = v4[5];
  v12 = v4[6];
  v14 = v4[4];
  if (v7 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7;
  }

  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v16 > v7)
  {
    v7 = v16;
  }

  v17 = fmaxf(v7, 1.0);
  if (v12 < 2)
  {
    CFXTextureDescriptorMakeDefault(&v26);
    sub_1AF466BDC(2, &v26);
    sub_1AF46748C(v14, &v26);
    sub_1AF46749C(v15, &v26);
    sub_1AF4674A4(v16, &v26);
    sub_1AF5C44D4(&v26);
    v22 = log2f(v17);
    v23 = floorf(v22) + 1.0;
    if (v13 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v13;
    }

    sub_1AF4674B4(v24, &v26);
    v21 = 1;
  }

  else
  {
    CFXTextureDescriptorMakeDefault(&v26);
    sub_1AF466BDC(4, &v26);
    sub_1AF46748C(v14, &v26);
    sub_1AF46749C(v15, &v26);
    sub_1AF4674A4(v16, &v26);
    sub_1AF5C44D4(&v26);
    v18 = log2f(v17);
    v19 = floorf(v18) + 1.0;
    if (v13 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    sub_1AF4674B4(v20, &v26);
    v21 = v12;
  }

  sub_1AF9027BC(v21, &v26);
  sub_1AF48F3F8(&v26);
  sub_1AF5F7474(a2, &v26);
  sub_1AF5F7484(v6, &v26);
  return v26;
}

uint64_t sub_1AFBE990C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v10);
  MEMORY[0x1B271ACB0](v11);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBE9A18()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  MEMORY[0x1B271ACB0](v11);
  return sub_1AFDFF2A8();
}

uint64_t sub_1AFBE9AE4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v10);
  MEMORY[0x1B271ACB0](v11);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AFBE9BEC(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1AFBEA348(v9, v10);
}

unint64_t sub_1AFBE9C4C()
{
  result = qword_1ED724990;
  if (!qword_1ED724990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED724990);
  }

  return result;
}

unint64_t sub_1AFBE9CA0()
{
  result = qword_1EB643500;
  if (!qword_1EB643500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643500);
  }

  return result;
}

unint64_t sub_1AFBE9CF8()
{
  result = qword_1EB643508;
  if (!qword_1EB643508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643508);
  }

  return result;
}

unint64_t sub_1AFBE9D50()
{
  result = qword_1EB643510;
  if (!qword_1EB643510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643510);
  }

  return result;
}

unint64_t sub_1AFBE9DA8()
{
  result = qword_1EB643518;
  if (!qword_1EB643518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643518);
  }

  return result;
}

uint64_t sub_1AFBE9DFC(int a1)
{
  if (a1)
  {
    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    if (a1)
    {
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4B4A0);
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    MEMORY[0x1B2718AE0](0x7070696C43657375, 0xED0000202C676E69);
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF4B480);
    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    MEMORY[0x1B2718AE0](0x6568746944657375, 0xEF202C6564614672);
    if ((a1 & 0x20) == 0)
    {
LABEL_7:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B460);
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    MEMORY[0x1B2718AE0](0x6E697265646E6572, 0xEF202C72756C4267);
    if ((a1 & 0x400) == 0)
    {
LABEL_9:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }

LABEL_27:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF4B440);
    if ((a1 & 0x800) == 0)
    {
LABEL_10:
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_28:
    MEMORY[0x1B2718AE0](0x6C6E4F6874706564, 0xEB00000000202C79);
    if ((a1 & 0x1000) == 0)
    {
LABEL_11:
      if ((a1 & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }

LABEL_29:
    MEMORY[0x1B2718AE0](0x6F5465757161706FLL, 0xEF202C6168706C41);
    if ((a1 & 0x2000) == 0)
    {
LABEL_12:
      if ((a1 & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }

LABEL_30:
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4B420);
    if ((a1 & 0x4000) == 0)
    {
LABEL_13:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_31:
    MEMORY[0x1B2718AE0](0x6465727265666564, 0xEA0000000000202CLL);
    if ((a1 & 0x8000) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

LABEL_32:
    MEMORY[0x1B2718AE0](0x2C656E696C74756FLL, 0xE900000000000020);
    if ((a1 & 0x2000000) == 0)
    {
LABEL_15:
      if ((a1 & 0x4000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

LABEL_33:
    MEMORY[0x1B2718AE0](0x2C6465726579616CLL, 0xE900000000000020);
    if ((a1 & 0x4000000) == 0)
    {
LABEL_16:
      if ((a1 & 0x8000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

LABEL_34:
    MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF4B400);
    if ((a1 & 0x8000000) == 0)
    {
LABEL_17:
      if ((a1 & 0x20000000) == 0)
      {
LABEL_19:
        sub_1AF8FD3D4();

        sub_1AFDFDE08();
        sub_1AFDFDDD8();
        v3 = sub_1AFDFDE38();
        v5 = v4;
        v7 = v6;
        v9 = v8;

        v10 = MEMORY[0x1B27189E0](v3, v5, v7, v9);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        return v10;
      }

LABEL_18:
      MEMORY[0x1B2718AE0](0x5353656C62616E65, 0xEC000000202C4F41);
      goto LABEL_19;
    }

LABEL_35:
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4B3E0);
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return 23899;
}

uint64_t sub_1AFBEA21C()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x3A746E6169726176, 0xE900000000000020);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x74616D726F66202CLL, 0xEA0000000000203ALL);
  type metadata accessor for RenderPassDesc(0);
  sub_1AFDFE458();
  return 0;
}

uint64_t sub_1AFBEA3FC(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v44 = a5;
  v45 = a6;
  v16 = *(v9 + 16);
  v17 = *(v9 + 40);
  v18 = v17[200];
  v51 = *(*(v16 + 88) + 8 * a2 + 32);

  if ((v18 & 1) != 0 || *(v51 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v17 = *(v9 + 40);
  }

  v19 = v17[212];
  v49 = a4;
  v46 = a7;
  v47 = a8;
  if (v19)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(v51 + 212);
  }

  v42 = v17[208];
  v50 = *(v9 + 128);
  v20 = *(v9 + 256);
  sub_1AF5B69AC(v17, a1, 0, v9);
  v48 = *(v9 + 256);
  v21 = v48 - v20;
  if (v48 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v61 = v22;
  v23 = *(*(v9 + 40) + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v40 = v20;
    v41 = v9;
    v25 = v23 + 32;
    v39[1] = v23;

    for (i = 0; i != v24; ++i)
    {
      v27 = v25 + 40 * i;
      if ((*(v27 + 32) & 1) == 0)
      {
        v28 = *(v51 + 24);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = (v28 + 32);
          while (*v30 != *v27)
          {
            v30 += 5;
            if (!--v29)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v9 = v41;
    v20 = v40;
  }

  v31 = v49;
  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v9 + 72) * v21);
  }

  if (*(v9 + 184))
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v9 + 168);
  }

  v60 = 0;

  MEMORY[0x1EEE9AC00](v39, v33);
  v54 = v32;
  v55 = -1;
  v34 = v48;
  v56 = v20;
  v57 = v48;
  v58 = v20;
  v59 = v48;
  v52 = v20;
  v53 = v48;
  if (v21 >= 1)
  {
    v35 = v31 | ((HIDWORD(v31) & 1) << 32);
    do
    {
      sub_1AF6248A8(a2, v35, a3 & 1, v16, &v52, sub_1AF5C5E08);
    }

    while (v53 - v52 > 0);
  }

  v36 = *(v9 + 192);
  if (v36)
  {
    v37 = *(v9 + 208);
    sub_1AF75D364(v20, v34, v36);
    sub_1AF75D364(v20, v34, v37);
  }
}

uint64_t sub_1AFBEA740@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v7, v7[3]);
  v5 = sub_1AFDFEE48();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1AFBEA804(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEEF8();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFBEA8BC()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED73B840;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  sub_1AF703334(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v12;
  v5 = v10 | 1;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AFBEA9A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

void sub_1AFBEAA60(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  v10 = *(v4 + 40);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1AFBEAC48()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED73B840;
  v30 = 0;
  v31 = 2;
  v32 = 0;
  v33 = 2;
  v34 = 0;
  sub_1AF7031E0(0, v14);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for EffectiveHiddenState;
  *(inited + 40) = &off_1F25695B0;
  sub_1AF5D1EC0(inited, v15);
  sub_1AFB3F8A4(v14, qword_1ED723E90);
  swift_setDeallocating();
  v2 = v15[1];
  *(v0 + 16) = v15[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v16;
  sub_1AF7031F4(0, &v17);
  v3 = v18;
  v4 = v19;
  v5 = v21;
  v6 = v20 | 4;
  *(v0 + 56) = v17;
  *(v0 + 64) = v3;
  *(v0 + 68) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 2;
  *(v0 + 88) = v5;
  sub_1AF7031F4(0, v22);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for HiddenOrHasHiddenAncestor;
  *(v7 + 40) = &off_1F2529510;
  sub_1AF5D1EC0(v7, &v23);
  sub_1AFB3F8A4(v22, &qword_1ED723D00);
  swift_setDeallocating();
  v8 = v24;
  v9 = v25;
  v10 = v27;
  v11 = v28;
  v12 = v26 | 1;
  *(v0 + 96) = v23;
  *(v0 + 104) = v8;
  *(v0 + 108) = v9;
  *(v0 + 112) = v12;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  return v0;
}

uint64_t sub_1AFBEAE54()
{
  v0 = swift_allocObject();
  sub_1AFBEAC48();
  return v0;
}

void sub_1AFBEAEA4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *(v1 + 32);
  v131[0] = *(v1 + 16);
  v131[1] = v5;
  v132 = *(v1 + 48);
  sub_1AF6B06C0(a1, v131, 0x200000000, v95);
  if (*&v95[0])
  {
    v70 = v3;
    v69 = v1;
    if (v98 >= 1 && v97)
    {
      v6 = v96;
      v7 = v96 + 48 * v97;
      v71 = v7;
      do
      {
        v8 = *(v6 + 40);
        v9 = *(v8 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v9);
        os_unfair_lock_lock(*(v8 + 344));
        v10 = *(v8 + 24);

        memset(v122, 0, sizeof(v122));
        memset(v117, 0, sizeof(v117));
        v11 = sub_1AF65A4B4(v10, &type metadata for EffectiveHiddenState, &off_1F2569630, 0, 0, v122, v117);

        sub_1AF5C43E8(v117, sub_1AF5C4448);
        sub_1AF5C43E8(v122, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v11);
        }

        else
        {
          v74 = v6;
          v12 = v4;
          v13 = *(v8 + 232);
          v14 = *(v8 + 240);
          v73 = *(v8 + 120);
          v85 = *(v8 + 28);
          v83 = *(v8 + 32);
          v15 = *(v8 + 16);
          v16 = *(v8 + 40);
          v17 = *(v16 + 200);
          v81 = *(*(v15 + 88) + 8 * v11 + 32);

          if ((v17 & 1) != 0 || *(v81 + 200) == 1)
          {
            *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v16 = *(v8 + 40);
          }

          v18 = *(v8 + 256);
          v19 = v14;
          v4 = v12;
          sub_1AF5B4FCC(v16, v13, v19, 0, v8);
          *&v76 = *(v8 + 256);
          *(&v76 + 1) = v18;
          v20 = v76 - v18;
          if (v76 == v18)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

          v117[0] = v21;
          v22 = *(*(v8 + 40) + 24);
          v23 = *(v22 + 16);
          if (v23)
          {
            v79 = v12;
            v24 = v22 + 32;

            for (i = 0; i != v23; ++i)
            {
              v26 = v24 + 40 * i;
              if ((*(v26 + 32) & 1) == 0)
              {
                v27 = *(v81 + 24);
                v28 = *(v27 + 16);
                if (v28)
                {
                  v29 = (v27 + 32);
                  while (*v29 != *v26)
                  {
                    v29 += 5;
                    if (!--v28)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8();
                }
              }
            }

            v4 = v79;
          }

          if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v8 + 72) * v20);
          }

          if (*(v8 + 184))
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v8 + 168);
          }

          *&v113[0] = 0;

          MEMORY[0x1EEE9AC00](v31, v32);
          v33 = v85;
          v34 = v83;
          LODWORD(v122[3]) = -1;
          v122[4] = *(&v76 + 1);
          v123 = v76;
          v122[0] = *(&v76 + 1);
          *&v124 = v76;
          v122[1] = v76;
          v122[2] = v30;
          if (v20 >= 1)
          {
            do
            {
              LOBYTE(v106) = v34;
              sub_1AF6248A8(v11, v33 | (v34 << 32), v73, v15, v122, sub_1AF5C5E08);
              v34 = v83;
              v33 = v85;
            }

            while ((v122[1] - v122[0]) > 0);
          }

          v35 = *(v8 + 192);
          v6 = v74;
          if (v35)
          {
            v36 = *(v8 + 208);
            sub_1AF75D364(*(&v76 + 1), v76, v35);
            sub_1AF75D364(*(&v76 + 1), v76, v36);
          }

          v7 = v71;
        }

        v6 += 48;
        os_unfair_lock_unlock(*(v8 + 344));
        os_unfair_lock_unlock(*(v8 + 376));
      }

      while (v6 != v7);
    }

    sub_1AF5C43E8(v95, sub_1AF5C3C90);
    v3 = v70;
    v2 = v69;
  }

  v37 = *(v2 + 72);
  v129[0] = *(v2 + 56);
  v129[1] = v37;
  v130 = *(v2 + 88);
  sub_1AF6B06C0(v3, v129, 0x200000000, &v99);
  if (v99)
  {
    v122[0] = v99;
    v123 = v102;
    v124 = v103;
    v125 = v104;
    v126 = v105;
    *&v122[1] = v100;
    *&v122[3] = v101;
    sub_1AF6B9CF0(0);
    sub_1AF5C43E8(&v99, sub_1AF5C3C90);
  }

  v38 = *(v2 + 112);
  v127[0] = *(v2 + 96);
  v127[1] = v38;
  v128 = *(v2 + 128);
  sub_1AF6B06C0(v3, v127, 0x200000000, &v106);
  if (v106)
  {
    v117[0] = v106;
    v118 = v109;
    v119 = v110;
    v120 = v111;
    v121 = v112;
    *&v117[1] = v107;
    *&v117[3] = v108;
    sub_1AF6B9CF0(1);
    sub_1AF5C43E8(&v106, sub_1AF5C3C90);
  }

  sub_1AF6B06C0(v3, v127, 0x200000000, v113);
  if (*&v113[0])
  {
    if (v116 >= 1 && v115)
    {
      v39 = v114;
      v40 = v114 + 48 * v115;
      v72 = v40;
      do
      {
        v41 = *(v39 + 40);
        v42 = *(v41 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v42);
        os_unfair_lock_lock(*(v41 + 344));
        v43 = *(v41 + 24);

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        memset(v94, 0, 40);
        v44 = sub_1AF65A4B4(v43, 0, 0, &type metadata for EffectiveHiddenState, &off_1F2569630, &v87, v94);

        sub_1AF5C43E8(v94, sub_1AF5C4448);
        sub_1AF5C43E8(&v87, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v44);
        }

        else
        {
          v75 = v39;
          v45 = *(v41 + 232);
          v46 = *(v41 + 240);
          v47 = *(v41 + 120);
          v86 = *(v41 + 28);
          v84 = *(v41 + 32);
          v48 = *(v41 + 16);
          v49 = *(v41 + 40);
          v50 = *(v49 + 200);
          v82 = *(*(v48 + 88) + 8 * v44 + 32);

          if ((v50 & 1) != 0 || *(v82 + 200) == 1)
          {
            *(v48 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v49 = *(v41 + 40);
          }

          v51 = *(v41 + 256);
          sub_1AF5B4FCC(v49, v45, v46, 0, v41);
          v77 = *(v41 + 256);
          v78 = v51;
          v52 = v77 - v51;
          if (v77 == v51)
          {
            v53 = 0;
          }

          else
          {
            v53 = v51;
          }

          v94[0] = v53;
          v54 = *(*(v41 + 40) + 24);
          v55 = *(v54 + 16);
          if (v55)
          {
            v80 = v77 - v51;
            v56 = v54 + 32;

            for (j = 0; j != v55; ++j)
            {
              v58 = v56 + 40 * j;
              if ((*(v58 + 32) & 1) == 0)
              {
                v59 = *(v82 + 24);
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = (v59 + 32);
                  while (*v61 != *v58)
                  {
                    v61 += 5;
                    if (!--v60)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                else
                {
LABEL_55:
                  sub_1AF640BC8();
                }
              }
            }

            v52 = v80;
          }

          v40 = v72;
          if (*(v48 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v48 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v41 + 72) * v52);
          }

          if (*(v41 + 184))
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v41 + 168);
          }

          v93 = 0;

          MEMORY[0x1EEE9AC00](v63, v64);
          v65 = v86;
          v66 = v84;
          DWORD2(v88) = -1;
          v89 = v78;
          v90 = v77;
          v91 = v78;
          v92 = v77;
          *&v87 = v78;
          *(&v87 + 1) = v77;
          *&v88 = v62;
          if (v52 < 1)
          {

            v39 = v75;
          }

          else
          {
            v39 = v75;
            do
            {
              sub_1AF6248A8(v44, v65 | (v66 << 32), v47, v48, &v87, sub_1AF5C5E08);
              v66 = v84;
              v65 = v86;
            }

            while ((*(&v87 + 1) - v87) > 0);
          }

          v67 = *(v41 + 192);
          if (v67)
          {
            v68 = *(v41 + 208);
            sub_1AF75D364(v78, v77, v67);
            sub_1AF75D364(v78, v77, v68);
          }
        }

        v39 += 48;
        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v41 + 376));
      }

      while (v39 != v40);
    }

    sub_1AF5C43E8(v113, sub_1AF5C3C90);
  }
}

void sub_1AFBEB930(uint64_t a1)
{
  v2 = *(v1 + 32);
  v224[0] = *(v1 + 16);
  v224[1] = v2;
  v225 = *(v1 + 48);
  v187 = a1;
  sub_1AF6B06C0(a1, v224, 0x200000000, v213);
  v184 = *&v213[0];
  if (*&v213[0])
  {
    v183 = *(&v213[2] + 1);
    v3 = *(&v214 + 1);
    v4 = *(&v215 + 1);
    v217 = *(v213 + 8);
    v218 = *(&v213[1] + 8);
    if (v216 > 0 && *(&v214 + 1))
    {
      v192 = *(*(&v215 + 1) + 32);
      v5 = *(v215 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v212[3] = v214;
      v212[4] = v215;
      v212[5] = v216;
      v212[0] = v213[0];
      v199 = (v187 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v185 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v212[1] = v213[1];
      v212[2] = v213[2];
      sub_1AF5DD298(v212, &v204);
      v6 = 0;
      v7 = 0;
      v181 = v4;
      v182 = v3;
      v180 = v5;
      do
      {
        v193 = v7;
        v190 = v6;
        v8 = (v183 + 48 * v6);
        v10 = *v8;
        v9 = v8[1];
        v11 = *(v8 + 3);
        v195 = *(v8 + 2);
        v12 = *(v8 + 4);
        v13 = *(v8 + 5);
        if (v5)
        {
          v14 = *(v13 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v192);
        v15 = *(v4 + 4);
        v222[0] = *(v4 + 3);
        v222[1] = v15;
        v223 = v4[10];
        v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
        v4[6] = ecs_stack_allocator_allocate(v4[4], 48 * v16, 8);
        v4[7] = v16;
        v4[9] = 0;
        v4[10] = 0;
        v4[8] = 0;
        v17 = v195;
        v18 = sub_1AF64B110(&type metadata for SetActive, &off_1F2569580, v195, v11, v12, v4);
        if (v17)
        {
          v19 = &unk_1ED72C000;
          if (v12)
          {
            v20 = 0;
            v21 = v195;
            v200 = v13;
            do
            {
              if (*(v13 + 120) != *(v18 + v20))
              {
                v22 = v13;
                v23 = v12;
                v24 = v18;
                v25 = v21[v20];

                if (*(v22 + 184))
                {
                  goto LABEL_165;
                }

                v27 = *(*(v22 + 168) + 4 * v25);
                v28 = *(*(v26 + v19[284]) + 12 * v27 + 8);

                v30 = v27 == -1 && v28 == 0;
                if (v30 || (v27 & 0x80000000) != 0 || v199[1] <= v27)
                {
                  goto LABEL_12;
                }

                v31 = (*v199 + 12 * v27);
                if (v28 != -1 && v31[2] != v28)
                {
                  goto LABEL_12;
                }

                v33 = *(*(v187 + 144) + 8 * *v31 + 32);
                v34 = *(v187 + v185);
                if (*(v24 + v20) != *(v33 + 120))
                {
                  LODWORD(v179) = *(v24 + v20);
                  v35 = *(v33 + 240) - *(v33 + 232);
                  v191 = v33;
                  v178 = v34;
                  if (v35 < 2)
                  {
                    v42 = *(v33 + 16);
                    v43 = *(v33 + 188);
                    v44 = *(v33 + 24);
                    v45 = *(v42 + 136);

                    os_unfair_lock_lock(v45);
                    v46 = *(v42 + 104);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v42 + 104) = v46;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      *(v42 + 104) = sub_1AFC0D9B8(v46);
                    }

                    sub_1AF6213F4(v43, v179);
                    if (*(*(*(v42 + 88) + 8 * v44 + 32) + 200) == 1)
                    {
                      *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                    }

                    os_unfair_lock_unlock(*(v42 + 136));

                    *(v191 + 120) = v179;

                    v19 = &unk_1ED72C000;
                    v21 = v195;
                  }

                  else
                  {
                    v189 = *(v31 + 2);
                    v173 = *v34;
                    v36 = *(v33 + 24);
                    v197 = *(v33 + 28);
                    v198 = v36;
                    v196 = *(v33 + 32);
                    v37 = *(v33 + 16);
                    v38 = *(*(v37 + 88) + 8 * v36 + 32);
                    v39 = *(v33 + 40);
                    v40 = v39[200];

                    v194 = v38;

                    v41 = v191;
                    if ((v40 & 1) != 0 || *(v194 + 200) == 1)
                    {
                      *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                      v39 = v41[5];
                    }

                    v174 = v37;
                    if (v39[212])
                    {
                      v172 = 0;
                    }

                    else
                    {
                      v172 = *(v194 + 212);
                    }

                    v48 = v193;
                    LODWORD(v171) = v39[208];
                    v188 = v41[16];
                    v49 = v41[32];
                    sub_1AF5B69AC(v39, v189, 0, v191);
                    v50 = v191;
                    v193 = v48;
                    v51 = *(v191 + 256);
                    v176 = v49;
                    v177 = v51;
                    v52 = v51 - v49;
                    if (v51 == v49)
                    {
                      v53 = 0;
                    }

                    else
                    {
                      v53 = v49;
                    }

                    v186 = v53;
                    v203[0] = v53;
                    v54 = *(*(v191 + 40) + 24);
                    v55 = *(v54 + 16);
                    if (v55)
                    {
                      v189 = v52;
                      v56 = v54 + 32;
                      v170[1] = v54;

                      for (i = 0; i != v55; ++i)
                      {
                        v58 = v56 + 40 * i;
                        if ((*(v58 + 32) & 1) == 0)
                        {
                          v59 = *(v194 + 24);
                          v60 = *(v59 + 16);
                          if (v60)
                          {
                            v61 = (v59 + 32);
                            while (*v61 != *v58)
                            {
                              v61 += 5;
                              if (!--v60)
                              {
                                goto LABEL_46;
                              }
                            }
                          }

                          else
                          {
LABEL_46:
                            sub_1AF640BC8();
                          }
                        }
                      }

                      v50 = v191;
                      v52 = v189;
                    }

                    v62 = v174;
                    if (*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                    {
                      vfx_counters.add(_:_:)(*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v50 + 72) * v52);
                      v50 = v191;
                    }

                    v63 = *(v50 + 168);
                    v64 = *(v50 + 184);
                    v189 = v52;
                    if (v64)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    v202 = 0;

                    MEMORY[0x1EEE9AC00](v66, v67);
                    v68 = v197;
                    LODWORD(v170[-14]) = v197;
                    v69 = v196;
                    BYTE4(v170[-14]) = v196;
                    v170[-13] = v191;
                    v170[-12] = v194;
                    *&v170[-11] = 0u;
                    *&v170[-9] = 0u;
                    v170[-7] = v203;
                    v170[-6] = v188;
                    v170[-5] = &v202;
                    LOBYTE(v170[-4]) = v171;
                    HIDWORD(v170[-4]) = v198;
                    LOBYTE(v170[-3]) = v172;
                    v168 = v173;
                    v207 = -1;
                    v208 = v176;
                    v209 = v177;
                    v210 = v176;
                    v211 = v177;
                    v204 = v176;
                    v205 = v177;
                    v206 = v65;
                    v186 = v70;
                    if (v189 < 1)
                    {

                      v21 = v195;
                    }

                    else
                    {
                      v21 = v195;
                      v71 = v62;
                      v72 = v179;
                      do
                      {
                        v201 = v69;
                        sub_1AF6248A8(v198, v68 | (v69 << 32), v72, v71, &v204, sub_1AF5C5E08);
                        v69 = v196;
                        v68 = v197;
                      }

                      while (v205 - v204 > 0);
                    }

                    v73 = *(v191 + 192);
                    if (v73)
                    {
                      v74 = *(v191 + 216);
                      v197 = *(v191 + 208);
                      v198 = v74;
                      v75 = v176;
                      sub_1AF75D364(v176, v177, v73);
                      sub_1AF75D364(v75, v177, v197);
                    }

                    v19 = &unk_1ED72C000;
                  }
                }

                if (v199[1] > v27 && ((v76 = (*v199 + 12 * v27), v28 == -1) || v76[2] == v28))
                {
                  v77 = *(v76 + 2);
                  v78 = *(*(v187 + 144) + 8 * *v76 + 32);
                  thread_worker_index(v29);
                  v79 = *(v78 + 192);
                  if (v79)
                  {
                    v80 = *(v78 + 208);
                    *(v79 + 8 * (v77 >> 6)) |= 1 << v77;
                    *(v80 + 8 * (v77 >> 6)) &= ~(1 << v77);
                  }

                  if (*(*(v78 + 40) + 213) == 1)
                  {
                    v81 = *(v78 + 48);
                    v82 = (v81 + 32);
                    v83 = *(v81 + 16) + 1;
                    while (--v83)
                    {
                      v84 = v82 + 5;
                      v85 = *v82;
                      v82 += 5;
                      if (v85 == &type metadata for PropagateDirtiness)
                      {
                        v86 = *(v84 - 2);
                        goto LABEL_80;
                      }
                    }

                    v86 = 0;
LABEL_80:
                    v87 = *(v78 + 128);
                    v88 = *(v78 + 184);

                    if (v88)
                    {
                      goto LABEL_165;
                    }

                    v90 = *(*(v78 + 168) + 4 * v77);
                    v91 = (v87 + v86 + 8 * v77);
                    v92 = *(*(v89 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v90 + 8);

                    v93 = *v91;
                    v94 = v91[1];
                    if (v93 != -1 || v94 != 0)
                    {
                      sub_1AF70D248(&v204, v90 | (v92 << 32), v93 | (v94 << 32));
                    }

                    v19 = &unk_1ED72C000;
                    v18 = v24;
                    v21 = v195;
                  }

                  else
                  {
                    v18 = v24;
                    v19 = &unk_1ED72C000;
                  }
                }

                else
                {
LABEL_12:
                  v18 = v24;
                }

                v12 = v23;
                v13 = v200;
              }

              ++v20;
            }

            while (v20 != v12);
          }
        }

        else
        {
          v96 = &unk_1ED72C000;
          if (v10 != v9)
          {
            do
            {
              if (*(v13 + 120) != *(v18 + v10))
              {

                if (*(v13 + 184))
                {
                  goto LABEL_165;
                }

                v98 = *(*(v13 + 168) + 4 * v10);
                v99 = *(*(v97 + v96[284]) + 12 * v98 + 8);

                v101 = v98 == -1 && v99 == 0;
                if (!v101 && (v98 & 0x80000000) == 0 && v199[1] > v98)
                {
                  v102 = (*v199 + 12 * v98);
                  if (v99 == -1 || v102[2] == v99)
                  {
                    v104 = *(*(v187 + 144) + 8 * *v102 + 32);
                    v105 = *(v187 + v185);
                    if (*(v18 + v10) != *(v104 + 120))
                    {
                      LODWORD(v188) = *(v18 + v10);
                      v106 = *(v104 + 240) - *(v104 + 232);
                      v189 = v104;
                      v186 = v105;
                      if (v106 < 2)
                      {
                        v175 = v18;
                        v112 = *(v104 + 16);
                        v113 = *(v104 + 188);
                        v114 = *(v104 + 24);
                        v115 = *(v112 + 136);

                        os_unfair_lock_lock(v115);
                        v116 = *(v112 + 104);
                        v117 = swift_isUniquelyReferenced_nonNull_native();
                        *(v112 + 104) = v116;
                        if ((v117 & 1) == 0)
                        {
                          *(v112 + 104) = sub_1AFC0D9B8(v116);
                        }

                        sub_1AF6213F4(v113, v188);
                        if (*(*(*(v112 + 88) + 8 * v114 + 32) + 200) == 1)
                        {
                          *(v112 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                        }

                        os_unfair_lock_unlock(*(v112 + 136));

                        *(v189 + 120) = v188;

                        v96 = &unk_1ED72C000;
                        v18 = v175;
                      }

                      else
                      {
                        v176 = v9;
                        v107 = *(v102 + 2);
                        v174 = *v105;
                        v108 = *(v104 + 24);
                        v197 = *(v104 + 28);
                        v198 = v108;
                        v196 = *(v104 + 32);
                        v179 = *(v104 + 16);
                        v109 = *(*(v179 + 88) + 8 * v108 + 32);
                        v110 = *(v104 + 40);
                        v111 = v110[200];

                        v195 = v109;

                        if ((v111 & 1) != 0 || *(v195 + 200) == 1)
                        {
                          *(v179 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                          v110 = *(v189 + 40);
                        }

                        if (v110[212])
                        {
                          LODWORD(v173) = 0;
                        }

                        else
                        {
                          LODWORD(v173) = *(v195 + 212);
                        }

                        v172 = v110[208];
                        v118 = v189;
                        v194 = *(v189 + 128);
                        v119 = *(v189 + 256);
                        v120 = v110;
                        v121 = v193;
                        sub_1AF5B69AC(v120, v107, 0, v189);
                        v193 = v121;
                        v177 = *(v118 + 256);
                        v178 = v119;
                        v191 = v177 - v119;
                        if (v177 == v119)
                        {
                          v122 = 0;
                        }

                        else
                        {
                          v122 = v119;
                        }

                        v203[0] = v122;
                        v123 = *(*(v118 + 40) + 24);
                        v124 = *(v123 + 16);
                        if (v124)
                        {
                          v175 = v18;
                          v125 = v123 + 32;
                          v171 = v123;

                          for (j = 0; j != v124; ++j)
                          {
                            v127 = v125 + 40 * j;
                            if ((*(v127 + 32) & 1) == 0)
                            {
                              v128 = v195[3];
                              v129 = *(v128 + 16);
                              if (v129)
                              {
                                v130 = (v128 + 32);
                                while (*v130 != *v127)
                                {
                                  v130 += 5;
                                  if (!--v129)
                                  {
                                    goto LABEL_123;
                                  }
                                }
                              }

                              else
                              {
LABEL_123:
                                sub_1AF640BC8();
                              }
                            }
                          }

                          v18 = v175;
                        }

                        v131 = v179;
                        v132 = v189;
                        v133 = v191;
                        if (*(v179 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                        {
                          vfx_counters.add(_:_:)(*(v179 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v189 + 72) * v191);
                        }

                        if (*(v132 + 184))
                        {
                          v134 = 0;
                        }

                        else
                        {
                          v134 = *(v132 + 168);
                        }

                        v202 = 0;

                        MEMORY[0x1EEE9AC00](v135, v136);
                        v137 = v197;
                        LODWORD(v170[-14]) = v197;
                        v138 = v196;
                        BYTE4(v170[-14]) = v196;
                        v139 = v195;
                        v170[-13] = v140;
                        v170[-12] = v139;
                        *&v170[-11] = 0u;
                        *&v170[-9] = 0u;
                        v170[-7] = v203;
                        v170[-6] = v194;
                        v170[-5] = &v202;
                        LOBYTE(v170[-4]) = v172;
                        HIDWORD(v170[-4]) = v198;
                        LOBYTE(v170[-3]) = v173;
                        v168 = v174;
                        v207 = -1;
                        v208 = v178;
                        v209 = v177;
                        v210 = v178;
                        v211 = v177;
                        v204 = v178;
                        v205 = v177;
                        v206 = v134;
                        v171 = v141;
                        if (v133 >= 1)
                        {
                          v142 = v131;
                          v143 = v188;
                          do
                          {
                            v201 = v138;
                            sub_1AF6248A8(v198, v137 | (v138 << 32), v143, v142, &v204, sub_1AF5C44B0);
                            v138 = v196;
                            v137 = v197;
                          }

                          while (v205 - v204 > 0);
                        }

                        v144 = *(v189 + 192);
                        v9 = v176;
                        if (v144)
                        {
                          v145 = *(v189 + 216);
                          v197 = *(v189 + 208);
                          v198 = v145;
                          v147 = v177;
                          v146 = v178;
                          sub_1AF75D364(v178, v177, v144);
                          sub_1AF75D364(v146, v147, v197);
                        }

                        v96 = &unk_1ED72C000;
                      }
                    }

                    if (v199[1] > v98)
                    {
                      v148 = (*v199 + 12 * v98);
                      if (v99 == -1 || v148[2] == v99)
                      {
                        v149 = *(v148 + 2);
                        v150 = *(*(v187 + 144) + 8 * *v148 + 32);
                        thread_worker_index(v100);
                        v151 = *(v150 + 192);
                        if (v151)
                        {
                          v152 = *(v150 + 208);
                          *(v151 + 8 * (v149 >> 6)) |= 1 << v149;
                          *(v152 + 8 * (v149 >> 6)) &= ~(1 << v149);
                        }

                        if (*(*(v150 + 40) + 213) == 1)
                        {
                          v153 = *(v150 + 48);
                          v154 = (v153 + 32);
                          v155 = *(v153 + 16) + 1;
                          v175 = v18;
                          while (--v155)
                          {
                            v156 = v154 + 5;
                            v157 = *v154;
                            v154 += 5;
                            if (v157 == &type metadata for PropagateDirtiness)
                            {
                              v158 = *(v156 - 2);
                              goto LABEL_154;
                            }
                          }

                          v158 = 0;
LABEL_154:
                          v159 = *(v150 + 128);
                          v160 = *(v150 + 184);

                          if (v160)
                          {
LABEL_165:
                            v169 = 0;
                            v168 = 204;
                            sub_1AFDFE518();
                            __break(1u);
                            return;
                          }

                          v162 = *(*(v150 + 168) + 4 * v149);
                          v163 = (v159 + v158 + 8 * v149);
                          v164 = *(*(v161 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v162 + 8);

                          v165 = *v163;
                          v166 = v163[1];
                          if (v165 != -1 || v166 != 0)
                          {
                            sub_1AF70D248(&v204, v162 | (v164 << 32), v165 | (v166 << 32));
                          }

                          v96 = &unk_1ED72C000;
                          v18 = v175;
                        }

                        else
                        {
                          v96 = &unk_1ED72C000;
                        }
                      }
                    }
                  }
                }
              }

              ++v10;
            }

            while (v10 != v9);
          }
        }

        v219 = v184;
        v220 = v217;
        v221 = v218;
        v4 = v181;
        v7 = v193;
        sub_1AF630994(v181, &v219, v222);
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v192);
        v5 = v180;
        if (v180)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        v6 = v190 + 1;
      }

      while (v190 + 1 != v182);
      sub_1AF5C43E8(v213, sub_1AF5C3C90);
    }

    sub_1AF5C43E8(v213, sub_1AF5C3C90);
  }
}

uint64_t sub_1AFBEC974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFBEC9F8(uint64_t a1)
{
  v2 = sub_1AFBEE058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBECA34(uint64_t a1)
{
  v2 = sub_1AFBEE058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBECA70@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AFBEE0AC(0, &qword_1EB643520, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBEE058();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AFDFE738();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  return result;
}

uint64_t sub_1AFBECC00(void *a1)
{
  sub_1AFBEE0AC(0, &qword_1EB643530, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBEE058();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v7, v3);
}

void sub_1AFBECD58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1AFBECEC4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED73B840;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  sub_1AF8D3EDC(2, 1, 1, v5);
  v1 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v6;
  sub_1AF7033A4(1, v7);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LastFrameWorldTransform;
  *(inited + 40) = &off_1F2529E30;
  sub_1AF5D1EC0(inited, v8);
  sub_1AFBEDFA0(v7, sub_1AFBEE000);
  swift_setDeallocating();
  v3 = v8[1];
  *(v0 + 56) = v8[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v9;
  return v0;
}

uint64_t sub_1AFBECFFC()
{
  v0 = swift_allocObject();
  sub_1AFBECEC4();
  return v0;
}

void sub_1AFBED04C(uint64_t a1)
{
  v2 = 0;
  v253[0] = *(v1 + 56);
  v253[1] = *(v1 + 72);
  v254 = *(v1 + 88);
  sub_1AF6B06C0(a1, v253, 0x200000000, v234);
  if (*&v234[0])
  {
    if (v237 >= 1 && v236)
    {
      v3 = v235;
      v4 = v235 + 48 * v236;
      v190 = v4;
      do
      {
        v5 = *(v3 + 40);
        v6 = *(v5 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v6);
        os_unfair_lock_lock(*(v5 + 344));
        v7 = *(v5 + 24);

        memset(v238, 0, sizeof(v238));
        v252 = 0;
        v251 = 0u;
        v250 = 0u;
        v8 = sub_1AF65A4B4(v7, &type metadata for LastFrameWorldTransform, &off_1F2529EB0, 0, 0, v238, &v250);

        sub_1AFBEDFA0(&v250, sub_1AF5C4448);
        sub_1AFBEDFA0(v238, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v8);
        }

        else
        {
          v199 = v3;
          v9 = *(v5 + 232);
          v10 = *(v5 + 240);
          v11 = *(v5 + 120);
          v228 = *(v5 + 28);
          v223 = *(v5 + 32);
          v12 = *(v5 + 16);
          v13 = *(v5 + 40);
          v14 = *(v13 + 200);
          v212 = *(*(v12 + 88) + 8 * v8 + 32);

          if ((v14 & 1) != 0 || *(v212 + 200) == 1)
          {
            *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v13 = *(v5 + 40);
          }

          v196 = v11;
          v15 = *(v5 + 256);
          sub_1AF5B4FCC(v13, v9, v10, 0, v5);
          v204 = *(v5 + 256);
          v16 = v204 - v15;
          v207 = v15;
          if (v204 == v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          *&v250 = v17;
          v18 = *(*(v5 + 40) + 24);
          v19 = *(v18 + 16);
          if (v19)
          {
            v20 = v18 + 32;

            for (i = 0; i != v19; ++i)
            {
              v22 = v20 + 40 * i;
              if ((*(v22 + 32) & 1) == 0)
              {
                v23 = *(v212 + 24);
                v24 = *(v23 + 16);
                if (v24)
                {
                  v25 = (v23 + 32);
                  while (*v25 != *v22)
                  {
                    v25 += 5;
                    if (!--v24)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8();
                }
              }
            }
          }

          if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v16);
          }

          if (*(v5 + 184))
          {
            v26 = 0;
          }

          else
          {
            v26 = *(v5 + 168);
          }

          *&v248[0] = 0;

          MEMORY[0x1EEE9AC00](v27, v28);
          v29 = v228;
          v30 = v223;
          *&v238[24] = -1;
          *&v238[32] = v15;
          v239 = v204;
          v240 = v15;
          v241 = v204;
          *v238 = v15;
          *&v238[8] = v204;
          *&v238[16] = v26;
          if (v16 < 1)
          {

            v3 = v199;
          }

          else
          {
            v3 = v199;
            do
            {
              LOBYTE(v245) = v30;
              sub_1AF6248A8(v8, v29 | (v30 << 32), v196, v12, v238, sub_1AF5C5ACC);
              v30 = v223;
              v29 = v228;
            }

            while ((*&v238[8] - *v238) > 0);
          }

          v31 = *(v5 + 192);
          if (v31)
          {
            v32 = *(v5 + 208);
            sub_1AF75D364(v207, v204, v31);
            sub_1AF75D364(v207, v204, v32);
          }

          v4 = v190;
        }

        v3 += 48;
        os_unfair_lock_unlock(*(v5 + 344));
        os_unfair_lock_unlock(*(v5 + 376));
      }

      while (v3 != v4);
    }

    sub_1AFBEDFA0(v234, sub_1AF5C3C90);
  }

  v33 = *(v186 + 32);
  v250 = *(v186 + 16);
  v251 = v33;
  v252 = *(v186 + 48);
  sub_1AF6B06C0(a1, &v250, 0x200000000, v238);
  if (*v238)
  {
    if (v244 >= 1)
    {
      v191 = v241;
      if (v241)
      {
        v34 = 0;
        v189 = v239;
        v35 = v243;
        v194 = *(v243 + 32);
        v36 = *(v242 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v245 = *v238;
        v246 = *&v238[8];
        v247 = *&v238[24];
        v187 = v36;
        do
        {
          v195 = v2;
          v192 = v34;
          v37 = (v189 + 48 * v34);
          v38 = *v37;
          v229 = v37[1];
          v39 = *(v37 + 2);
          v40 = *(v37 + 3);
          v42 = *(v37 + 4);
          v41 = *(v37 + 5);
          if (v36)
          {
            v43 = *(v41 + 376);

            os_unfair_lock_lock(v43);
            os_unfair_lock_lock(*(v41 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v194);
          v44 = *(v35 + 64);
          v248[0] = *(v35 + 48);
          v248[1] = v44;
          v249 = *(v35 + 80);
          v45 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
          *(v35 + 48) = ecs_stack_allocator_allocate(*(v35 + 32), 48 * v45, 8);
          *(v35 + 56) = v45;
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          *(v35 + 64) = 0;
          v46 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v39, v40, v42, v35);
          v47 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v39, v40, v42, v35);
          v193 = v41;
          v48 = sub_1AF64B110(&type metadata for SmoothMotion, &off_1F25697A8, v39, v40, v42, v35);
          v49 = v48;
          if (v39)
          {
            if (v42)
            {
              v50 = (v46 + 32);
              v51 = (v47 + 32);
              v52 = v192;
              do
              {
                v58 = *(v51 - 2);
                v57 = *(v51 - 1);
                v59 = *v51;
                v60 = *(v51 + 1);
                v197 = *v49;
                v205 = *v50;
                v208 = v50[1];
                v200 = v50[-2];
                v202 = v50[-1];
                v260[0] = 0uLL;
                v259 = 0uLL;
                v258.i32[2] = 0;
                v258.i64[0] = 0;
                v257.i32[2] = 0;
                v257.i64[0] = 0;
                v256.i32[2] = 0;
                v256.i64[0] = 0;
                v255.i32[2] = 0;
                v255.i64[0] = 0;
                v213 = v57;
                v224 = v58;
                v210 = v59;
                v230 = v60;
                v61 = sub_1AF120324(v260, &v258, &v256, v58, v57, v59, v60);
                v62 = sub_1AF120324(&v259, &v257, &v255, v200, v202, v205, v208);
                if (v61)
                {
                  v53 = v224;
                  v54 = v230;
                  v55 = v210;
                  v56 = v213;
                  if (v62)
                  {
                    v63 = vmulq_f32(v260[0], v259);
                    v64 = vaddq_f32(v260[0], v259);
                    v225 = v259;
                    v231 = v260[0];
                    v65 = 1.0;
                    if (vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL))) >= 0.0)
                    {
                      v84 = vsubq_f32(v260[0], v259);
                      v85 = vmulq_f32(v84, v84);
                      v86 = vmulq_f32(v64, v64);
                      v87 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v85.i8, *&vextq_s8(v85, v85, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v86.i8, *&vextq_s8(v86, v86, 8uLL)))));
                      v88 = v87 + v87;
                      v89 = 1.0;
                      if ((v87 + v87) != 0.0)
                      {
                        v89 = sinf(v87 + v87) / v88;
                      }

                      v72 = v197;
                      v90 = (1.0 - v197) * v88;
                      if (v90 != 0.0)
                      {
                        v216 = v89;
                        v91 = sinf((1.0 - v197) * v88);
                        v89 = v216;
                        v72 = v197;
                        v65 = v91 / v90;
                      }

                      v92 = v72 * v88;
                      v93 = 1.0;
                      if (v92 != 0.0)
                      {
                        v217 = v89;
                        v94 = sinf(v92);
                        v89 = v217;
                        v72 = v197;
                        v93 = v94 / v92;
                      }

                      v95 = v89;
                      v96 = vrecpe_f32(LODWORD(v89));
                      v97 = vmul_f32(v96, vrecps_f32(LODWORD(v95), v96));
                      v98 = vmul_f32(v97, vrecps_f32(LODWORD(v95), v97)).f32[0];
                      *v97.i32 = (1.0 - v197) * (v98 * v65);
                      v82 = vdupq_lane_s32(v97, 0);
                      v83 = vmulq_n_f32(v225, v72 * (v98 * v93));
                    }

                    else
                    {
                      v66 = vmulq_f32(v64, v64);
                      v67 = vsubq_f32(v260[0], v259);
                      v68 = vmulq_f32(v67, v67);
                      v69 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)))));
                      v70 = v69 + v69;
                      v71 = 1.0;
                      if ((v69 + v69) != 0.0)
                      {
                        v71 = sinf(v69 + v69) / v70;
                      }

                      v72 = v197;
                      v73 = (1.0 - v197) * v70;
                      if (v73 != 0.0)
                      {
                        v214 = v71;
                        v74 = sinf((1.0 - v197) * v70);
                        v71 = v214;
                        v72 = v197;
                        v65 = v74 / v73;
                      }

                      v75 = v72 * v70;
                      v76 = 1.0;
                      if (v75 != 0.0)
                      {
                        v215 = v71;
                        v77 = sinf(v75);
                        v71 = v215;
                        v72 = v197;
                        v76 = v77 / v75;
                      }

                      v78 = v71;
                      v79 = vrecpe_f32(LODWORD(v71));
                      v80 = vmul_f32(v79, vrecps_f32(LODWORD(v78), v79));
                      v81 = vmul_f32(v80, vrecps_f32(LODWORD(v78), v80)).f32[0];
                      *v80.i32 = (1.0 - v197) * (v81 * v65);
                      v82 = vdupq_lane_s32(v80, 0);
                      v83 = vmulq_n_f32(vnegq_f32(v225), v72 * (v81 * v76));
                    }

                    v99 = vmlaq_f32(v83, v231, v82);
                    v100 = vmulq_f32(v99, v99);
                    *v100.i8 = vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
                    v101 = vdupq_lane_s32(vadd_f32(*v100.i8, vdup_lane_s32(*v100.i8, 1)), 0);
                    v102 = vrsqrteq_f32(v101);
                    v103 = vmulq_f32(v102, vrsqrtsq_f32(v101, vmulq_f32(v102, v102)));
                    v104 = vbslq_s8(vceqzq_f32(v101), v99, vmulq_f32(vmulq_f32(v103, vrsqrtsq_f32(v101, vmulq_f32(v103, v103))), v99));
                    v54 = vmlaq_n_f32(v258, vsubq_f32(v257, v258), v72);
                    v54.i32[3] = 1.0;
                    v105 = vmlaq_n_f32(v256, vsubq_f32(v255, v256), v72);
                    v106 = vabsq_f32(v105);
                    v106.i32[3] = 0;
                    v107.i64[0] = 0x8000000080000000;
                    v107.i64[1] = 0x8000000080000000;
                    v108 = vorrq_s8(vandq_s8(v105, v107), vabsq_f32(vmaxnmq_f32(v106, xmmword_1AFE20A30)));
                    v109 = vmulq_f32(v104, v104);
                    v110 = vmulq_laneq_f32(v104, v104, 3);
                    v111 = vmuls_lane_f32(v104.f32[0], *v104.f32, 1);
                    v112 = vmuls_lane_f32(v104.f32[1], v104, 2);
                    v104.f32[0] = vmuls_lane_f32(v104.f32[0], v104, 2);
                    v113 = vaddq_f32(v108, v108);
                    v114.i32[3] = 0;
                    v114.f32[0] = (0.5 - v109.f32[1]) - v109.f32[2];
                    v114.f32[1] = v111 + v110.f32[2];
                    v114.f32[2] = v104.f32[0] - v110.f32[1];
                    v53 = vmulq_n_f32(v114, v113.f32[0]);
                    v109.f32[0] = 0.5 - v109.f32[0];
                    v115.i32[3] = 0;
                    v115.f32[0] = v111 - v110.f32[2];
                    v115.f32[1] = v109.f32[0] - v109.f32[2];
                    v115.f32[2] = v112 + v110.f32[0];
                    v56 = vmulq_lane_f32(v115, *v113.f32, 1);
                    v110.f32[0] = v112 - v110.f32[0];
                    v116.i32[3] = 0;
                    v116.f32[0] = v104.f32[0] + v110.f32[1];
                    v116.i32[1] = v110.i32[0];
                    v116.f32[2] = v109.f32[0] - v109.f32[1];
                    v55 = vmulq_laneq_f32(v116, v113, 2);
                  }
                }

                else
                {
                  v53 = v224;
                  v54 = v230;
                  v55 = v210;
                  v56 = v213;
                }

                v50[-2] = v53;
                v50[-1] = v56;
                ++v49;
                *v50 = v55;
                v50[1] = v54;
                v50 += 4;
                v51 += 4;
                --v42;
              }

              while (v42);
              goto LABEL_72;
            }
          }

          else if (v38 != v229)
          {
            v117 = v229 - v38;
            v118 = (v48 + 4 * v38);
            v119 = (v46 + (v38 << 6) + 32);
            v120 = (v47 + (v38 << 6) + 32);
            v52 = v192;
            do
            {
              v126 = *(v120 - 2);
              v125 = *(v120 - 1);
              v127 = *v120;
              v128 = *(v120 + 1);
              v198 = *v118;
              v206 = *v119;
              v209 = v119[1];
              v201 = v119[-2];
              v203 = v119[-1];
              v260[0] = 0uLL;
              v259 = 0uLL;
              v258.i32[2] = 0;
              v258.i64[0] = 0;
              v257.i32[2] = 0;
              v257.i64[0] = 0;
              v256.i32[2] = 0;
              v256.i64[0] = 0;
              v255.i32[2] = 0;
              v255.i64[0] = 0;
              v218 = v125;
              v226 = v126;
              v211 = v127;
              v232 = v128;
              v129 = sub_1AF120324(v260, &v258, &v256, v126, v125, v127, v128);
              v130 = sub_1AF120324(&v259, &v257, &v255, v201, v203, v206, v209);
              if (v129)
              {
                v121 = v226;
                v122 = v232;
                v123 = v211;
                v124 = v218;
                if (v130)
                {
                  v131 = vmulq_f32(v260[0], v259);
                  v227 = v259;
                  v233 = v260[0];
                  v132 = 1.0;
                  if (vaddv_f32(vadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL))) >= 0.0)
                  {
                    v152 = vsubq_f32(v260[0], v259);
                    v153 = vmulq_f32(v152, v152);
                    v154 = vaddq_f32(v260[0], v259);
                    v155 = vmulq_f32(v154, v154);
                    v156 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v153.i8, *&vextq_s8(v153, v153, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v155.i8, *&vextq_s8(v155, v155, 8uLL)))));
                    v157 = v156 + v156;
                    v158 = 1.0;
                    if ((v156 + v156) != 0.0)
                    {
                      v158 = sinf(v156 + v156) / v157;
                    }

                    v140 = v198;
                    v159 = (1.0 - v198) * v157;
                    if (v159 != 0.0)
                    {
                      v221 = v158;
                      v160 = sinf((1.0 - v198) * v157);
                      v158 = v221;
                      v140 = v198;
                      v132 = v160 / v159;
                    }

                    v161 = v140 * v157;
                    v162 = 1.0;
                    if (v161 != 0.0)
                    {
                      v222 = v158;
                      v163 = sinf(v161);
                      v158 = v222;
                      v140 = v198;
                      v162 = v163 / v161;
                    }

                    v164 = v158;
                    v165 = vrecpe_f32(LODWORD(v158));
                    v166 = vmul_f32(v165, vrecps_f32(LODWORD(v164), v165));
                    v167 = vmul_f32(v166, vrecps_f32(LODWORD(v164), v166)).f32[0];
                    *v166.i32 = (1.0 - v198) * (v167 * v132);
                    v150 = vdupq_lane_s32(v166, 0);
                    v151 = vmulq_n_f32(v227, v140 * (v167 * v162));
                  }

                  else
                  {
                    v133 = vaddq_f32(v260[0], v259);
                    v134 = vmulq_f32(v133, v133);
                    v135 = vsubq_f32(v260[0], v259);
                    v136 = vmulq_f32(v135, v135);
                    v137 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v136.i8, *&vextq_s8(v136, v136, 8uLL)))));
                    v138 = v137 + v137;
                    v139 = 1.0;
                    if ((v137 + v137) != 0.0)
                    {
                      v139 = sinf(v137 + v137) / v138;
                    }

                    v140 = v198;
                    v141 = (1.0 - v198) * v138;
                    if (v141 != 0.0)
                    {
                      v219 = v139;
                      v142 = sinf((1.0 - v198) * v138);
                      v139 = v219;
                      v140 = v198;
                      v132 = v142 / v141;
                    }

                    v143 = v140 * v138;
                    v144 = 1.0;
                    if (v143 != 0.0)
                    {
                      v220 = v139;
                      v145 = sinf(v143);
                      v139 = v220;
                      v140 = v198;
                      v144 = v145 / v143;
                    }

                    v146 = v139;
                    v147 = vrecpe_f32(LODWORD(v139));
                    v148 = vmul_f32(v147, vrecps_f32(LODWORD(v146), v147));
                    v149 = vmul_f32(v148, vrecps_f32(LODWORD(v146), v148)).f32[0];
                    *v148.i32 = (1.0 - v198) * (v149 * v132);
                    v150 = vdupq_lane_s32(v148, 0);
                    v151 = vmulq_n_f32(vnegq_f32(v227), v140 * (v149 * v144));
                  }

                  v168 = vmlaq_f32(v151, v233, v150);
                  v169 = vmulq_f32(v168, v168);
                  *v169.i8 = vadd_f32(*v169.i8, *&vextq_s8(v169, v169, 8uLL));
                  v170 = vdupq_lane_s32(vadd_f32(*v169.i8, vdup_lane_s32(*v169.i8, 1)), 0);
                  v171 = vrsqrteq_f32(v170);
                  v172 = vmulq_f32(v171, vrsqrtsq_f32(v170, vmulq_f32(v171, v171)));
                  v173 = vbslq_s8(vceqzq_f32(v170), v168, vmulq_f32(vmulq_f32(v172, vrsqrtsq_f32(v170, vmulq_f32(v172, v172))), v168));
                  v122 = vmlaq_n_f32(v258, vsubq_f32(v257, v258), v140);
                  v122.i32[3] = 1.0;
                  v174 = vmlaq_n_f32(v256, vsubq_f32(v255, v256), v140);
                  v175 = vabsq_f32(v174);
                  v175.i32[3] = 0;
                  v176.i64[0] = 0x8000000080000000;
                  v176.i64[1] = 0x8000000080000000;
                  v177 = vorrq_s8(vandq_s8(v174, v176), vabsq_f32(vmaxnmq_f32(v175, xmmword_1AFE20A30)));
                  v178 = vmulq_f32(v173, v173);
                  v179 = vmulq_laneq_f32(v173, v173, 3);
                  v180 = vmuls_lane_f32(v173.f32[0], *v173.f32, 1);
                  v181 = vmuls_lane_f32(v173.f32[1], v173, 2);
                  v173.f32[0] = vmuls_lane_f32(v173.f32[0], v173, 2);
                  v182 = vaddq_f32(v177, v177);
                  v183.i32[3] = 0;
                  v183.f32[0] = (0.5 - v178.f32[1]) - v178.f32[2];
                  v183.f32[1] = v180 + v179.f32[2];
                  v183.f32[2] = v173.f32[0] - v179.f32[1];
                  v121 = vmulq_n_f32(v183, v182.f32[0]);
                  v178.f32[0] = 0.5 - v178.f32[0];
                  v184.i32[3] = 0;
                  v184.f32[0] = v180 - v179.f32[2];
                  v184.f32[1] = v178.f32[0] - v178.f32[2];
                  v184.f32[2] = v181 + v179.f32[0];
                  v124 = vmulq_lane_f32(v184, *v182.f32, 1);
                  v179.f32[0] = v181 - v179.f32[0];
                  v185.i32[3] = 0;
                  v185.f32[0] = v173.f32[0] + v179.f32[1];
                  v185.i32[1] = v179.i32[0];
                  v185.f32[2] = v178.f32[0] - v178.f32[1];
                  v123 = vmulq_laneq_f32(v185, v182, 2);
                }
              }

              else
              {
                v121 = v226;
                v122 = v232;
                v123 = v211;
                v124 = v218;
              }

              v119[-2] = v121;
              v119[-1] = v124;
              ++v118;
              *v119 = v123;
              v119[1] = v122;
              v119 += 4;
              v120 += 4;
              --v117;
            }

            while (v117);
            goto LABEL_72;
          }

          v52 = v192;
LABEL_72:
          v2 = v195;
          sub_1AF630994(v35, &v245, v248);
          sub_1AF62D29C(v193);
          ecs_stack_allocator_pop_snapshot(v194);
          v36 = v187;
          if (v187)
          {
            os_unfair_lock_unlock(*(v193 + 344));
            os_unfair_lock_unlock(*(v193 + 376));
          }

          v34 = v52 + 1;
        }

        while (v34 != v191);
      }
    }

    sub_1AFBEDFA0(v238, sub_1AF5C3C90);
  }
}

uint64_t sub_1AFBEDFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFBEE000()
{
  if (!qword_1ED723E48)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723E48);
    }
  }
}

unint64_t sub_1AFBEE058()
{
  result = qword_1EB643528;
  if (!qword_1EB643528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643528);
  }

  return result;
}

void sub_1AFBEE0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBEE058();
    v7 = a3(a1, &type metadata for SmoothMotion.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFBEE124()
{
  result = qword_1EB643538;
  if (!qword_1EB643538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643538);
  }

  return result;
}

unint64_t sub_1AFBEE17C()
{
  result = qword_1EB643540;
  if (!qword_1EB643540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643540);
  }

  return result;
}

unint64_t sub_1AFBEE1D4()
{
  result = qword_1EB643548;
  if (!qword_1EB643548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643548);
  }

  return result;
}

uint64_t sub_1AFBEE228()
{
  type metadata accessor for TypeRegistry();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = sub_1AF42EBA8(MEMORY[0x1E69E7CC0]);
  v0[3] = sub_1AF42EBA8(v1);
  v0[4] = sub_1AF42ECC4(v1);
  sub_1AFBEE2B0();
  qword_1ED730448 = v0;

  qword_1ED730458 = v0;
  return result;
}

uint64_t sub_1AFBEE2B0()
{
  sub_1AFBF1614();
  v0 = sub_1AFDFCF88();
  v2 = sub_1AF6DC144(v0, v1, 0, 1);

  if (!v2 || (result = swift_conformsToProtocol2()) == 0)
  {
    sub_1AF6FB758();
    sub_1AF6FB7D8();
    sub_1AFBEF608();
    sub_1AF6DBCAC(&type metadata for OldEvent, &unk_1F24F5380);
    sub_1AF966FFC(&unk_1F24F53A0);
    v4 = MEMORY[0x1E69E7CC0];
    sub_1AF6DBCAC(&type metadata for NewEvent, MEMORY[0x1E69E7CC0]);
    sub_1AF6DBCAC(&type metadata for NullEntityComponent, v4);
    sub_1AF6DBCAC(&type metadata for Name, v4);
    sub_1AF6DBCAC(&type metadata for SetActive, v4);
    sub_1AF6DBCAC(&type metadata for Skybox, v4);
    sub_1AF6DBCAC(&type metadata for Navigation, v4);
    sub_1AF6DBCAC(&type metadata for ParticleContinuousSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVariableSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBurstSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePeriodicBurstSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnOverDistance, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSubSpawn, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGrowEmitter, v4);
    sub_1AF6DBCAC(&type metadata for EmitterShape, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLifeInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMassInit, v4);
    sub_1AFBF16C4(0, &qword_1ED72FD18, &type metadata for LinearFactor, &off_1F252DE68, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v5, v4);
    sub_1AFBF16C4(0, &qword_1ED72FD10, &type metadata for AngularFactor, &off_1F252DDC8, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v6, v4);
    sub_1AFBF16C4(0, qword_1ED72FD20, &type metadata for ParticleTarget, &off_1F252DD28, type metadata accessor for ParticleFloat3Init);
    sub_1AF6DBCAC(v7, &unk_1F24F53B8);
    sub_1AF966FFC(&unk_1F24F53D8);
    sub_1AF6DBCAC(&type metadata for ParticleVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngularVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOrientationInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleVelocityInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePivotInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrameInit, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePositionOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverPosition, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleColorOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleOpacityOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverLife, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSizeOverTexture, v4);
    sub_1AF6DBCAC(&type metadata for OrientationConstraint, v4);
    sub_1AF6DBCAC(&type metadata for OrientationOverVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrameEvolution, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGravity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGravityForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSPHSimulation, v4);
    sub_1AF6DBCAC(&type metadata for Anchored, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAnchored, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRibbonTrails, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingAlignOrientation, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingAlignVelocityOnPlane, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingConstrainToArea, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingConstrainToPlane, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingFlyTowardsArea, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFlockingSpeedControl, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFluidSolver2DEmitter, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleFluidSolver2DSolver, v4);
    sub_1AF6DBCAC(&type metadata for ParticleDrag, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCopyData, v4);
    sub_1AF6DBCAC(&type metadata for ParticleNoise, &unk_1F24F53F0);
    sub_1AF966FFC(&unk_1F24F5410);
    sub_1AF6DBCAC(&type metadata for ProjectorParameters, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCollide, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePlaneCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBoxCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCylinderCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSDFCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMeshCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereAttractor, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSDFAttractor, v4);
    sub_1AF6DBCAC(&type metadata for KillShape, v4);
    sub_1AF6DBCAC(&type metadata for ParticleKillable, v4);
    sub_1AF6DBCAC(&type metadata for ForceField, v4);
    sub_1AF6DBCAC(&type metadata for ParticleForceField, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGlobalForce, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAffectedByGlobalForce, v4);
    sub_1AF6DBCAC(&type metadata for Vortex, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTargetFromPosition, v4);
    sub_1AF6DBCAC(&type metadata for DistanceConstraint, v4);
    sub_1AF6DBCAC(&type metadata for Attach, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLocalBoxCollider, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePointRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLineRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleQuadRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleBoxRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSphereRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSurfaceRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVolumetricRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePrimitiveRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAOSphereRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAOBoxRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleGaussianRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleDecalRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleVoxelRenderer, v4);
    sub_1AF6DBCAC(&type metadata for FluidRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMeshRenderer, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRibbonRenderer, v4);
    sub_1AF6DBCAC(&type metadata for MeshModel, &unk_1F24F5428);
    sub_1AF966FFC(&unk_1F24F5448);
    sub_1AF6DBCAC(&type metadata for ModelRenderer, v4);
    sub_1AF6DBCAC(&type metadata for GenericLOD, v4);
    sub_1AF6DBCAC(&type metadata for LODRenderer, v4);
    sub_1AF6DBCAC(&type metadata for LODState, v4);
    sub_1AF6DBCAC(&type metadata for PointOfCulling, v4);
    sub_1AF6DBCAC(&type metadata for FrustumCulled, v4);
    sub_1AF6DBCAC(&type metadata for LODCulled, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLegacyRenderer, v4);
    sub_1AF6DBCAC(&type metadata for Color, v4);
    sub_1AF6DBCAC(&type metadata for DirectionalLight, v4);
    sub_1AF6DBCAC(&type metadata for PointLight, v4);
    sub_1AF6DBCAC(&type metadata for AmbientLight, v4);
    sub_1AF6DBCAC(&type metadata for SpotLight, v4);
    sub_1AF6DBCAC(&type metadata for Shadow, &unk_1F24F5460);
    sub_1AF966FFC(&unk_1F24F5480);
    sub_1AF6DBCAC(&type metadata for ParticleRoughness, v4);
    sub_1AF6DBCAC(&type metadata for ParticleMetalness, v4);
    sub_1AF6DBCAC(&type metadata for ParticleEmission, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTarget, &unk_1F24F5498);
    sub_1AF966FFC(&unk_1F24F54B8);
    sub_1AF6DBCAC(&type metadata for UserData1, v4);
    sub_1AF6DBCAC(&type metadata for UserData2, v4);
    sub_1AF6DBCAC(&type metadata for UserData3, v4);
    sub_1AF6DBCAC(&type metadata for UserData4, v4);
    sub_1AF6DBCAC(&type metadata for NeighborCount, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngle, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAngleVelocity, v4);
    sub_1AF6DBCAC(&type metadata for ParticleTextureFrame, v4);
    sub_1AF6DBCAC(&type metadata for Mass, v4);
    sub_1AF6DBCAC(&type metadata for ParticleID, v4);
    sub_1AF6DBCAC(&type metadata for ParticleAge, v4);
    sub_1AF6DBCAC(&type metadata for ParticleLifetime, v4);
    sub_1AF6DBCAC(&type metadata for ParticlePivot, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCustomEmitter, v4);
    sub_1AF6DBCAC(&type metadata for LocalAABB, v4);
    sub_1AF6DBCAC(&type metadata for WorldAABB, v4);
    sub_1AF6DBCAC(&type metadata for IBLGenerator, v4);
    sub_1AF6DBCAC(&type metadata for IBLRuntime, v4);
    sub_1AF6DBCAC(&type metadata for PointOfView, v4);
    sub_1AF6DBCAC(&type metadata for ProjectionMatrix, v4);
    sub_1AF6DBCAC(&type metadata for PerspectiveCamera, v4);
    sub_1AF6DBCAC(&type metadata for OrthographicCamera, v4);
    sub_1AF6DBCAC(&type metadata for CameraDepthOfField, v4);
    sub_1AF6DBCAC(&type metadata for CameraLensBlur, v4);
    sub_1AF6DBCAC(&type metadata for CameraBloom, v4);
    sub_1AF6DBCAC(&type metadata for CameraVignetting, v4);
    sub_1AF6DBCAC(&type metadata for CameraColorGrading, v4);
    sub_1AF6DBCAC(&type metadata for CameraToneMapping, v4);
    v8 = type metadata accessor for SDFFileAsset();
    sub_1AF6DBCAC(v8, v4);
    sub_1AF6DBCAC(&type metadata for SDFRuntimeData, v4);
    sub_1AF6DBCAC(&type metadata for SDFTextureGenerator, v4);
    sub_1AF6DBCAC(&type metadata for RenderSettings, v4);
    sub_1AF6DBCAC(&type metadata for SceneFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshReferenceAsset, v4);
    sub_1AF6DBCAC(&type metadata for MeshImportOptions, v4);
    sub_1AF6DBCAC(&type metadata for TextureSource, v4);
    sub_1AF6DBCAC(&type metadata for TextureFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for UnmanagedFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for CSVFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for HeaderFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for MovieFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureArrayFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureClient, v4);
    sub_1AF6DBCAC(&type metadata for TextureNamedAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureShaderAsset, v4);
    sub_1AF6DBCAC(&type metadata for TextureLoadingOptions, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMipmap, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMipmapGeneration, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireCubemap, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireNonSRGB, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireUnpremultiply, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequirePremultiplyWithLinearAlpha, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireSizeLimit, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireAnimationRepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireCPURepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireGPURepresentation, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireMask, v4);
    sub_1AF6DBCAC(&type metadata for TextureRequireIOSurface, v4);
    sub_1AF6DBCAC(&type metadata for TextureLoadPolicy, v4);
    sub_1AF6DBCAC(&type metadata for TextureGPURepresentationDoNotDownload, v4);
    sub_1AF6DBCAC(&type metadata for TextureGPURepresentationDoNotUpload, v4);
    sub_1AF6DBCAC(&type metadata for TextureFileData, v4);
    sub_1AF6DBCAC(&type metadata for CALayerFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for RenderGraphTextureTarget, v4);
    sub_1AF6DBCAC(&type metadata for TexturePlaceholder, v4);
    sub_1AF6DBCAC(&type metadata for TextToImageGenerator, v4);
    sub_1AF6DBCAC(&type metadata for AudioFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for AudioAnalyzer, v4);
    sub_1AF6DBCAC(&type metadata for AudioController, v4);
    sub_1AF6DBCAC(&type metadata for AudioSpectrum, v4);
    sub_1AF6DBCAC(&type metadata for Parent, v4);
    sub_1AF6DBCAC(&type metadata for Children, v4);
    sub_1AF6DBCAC(&type metadata for Hidden, v4);
    sub_1AF6DBCAC(&type metadata for HiddenOrHasHiddenAncestor, v4);
    sub_1AF6DBCAC(&type metadata for WorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for InverseWorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for NotInHierarchy, v4);
    sub_1AF6DBCAC(&type metadata for ParentedToScene, v4);
    sub_1AF6DBCAC(&type metadata for SpaceOverride, v4);
    sub_1AF6DBCAC(&type metadata for LastFrameWorldTransform, v4);
    sub_1AF6DBCAC(&type metadata for Static, v4);
    sub_1AF6DBCAC(&type metadata for Fixed, v4);
    sub_1AF6DBCAC(&type metadata for Beamed, v4);
    sub_1AF6DBCAC(&type metadata for RotateAction, v4);
    sub_1AF6DBCAC(&type metadata for SineMoveAction, v4);
    sub_1AF6DBCAC(&type metadata for SineYAction, v4);
    sub_1AF6DBCAC(&type metadata for Scale1, v4);
    sub_1AF6DBCAC(&type metadata for Scale2, v4);
    sub_1AF6DBCAC(&type metadata for Scale3, &unk_1F24F54D0);
    sub_1AF966FFC(&unk_1F24F54F0);
    v9 = type metadata accessor for VFXObjectTag();
    sub_1AF6DBCAC(v9, v4);
    sub_1AF6DBCAC(&type metadata for VFXTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXAssetTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXBridgeTag, v4);
    sub_1AF6DBCAC(&type metadata for VFXParentAsset, v4);
    sub_1AF6DBCAC(&type metadata for Prefab, v4);
    sub_1AF6DBCAC(&type metadata for EmbeddedAssets, v4);
    sub_1AF6DBCAC(&type metadata for Seed, v4);
    sub_1AF6DBCAC(&type metadata for EmitterDescription, v4);
    sub_1AF6DBCAC(&type metadata for EmitterRuntime, v4);
    sub_1AF6DBCAC(&type metadata for DebugSelectedCamera, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnDelay, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnDuration, v4);
    sub_1AF6DBCAC(&type metadata for ParticleRespawn, v4);
    sub_1AF6DBCAC(&type metadata for Shadow, v4);
    sub_1AF6DBCAC(&type metadata for LookAt, v4);
    sub_1AF6DBCAC(&type metadata for SmoothMotion, v4);
    sub_1AF6DBCAC(&type metadata for RenderingOrder, v4);
    sub_1AF6DBCAC(&type metadata for ProjectorParameters, v4);
    sub_1AF6DBCAC(&type metadata for ParticleCollisionEvent, v4);
    sub_1AF6DBCAC(&type metadata for ParticleSpawnID, v4);
    sub_1AF6DBCAC(&type metadata for GrowEmitterRuntime, v4);
    sub_1AF6DBCAC(&type metadata for ClampBox, v4);
    sub_1AF6DBCAC(&type metadata for CodeGenerationComponent, v4);
    sub_1AF6DBCAC(&type metadata for CodeGenerationInitialized, v4);
    sub_1AF6DBCAC(&type metadata for GraphEntityComponentPropertyReferences, v4);
    sub_1AF6DBCAC(&type metadata for GraphScriptingConfig, v4);
    sub_1AF6DBCAC(&type metadata for GraphScriptGroup, v4);
    sub_1AF6DBCAC(&type metadata for GraphV1ExecutionOverride, v4);
    sub_1AF6DBCAC(&type metadata for GraphComponent, v4);
    sub_1AF6DBCAC(&type metadata for GraphSideStorage, v4);
    sub_1AF6DBCAC(&type metadata for Bindings, v4);
    sub_1AF6DBCAC(&type metadata for ColorRampComponent, v4);
    sub_1AF6DBCAC(&type metadata for CurveComponent, v4);
    sub_1AF6DBCAC(&type metadata for WrapAroundCamera, v4);
    sub_1AF6DBCAC(&type metadata for Position, v4);
    sub_1AF6DBCAC(&type metadata for Normal, v4);
    sub_1AF6DBCAC(&type metadata for Velocity, v4);
    sub_1AF6DBCAC(&type metadata for AngularVelocity, v4);
    sub_1AF6DBCAC(&type metadata for Orientation, v4);
    sub_1AF6DBCAC(&type metadata for SubEntity, &unk_1F24F5508);
    sub_1AF966FFC(&unk_1F24F5528);
    sub_1AF6DBCAC(&type metadata for ParticleSetID, v4);
    sub_1AF6DBCAC(&type metadata for PropagateDirtiness, v4);
    sub_1AF6DBCAC(&type metadata for PrimitiveGenerator, v4);
    v10 = type metadata accessor for SceneKitAsset(0);
    sub_1AF6DBCAC(v10, v4);
    sub_1AF6DBCAC(&type metadata for SceneKitAssetInstance, v4);
    sub_1AF6DBCAC(&type metadata for ShaderFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for VideoCapture, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheFileAsset, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheFromModel, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheGenerator, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheEmitter, v4);
    sub_1AF6DBCAC(&type metadata for PointCacheSpawner, v4);
    sub_1AF6DBCAC(&type metadata for REMeshAssetPointCache, v4);
    sub_1AF6DBCAC(&type metadata for Material, &unk_1F24F5540);
    sub_1AF966FFC(&unk_1F24F5560);
    sub_1AF6DBCAC(&type metadata for MaterialParameters, v4);
    sub_1AF6DBCAC(&type metadata for AnimationTimeSource, v4);
    sub_1AFBF16C4(0, qword_1ED72FDC8, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for KeyframeAnimation);
    sub_1AF6DBCAC(v11, v4);
    sub_1AF71970C();
    sub_1AF6DBCAC(v12, v4);
    sub_1AF63A530();
    sub_1AF6DBCAC(v13, v4);
    sub_1AF63A63C();
    sub_1AF6DBCAC(v14, v4);
    sub_1AF6DBCAC(&type metadata for Authoring, v4);
    sub_1AF6DBCAC(&type metadata for DoNotExport, v4);
    sub_1AF6DBCAC(&type metadata for Scheduling, v4);
    sub_1AF6DBCAC(&type metadata for NeighborGrid, v4);
    sub_1AF6DBCAC(&type metadata for IsSubEntityOf, v4);
    sub_1AFBEF948();
    sub_1AF6DBCAC(&type metadata for ParticleClassSpawnID, v4);
    sub_1AFBEFA50();
    return sub_1AFBEFBB0();
  }

  return result;
}

uint64_t sub_1AFBEF608()
{
  v0 = sub_1AF0D4478(0, &qword_1ED72E0A8);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(v0, MEMORY[0x1E69E7CC0]);
  v2 = sub_1AF0D4478(0, &qword_1ED7307E8);
  sub_1AF6DBCAC(v2, v1);
  v3 = sub_1AF0D4478(0, &qword_1ED72F7F0);
  sub_1AF6DBCAC(v3, v1);
  v4 = sub_1AF0D4478(0, &qword_1ED72F7E8);
  sub_1AF6DBCAC(v4, v1);
  v5 = sub_1AF0D4478(0, &qword_1ED72F868);
  sub_1AF6DBCAC(v5, v1);
  v6 = sub_1AF0D4478(0, &qword_1ED72F818);
  sub_1AF6DBCAC(v6, v1);
  v7 = sub_1AF0D4478(0, &qword_1ED72F860);
  sub_1AF6DBCAC(v7, v1);
  v8 = sub_1AF0D4478(0, &qword_1ED72F828);
  sub_1AF6DBCAC(v8, v1);
  v9 = sub_1AF0D4478(0, &qword_1ED72F820);
  sub_1AF6DBCAC(v9, v1);
  v10 = sub_1AF0D4478(0, &qword_1ED72F830);
  sub_1AF6DBCAC(v10, v1);
  v11 = sub_1AF0D4478(0, &qword_1ED72F840);
  sub_1AF6DBCAC(v11, v1);
  v12 = sub_1AF0D4478(0, &qword_1ED72F858);
  sub_1AF6DBCAC(v12, v1);
  v13 = sub_1AF0D4478(0, &qword_1ED72F838);
  sub_1AF6DBCAC(v13, v1);
  v14 = sub_1AF0D4478(0, &qword_1ED72F850);
  sub_1AF6DBCAC(v14, v1);
  v15 = sub_1AF0D4478(0, &unk_1ED72F7F8);
  sub_1AF6DBCAC(v15, v1);
  v16 = sub_1AF0D4478(0, &qword_1ED72F810);
  sub_1AF6DBCAC(v16, v1);
  type metadata accessor for VFXCameraToneMappingMode(0);
  sub_1AF6DBCAC(v17, v1);
  v18 = sub_1AF0D4478(0, &qword_1ED72E058);
  sub_1AF6DBCAC(v18, v1);
  v19 = sub_1AF0D4478(0, &qword_1ED72E0A0);
  sub_1AF6DBCAC(v19, v1);
  v20 = sub_1AF0D4478(0, &qword_1ED72E098);
  sub_1AF6DBCAC(v20, v1);
  v21 = sub_1AF0D4478(0, &qword_1ED72E050);
  sub_1AF6DBCAC(v21, v1);
  v22 = sub_1AF0D4478(0, &unk_1ED72E060);
  sub_1AF6DBCAC(v22, v1);
  v23 = sub_1AF0D4478(0, &unk_1ED72E080);
  sub_1AF6DBCAC(v23, v1);
  v24 = sub_1AF0D4478(0, &qword_1ED72E0B0);
  sub_1AF6DBCAC(v24, v1);
  v25 = sub_1AF0D4478(0, &qword_1ED72E078);

  return sub_1AF6DBCAC(v25, v1);
}

uint64_t sub_1AFBEF948()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(&type metadata for ScriptsHolder, MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for EmitterScript(0);
  sub_1AF6DBCAC(v1, v0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  sub_1AF6DBCAC(updated, &unk_1F24F52D8);
  sub_1AF966FFC(&unk_1F24F52F8);
  inited = type metadata accessor for ParticleInitScript(0);
  sub_1AF6DBCAC(inited, &unk_1F24F5310);
  sub_1AF966FFC(&unk_1F24F5330);
  v4 = type metadata accessor for GraphScript(0);
  sub_1AF6DBCAC(v4, v0);
  v5 = type metadata accessor for SimpleScript(0);
  sub_1AF6DBCAC(v5, v0);
  v6 = type metadata accessor for MetalFunctionScript(0);
  sub_1AF6DBCAC(v6, &unk_1F24F5348);
  sub_1AF966FFC(&unk_1F24F5368);
  v7 = type metadata accessor for ShaderScript(0);
  sub_1AF6DBCAC(v7, v0);
  v8 = type metadata accessor for TriggerScript(0);
  sub_1AF6DBCAC(v8, v0);
  v9 = type metadata accessor for HeaderScript();

  return sub_1AF6DBCAC(v9, v0);
}

uint64_t sub_1AFBEFA50()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(&type metadata for InputStream, MEMORY[0x1E69E7CC0]);
  sub_1AF6DBCAC(&type metadata for DefaultMaterialInstance, v0);
  sub_1AF6DBCAC(&type metadata for AssetManagerInstance, v0);
  sub_1AF6DBCAC(&type metadata for CurvesState, v0);
  sub_1AF6DBCAC(&type metadata for ColorRampsState, v0);
  sub_1AF6DBCAC(&type metadata for AssetCatalog, v0);
  sub_1AF6DBCAC(&type metadata for EffectsRegistry, v0);
  sub_1AF6DBCAC(&type metadata for DiagnosticsTrackerInstance, v0);
  sub_1AF6DBCAC(&type metadata for SceneAssetRegistryInstance, v0);
  sub_1AF6DBCAC(&type metadata for SceneWorldAABB, v0);
  sub_1AF6DBCAC(&type metadata for kClusterState, v0);
  sub_1AF6DBCAC(&_s21DrawCallEntityClassesVN, v0);
  sub_1AF6DBCAC(&type metadata for NoiseGlobalTexture, v0);
  sub_1AF6DBCAC(&type metadata for MeshRenderSystemState, v0);
  sub_1AF6DBCAC(&type metadata for FrameConstantsStorage, v0);
  v1 = type metadata accessor for ScriptingConfiguration();
  sub_1AF6DBCAC(v1, v0);
  sub_1AF6DBCAC(&type metadata for RERendererConfiguration, v0);
  sub_1AF6DBCAC(&type metadata for ShadowState, v0);

  return sub_1AF6DBCAC(&type metadata for LightsUniforms, v0);
}

uint64_t sub_1AFBEFBB0()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1AF6DBCAC(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CC0]);
  sub_1AF6DBCAC(MEMORY[0x1E69E6370], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E7508], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E75F8], v0);
  v1 = MEMORY[0x1E69E7668];
  sub_1AF6DBCAC(MEMORY[0x1E69E7668], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E76D8], v0);
  v2 = MEMORY[0x1E69E6530];
  sub_1AF6DBCAC(MEMORY[0x1E69E6530], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E7230], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E72F0], v0);
  v3 = MEMORY[0x1E69E7360];
  sub_1AF6DBCAC(MEMORY[0x1E69E7360], v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E63B0], v0);
  v4 = MEMORY[0x1E69E6448];
  sub_1AF6DBCAC(MEMORY[0x1E69E6448], v0);
  v5 = MEMORY[0x1E69E7428];
  sub_1AFBF165C(0, &unk_1ED72F770, sub_1AF43A0C8, v4, MEMORY[0x1E69E7428]);
  sub_1AF6DBCAC(v6, v0);
  v7 = MEMORY[0x1E69E7450];
  sub_1AFBF165C(0, &qword_1ED72F740, sub_1AF43A0C8, v4, MEMORY[0x1E69E7450]);
  sub_1AF6DBCAC(v8, v0);
  v9 = MEMORY[0x1E69E74A8];
  sub_1AFBF165C(0, &qword_1ED72F6E0, sub_1AF43A0C8, v4, MEMORY[0x1E69E74A8]);
  sub_1AF6DBCAC(v10, v0);
  type metadata accessor for simd_float2x2(0);
  sub_1AF6DBCAC(v11, v0);
  type metadata accessor for simd_float2x3(0);
  sub_1AF6DBCAC(v12, v0);
  type metadata accessor for simd_float2x4(0);
  sub_1AF6DBCAC(v13, v0);
  type metadata accessor for simd_float3x2(0);
  sub_1AF6DBCAC(v14, v0);
  type metadata accessor for simd_float3x3(0);
  sub_1AF6DBCAC(v15, v0);
  type metadata accessor for simd_float3x4(0);
  sub_1AF6DBCAC(v16, v0);
  type metadata accessor for simd_float4x2(0);
  sub_1AF6DBCAC(v17, v0);
  type metadata accessor for simd_float4x3(0);
  sub_1AF6DBCAC(v18, v0);
  type metadata accessor for simd_float4x4(0);
  sub_1AF6DBCAC(v19, v0);
  sub_1AFBF165C(0, &qword_1ED72F730, sub_1AF477BB4, v1, v7);
  sub_1AF6DBCAC(v20, v0);
  v21 = MEMORY[0x1E69E7290];
  sub_1AF6DBCAC(MEMORY[0x1E69E7290], v0);
  sub_1AFBF165C(0, &qword_1ED72F768, sub_1AF477AB8, v21, v5);
  sub_1AF6DBCAC(v22, v0);
  sub_1AFBF165C(0, &qword_1ED72F738, sub_1AF477AB8, v21, v7);
  sub_1AF6DBCAC(v23, v0);
  sub_1AFBF165C(0, &qword_1ED72F6D8, sub_1AF477AB8, v21, v9);
  sub_1AF6DBCAC(v24, v0);
  type metadata accessor for simd_quatf(0);
  sub_1AF6DBCAC(v25, v0);
  sub_1AF6DBCAC(MEMORY[0x1E69E6270], v0);
  v26 = MEMORY[0x1E69E66A8];
  sub_1AFBF16C4(0, &qword_1ED72F950, v2, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AF6DBCAC(v27, v0);
  sub_1AFBF16C4(0, &unk_1ED72F940, v3, MEMORY[0x1E69E7378], v26);
  sub_1AF6DBCAC(v28, v0);
  sub_1AFBF16C4(0, &qword_1ED72F958, v4, MEMORY[0x1E69E6468], v26);
  sub_1AF6DBCAC(v29, v0);
  type metadata accessor for TextureDescriptor(0);
  sub_1AF6DBCAC(v30, v0);
  sub_1AF6DBCAC(&type metadata for ColorRamp, v0);
  sub_1AFBF16C4(0, qword_1ED72F9E0, v4, &off_1F2532E98, type metadata accessor for Curve);
  sub_1AF6DBCAC(v31, v0);
  type metadata accessor for MTLPixelFormat(0);
  sub_1AF6DBCAC(v32, v0);
  type metadata accessor for MTLStorageMode(0);
  sub_1AF6DBCAC(v33, v0);
  sub_1AF6DBCAC(&type metadata for KernelReference, v0);
  sub_1AF6DBCAC(&type metadata for Entity, v0);
  sub_1AF6DBCAC(&type metadata for Material.Kind, v0);
  v34 = type metadata accessor for PBRParameters();
  sub_1AF6DBCAC(v34, v0);
  v35 = type metadata accessor for PrelitParameters();
  sub_1AF6DBCAC(v35, v0);
  v36 = type metadata accessor for CustomParameters();
  sub_1AF6DBCAC(v36, v0);
  sub_1AF6DBCAC(&type metadata for BlendMode, v0);
  sub_1AF6DBCAC(&type metadata for FilterMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureMipFilterMode, v0);
  sub_1AF6DBCAC(&type metadata for AddressMode, v0);
  type metadata accessor for MTLCullMode(0);
  v38 = v37;
  sub_1AF6DBCAC(v37, v0);
  type metadata accessor for MTLCompareFunction(0);
  v40 = v39;
  sub_1AF6DBCAC(v39, v0);
  type metadata accessor for MTLWinding(0);
  sub_1AF6DBCAC(v41, v0);
  type metadata accessor for VFXForceFieldType(0);
  sub_1AF6DBCAC(v42, v0);
  sub_1AF6DBCAC(&type metadata for Composition.Operation, v0);
  sub_1AF6DBCAC(&type metadata for LensBlurQuality, v0);
  sub_1AF6DBCAC(&type metadata for PointCache.Distribution, v0);
  sub_1AF6DBCAC(&type metadata for FlockingSizeMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureChannel, v0);
  sub_1AF6DBCAC(&type metadata for AddressMode, v0);
  sub_1AF6DBCAC(&type metadata for BlendMode, v0);
  type metadata accessor for VFXCameraProjectionDirection(0);
  sub_1AF6DBCAC(v43, v0);
  sub_1AF6DBCAC(&type metadata for ParticleSortMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleAnimationMode, v0);
  sub_1AF6DBCAC(&type metadata for Composition.Operation, v0);
  sub_1AF6DBCAC(&type metadata for ParticleColorOverPosition.GradientMode, v0);
  sub_1AF6DBCAC(&type metadata for ScaleMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleColorInit.Mode, v0);
  sub_1AF6DBCAC(&type metadata for Material.Kind, v0);
  sub_1AF6DBCAC(&type metadata for KillShape.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ParticleQuadRenderer.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ParticleOrientationMode, v0);
  sub_1AF6DBCAC(&type metadata for FluidSolver2DSolverSetupType, v0);
  sub_1AF6DBCAC(&type metadata for FluidSolver2DSolverBorderType, v0);
  sub_1AF6DBCAC(&type metadata for FlockingLocalAxis, v0);
  sub_1AF6DBCAC(&type metadata for ToneMappingOperator, v0);
  sub_1AF6DBCAC(&type metadata for MotionDistribution, v0);
  sub_1AF6DBCAC(&type metadata for EmitterDescription.PhysicsSimulation, v0);
  sub_1AF6DBCAC(&type metadata for NoiseKind, v0);
  sub_1AF6DBCAC(&type metadata for EmitterShape.Shape, v0);
  sub_1AF6DBCAC(&type metadata for ShapeDistribution, v0);
  sub_1AF6DBCAC(&type metadata for EmitterShape.Direction, v0);
  sub_1AF6DBCAC(&type metadata for EmissionOrder, v0);
  sub_1AF6DBCAC(&type metadata for ParticlePrimitiveRenderer.Shape, v0);
  sub_1AF6DBCAC(&type metadata for EasingFunction, v0);
  sub_1AF6DBCAC(&type metadata for FillMode, v0);
  sub_1AF6DBCAC(&type metadata for EvolutionMode, v0);
  sub_1AF6DBCAC(&type metadata for VideoCapture.OrientationMode, v0);
  sub_1AF6DBCAC(&type metadata for OrientationConstraint.Mode, v0);
  sub_1AF6DBCAC(&type metadata for ProjectionDirection, v0);
  sub_1AF6DBCAC(&type metadata for ParticleSubSpawn.Mode, v0);
  sub_1AF6DBCAC(&type metadata for EntitySpace, v0);
  type metadata accessor for VFXCameraFillMode(0);
  sub_1AF6DBCAC(v44, v0);
  sub_1AF6DBCAC(&type metadata for RandomMode, v0);
  sub_1AF6DBCAC(&type metadata for FilterEdgeMode, v0);
  sub_1AF6DBCAC(v38, v0);
  sub_1AF6DBCAC(v40, v0);
  sub_1AF6DBCAC(&type metadata for FilterMode, v0);
  sub_1AF6DBCAC(&type metadata for TextureMipFilterMode, v0);
  sub_1AF6DBCAC(&type metadata for PrimitiveGenerator.PrimitiveType, v0);
  sub_1AF6DBCAC(&type metadata for ParticleRibbonTextureMode, v0);
  sub_1AF6DBCAC(&type metadata for ParticleRibbonProfile, v0);
  sub_1AF6DBCAC(&type metadata for OrientationOverVelocity.DirectionAxis, v0);
  sub_1AF6DBCAC(&type metadata for VFXKeyCode, v0);
  sub_1AF6DBCAC(&type metadata for VFXHandTracker.HandChirality, v0);

  return sub_1AF6DBCAC(&type metadata for VFXHandTracker.Joint, v0);
}

void sub_1AFBF0428(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = type metadata accessor for EventDisposeSystem();
    sub_1AF6D78B4(v2, &off_1F25343C8, 1, 0);
    v3 = type metadata accessor for InputClearSystem();
    sub_1AF6D78B4(v3, &off_1F2534768, 1, 0);
    v4 = type metadata accessor for HiddenSystem();
    sub_1AF6D78B4(v4, &off_1F2569680, 1, 0);
    updated = type metadata accessor for PrepareUpdateSystem();
    sub_1AF6D78B4(updated, &off_1F255F358, 1, 0);
    v6 = type metadata accessor for RotateActionSystem();
    sub_1AF6D78B4(v6, &off_1F255EFB8, 1, 1);
    v7 = type metadata accessor for SineMoveSystem();
    sub_1AF6D78B4(v7, &off_1F255EF68, 1, 1);
    v8 = type metadata accessor for RenderGraphSystem();
    sub_1AF6D78B4(v8, &off_1F25690C0, 1, 0);
    v9 = type metadata accessor for RenderGraphSystemCleanup();
    sub_1AF6D78B4(v9, &off_1F2569110, 1, 0);
    if ((v1 & 0xC0000000) == 0)
    {
      v10 = type metadata accessor for PreUpdateCameraSystem();
      sub_1AF6D78B4(v10, &off_1F255F3A8, 1, 0);
      v11 = type metadata accessor for PreRenderCameraSystem();
      sub_1AF6D78B4(v11, &off_1F255F3A8, 1, 0);
    }

    v12 = type metadata accessor for AnimationComputeLocalTimeSystem();
    sub_1AF6D78B4(v12, &off_1F255F0A8, 1, 1);
    v13 = type metadata accessor for BasicAnimationSystem();
    sub_1AF6D78B4(v13, &off_1F255F058, 1, 1);
    v14 = type metadata accessor for KeyframeAnimationSystem();
    sub_1AF6D78B4(v14, &off_1F255F008, 1, 1);
    v15 = type metadata accessor for HierarchySystem();
    if ((v1 & 0x80000000) != 0)
    {
      v15 = type metadata accessor for SimplifiedHierarchySystem();
    }

    v16 = v15;
    sub_1AF6D78B4(v15, &off_1F2561870, 1, 0);
    v17 = type metadata accessor for SmoothMotionSystem();
    sub_1AF6D78B4(v17, &off_1F25697F8, 1, 1);
    sub_1AF6D80D8(v17, &off_1F25697F8, v16, &off_1F2561870);
    v18 = type metadata accessor for StaticToFixedSystem();
    sub_1AF6D78B4(v18, &off_1F25617D0, 1, 0);
    if ((v1 & 0x80000000) == 0)
    {
      FrameWorldTransformSystem_vfx1 = type metadata accessor for LastFrameWorldTransformSystem_vfx1();
      sub_1AF6D78B4(FrameWorldTransformSystem_vfx1, &off_1F2561820, 1, 1);
      sub_1AF6D80D8(v16, &off_1F2561870, FrameWorldTransformSystem_vfx1, &off_1F2561820);
    }

    v20 = type metadata accessor for SkeletonAnimationSystem();
    sub_1AF6D78B4(v20, &off_1F2543848, 1, 0);
    v21 = type metadata accessor for SkeletonSystem();
    sub_1AF6D78B4(v21, &off_1F25437F8, 1, 0);
    sub_1AF6D80D8(v21, &off_1F25437F8, v16, &off_1F2561870);
    v22 = type metadata accessor for SkinningSystem();
    sub_1AF6D78B4(v22, &off_1F25437A8, 1, 0);
    v23 = type metadata accessor for UpdateWorldAABBSystem();
    sub_1AF6D78B4(v23, &off_1F2569AD8, 1, 1);
    v24 = type metadata accessor for LODSystem();
    sub_1AF6D80D8(v23, &off_1F2569AD8, v24, &off_1F2562000);
    sub_1AF6D80D8(v23, &off_1F2569AD8, v16, &off_1F2561870);
    if ((v1 & 0x10000000000) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  v25 = type metadata accessor for GraphAuthoringSystem();
  sub_1AF6D78B4(v25, &off_1F253B608, 1, 0);
  v26 = type metadata accessor for ReplicationStreamSystem();
  sub_1AF6D78B4(v26, &off_1F2535E68, 1, 0);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  started = type metadata accessor for StartCaptureSystem();
  sub_1AF6D78B4(started, &off_1F2537050, 1, 0);
  v28 = type metadata accessor for StopCaptureSystem();
  sub_1AF6D78B4(v28, &off_1F2537000, 1, 0);
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_16:
  v29 = type metadata accessor for ResourceUsageSystem();
  sub_1AF6D78B4(v29, &off_1F255F790, 1, 0);
  v30 = type metadata accessor for TextToImageGeneratorSystem();
  sub_1AF6D78B4(v30, &off_1F25308B8, 1, 0);
  v31 = type metadata accessor for MeshReferenceSystem();
  sub_1AF6D78B4(v31, &off_1F252BF58, 1, 0);
  v32 = type metadata accessor for ColorRampSystem();
  sub_1AF6D78B4(v32, &off_1F2541AF8, 1, 0);
  v111 = v1;
  v33 = type metadata accessor for GraphScriptRunner();
  sub_1AF6D80D8(v32, &off_1F2541AF8, v33, &off_1F255D1B0);
  v34 = type metadata accessor for CurveSystem();
  sub_1AF6D78B4(v34, &off_1F2541F18, 1, 0);
  sub_1AF6D80D8(v34, &off_1F2541F18, v33, &off_1F255D1B0);
  v35 = type metadata accessor for AssetCatalogSystem();
  sub_1AF6D78B4(v35, &off_1F2541588, 1, 0);
  v36 = type metadata accessor for TextureSystem();
  sub_1AF6D78B4(v36, &off_1F2544630, 1, 0);
  v37 = type metadata accessor for TextureClientPlaceholderSystem();
  sub_1AF6D78B4(v37, &off_1F2544540, 1, 0);
  sub_1AF6D80D8(v36, &off_1F2544630, v33, &off_1F255D1B0);
  sub_1AF6D80D8(v30, &off_1F25308B8, v33, &off_1F255D1B0);
  v38 = type metadata accessor for MovieSystem();
  sub_1AF6D78B4(v38, &off_1F256F0D8, 1, 0);
  v39 = type metadata accessor for AudioSystem();
  sub_1AF6D78B4(v39, &off_1F256F088, 1, 0);
  v40 = type metadata accessor for ShaderFileSystem();
  sub_1AF6D78B4(v40, off_1F2542F38, 1, 0);
  v41 = type metadata accessor for HeaderFileSystem();
  sub_1AF6D78B4(v41, &off_1F2542288, 1, 0);
  v42 = type metadata accessor for MaterialSystem();
  sub_1AF6D78B4(v42, &off_1F253F898, 1, 0);
  v43 = type metadata accessor for ScriptCompilerSystem();
  sub_1AF6D80D8(v42, &off_1F253F898, v43, &off_1F2559760);
  sub_1AF6D80D8(v42, &off_1F253F898, v33, &off_1F255D1B0);
  sub_1AF6D80D8(v42, &off_1F253F898, v36, &off_1F2544630);
  sub_1AF6D80D8(v36, &off_1F2544630, v30, &off_1F25308B8);
  v44 = type metadata accessor for SceneKitAssetSystem();
  sub_1AF6D78B4(v44, &off_1F25470B0, 1, 0);
  v45 = type metadata accessor for TextureDownloadSystem();
  sub_1AF6D78B4(v45, &off_1F25445E0, 1, 0);
  sub_1AF6D80D8(v45, &off_1F25445E0, v36, &off_1F2544630);
  v46 = type metadata accessor for TextureDiscardSystem();
  sub_1AF6D78B4(v46, &off_1F2544590, 1, 0);
  v110 = type metadata accessor for PointCacheGeneratorSystem();
  sub_1AF6D78B4(v110, &off_1F25683A0, 1, 0);
  v47 = type metadata accessor for PrimitiveGeneratorSystem();
  sub_1AF6D78B4(v47, &off_1F252F240, 1, 0);
  v48 = type metadata accessor for SceneFileSystem();
  sub_1AF6D78B4(v48, &off_1F252BFF8, 1, 0);
  v49 = type metadata accessor for MeshFileSystem();
  sub_1AF6D78B4(v49, &off_1F252BFA8, 1, 0);
  sub_1AF6D80D8(v49, &off_1F252BFA8, v31, &off_1F252BF58);
  sub_1AF6D80D8(v49, &off_1F252BFA8, v47, &off_1F252F240);
  if ((v111 & 0x40000000) == 0)
  {
    v50 = type metadata accessor for IBLGeneratorSystem();
    sub_1AF6D78B4(v50, &off_1F252A718, 1, 0);
    sub_1AF6D80D8(v50, &off_1F252A718, v36, &off_1F2544630);
  }

  v51 = type metadata accessor for SDFFileSystem();
  sub_1AF6D78B4(v51, &off_1F252FCF8, 1, 0);
  v52 = type metadata accessor for SDFGeneratorSystem();
  sub_1AF6D78B4(v52, &off_1F252FCA8, 1, 0);
  sub_1AF6D80D8(v52, &off_1F252FCA8, v36, &off_1F2544630);
  v53 = type metadata accessor for VideoCaptureSystem();
  sub_1AF6D78B4(v53, &off_1F256F128, 1, 0);
  sub_1AF6D80D8(v45, &off_1F25445E0, v52, &off_1F252FCA8);
  sub_1AF6D80D8(v31, &off_1F252BF58, v48, &off_1F252BFF8);
  sub_1AF6D80D8(v42, &off_1F253F898, v31, &off_1F252BF58);
  sub_1AF6D80D8(v42, &off_1F253F898, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v42, &off_1F253F898, v47, &off_1F252F240);
  sub_1AF6D80D8(v36, &off_1F2544630, v31, &off_1F252BF58);
  sub_1AF6D80D8(v36, &off_1F2544630, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v110, &off_1F25683A0, v45, &off_1F25445E0);
  sub_1AF6D80D8(v110, &off_1F25683A0, v49, &off_1F252BFA8);
  sub_1AF6D80D8(v110, &off_1F25683A0, v31, &off_1F252BF58);
  LODWORD(v1) = v111;
  if ((v111 & 0x400) == 0)
  {
LABEL_29:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_19:
  v54 = type metadata accessor for EmitterPrepareRuntime();
  sub_1AF6D78B4(v54, &off_1F2563508, 1, 0);
  active = type metadata accessor for SetActiveSystem();
  sub_1AF6D80D8(v54, &off_1F2563508, active, &off_1F25696D0);
  v56 = type metadata accessor for ParticleSubSpawnAddStateSystem();
  sub_1AF6D78B4(v56, &off_1F2566998, 1, 1);
  v57 = type metadata accessor for EmitterWarmup();
  sub_1AF6D78B4(v57, &off_1F25634B8, 1, 1);
  if ((v1 & 0x80000000) != 0)
  {
    v59 = type metadata accessor for ParticleSubSpawnSystemPostInit();
    sub_1AF6D78B4(v59, &off_1F2566948, 1, 1);
    v58 = type metadata accessor for ParticleSubSpawnSystemPostUpdate();
  }

  else
  {
    v58 = type metadata accessor for ParticleSubSpawnSystem();
  }

  sub_1AF6D78B4(v58, &off_1F2566948, 1, 1);
  v60 = type metadata accessor for TransientPushSystem();
  sub_1AF6D78B4(v60, &off_1F2569A88, 1, 1);
  v61 = type metadata accessor for ForceFieldSystem();
  sub_1AF6D78B4(v61, &off_1F2561108, 1, 1);
  v62 = type metadata accessor for ParticleEmitterTransport();
  sub_1AF6D78B4(v62, &off_1F2563468, 1, 0);
  v63 = type metadata accessor for ParticleFluidSolver2DSolverSystem();
  sub_1AF6D78B4(v63, &off_1F2565CC8, 1, 1);
  v64 = type metadata accessor for EmitterCullingSystem();
  sub_1AF6D78B4(v64, &off_1F2563EB0, 1, 1);
  v65 = type metadata accessor for UpdateWorldAABBSystem();
  sub_1AF6D80D8(v64, &off_1F2563EB0, v65, &off_1F2569AD8);
  v66 = type metadata accessor for ScriptCompilerSystem();
  sub_1AF6D78B4(v66, &off_1F2559760, 1, 0);
  if ((v1 & 8) != 0)
  {
    v67 = type metadata accessor for ShaderFileSystem();
    v68 = type metadata accessor for HeaderFileSystem();
    sub_1AF6D80D8(v67, off_1F2542F38, v68, &off_1F2542288);
    sub_1AF6D80D8(v66, &off_1F2559760, v67, off_1F2542F38);
  }

  v69 = type metadata accessor for GraphScriptRunner();
  sub_1AF6D78B4(v69, &off_1F255D1B0, 1, 1);
  sub_1AF6D80D8(v69, &off_1F255D1B0, v66, &off_1F2559760);
  v70 = type metadata accessor for TriggerScriptRunnerSystem();
  sub_1AF6D78B4(v70, &off_1F255D0D0, 1, 1);
  sub_1AF6D80D8(v70, &off_1F255D0D0, v66, &off_1F2559760);
  v71 = type metadata accessor for KernelScriptReflectionSystem();
  sub_1AF6D78B4(v71, &off_1F2542F88, 1, 0);
  sub_1AF6D80D8(v71, &off_1F2542F88, v66, &off_1F2559760);
  sub_1AF6D78B4(active, &off_1F25696D0, 1, 0);
  sub_1AF6D80D8(active, &off_1F25696D0, v69, &off_1F255D1B0);
  if ((v1 & 0xC0000000) == 0)
  {
    v72 = type metadata accessor for ParticleGPUDownload();
    sub_1AF6D78B4(v72, &off_1F25662D0, 1, 0);
  }

  v73 = type metadata accessor for RendererPostUpdateSystem();
  sub_1AF6D78B4(v73, &off_1F25378B8, 1, 0);
  if ((v1 & 0xC0000000) == 0)
  {
    v74 = type metadata accessor for ParticleGPUDownload();
    sub_1AF6D80D8(v73, &off_1F25378B8, v74, &off_1F25662D0);
  }

  v75 = type metadata accessor for LookAtSystem();
  sub_1AF6D78B4(v75, &off_1F2562180, 1, 1);
  v76 = type metadata accessor for ParticleSortSystem();
  sub_1AF6D78B4(v76, &off_1F2562F30, 1, 0);
  if ((v1 & 0xC0000000) != 0)
  {
    goto LABEL_29;
  }

  v77 = type metadata accessor for PreRenderCameraSystem();
  sub_1AF6D80D8(v76, &off_1F2562F30, v77, &off_1F255F3A8);
  if ((v1 & 0x8000) == 0)
  {
LABEL_30:
    if ((v1 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_35:
  if ((v1 & 0x80000000) == 0)
  {
    v78 = type metadata accessor for DrawCallDisposeSystem();
    sub_1AF6D78B4(v78, &off_1F25608A0, 1, 0);
  }

  v79 = type metadata accessor for LODSystem();
  sub_1AF6D78B4(v79, &off_1F2562000, 1, 0);
  if ((v1 & 0x40000000) == 0)
  {
    v80 = type metadata accessor for CullingSystem();
    sub_1AF6D78B4(v80, &off_1F255F7E0, 1, 0);
    v81 = type metadata accessor for UpdateWorldAABBSystem();
    sub_1AF6D80D8(v80, &off_1F255F7E0, v81, &off_1F2569AD8);
  }

  if ((v1 & 0xC0000000) == 0)
  {
    v82 = type metadata accessor for CullingSystem();
    v83 = type metadata accessor for PreRenderCameraSystem();
    sub_1AF6D80D8(v82, &off_1F255F7E0, v83, &off_1F255F3A8);
  }

  v84 = type metadata accessor for PrepareRenderSystem();
  sub_1AF6D78B4(v84, &off_1F255F308, 1, 0);
  v85 = type metadata accessor for GlobalsSystem();
  sub_1AF6D78B4(v85, &off_1F25616F0, 1, 0);
  v86 = type metadata accessor for PrepareLightsSystemVFX1();
  sub_1AF6D80D8(v85, &off_1F25616F0, v86, &off_1F252AD10);
  if ((v1 & 0xC0000000) == 0)
  {
    sub_1AF6D78B4(v86, &off_1F252AD10, 1, 0);
    sub_1AF6D80D8(v86, &off_1F252AD10, v84, &off_1F255F308);
    v87 = type metadata accessor for ParticleSortSystem();
    sub_1AF6D80D8(v87, &off_1F2562F30, v86, &off_1F252AD10);
  }

  v88 = type metadata accessor for MeshRenderSystem();
  sub_1AF6D78B4(v88, &off_1F25625F0, 1, 0);
  if ((v1 & 0x40000000) == 0)
  {
    v89 = type metadata accessor for CullingSystem();
    sub_1AF6D80D8(v88, &off_1F25625F0, v89, &off_1F255F7E0);
  }

  v90 = type metadata accessor for DebugVFXSystem();
  sub_1AF6D78B4(v90, &off_1F255F9C0, 1, 0);
  v91 = type metadata accessor for DebugInfoSystem();
  sub_1AF6D78B4(v91, &off_1F255F960, 1, 0);
  if ((v1 & 0x100000) == 0)
  {
LABEL_31:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

LABEL_47:
    v105 = type metadata accessor for CompositeSystem();
    sub_1AF6D78B4(v105, &off_1F2558C78, 1, 0);
    v106 = type metadata accessor for BloomPassSystem();
    sub_1AF6D78B4(v106, &off_1F2558C28, 1, 0);
    v107 = type metadata accessor for LensBlurPassSystem();
    sub_1AF6D78B4(v107, &off_1F2558D18, 1, 0);
    v108 = type metadata accessor for PostProcessSystem();
    sub_1AF6D78B4(v108, &off_1F2558D68, 1, 0);
    sub_1AF6D80D8(v107, &off_1F2558D18, v105, &off_1F2558C78);
    sub_1AF6D80D8(v106, &off_1F2558C28, v107, &off_1F2558D18);
    sub_1AF6D80D8(v108, &off_1F2558D68, v106, &off_1F2558C28);
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_48;
  }

LABEL_46:
  v92 = type metadata accessor for SceneKitSystem();
  sub_1AF6D78B4(v92, &off_1F2547060, 1, 0);
  v93 = type metadata accessor for ShadowSystem();
  sub_1AF6D78B4(v93, &off_1F2530168, 1, 0);
  v94 = type metadata accessor for MeshRenderSystem();
  sub_1AF6D80D8(v93, &off_1F2530168, v94, &off_1F25625F0);
  v95 = type metadata accessor for OpaqueRenderPass();
  sub_1AF6D78B4(v95, &off_1F25625A0, 1, 0);
  v96 = type metadata accessor for TransparentRenderPass();
  sub_1AF6D78B4(v96, &off_1F2562550, 1, 0);
  v97 = type metadata accessor for DebugCullingSystem();
  sub_1AF6D78B4(v97, &off_1F255FA60, 0, 0);
  v98 = type metadata accessor for SkyboxSystem();
  sub_1AF6D78B4(v98, &off_1F25304F0, 1, 0);
  v99 = type metadata accessor for DeferredRendering();
  sub_1AF6D78B4(v99, &off_1F2560658, 1, 0);
  v100 = v1;
  v1 = type metadata accessor for DepthPrepareSystem();
  sub_1AF6D78B4(v1, &off_1F2558CC8, 1, 0);
  sub_1AF6D80D8(v92, &off_1F2547060, v98, &off_1F25304F0);
  v101 = v1;
  LODWORD(v1) = v100;
  sub_1AF6D80D8(v101, &off_1F2558CC8, v99, &off_1F2560658);
  sub_1AF6D80D8(v98, &off_1F25304F0, v99, &off_1F2560658);
  v102 = type metadata accessor for DebugDrawingSystem();
  sub_1AF6D78B4(v102, &off_1F255F910, 1, 0);
  v103 = type metadata accessor for DebugVFXSystem();
  v104 = type metadata accessor for PostProcessSystem();
  sub_1AF6D80D8(v103, &off_1F255F9C0, v104, &off_1F2558D68);
  sub_1AF6D80D8(v97, &off_1F255FA60, v104, &off_1F2558D68);
  sub_1AF6D80D8(v102, &off_1F255F910, v104, &off_1F2558D68);
  if ((v100 & 0x200000) != 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if ((v1 & 0x80000000) == 0)
  {
    return;
  }

LABEL_48:
  FrameWorldTransformSystem = type metadata accessor for LastFrameWorldTransformSystem();

  sub_1AF6D78B4(FrameWorldTransformSystem, &off_1F2561820, 1, 1);
}

unint64_t sub_1AFBF1614()
{
  result = qword_1ED72F9D8;
  if (!qword_1ED72F9D8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ED72F9D8);
  }

  return result;
}

void sub_1AFBF165C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AFBF16C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_1AFBF1718(ValueMetadata *a1)
{
  if (a1 != &type metadata for Color || (v2 = &type metadata for TransientOriginColor, !sub_1AF657F68(&type metadata for TransientOriginColor)))
  {
    if (a1 != &type metadata for Scale3 && a1 != &type metadata for Scale1 && a1 != &type metadata for Scale2)
    {
      return 0;
    }

    v2 = &type metadata for TransientOriginScale;
    if (!sub_1AF657F68(&type metadata for TransientOriginScale))
    {
      return 0;
    }
  }

  return v2;
}

void *sub_1AFBF17D4(void *a1)
{
  v1 = a1[11];
  v2 = a1[12];
  v3 = a1[13];
  v4 = a1[1];
  v5 = a1[2];
  v6 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v1, v2, v3, v5);
  v7 = sub_1AF64B110(&type metadata for TransientOriginColor, &off_1F2569988, v1, v2, v3, v5);
  memcpy((v6 + 16 * v4[29]), (v7 + 16 * v4[29]), 16 * (v4[31] - v4[29]));
  v8 = v4[31];
  v9 = 16 * (v4[30] - v8);

  return memcpy((v7 + 16 * v8), (v6 + 16 * v8), v9);
}

uint64_t sub_1AFBF18E8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v66 = qword_1ED73B840;
  v67 = 0;
  v68 = 2;
  v69 = 0;
  v70 = 2;
  v71 = 0;
  sub_1AF5C8FC4(v30);
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleGPU;
  *(inited + 40) = &off_1F252D668;
  sub_1AF5D1EC0(inited, v31);
  sub_1AFBF3108(v30, sub_1AFBF3168);
  swift_setDeallocating();
  v2 = v31[1];
  *(v0 + 16) = v31[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v32;
  sub_1AF5C8FE8(v33);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = &type metadata for ParticleGPU;
  *(v3 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v3, v34);
  sub_1AFBF3108(v33, sub_1AFBF31E4);
  swift_setDeallocating();
  v4 = v34[1];
  *(v0 + 56) = v34[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v35;
  sub_1AF5C900C(v36);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 32) = &type metadata for ParticleGPU;
  *(v5 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v5, &v37);
  sub_1AFBF3108(v36, sub_1AFBF3260);
  swift_setDeallocating();
  v6 = v38;
  v7 = v39;
  v8 = v41;
  v9 = v42;
  v10 = v40 | 8;
  *(v0 + 96) = v37;
  *(v0 + 104) = v6;
  *(v0 + 108) = v7;
  *(v0 + 112) = v10;
  *(v0 + 120) = v8;
  *(v0 + 128) = v9;
  sub_1AF5C900C(v43);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = &type metadata for ParticleGPU;
  *(v11 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v11, v44);
  sub_1AFBF3108(v43, sub_1AFBF3260);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v12 = v44[1];
  *(v0 + 136) = v44[0];
  *(v0 + 152) = v12;
  *(v0 + 168) = v45;
  sub_1AF5C9030(v46);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  *(v13 + 32) = &type metadata for ParticleGPU;
  *(v13 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v13, &v47);
  sub_1AFBF3108(v46, sub_1AFBF32DC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v14 = v48;
  v15 = v49;
  v16 = v51;
  v17 = v52;
  v18 = v50 | 8;
  *(v0 + 176) = v47;
  *(v0 + 184) = v14;
  *(v0 + 188) = v15;
  *(v0 + 192) = v18;
  *(v0 + 200) = v16;
  *(v0 + 208) = v17;
  sub_1AF5C9030(v53);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = &type metadata for ParticleGPU;
  *(v19 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v19, v54);
  sub_1AFBF3108(v53, sub_1AFBF32DC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v20 = v54[1];
  *(v0 + 216) = v54[0];
  *(v0 + 232) = v20;
  *(v0 + 248) = v55;
  sub_1AF5C9054(v56);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = &type metadata for ParticleGPU;
  *(v21 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v21, &v57);
  sub_1AFBF3108(v56, sub_1AFBF3358);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v22 = v58;
  v23 = v59;
  v24 = v61;
  v25 = v62;
  v26 = v60 | 8;
  *(v0 + 256) = v57;
  *(v0 + 264) = v22;
  *(v0 + 268) = v23;
  *(v0 + 272) = v26;
  *(v0 + 280) = v24;
  *(v0 + 288) = v25;
  sub_1AF5C9054(v63);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  *(v27 + 32) = &type metadata for ParticleGPU;
  *(v27 + 40) = &off_1F252D668;
  sub_1AF5D1EC0(v27, v64);
  sub_1AFBF3108(v63, sub_1AFBF3358);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v28 = v64[1];
  *(v0 + 296) = v64[0];
  *(v0 + 312) = v28;
  *(v0 + 328) = v65;
  return v0;
}

uint64_t sub_1AFBF1DC8()
{
  v0 = swift_allocObject();
  sub_1AFBF18E8();
  return v0;
}

void sub_1AFBF1E14(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v326 = *(v1 + 48);
  v325[0] = v3;
  v325[1] = v4;
  sub_1AF6B06C0(a1, v325, 0x200000000, v227);
  v184 = v1;
  if (!*v227)
  {
    goto LABEL_59;
  }

  v190 = v230;
  if (v230 <= 0 || (v189 = *(&v228 + 1)) == 0)
  {
    sub_1AF5D1564(v227);
    goto LABEL_59;
  }

  v188 = *&v227[40];
  v5 = *(&v229 + 1);
  v187 = v229;
  v220 = *(v229 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v6 = *(*(&v229 + 1) + 32);
  v275 = *v227;
  v276 = *&v227[8];
  v277 = *&v227[24];
  *&v271[32] = *&v227[32];
  v272 = v228;
  v273 = v229;
  v274 = v230;
  *v271 = *v227;
  *&v271[16] = *&v227[16];
  sub_1AF5DD298(v271, v320);
  v7 = 0;
  v185 = v6;
  while (2)
  {
    v213 = v7;
    v8 = (v188 + 48 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = *(v8 + 2);
    v13 = *(v8 + 3);
    v14 = *(v8 + 4);
    v15 = *(v8 + 5);
    if (v220)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v6);
    v192 = *(v5 + 64);
    v199 = *(v5 + 48);
    v191 = *(v5 + 80);
    v17 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    LOBYTE(v263) = 1;
    v320[0] = v187;
    v320[1] = v15;
    v206 = v15;
    v320[2] = v5;
    v320[3] = v11;
    v320[4] = (v10 - v9 + v11);
    v320[5] = v190;
    v320[6] = v9;
    v320[7] = v10;
    v320[8] = 0;
    v320[9] = 0;
    v321 = 1;
    v322 = v12;
    v323 = v13;
    v324 = v14;
    sub_1AFBF17D4(v320);
    v18 = *(v5 + 48);
    v19 = *(v5 + 64);
    if (!v19)
    {
      v41 = *(v5 + 56);
      v42 = *(v5 + 32);
      goto LABEL_39;
    }

    for (i = 0; i != v19; ++i)
    {
      v22 = (v18 + 48 * i);
      v23 = *v22;
      v24 = v22[4];
      v25 = *(v5 + 72);
      if (v25)
      {
        v26 = v23 == v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        goto LABEL_11;
      }

      v27 = v275;
      if (!v275[11])
      {
        goto LABEL_11;
      }

      v28 = v22[2];
      v29 = v275 + 41;
      v30 = v275[9];
      if (v30 >= 0x10)
      {
        v31 = &v29[v275[8]];
        v32 = v30 >> 4;
        v33 = v275 + 41;
        while (*v31 != v23)
        {
          ++v33;
          v31 += 16;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        v34 = v33[v275[10]];
        v35 = v34 > 5;
        v36 = (1 << v34) & 0x23;
        if (v35 || v36 == 0)
        {
LABEL_11:

          v24(v21);

          continue;
        }
      }

LABEL_27:
      if (swift_conformsToProtocol2() && v28)
      {
        if (sub_1AF5FC8D8(v28))
        {
          goto LABEL_11;
        }

        v38 = v27[9];
        if (v38 < 0x10)
        {
          goto LABEL_11;
        }

        v39 = &v29[v27[8]];
        v40 = 16 * (v38 >> 4);
        while (*v39 != v28)
        {
          v39 += 16;
          v40 -= 16;
          if (!v40)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v41 = *(v5 + 56);
    v18 = *(v5 + 48);
    v42 = *(v5 + 32);
    if (*(v5 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

    v6 = v185;
LABEL_39:
    ecs_stack_allocator_deallocate(v42, v18, 48 * v41);
    *(v5 + 48) = v199;
    *(v5 + 64) = v192;
    *(v5 + 80) = v191;
    if (*(*(v5 + 104) + 16))
    {

      sub_1AF62F348(v43, v206);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v5 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v45[2];
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 104) = v45;
        if ((v47 & 1) == 0)
        {
          v45 = sub_1AF420EA0(0, v46, 1, v45);
          *(v5 + 104) = v45;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v46)
        {
          v48 = v45[2] - v46;
          memmove(v45 + 4, &v45[9 * v46 + 4], 72 * v48);
          v45[2] = v48;
        }

        *(v5 + 104) = v45;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
        if (v45[3] >= 2uLL)
        {
          sub_1AF5FD7D8(0, &qword_1ED7269C0, sub_1AF43A540);
          v49 = swift_allocObject();
          v50 = j__malloc_size_0(v49);
          v49[2] = 0;
          v49[3] = 2 * ((v50 - 32) / 72);
        }

        *(v5 + 104) = v49;
      }

      if (*(*(v5 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v51 = *(v206 + 232);
        v52 = *(v206 + 256);
        if (v51 == v52)
        {
          v53 = *(v206 + 240);
        }

        else
        {
          sub_1AF6497A0(v52, v51);
          v52 = *(v206 + 232);
          v53 = *(v206 + 240);
          if (v53 == v52)
          {
            v53 = 0;
            v52 = 0;
            *(v206 + 232) = 0;
            *(v206 + 240) = 0;
          }
        }

        *(v206 + 248) = v53;
        *(v206 + 256) = v52;
      }
    }

    ecs_stack_allocator_pop_snapshot(v6);
    if (v220)
    {
      os_unfair_lock_unlock(*(v206 + 344));
      os_unfair_lock_unlock(*(v206 + 376));
    }

    v7 = v213 + 1;
    if (v213 + 1 != v189)
    {
      continue;
    }

    break;
  }

  sub_1AF5D1564(v227);
  sub_1AF5D1564(v227);
  v2 = v184;
LABEL_59:
  v54 = *(v2 + 112);
  v318[0] = *(v2 + 96);
  v318[1] = v54;
  v319 = *(v2 + 128);
  sub_1AF6B06C0(a1, v318, 0x200000000, &v231);
  if (v231)
  {
    if (v238 >= 1)
    {
      v214 = v235;
      if (v235)
      {
        v55 = 0;
        v207 = v234;
        v56 = v237;
        v57 = *(v237 + 32);
        v58 = *(v236 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v278 = v231;
        v279 = v232;
        v280 = v233;
        v193 = v58;
        v200 = v57;
        do
        {
          v59 = (v207 + 48 * v55);
          v60 = *v59;
          v221 = v59[1];
          v61 = *(v59 + 2);
          v62 = *(v59 + 3);
          v64 = *(v59 + 4);
          v63 = *(v59 + 5);
          if (v58)
          {
            v65 = *(v63 + 376);

            os_unfair_lock_lock(v65);
            os_unfair_lock_lock(*(v63 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v57);
          v66 = *(v56 + 64);
          v316[0] = *(v56 + 48);
          v316[1] = v66;
          v317 = *(v56 + 80);
          v67 = *(*(*(*(v63 + 40) + 16) + 32) + 16) + 1;
          *(v56 + 48) = ecs_stack_allocator_allocate(*(v56 + 32), 48 * v67, 8);
          *(v56 + 56) = v67;
          *(v56 + 72) = 0;
          *(v56 + 80) = 0;
          *(v56 + 64) = 0;
          v68 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v61, v62, v64, v56);
          v69 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v61, v62, v64, v56);
          if (v61)
          {
            for (; v64; --v64)
            {
              v70 = *v68++;
              *&v71 = __PAIR64__(1.0, v70);
              *(&v71 + 1) = COERCE_UNSIGNED_INT(1.0);
              *v69++ = v71;
            }
          }

          else if (v60 != v221)
          {
            v72 = v221 - v60;
            v73 = &v69[v60];
            v74 = &v68[v60];
            do
            {
              v75 = *v74++;
              *&v76 = __PAIR64__(1.0, v75);
              *(&v76 + 1) = COERCE_UNSIGNED_INT(1.0);
              *v73++ = v76;
              --v72;
            }

            while (v72);
          }

          sub_1AF630994(v56, &v278, v316);
          sub_1AF62D29C(v63);
          v57 = v200;
          ecs_stack_allocator_pop_snapshot(v200);
          v58 = v193;
          if (v193)
          {
            os_unfair_lock_unlock(*(v63 + 344));
            os_unfair_lock_unlock(*(v63 + 376));
          }

          ++v55;
        }

        while (v55 != v214);
      }
    }

    sub_1AF5D1564(&v231);
    v2 = v184;
  }

  v77 = *(v2 + 152);
  v314[0] = *(v2 + 136);
  v314[1] = v77;
  v315 = *(v2 + 168);
  sub_1AF6B06C0(a1, v314, 0x200000000, &v239);
  if (v239)
  {
    if (v246 >= 1)
    {
      v215 = v243;
      if (v243)
      {
        v78 = 0;
        v208 = v242;
        v79 = v245;
        v80 = *(v245 + 32);
        v81 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v281 = v239;
        v282 = v240;
        v283 = v241;
        v194 = v81;
        v201 = v80;
        do
        {
          v82 = (v208 + 48 * v78);
          v83 = *v82;
          v222 = v82[1];
          v84 = *(v82 + 2);
          v85 = *(v82 + 3);
          v87 = *(v82 + 4);
          v86 = *(v82 + 5);
          if (v81)
          {
            v88 = *(v86 + 376);

            os_unfair_lock_lock(v88);
            os_unfair_lock_lock(*(v86 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v80);
          v89 = *(v79 + 64);
          v312[0] = *(v79 + 48);
          v312[1] = v89;
          v313 = *(v79 + 80);
          v90 = *(*(*(*(v86 + 40) + 16) + 32) + 16) + 1;
          *(v79 + 48) = ecs_stack_allocator_allocate(*(v79 + 32), 48 * v90, 8);
          *(v79 + 56) = v90;
          *(v79 + 72) = 0;
          *(v79 + 80) = 0;
          *(v79 + 64) = 0;
          v91 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v84, v85, v87, v79);
          v92 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v84, v85, v87, v79);
          if (v84)
          {
            for (; v87; --v87)
            {
              v93 = *v92++;
              *v91++ = v93;
            }
          }

          else if (v83 != v222)
          {
            v94 = v222 - v83;
            v95 = &v92[v83];
            v96 = &v91[v83];
            do
            {
              v97 = *v95++;
              *v96++ = v97;
              --v94;
            }

            while (v94);
          }

          sub_1AF630994(v79, &v281, v312);
          sub_1AF62D29C(v86);
          v80 = v201;
          ecs_stack_allocator_pop_snapshot(v201);
          v81 = v194;
          if (v194)
          {
            os_unfair_lock_unlock(*(v86 + 344));
            os_unfair_lock_unlock(*(v86 + 376));
          }

          ++v78;
        }

        while (v78 != v215);
      }
    }

    sub_1AF5D1564(&v239);
    v2 = v184;
  }

  v98 = *(v2 + 192);
  v310[0] = *(v2 + 176);
  v310[1] = v98;
  v311 = *(v2 + 208);
  sub_1AF6B06C0(a1, v310, 0x200000000, &v247);
  if (v247)
  {
    if (v254 >= 1)
    {
      v216 = v251;
      if (v251)
      {
        v99 = 0;
        v209 = v250;
        v100 = v253;
        v101 = *(v253 + 32);
        v102 = *(v252 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v284 = v247;
        v285 = v248;
        v286 = v249;
        v195 = v102;
        v202 = v101;
        do
        {
          v103 = (v209 + 48 * v99);
          v104 = *v103;
          v223 = v103[1];
          v105 = *(v103 + 2);
          v106 = *(v103 + 3);
          v108 = *(v103 + 4);
          v107 = *(v103 + 5);
          if (v102)
          {
            v109 = *(v107 + 376);

            os_unfair_lock_lock(v109);
            os_unfair_lock_lock(*(v107 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v101);
          v110 = *(v100 + 64);
          v308[0] = *(v100 + 48);
          v308[1] = v110;
          v309 = *(v100 + 80);
          v111 = *(*(*(*(v107 + 40) + 16) + 32) + 16) + 1;
          *(v100 + 48) = ecs_stack_allocator_allocate(*(v100 + 32), 48 * v111, 8);
          *(v100 + 56) = v111;
          *(v100 + 72) = 0;
          *(v100 + 80) = 0;
          *(v100 + 64) = 0;
          v112 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v105, v106, v108, v100);
          v113 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v105, v106, v108, v100);
          if (v105)
          {
            for (; v108; --v108)
            {
              v114 = *v112++;
              *&v115 = v114;
              *(&v115 + 1) = 1065353216;
              *v113++ = v115;
            }
          }

          else if (v104 != v223)
          {
            v116 = v223 - v104;
            v117 = &v113[v104];
            v118 = &v112[v104];
            do
            {
              v119 = *v118++;
              *&v120 = v119;
              *(&v120 + 1) = 1065353216;
              *v117++ = v120;
              --v116;
            }

            while (v116);
          }

          sub_1AF630994(v100, &v284, v308);
          sub_1AF62D29C(v107);
          v101 = v202;
          ecs_stack_allocator_pop_snapshot(v202);
          v102 = v195;
          if (v195)
          {
            os_unfair_lock_unlock(*(v107 + 344));
            os_unfair_lock_unlock(*(v107 + 376));
          }

          ++v99;
        }

        while (v99 != v216);
      }
    }

    sub_1AF5D1564(&v247);
    v2 = v184;
  }

  v121 = *(v2 + 232);
  v306[0] = *(v2 + 216);
  v306[1] = v121;
  v307 = *(v2 + 248);
  sub_1AF6B06C0(a1, v306, 0x200000000, &v255);
  if (v255)
  {
    if (v262 >= 1)
    {
      v217 = v259;
      if (v259)
      {
        v122 = 0;
        v210 = v258;
        v123 = v261;
        v124 = *(v261 + 32);
        v125 = *(v260 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v287 = v255;
        v288 = v256;
        v289 = v257;
        v196 = v125;
        v203 = v124;
        do
        {
          v126 = (v210 + 48 * v122);
          v127 = *v126;
          v224 = v126[1];
          v128 = *(v126 + 2);
          v129 = *(v126 + 3);
          v131 = *(v126 + 4);
          v130 = *(v126 + 5);
          if (v125)
          {
            v132 = *(v130 + 376);

            os_unfair_lock_lock(v132);
            os_unfair_lock_lock(*(v130 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v124);
          v133 = *(v123 + 64);
          v304[0] = *(v123 + 48);
          v304[1] = v133;
          v305 = *(v123 + 80);
          v134 = *(*(*(*(v130 + 40) + 16) + 32) + 16) + 1;
          *(v123 + 48) = ecs_stack_allocator_allocate(*(v123 + 32), 48 * v134, 8);
          *(v123 + 56) = v134;
          *(v123 + 72) = 0;
          *(v123 + 80) = 0;
          *(v123 + 64) = 0;
          v135 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v128, v129, v131, v123);
          v136 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v128, v129, v131, v123);
          if (v128)
          {
            for (; v131; --v131)
            {
              v137 = *v136++;
              *v135++ = v137;
            }
          }

          else if (v127 != v224)
          {
            v138 = v224 - v127;
            v139 = &v136[v127];
            v140 = &v135[v127];
            do
            {
              v141 = *v139++;
              *v140++ = v141;
              --v138;
            }

            while (v138);
          }

          sub_1AF630994(v123, &v287, v304);
          sub_1AF62D29C(v130);
          v124 = v203;
          ecs_stack_allocator_pop_snapshot(v203);
          v125 = v196;
          if (v196)
          {
            os_unfair_lock_unlock(*(v130 + 344));
            os_unfair_lock_unlock(*(v130 + 376));
          }

          ++v122;
        }

        while (v122 != v217);
      }
    }

    sub_1AF5D1564(&v255);
    v2 = v184;
  }

  v142 = *(v2 + 272);
  v302[0] = *(v2 + 256);
  v302[1] = v142;
  v303 = *(v2 + 288);
  sub_1AF6B06C0(a1, v302, 0x200000000, &v263);
  if (v263)
  {
    if (v270 >= 1)
    {
      v218 = v267;
      if (v267)
      {
        v143 = 0;
        v211 = v266;
        v144 = v269;
        v145 = *(v269 + 32);
        v146 = *(v268 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v290 = v263;
        v291 = v264;
        v292 = v265;
        v197 = v146;
        v204 = v145;
        do
        {
          v147 = (v211 + 48 * v143);
          v148 = *v147;
          v225 = v147[1];
          v149 = *(v147 + 2);
          v150 = *(v147 + 3);
          v152 = *(v147 + 4);
          v151 = *(v147 + 5);
          if (v146)
          {
            v153 = *(v151 + 376);

            os_unfair_lock_lock(v153);
            os_unfair_lock_lock(*(v151 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v145);
          v154 = *(v144 + 64);
          v300[0] = *(v144 + 48);
          v300[1] = v154;
          v301 = *(v144 + 80);
          v155 = *(*(*(*(v151 + 40) + 16) + 32) + 16) + 1;
          *(v144 + 48) = ecs_stack_allocator_allocate(*(v144 + 32), 48 * v155, 8);
          *(v144 + 56) = v155;
          *(v144 + 72) = 0;
          *(v144 + 80) = 0;
          *(v144 + 64) = 0;
          v156 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v149, v150, v152, v144);
          v157 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v149, v150, v152, v144);
          if (v149)
          {
            for (; v152; --v152)
            {
              v158 = *v156++;
              *v157++ = v158;
            }
          }

          else if (v148 != v225)
          {
            v159 = v225 - v148;
            v160 = &v157[v148];
            v161 = &v156[v148];
            do
            {
              v162 = *v161++;
              *v160++ = v162;
              --v159;
            }

            while (v159);
          }

          sub_1AF630994(v144, &v290, v300);
          sub_1AF62D29C(v151);
          v145 = v204;
          ecs_stack_allocator_pop_snapshot(v204);
          v146 = v197;
          if (v197)
          {
            os_unfair_lock_unlock(*(v151 + 344));
            os_unfair_lock_unlock(*(v151 + 376));
          }

          ++v143;
        }

        while (v143 != v218);
      }
    }

    sub_1AF5D1564(&v263);
    v2 = v184;
  }

  v299 = *(v2 + 328);
  v163 = *(v2 + 312);
  v298[0] = *(v2 + 296);
  v298[1] = v163;
  sub_1AF6B06C0(a1, v298, 0x200000000, v271);
  if (*v271)
  {
    if (v274 >= 1)
    {
      v219 = *(&v272 + 1);
      if (*(&v272 + 1))
      {
        v164 = 0;
        v212 = *&v271[40];
        v165 = *(&v273 + 1);
        v166 = *(*(&v273 + 1) + 32);
        v167 = *(v273 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v293 = *v271;
        v294 = *&v271[8];
        v295 = *&v271[24];
        v198 = v167;
        v205 = v166;
        do
        {
          v168 = (v212 + 48 * v164);
          v169 = *v168;
          v226 = v168[1];
          v170 = *(v168 + 2);
          v171 = *(v168 + 3);
          v173 = *(v168 + 4);
          v172 = *(v168 + 5);
          if (v167)
          {
            v174 = *(v172 + 376);

            os_unfair_lock_lock(v174);
            os_unfair_lock_lock(*(v172 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v166);
          v175 = *(v165 + 64);
          v296[0] = *(v165 + 48);
          v296[1] = v175;
          v297 = *(v165 + 80);
          v176 = *(*(*(*(v172 + 40) + 16) + 32) + 16) + 1;
          *(v165 + 48) = ecs_stack_allocator_allocate(*(v165 + 32), 48 * v176, 8);
          *(v165 + 56) = v176;
          *(v165 + 72) = 0;
          *(v165 + 80) = 0;
          *(v165 + 64) = 0;
          v177 = sub_1AF64B110(&type metadata for Scale3, &off_1F252F998, v170, v171, v173, v165);
          v178 = sub_1AF64B110(&type metadata for TransientOriginScale, &off_1F2569A38, v170, v171, v173, v165);
          if (v170)
          {
            for (; v173; --v173)
            {
              v179 = *v178++;
              *v177++ = v179;
            }
          }

          else if (v169 != v226)
          {
            v180 = v226 - v169;
            v181 = &v178[v169];
            v182 = &v177[v169];
            do
            {
              v183 = *v181++;
              *v182++ = v183;
              --v180;
            }

            while (v180);
          }

          sub_1AF630994(v165, &v293, v296);
          sub_1AF62D29C(v172);
          v166 = v205;
          ecs_stack_allocator_pop_snapshot(v205);
          v167 = v198;
          if (v198)
          {
            os_unfair_lock_unlock(*(v172 + 344));
            os_unfair_lock_unlock(*(v172 + 376));
          }

          ++v164;
        }

        while (v164 != v219);
      }
    }

    sub_1AF5D1564(v271);
  }
}