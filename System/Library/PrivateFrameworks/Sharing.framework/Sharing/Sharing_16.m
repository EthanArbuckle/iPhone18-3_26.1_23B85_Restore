uint64_t sub_1A98D8EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A97AF7EC(a3, v16);
  if (swift_dynamicCast())
  {
    LOBYTE(a2) = sub_1A98D83E8(a1, a2, v14, v15);

    return a2 & 1;
  }

  sub_1A97AF7EC(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v8 = (v14 + 40);
  v9 = -*(v14 + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      LOBYTE(a2) = 0;
      return a2 & 1;
    }

    if (++v10 >= *(v14 + 16))
    {
      break;
    }

    v11 = *(v8 - 1);
    v12 = *v8;

    v13 = sub_1A98D83E8(a1, a2, v11, v12);

    if (v3)
    {

      return a2 & 1;
    }

    v8 += 2;
    if (v13)
    {

      LOBYTE(a2) = 1;
      return a2 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A98D9094(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v118 = a4;
  v117 = a1;
  v6 = sub_1A9976020();
  v116 = *(v6 - 8);
  v7 = v116[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A99762C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = 0u;
  v127 = 0u;
  if (sub_1A98D5A60())
  {

    v15 = sub_1A99768E0();
    v16 = sub_1A98D73C4(v15, a2, a3);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    MEMORY[0x1AC589540](v16, v18, v20, v22);

    v23 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    if (v23)
    {
      v24 = v23;
      v25 = sub_1A99767E0();

      v26 = SecTaskCopyValueForEntitlement(v24, v25, 0);

      v28 = v118;
      v27 = v119;
      if (v26)
      {
        ObjectType = swift_getObjectType();

        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {
        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);

        ObjectType = 0;
      }
    }

    else
    {

      sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      ObjectType = 0;
      v26 = 0;
      v28 = v118;
      v27 = v119;
    }

    *&v127 = 0;
    v126 = v26;
    *(&v127 + 1) = ObjectType;
    goto LABEL_40;
  }

  if (sub_1A98D5A60())
  {
    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    LOBYTE(v30) = 1;
    return v30 & 1;
  }

  v31 = *MEMORY[0x1E69C4AC8];
  if (sub_1A9976820() == a2 && v32 == a3)
  {

    goto LABEL_20;
  }

  v34 = sub_1A99777E0();

  if (v34)
  {
LABEL_20:
    v39 = v117;
    v40 = [v117 identifier];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1A9976820();
      v44 = v43;

      v45 = MEMORY[0x1E69E6158];
    }

    else
    {
      v44 = 0;
      v42 = 0;
      v45 = 0;
    }

    v28 = v118;
    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    *&v126 = v42;
    *(&v126 + 1) = v44;
    *&v127 = 0;
    *(&v127 + 1) = v45;
    goto LABEL_26;
  }

  v35 = *MEMORY[0x1E69C4B10];
  if (sub_1A9976820() == a2 && v36 == a3)
  {
  }

  else
  {
    v38 = sub_1A99777E0();

    if ((v38 & 1) == 0)
    {
      goto LABEL_87;
    }
  }

  v128 = &unk_1F1DA42A0;
  v78 = swift_dynamicCastObjCProtocolConditional();
  if (v78)
  {
    v79 = v78;
    v80 = v117;
    swift_unknownObjectRetain();
    result = [v79 uuid];
    if (!result)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v81 = result;
    sub_1A9976290();

    v82 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
    v84 = v83;
    swift_unknownObjectRelease();
    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    (*(v11 + 8))(v14, v10);
    *&v126 = v82;
    *(&v126 + 1) = v84;
    *(&v127 + 1) = MEMORY[0x1E69E6158];
    v28 = v118;
    v39 = v80;
    goto LABEL_26;
  }

LABEL_87:
  v85 = *MEMORY[0x1E69C4B18];
  if (sub_1A9976820() == a2 && v86 == a3)
  {

    v39 = v117;
    v28 = v118;
LABEL_106:
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    [v39 userElection];
    v101 = sub_1A9977030();
    v102 = [v101 description];
    v103 = sub_1A9976820();
    v105 = v104;

    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    *&v126 = v103;
    *(&v126 + 1) = v105;
    *(&v127 + 1) = MEMORY[0x1E69E6158];
LABEL_26:
    sub_1A97C13A4(&v126, &v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    v46 = *(&v125 + 1);
    sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!v46)
    {
      result = [v39 attributes];
      if (!result)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v48 = result;
      v49 = sub_1A9976700();

      *&v122 = a2;
      *(&v122 + 1) = a3;

      sub_1A9977250();
      if (*(v49 + 16) && (v50 = sub_1A97BCF30(&v124), (v51 & 1) != 0))
      {
        sub_1A97AF7EC(*(v49 + 56) + 32 * v50, &v122);
        sub_1A97C108C(&v124);
        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {

        sub_1A97C108C(&v124);
        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
        v122 = 0u;
        v123 = 0u;
      }

      v126 = v122;
      v127 = v123;
    }

    sub_1A97C13A4(&v126, &v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    v52 = *(&v125 + 1);
    sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    v27 = v119;
    if (!v52)
    {
      result = [v117 bundleInfoDictionary];
      if (!result)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v53 = result;
      v54 = sub_1A9976700();

      *&v122 = a2;
      *(&v122 + 1) = a3;

      sub_1A9977250();
      if (*(v54 + 16) && (v55 = sub_1A97BCF30(&v124), (v56 & 1) != 0))
      {
        sub_1A97AF7EC(*(v54 + 56) + 32 * v55, &v122);
        sub_1A97C108C(&v124);
        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {

        sub_1A97C108C(&v124);
        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
        v122 = 0u;
        v123 = 0u;
      }

      v126 = v122;
      v127 = v123;
    }

LABEL_40:
    sub_1A97AF7EC(v28, &v124);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v57 = v122;
      sub_1A9812DE0(0, &qword_1EB3B4F50, 0x1E69E58C0);
      v58 = sub_1A9977020();
      v59 = sub_1A9977040();

      if (v59)
      {
        sub_1A97C13A4(&v126, &v122, &qword_1EB3B0BA0, &unk_1A99923D0);
        if (*(&v123 + 1))
        {
          sub_1A967C4DC(&v122, &v124);
          sub_1A97AF7EC(&v124, &v122);
          if (swift_dynamicCast())
          {
            v60 = v120;
            v61 = sub_1A9977020();
            v62 = sub_1A9977040();

            __swift_destroy_boxed_opaque_existential_0Tm(&v124);
            sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
            if (v62)
            {
              goto LABEL_71;
            }

LABEL_78:
            LOBYTE(v30) = 1;
            return v30 & 1;
          }

LABEL_76:
          __swift_destroy_boxed_opaque_existential_0Tm(&v124);
LABEL_77:
          sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
          goto LABEL_78;
        }

        sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);

        goto LABEL_69;
      }
    }

    sub_1A97AF7EC(v28, &v124);
    if (swift_dynamicCast())
    {
      v63 = v122;
      sub_1A9812DE0(0, &qword_1EB3B4F50, 0x1E69E58C0);
      v64 = sub_1A9977020();
      v65 = sub_1A9977040();

      if (v65)
      {
        sub_1A97C13A4(&v126, &v124, &qword_1EB3B0BA0, &unk_1A99923D0);
        if (*(&v125 + 1))
        {
          if (swift_dynamicCast())
          {
            v66 = v122;
            v67 = sub_1A9977020();
            v68 = sub_1A9977040();

            if (v68)
            {
              goto LABEL_77;
            }
          }

          else
          {
          }
        }

        else
        {

          sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
        }

        v124 = v126;
        v125 = v127;
        LOBYTE(v30) = *(&v127 + 1) == 0;
        sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
        return v30 & 1;
      }
    }

    sub_1A97C13A4(&v126, &v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!*(&v123 + 1))
    {
      sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_69:
      v75 = &v122;
LABEL_70:
      sub_1A97B06FC(v75, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_71:
      LOBYTE(v30) = 0;
      return v30 & 1;
    }

    sub_1A967C4DC(&v122, &v124);
    sub_1A97AF7EC(v28, &v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    if (swift_dynamicCast())
    {
      v69 = v120;
      result = [v117 identifier];
      if (result)
      {
        v70 = result;
        sub_1A9976820();

        if (sub_1A98D7474(v69) & 1) != 0 && ((sub_1A98D7ECC(&v124, v69) & 1) != 0 || (v71 = sub_1A98DE538(0xD000000000000018, 0x80000001A99E2760, v69), v72 = sub_1A98D7ECC(&v124, v71), , (v72) || (v73 = sub_1A98DE538(0xD000000000000014, 0x80000001A99E6EC0, v69), v74 = sub_1A98D7ECC(&v124, v73), , (v74)))
        {
          LOBYTE(v30) = 1;
        }

        else
        {
          LOBYTE(v30) = sub_1A98D7ECC(&v124, v69);
        }

        goto LABEL_67;
      }

      goto LABEL_121;
    }

    sub_1A97AF7EC(&v124, &v122);
    if (swift_dynamicCast())
    {
      LOBYTE(v30) = sub_1A98D8EE4(v120, v121, v28);

LABEL_67:
      __swift_destroy_boxed_opaque_existential_0Tm(&v124);
      sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      return v30 & 1;
    }

    sub_1A97AF7EC(&v124, &v122);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_dynamicCast();
    if (result)
    {
      v30 = v120;
      v115 = v120[2];
      if (v115)
      {
        v77 = 0;
        v116 = v120 + 4;
        v114 = v120;
        v113[1] = v76;
        while (v77 < *(v30 + 16))
        {
          v87 = &v116[2 * v77];
          v89 = *v87;
          v88 = v87[1];
          sub_1A97AF7EC(v28, &v122);

          if (swift_dynamicCast())
          {
            v90 = sub_1A98D83E8(v89, v88, v120, v121);
            if (v27)
            {
LABEL_112:

              goto LABEL_67;
            }

            v91 = v90;

            if (v91)
            {

              goto LABEL_76;
            }
          }

          else
          {
            sub_1A97AF7EC(v28, &v122);
            result = swift_dynamicCast();
            if (result)
            {
              v117 = v89;
              v119 = v88;
              v92 = v27;
              v93 = v120;
              v94 = v120 + 5;
              v30 = -v120[2];
              v95 = -1;
              while (1)
              {
                if (v30 + v95 == -1)
                {

                  v27 = v92;
                  v28 = v118;
                  v30 = v114;
                  goto LABEL_91;
                }

                if (++v95 >= *(v93 + 16))
                {
                  break;
                }

                v96 = v92;
                v97 = *(v94 - 1);
                v98 = *v94;

                v99 = sub_1A98D83E8(v117, v119, v97, v98);

                v92 = v96;
                if (v96)
                {
                  goto LABEL_112;
                }

                v94 += 2;
                if (v99)
                {

                  goto LABEL_76;
                }
              }

              __break(1u);
              break;
            }
          }

LABEL_91:
          if (++v77 == v115)
          {
            goto LABEL_107;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_107:
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v124);
    v75 = &v126;
    goto LABEL_70;
  }

  v100 = sub_1A99777E0();

  v39 = v117;
  v28 = v118;
  if (v100)
  {
    goto LABEL_106;
  }

  v106 = *MEMORY[0x1E69C4AB0];
  if (sub_1A9976820() == a2 && v107 == a3)
  {
  }

  else
  {
    v108 = sub_1A99777E0();

    if ((v108 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  result = [v39 containingUrl];
  if (result)
  {
    v109 = result;
    sub_1A9975FE0();

    v110 = sub_1A9975FF0();
    v112 = v111;
    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    (v116[1])(v9, v6);
    *&v126 = v110;
    *(&v126 + 1) = v112;
    *(&v127 + 1) = MEMORY[0x1E69E6158];
    sub_1A97C13A4(&v126, &v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!*(&v125 + 1))
    {
      sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
      LOBYTE(v30) = 0;
      return v30 & 1;
    }

    sub_1A97B06FC(&v124, &qword_1EB3B0BA0, &unk_1A99923D0);
    v39 = v117;
    v28 = v118;
    goto LABEL_26;
  }

LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_1A98DA210(void (**a1)(char *, uint64_t, uint64_t))
{
  v601 = a1;
  v571 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v551 = &v540 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v547 = &v540 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v561 = &v540 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v566 = (&v540 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F90, &qword_1A99A44A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v564 = &v540 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v553 = &v540 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F80, &qword_1A99A4488);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v558 = &v540 - v17;
  v18 = sub_1A99762C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v546 = &v540 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v545 = &v540 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v544 = &v540 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v543 = &v540 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v567 = &v540 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v554 = &v540 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v552 = &v540 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v549 = &v540 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v548 = &v540 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v557 = &v540 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v599 = &v540 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v596 = &v540 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F98, &unk_1A99A44A8);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v576 = &v540 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v575 = &v540 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v540 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v593 = (&v540 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v540 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v540 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8);
  v568 = &v540 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v569 = (&v540 - v64);
  v65 = sub_1A99763B0();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  v68 = MEMORY[0x1EEE9AC00](v65);
  v560 = &v540 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v574 = &v540 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v592 = &v540 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v598 = &v540 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v597 = &v540 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v583 = &v540 - v78;
  v79 = MEMORY[0x1E69E7CC0];
  v80 = sub_1A97BF76C(MEMORY[0x1E69E7CC0]);
  v621 = v80;
  v562 = sub_1A97BF558(v79);
  v82 = v601[2];
  v603 = v18;
  v600 = v19;
  v602 = v65;
  v584 = v66;
  v585 = v52;
  if (v82)
  {
    v83 = 0;
    v85 = *(v66 + 16);
    v84 = v66 + 16;
    v589 = v85;
    *&v577 = v601 + ((*(v84 + 64) + 32) & ~*(v84 + 64));
    v588 = *(v84 + 56);
    v591 = v84 - 8;
    v578 = (v19 + 16);
    v559 = *MEMORY[0x1E695E480];
    v595 = (v19 + 32);
    v590 = v84;
    v594 = (v84 + 16);
    v573 = *MEMORY[0x1E69C4B18];
    v580 = (v19 + 8);
    v563 = (v19 + 56);
    v556 = (v19 + 48);
    v86 = &off_1E7892000;
    *&v81 = 136315138;
    v565 = v81;
    *&v81 = 136315394;
    v555 = v81;
    *&v81 = 136315650;
    v542 = v81;
    v87 = v593;
    v586 = v57;
    v587 = v59;
    v570 = v82;
    v88 = v82;
    while (1)
    {
      v581 = v83;
      (v589)(v583, v577 + v588 * v83, v65);
      v89 = sub_1A9976350();
      if (!v89 || (v90 = v89, v91 = [v89 _plugIn], v90, !v91))
      {
        (*v591)(v583, v65);
        goto LABEL_4;
      }

      if (([v91 v86[334]] & 1) == 0)
      {
        v92 = [v91 containingUrl];
        if (!v92)
        {
          v170 = sub_1A9976020();
          v171 = v569;
          (*(*(v170 - 8) + 56))(v569, 1, 1, v170);
          sub_1A97B06FC(v171, &unk_1EB3B2A40, &qword_1A99983B0);
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v172 = sub_1A99764A0();
          __swift_project_value_buffer(v172, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v173 = sub_1A9976480();
          v174 = sub_1A9976F60();
          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            *&v613 = v176;
            *v175 = v565;
            v177 = [v91 identifier];
            swift_unknownObjectRelease();
            if (!v177)
            {
              goto LABEL_318;
            }

LABEL_74:
            v181 = sub_1A9976820();
            v183 = v182;

            v184 = sub_1A97AF148(v181, v183, &v613);

            *(v175 + 4) = v184;
            _os_log_impl(&dword_1A9662000, v173, v174, "ExtensionsCache: Removing extension %s because it is a non-system plugin without a containing app", v175, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v176);
            MEMORY[0x1AC58D2C0](v176, -1, -1);
            MEMORY[0x1AC58D2C0](v175, -1, -1);
            swift_unknownObjectRelease();

            goto LABEL_82;
          }

LABEL_75:

          swift_unknownObjectRelease_n();
          (*v591)(v583, v65);
          goto LABEL_134;
        }

        v93 = v569;
        v94 = v92;
        sub_1A9975FE0();

        v95 = sub_1A9976020();
        (*(*(v95 - 8) + 56))(v93, 0, 1, v95);
        v96 = v93;
        v86 = &off_1E7892000;
        sub_1A97B06FC(v96, &unk_1EB3B2A40, &qword_1A99983B0);
      }

      if (([v91 v86[334]] & 1) == 0)
      {
        v97 = [v91 containingUrl];
        if (!v97)
        {
          v178 = sub_1A9976020();
          v179 = v568;
          (*(*(v178 - 8) + 56))(v568, 1, 1, v178);
          sub_1A97B06FC(v179, &unk_1EB3B2A40, &qword_1A99983B0);
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v180 = sub_1A99764A0();
          __swift_project_value_buffer(v180, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v173 = sub_1A9976480();
          v174 = sub_1A9976F60();
          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            *&v613 = v176;
            *v175 = v565;
            v177 = [v91 identifier];
            swift_unknownObjectRelease();
            if (!v177)
            {
              goto LABEL_319;
            }

            goto LABEL_74;
          }

          goto LABEL_75;
        }

        v98 = v568;
        v99 = v97;
        sub_1A9975FE0();

        v100 = sub_1A9976020();
        (*(*(v100 - 8) + 56))(v98, 0, 1, v100);
        sub_1A97B06FC(v98, &unk_1EB3B2A40, &qword_1A99983B0);
      }

      v101 = [v91 plugInDictionary];
      if (v101)
      {
        v102 = v101;
        v103 = sub_1A9976700();

        if (sub_1A98D4DF4(v103))
        {

          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v104 = sub_1A99764A0();
          __swift_project_value_buffer(v104, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v105 = sub_1A9976480();
          v106 = sub_1A9976F60();
          if (!os_log_type_enabled(v105, v106))
          {

            swift_unknownObjectRelease_n();
            (*v591)(v583, v65);
            v52 = v585;
            v87 = v593;
            goto LABEL_4;
          }

          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v613 = v108;
          *v107 = v565;
          v109 = [v91 identifier];
          swift_unknownObjectRelease();
          if (!v109)
          {
            goto LABEL_317;
          }

          v110 = sub_1A9976820();
          v112 = v111;

          v113 = sub_1A97AF148(v110, v112, &v613);

          *(v107 + 4) = v113;
          _os_log_impl(&dword_1A9662000, v105, v106, "ExtensionsCache: Removing extension %s because it is a dedicated plug-in", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v108);
          MEMORY[0x1AC58D2C0](v108, -1, -1);
          MEMORY[0x1AC58D2C0](v107, -1, -1);
          swift_unknownObjectRelease();

          v65 = v602;
          (*v591)(v583, v602);
          v52 = v585;
          v57 = v586;
          goto LABEL_131;
        }

        v582 = sub_1A98D4F88(v103);
        v115 = v114;

        if (v115)
        {
          v116 = SecTaskCreateFromSelf(v559);
          if (!v116)
          {
            goto LABEL_126;
          }

          v117 = v116;
          v118 = sub_1A99767E0();
          v119 = SecTaskCopyValueForEntitlement(v117, v118, 0);

          v65 = v602;
          v120 = v119;
          v86 = &off_1E7892000;
          if (!v120)
          {
LABEL_126:
            if (qword_1EB3ABCB0 != -1)
            {
              swift_once();
            }

            v248 = sub_1A99764A0();
            __swift_project_value_buffer(v248, qword_1EB3ABCC0);
            swift_unknownObjectRetain();

            v249 = sub_1A9976480();
            LODWORD(v579) = sub_1A9976F60();
            if (!os_log_type_enabled(v249, v579))
            {

              swift_unknownObjectRelease_n();
              swift_bridgeObjectRelease_n();
              (*v591)(v583, v65);
              v87 = v593;
              goto LABEL_4;
            }

            v572 = v249;
            v250 = swift_slowAlloc();
            v251 = swift_slowAlloc();
            *&v613 = v251;
            *v250 = v555;
            v252 = [v91 identifier];
            swift_unknownObjectRelease();

            if (!v252)
            {
              goto LABEL_323;
            }

            v253 = sub_1A9976820();
            v255 = v254;

            v256 = sub_1A97AF148(v253, v255, &v613);

            *(v250 + 4) = v256;
            *(v250 + 12) = 2080;
            v257 = sub_1A97AF148(v582, v115, &v613);

            *(v250 + 14) = v257;
            v258 = v572;
            _os_log_impl(&dword_1A9662000, v572, v579, "ExtensionsCache: Removing extension %s because it requires entitlement %s on the host", v250, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC58D2C0](v251, -1, -1);
            MEMORY[0x1AC58D2C0](v250, -1, -1);
            swift_unknownObjectRelease();

            v65 = v602;
            (*v591)(v583, v602);
            v52 = v585;
LABEL_131:
            v87 = v593;
            v59 = v587;
            v86 = &off_1E7892000;
            goto LABEL_4;
          }

          swift_unknownObjectRelease();
        }
      }

      v601 = v91;
      v121 = sub_1A98D7300();
      if (!v121)
      {
        v123 = v603;
        goto LABEL_85;
      }

      isa = v121[2].isa;
      v123 = v603;
      if (!isa)
      {
        goto LABEL_84;
      }

      v124 = 0;
      v125 = v121 + 4;
      v582 = v121;
      v572 = isa;
      v550 = v121 + 4;
      do
      {
        if (v124 >= v121[2].isa)
        {
          goto LABEL_310;
        }

        v126 = v125[v124].isa;
        v579 = (&v124->isa + 1);
        v127 = 1 << *(v126 + 32);
        if (v127 < 64)
        {
          v128 = ~(-1 << v127);
        }

        else
        {
          v128 = -1;
        }

        v129 = v128 & *(v126 + 8);
        v130 = (v127 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v131 = 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              if (v129)
              {
                v132 = v131;
LABEL_43:
                v135 = __clz(__rbit64(v129));
                v129 &= v129 - 1;
                v136 = v135 | (v132 << 6);
                sub_1A97C1030(*(v126 + 6) + 40 * v136, &v605);
                sub_1A97AF7EC(*(v126 + 7) + 32 * v136, v604);
                v608 = v605;
                v609 = v606;
                *&v610 = v607;
                sub_1A967C4DC(v604, (&v610 + 8));
              }

              else
              {
                if (v130 <= v131 + 1)
                {
                  v133 = v131 + 1;
                }

                else
                {
                  v133 = v130;
                }

                v134 = v133 - 1;
                while (1)
                {
                  v132 = v131 + 1;
                  if (__OFADD__(v131, 1))
                  {
                    goto LABEL_307;
                  }

                  if (v132 >= v130)
                  {
                    break;
                  }

                  v129 = *(v126 + v132 + 8);
                  ++v131;
                  if (v129)
                  {
                    v131 = v132;
                    goto LABEL_43;
                  }
                }

                v129 = 0;
                v612 = 0;
                v611 = 0u;
                v609 = 0u;
                v610 = 0u;
                v131 = v134;
                v608 = 0u;
              }

              v615[0] = v610;
              v615[1] = v611;
              v616 = v612;
              v613 = v608;
              v614 = v609;
              if (!*(&v609 + 1))
              {

                if (qword_1EB3ABCB0 != -1)
                {
                  swift_once();
                }

                v185 = sub_1A99764A0();
                __swift_project_value_buffer(v185, qword_1EB3ABCC0);
                v186 = v601;
                swift_unknownObjectRetain();

                v187 = sub_1A9976480();
                v188 = sub_1A9976F60();
                v189 = os_log_type_enabled(v187, v188);
                v57 = v586;
                v59 = v587;
                if (v189)
                {
                  v582 = v187;
                  v190 = swift_slowAlloc();
                  v191 = swift_slowAlloc();
                  *&v613 = v191;
                  *v190 = v555;
                  v192 = [v186 identifier];
                  swift_unknownObjectRelease();

                  if (!v192)
                  {
                    goto LABEL_320;
                  }

                  v193 = sub_1A9976820();
                  v195 = v194;

                  v196 = sub_1A97AF148(v193, v195, &v613);

                  *(v190 + 4) = v196;
                  *(v190 + 12) = 2080;
                  v197 = sub_1A9976710();
                  v199 = v198;

                  v200 = sub_1A97AF148(v197, v199, &v613);

                  *(v190 + 14) = v200;
                  v201 = v582;
                  _os_log_impl(&dword_1A9662000, v582, v188, "ExtensionsCache: Removing extension %s because it matches global exclusion %s", v190, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1AC58D2C0](v191, -1, -1);
                  MEMORY[0x1AC58D2C0](v190, -1, -1);
                  swift_unknownObjectRelease();

LABEL_82:
                  v65 = v602;
                  (*v591)(v583, v602);
                  v52 = v585;
                  v87 = v593;
                  v59 = v587;
                  v86 = &off_1E7892000;
                }

                else
                {

                  swift_unknownObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  (*v591)(v583, v65);
                  v52 = v585;
                  v87 = v593;
                }

LABEL_134:
                v88 = v570;
                goto LABEL_4;
              }

              sub_1A967C4DC((v615 + 8), &v605);
              v608 = v613;
              v609 = v614;
              *&v610 = *&v615[0];
              if (swift_dynamicCast())
              {
                break;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v605);
            }

            v137 = v604[0];
            if (v137 == sub_1A9976820() && *(&v137 + 1) == v138)
            {

              goto LABEL_50;
            }

            v139 = sub_1A99777E0();

            if ((v139 & 1) == 0)
            {
              break;
            }

LABEL_50:
            __swift_destroy_boxed_opaque_existential_0Tm(&v605);

            v65 = v602;
            v86 = &off_1E7892000;
          }

          v140 = v571;
          v141 = sub_1A98D9094(v601, v137, *(&v137 + 1), &v605);
          v571 = v140;
          if (v140)
          {
            break;
          }

          v142 = v141;
          __swift_destroy_boxed_opaque_existential_0Tm(&v605);

          v65 = v602;
          if ((v142 & 1) == 0)
          {

            swift_bridgeObjectRelease_n();
            v169 = v571;
            v123 = v603;
            v57 = v586;
            v59 = v587;
            goto LABEL_62;
          }

          v86 = &off_1E7892000;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v605);

        v65 = v602;
        if (qword_1EB3ABCB0 != -1)
        {
          swift_once();
        }

        v143 = sub_1A99764A0();
        __swift_project_value_buffer(v143, qword_1EB3ABCC0);
        v144 = v601;
        swift_unknownObjectRetain();

        v145 = v571;
        v146 = v571;
        v147 = sub_1A9976480();
        v148 = sub_1A9976F70();
        v149 = os_log_type_enabled(v147, v148);
        v123 = v603;
        v57 = v586;
        v59 = v587;
        if (v149)
        {
          v150 = v144;
          v151 = v148;
          v540 = v147;
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v541 = swift_slowAlloc();
          *&v613 = v541;
          *v152 = v542;
          v154 = [v150 identifier];
          if (!v154)
          {
            goto LABEL_326;
          }

          v155 = v154;
          v156 = v571;

          swift_unknownObjectRelease();

          v157 = sub_1A9976820();
          v159 = v158;

          v160 = sub_1A97AF148(v157, v159, &v613);

          *(v152 + 4) = v160;
          *(v152 + 12) = 2080;
          v161 = sub_1A9976710();
          v163 = v162;

          v164 = sub_1A97AF148(v161, v163, &v613);

          *(v152 + 14) = v164;
          *(v152 + 22) = 2112;
          v165 = v156;
          v166 = _swift_stdlib_bridgeErrorToNSError();
          *(v152 + 24) = v166;
          *v153 = v166;
          v167 = v540;
          _os_log_impl(&dword_1A9662000, v540, v151, "ExtensionsCache: Could not determine if extension %s matched global exclusion %s: %@", v152, 0x20u);
          sub_1A97B06FC(v153, &unk_1EB3B2A50, &unk_1A9999420);
          MEMORY[0x1AC58D2C0](v153, -1, -1);
          v168 = v541;
          swift_arrayDestroy();
          MEMORY[0x1AC58D2C0](v168, -1, -1);
          MEMORY[0x1AC58D2C0](v152, -1, -1);

          v169 = 0;
          v65 = v602;
          v59 = v587;
          v86 = &off_1E7892000;
          v123 = v603;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease();

          v169 = 0;
LABEL_62:
          v86 = &off_1E7892000;
        }

        v571 = v169;
        v124 = v579;
        v121 = v582;
        v125 = v550;
      }

      while (v579 != v572);
LABEL_84:

LABEL_85:
      v202 = v621;
      v203 = *(v621 + 64);
      v582 = (v621 + 64);
      v204 = 1 << *(v621 + 32);
      if (v204 < 64)
      {
        v205 = ~(-1 << v204);
      }

      else
      {
        v205 = -1;
      }

      v206 = v205 & v203;
      v572 = ((v204 + 63) >> 6);
      swift_unknownObjectRetain();
      v579 = v202;

      v207 = 0;
      while (2)
      {
        if (v206)
        {
          v208 = v207;
          goto LABEL_101;
        }

        if (v572 <= v207 + 1)
        {
          v209 = (v207 + 1);
        }

        else
        {
          v209 = v572;
        }

        v210 = &v209[-1].isa + 7;
        do
        {
          v208 = v207 + 1;
          if (__OFADD__(v207, 1))
          {
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

          if (v208 >= v572)
          {
            v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
            (*(*(v234 - 8) + 56))(v57, 1, 1, v234);
            v206 = 0;
            v207 = v210;
            goto LABEL_102;
          }

          v206 = v582[v208].isa;
          ++v207;
        }

        while (!v206);
        v207 = v208;
LABEL_101:
        v211 = __clz(__rbit64(v206));
        v206 &= v206 - 1;
        v212 = v211 | (v208 << 6);
        v213 = v579;
        v214 = v600;
        v215 = v596;
        (*(v600 + 16))(v596, v579[6].isa + *(v600 + 72) * v212, v123);
        v216 = v597;
        (v589)(v597, v213[7].isa + v212 * v588, v65);
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
        v218 = *(v217 + 48);
        v219 = *(v214 + 32);
        v220 = v586;
        v219(v586, v215, v123);
        v221 = &v220[v218];
        v65 = v602;
        v222 = v216;
        v57 = v220;
        (*v594)(v221, v222, v602);
        (*(*(v217 - 8) + 56))(v220, 0, 1, v217);
        v59 = v587;
        v86 = &off_1E7892000;
LABEL_102:
        sub_1A97D8380(v57, v59, &unk_1EB3B4F98, &unk_1A99A44A8);
        v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
        if ((*(*(v223 - 8) + 48))(v59, 1, v223) == 1)
        {

          v52 = v585;
          v87 = v593;
          v88 = v570;
          goto LABEL_123;
        }

        v224 = *(v223 + 48);
        v123 = v603;
        (*v595)(v599, v59, v603);
        (*v594)(v598, &v59[v224], v65);
        swift_unknownObjectRetain();
        v225 = sub_1A9976350();
        if (!v225 || (v226 = v225, v227 = [v225 _plugIn], v226, !v227))
        {
          swift_unknownObjectRelease();
LABEL_90:
          (*v591)(v598, v65);
          (*v580)(v599, v123);
          continue;
        }

        break;
      }

      v228 = v601;
      v229 = [v601 identifier];
      if (v229)
      {
        v230 = v229;
        v231 = sub_1A9976820();
        v233 = v232;
      }

      else
      {
        v231 = 0;
        v233 = 0;
      }

      v235 = [v227 identifier];
      if (!v235)
      {
        if (!v233)
        {
          goto LABEL_141;
        }

LABEL_117:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_121:
        v123 = v603;
        v65 = v602;
        v57 = v586;
        v59 = v587;
        v86 = &off_1E7892000;
        goto LABEL_90;
      }

      v236 = v235;
      v237 = sub_1A9976820();
      v239 = v238;

      if (!v233)
      {
        if (!v239)
        {
          goto LABEL_141;
        }

LABEL_120:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_121;
      }

      if (!v239)
      {
        goto LABEL_117;
      }

      if (v231 == v237 && v233 == v239)
      {

        goto LABEL_141;
      }

      v240 = sub_1A99777E0();

      if ((v240 & 1) == 0)
      {
        goto LABEL_120;
      }

LABEL_141:
      v268 = [v228 version];
      if (!v268)
      {
        goto LABEL_322;
      }

      v269 = v268;
      v270 = sub_1A9976820();
      v272 = v271;

      *&v613 = v270;
      *(&v613 + 1) = v272;
      v582 = v227;
      v273 = [v227 version];
      v52 = v585;
      v87 = v593;
      v88 = v570;
      if (!v273)
      {
        goto LABEL_321;
      }

      v274 = v273;
      v275 = sub_1A9976820();
      v277 = v276;

      *&v608 = v275;
      *(&v608 + 1) = v277;
      v278 = sub_1A99762E0();
      v279 = v558;
      (*(*(v278 - 8) + 56))(v558, 1, 1, v278);
      sub_1A97F0528();
      v280 = sub_1A99771A0();
      sub_1A97B06FC(v279, &unk_1EB3B4F80, &qword_1A99A4488);

      if (v280)
      {
        v65 = v602;
        v57 = v586;
        v86 = &off_1E7892000;
        if (v280 == 1)
        {
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v281 = sub_1A99764A0();
          __swift_project_value_buffer(v281, qword_1EB3ABCC0);
          v282 = v582;
          swift_unknownObjectRetain();
          v283 = sub_1A9976480();
          v284 = sub_1A9976F60();
          if (os_log_type_enabled(v283, v284))
          {
            LODWORD(v550) = v284;
            v572 = v283;
            v285 = swift_slowAlloc();
            v286 = swift_slowAlloc();
            *&v613 = v286;
            *v285 = v565;
            v287 = [v282 identifier];
            swift_unknownObjectRelease();
            if (!v287)
            {
              goto LABEL_325;
            }

            v288 = sub_1A9976820();
            v290 = v289;

            v291 = sub_1A97AF148(v288, v290, &v613);

            *(v285 + 4) = v291;
            v292 = v550;
            v293 = v572;
            v294 = v572;
            v295 = "ExtensionsCache: Removing extension %s because another plugin has newer version";
            goto LABEL_156;
          }

LABEL_162:
          swift_unknownObjectRelease();

          goto LABEL_163;
        }

LABEL_157:
        swift_unknownObjectRelease();
        if (qword_1EB3ABCB0 != -1)
        {
          swift_once();
        }

        v305 = sub_1A99764A0();
        __swift_project_value_buffer(v305, qword_1EB3ABCC0);
        v306 = v582;
        swift_unknownObjectRetain();
        v307 = sub_1A9976480();
        v308 = sub_1A9976F60();
        if (os_log_type_enabled(v307, v308))
        {
          LODWORD(v572) = v308;
          v309 = v307;
          v310 = swift_slowAlloc();
          v311 = swift_slowAlloc();
          *&v613 = v311;
          *v310 = v565;
          v312 = [v306 identifier];
          swift_unknownObjectRelease();
          if (!v312)
          {
            goto LABEL_324;
          }

          v313 = sub_1A9976820();
          v315 = v314;

          v316 = sub_1A97AF148(v313, v315, &v613);

          *(v310 + 4) = v316;
          _os_log_impl(&dword_1A9662000, v309, v572, "ExtensionsCache: Removing extension %s because another plugin has precedence", v310, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v311);
          MEMORY[0x1AC58D2C0](v311, -1, -1);
          MEMORY[0x1AC58D2C0](v310, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v317 = *v591;
          v65 = v602;
          (*v591)(v598, v602);
          (*v580)(v599, v603);
          v57 = v586;
          v59 = v587;
          v86 = &off_1E7892000;
        }

        else
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();

          v317 = *v591;
          (*v591)(v598, v65);
          (*v580)(v599, v603);
          v59 = v587;
        }

        v317(v583, v65);
        swift_unknownObjectRelease();
        v87 = v593;
        v242 = v566;
LABEL_166:
        (*v563)(v242, 1, 1, v603);
LABEL_167:
        sub_1A97B06FC(v242, &unk_1EB3B29B0, &qword_1A9990640);
        goto LABEL_4;
      }

      v296 = sub_1A98D505C(v601, v582);
      v65 = v602;
      v57 = v586;
      v86 = &off_1E7892000;
      if ((v296 & 1) == 0)
      {
        goto LABEL_157;
      }

      if (qword_1EB3ABCB0 != -1)
      {
        swift_once();
      }

      v297 = sub_1A99764A0();
      __swift_project_value_buffer(v297, qword_1EB3ABCC0);
      v298 = v582;
      swift_unknownObjectRetain();
      v283 = sub_1A9976480();
      v299 = sub_1A9976F60();
      if (!os_log_type_enabled(v283, v299))
      {
        goto LABEL_162;
      }

      LODWORD(v550) = v299;
      v572 = v283;
      v285 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      *&v613 = v286;
      *v285 = v565;
      v300 = [v298 identifier];
      swift_unknownObjectRelease();
      if (!v300)
      {
        goto LABEL_327;
      }

      v301 = sub_1A9976820();
      v303 = v302;

      v304 = sub_1A97AF148(v301, v303, &v613);

      *(v285 + 4) = v304;
      v292 = v550;
      v293 = v572;
      v294 = v572;
      v295 = "ExtensionsCache: Removing extension %s because another plugin is ordered same but has precedence";
LABEL_156:
      _os_log_impl(&dword_1A9662000, v294, v292, v295, v285, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v286);
      MEMORY[0x1AC58D2C0](v286, -1, -1);
      MEMORY[0x1AC58D2C0](v285, -1, -1);

      v65 = v602;
      v57 = v586;
LABEL_163:
      v318 = v553;
      v319 = v599;
      sub_1A98D58C0(v599, v553);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1A97B06FC(v318, &qword_1EB3B4F90, &qword_1A99A44A0);
      (*v591)(v598, v65);
      (*v580)(v319, v603);
      v59 = v587;
      v86 = &off_1E7892000;
LABEL_123:
      v617 = &unk_1F1DA42A0;
      v241 = swift_dynamicCastObjCProtocolConditional();
      v242 = v566;
      if (!v241)
      {
        swift_unknownObjectRelease_n();
        (*v591)(v583, v65);
        goto LABEL_166;
      }

      v243 = [v241 uuid];
      if (v243)
      {
        v244 = v561;
        v245 = v243;
        sub_1A9976290();

        v246 = v244;
        v247 = 0;
      }

      else
      {
        v247 = 1;
        v246 = v561;
      }

      v259 = v603;
      (*v563)(v246, v247, 1, v603);
      v260 = v246;
      v242 = v566;
      sub_1A97D8380(v260, v566, &unk_1EB3B29B0, &qword_1A9990640);
      if ((*v556)(v242, 1, v259) == 1)
      {
        (*v591)(v583, v65);
        swift_unknownObjectRelease_n();
        v86 = &off_1E7892000;
        goto LABEL_167;
      }

      v261 = v557;
      (*v595)(v557, v242, v259);
      v262 = v597;
      v263 = v583;
      (v589)(v597, v583, v65);
      v264 = v621;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v613 = v264;
      v266 = v262;
      v87 = v593;
      sub_1A97E37AC(v266, v261, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease_n();
      v621 = v613;
      (*v580)(v261, v259);
      v267 = v263;
      v88 = v570;
      (*v591)(v267, v65);
      v86 = &off_1E7892000;
LABEL_4:
      v83 = (v581 + 1);
      if (v581 + 1 == v88)
      {
        v80 = v621;
        goto LABEL_170;
      }
    }
  }

  v87 = v593;
LABEL_170:
  v582 = sub_1A97BF98C(MEMORY[0x1E69E7CC0]);
  v320 = (v80 + 64);
  v321 = 1 << *(v80 + 32);
  v322 = -1;
  if (v321 < 64)
  {
    v322 = ~(-1 << v321);
  }

  v599 = v322 & *(v80 + 64);
  v590 = v600 + 16;
  v589 = (v584 + 16);
  v587 = (v321 + 63) >> 6;
  v588 = (v600 + 32);
  v601 = (v584 + 32);
  v586 = *MEMORY[0x1E69C4AD0];
  v595 = (v584 + 8);
  v323 = (v600 + 8);
  v581 = (v600 + 40);
  v583 = (v600 + 56);
  v591 = v80;

  v324 = 0;
  v598 = (v80 + 64);
  v325 = v323;
  v594 = v323;
LABEL_173:
  for (i = v587; ; i = v587)
  {
    v328 = v599;
    if (v599)
    {
      v329 = v324;
LABEL_187:
      v599 = (v328 - 1) & v328;
      v332 = __clz(__rbit64(v328)) | (v329 << 6);
      v333 = v591;
      v334 = v600;
      (*(v600 + 16))(v596, *(v591 + 48) + *(v600 + 72) * v332, v603);
      v335 = v584;
      v336 = v597;
      v337 = v602;
      (*(v584 + 16))(v597, *(v333 + 56) + *(v584 + 72) * v332, v602);
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
      v339 = *(v338 + 48);
      v340 = v337;
      v52 = v585;
      (*(v334 + 32))();
      v341 = v340;
      (*(v335 + 32))(&v52[v339], v336, v340);
      (*(*(v338 - 8) + 56))(v52, 0, 1, v338);
      v87 = v593;
      v325 = v594;
    }

    else
    {
      v330 = i <= v324 + 1 ? v324 + 1 : i;
      v331 = v330 - 1;
      while (1)
      {
        v329 = v324 + 1;
        if (__OFADD__(v324, 1))
        {
          goto LABEL_308;
        }

        if (v329 >= i)
        {
          break;
        }

        v328 = *&v320[8 * v329];
        ++v324;
        if (v328)
        {
          v324 = v329;
          goto LABEL_187;
        }
      }

      v341 = v65;
      v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
      (*(*(v356 - 8) + 56))(v52, 1, 1, v356);
      v599 = 0;
      v324 = v331;
    }

    v327 = v52;
    sub_1A97D8380(v52, v87, &unk_1EB3B4F98, &unk_1A99A44A8);
    v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
    v343 = *(v342 - 8);
    v344 = *(v343 + 48);
    if (v344(v87, 1, v342) == 1)
    {
      break;
    }

    (*v601)(v592, v87 + *(v342 + 48), v341);
    v345 = sub_1A9976350();
    v320 = v598;
    if (!v345)
    {
      goto LABEL_175;
    }

    v346 = v345;
    v347 = [v345 _plugIn];

    if (!v347)
    {
      goto LABEL_175;
    }

    v618 = &unk_1F1DA42A0;
    v348 = swift_dynamicCastObjCProtocolConditional();
    if (!v348)
    {
      swift_unknownObjectRelease();
      v327 = v585;
LABEL_175:
      (*v595)(v592, v341);
      v87 = v593;
      v52 = v327;
      v65 = v341;
      goto LABEL_176;
    }

    v349 = v348;
    v350 = [v348 entitlements];
    if (v350)
    {
      v351 = v350;
      v352 = sub_1A9976700();

      *&v604[0] = sub_1A9976820();
      *(&v604[0] + 1) = v353;
      sub_1A9977250();
      if (*(v352 + 16) && (v354 = sub_1A97BCF30(&v613), (v355 & 1) != 0))
      {
        sub_1A97AF7EC(*(v352 + 56) + 32 * v354, &v605);
        sub_1A97C108C(&v613);

        v65 = v602;
        if (*(&v606 + 1))
        {
          sub_1A967C4DC(&v605, &v608);
          sub_1A97AF7EC(&v608, &v613);
          if (swift_dynamicCast())
          {
            v358 = v605;
            v359 = [v349 uuid];
            if (v359)
            {
              v360 = v548;
              v361 = v359;
              sub_1A9976290();

              v362 = *v588;
              (*v588)(v549, v360, v603);
              v363 = v582;
              v364 = swift_isUniquelyReferenced_nonNull_native();
              *&v613 = v363;
              v365 = sub_1A97BCEB8(v358, *(&v358 + 1));
              v367 = v363[2].isa;
              v368 = (v366 & 1) == 0;
              v369 = __OFADD__(v367, v368);
              v370 = v367 + v368;
              if (v369)
              {
                goto LABEL_314;
              }

              v371 = v366;
              if (v363[3].isa >= v370)
              {
                if ((v364 & 1) == 0)
                {
                  v430 = v365;
                  sub_1A982807C();
                  v365 = v430;
                }

                v52 = v585;
              }

              else
              {
                sub_1A982616C(v370, v364);
                v365 = sub_1A97BCEB8(v358, *(&v358 + 1));
                if ((v371 & 1) != (v372 & 1))
                {
                  goto LABEL_332;
                }

                v52 = v585;
              }

              if (v371)
              {
                v425 = v365;

                v582 = v613;
                v426 = v595;
                v415 = v603;
                (*(v600 + 40))(*(v613 + 56) + *(v600 + 72) * v425, v549, v603);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v608);
                v65 = v602;
                (*v426)(v592, v602);
                goto LABEL_249;
              }

              v427 = v613;
              *(v613 + 8 * (v365 >> 6) + 64) |= 1 << v365;
              *(v427[6].isa + v365) = v358;
              v362(v427[7].isa + *(v600 + 72) * v365, v549, v603);
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0Tm(&v608);
              v65 = v602;
              (*v595)(v592, v602);
              v428 = v427[2].isa;
              v369 = __OFADD__(v428, 1);
              v429 = (v428 + 1);
              if (v369)
              {
                goto LABEL_316;
              }

              v582 = v427;
              v427[2].isa = v429;
LABEL_246:
              v87 = v593;
              v415 = v603;
            }

            else
            {
              v416 = v582;
              v417 = sub_1A97BCEB8(v358, *(&v358 + 1));
              v419 = v418;

              if (v419)
              {
                v420 = swift_isUniquelyReferenced_nonNull_native();
                *&v613 = v416;
                v52 = v585;
                v421 = v416;
                if (!v420)
                {
                  sub_1A982807C();
                  v421 = v613;
                }

                v422 = *(v421[6].isa + 2 * v417 + 1);

                v423 = v547;
                v415 = v603;
                (*(v600 + 32))(v547, v421[7].isa + *(v600 + 72) * v417, v603);
                v582 = v421;
                sub_1A98D6350(v417, v421);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v608);
                v65 = v602;
                (*v595)(v592, v602);
                v424 = 0;
              }

              else
              {
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v608);
                v65 = v602;
                (*v595)(v592, v602);
                v424 = 1;
                v423 = v547;
                v52 = v585;
                v415 = v603;
              }

              (*v583)(v423, v424, 1, v415);
              sub_1A97B06FC(v423, &unk_1EB3B29B0, &qword_1A9990640);
LABEL_249:
              v87 = v593;
            }

            v325 = v594;
            (*v594)(v87, v415);
            goto LABEL_173;
          }

          sub_1A97AF7EC(&v608, &v613);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
          if ((swift_dynamicCast() & 1) == 0)
          {
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0Tm(&v608);
            (*v595)(v592, v65);
            v52 = v585;
            goto LABEL_246;
          }

          v373 = v605;
          v578 = *(v605 + 16);
          if (!v578)
          {
LABEL_234:
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_0Tm(&v608);
            (*v595)(v592, v65);
            v415 = v603;
            v52 = v585;
            goto LABEL_249;
          }

          v374 = 0;
          v375 = (v605 + 40);
          *&v577 = v605;
          while (2)
          {
            if (v374 >= *(v373 + 16))
            {
              goto LABEL_311;
            }

            v580 = v374;
            v379 = v375[-1].isa;
            v378 = v375->isa;

            v380 = [v349 uuid];
            if (v380)
            {
              v579 = v375;
              v381 = v552;
              v382 = v379;
              v383 = v378;
              v384 = v380;
              sub_1A9976290();

              v573 = *v588;
              v573(v554, v381, v603);
              v385 = v582;
              v386 = swift_isUniquelyReferenced_nonNull_native();
              *&v613 = v385;
              v387 = v382;
              v388 = v382;
              v389 = v383;
              v391 = sub_1A97BCEB8(v388, v383);
              v392 = v385[2].isa;
              v393 = (v390 & 1) == 0;
              v394 = v392 + v393;
              if (__OFADD__(v392, v393))
              {
                goto LABEL_312;
              }

              if (v385[3].isa >= v394)
              {
                v395 = v387;
                if (v386)
                {
                  v65 = v602;
                  if ((v390 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  v413 = v391;
                  v414 = v390;
                  sub_1A982807C();
                  v391 = v413;
                  v65 = v602;
                  if ((v414 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }
              }

              else
              {
                LODWORD(v582) = v390;
                sub_1A982616C(v394, v386);
                v395 = v387;
                v396 = sub_1A97BCEB8(v387, v389);
                if ((v582 & 1) != (v397 & 1))
                {
                  goto LABEL_332;
                }

                v391 = v396;
                v65 = v602;
                if ((v582 & 1) == 0)
                {
LABEL_227:
                  v409 = v613;
                  *(v613 + 8 * (v391 >> 6) + 64) |= 1 << v391;
                  v410 = (v409[6].isa + 16 * v391);
                  *v410 = v395;
                  v410[1] = v389;
                  v573(v409[7].isa + *(v600 + 72) * v391, v554, v603);
                  v411 = v409[2].isa;
                  v369 = __OFADD__(v411, 1);
                  v412 = (v411 + 1);
                  if (v369)
                  {
                    goto LABEL_313;
                  }

                  v582 = v409;
                  v409[2].isa = v412;
LABEL_212:
                  v375 = v579;
                  v377 = v580;
LABEL_213:
                  v373 = v577;
                  v374 = (v377 + 1);
                  v375 += 2;
                  if (v578 == v374)
                  {
                    goto LABEL_234;
                  }

                  continue;
                }
              }

              v376 = v391;

              v582 = v613;
              (*(v600 + 40))(*(v613 + 56) + *(v600 + 72) * v376, v554, v603);
              goto LABEL_212;
            }

            break;
          }

          v398 = v378;
          v399 = v582;
          v400 = sub_1A97BCEB8(v379, v398);
          v402 = v401;

          if (v402)
          {
            v403 = swift_isUniquelyReferenced_nonNull_native();
            *&v613 = v399;
            v404 = v399;
            if (!v403)
            {
              sub_1A982807C();
              v404 = v613;
            }

            v405 = *(v404[6].isa + 2 * v400 + 1);

            v406 = v551;
            v407 = v603;
            (*(v600 + 32))(v551, v404[7].isa + *(v600 + 72) * v400, v603);
            v582 = v404;
            sub_1A98D6350(v400, v404);
            v408 = 0;
            v65 = v602;
          }

          else
          {
            v408 = 1;
            v407 = v603;
            v65 = v602;
            v406 = v551;
          }

          v377 = v580;
          (*v583)(v406, v408, 1, v407);
          sub_1A97B06FC(v406, &unk_1EB3B29B0, &qword_1A9990640);
          goto LABEL_213;
        }
      }

      else
      {

        sub_1A97C108C(&v613);
        v605 = 0u;
        v606 = 0u;
        v65 = v602;
      }

      (*v595)(v592, v65);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v65 = v341;
      (*v595)(v592, v341);
      v605 = 0u;
      v606 = 0u;
    }

    sub_1A97B06FC(&v605, &qword_1EB3B0BA0, &unk_1A99923D0);
    v52 = v585;
    v87 = v593;
LABEL_176:
    (*v325)(v87, v603);
  }

  v593 = v344;
  v585 = (v343 + 48);
  v586 = v342;
  v431 = v591;

  if (!v582[2].isa)
  {
LABEL_305:

    v538 = sub_1A98D4C64(v537);

    return v538;
  }

  v432 = 1 << *(v431 + 32);
  v433 = -1;
  if (v432 < 64)
  {
    v433 = ~(-1 << v432);
  }

  v434 = v433 & *(v431 + 64);
  v435 = (v432 + 63) >> 6;
  v592 = (v343 + 56);
  v578 = (v584 + 48);
  v579 = (v584 + 56);

  v436 = 0;
  *&v437 = 136315650;
  v577 = v437;
  v438 = v574;
  v439 = v586;
  v440 = v598;
  v587 = v435;
  while (2)
  {
    if (v434)
    {
      v441 = v436;
LABEL_267:
      v599 = (v434 - 1) & v434;
      v444 = __clz(__rbit64(v434)) | (v441 << 6);
      v445 = v591;
      v446 = v600;
      v447 = v596;
      v448 = v603;
      (*(v600 + 16))(v596, *(v591 + 48) + *(v600 + 72) * v444, v603);
      v449 = *(v445 + 56);
      v450 = v584;
      v451 = v597;
      v452 = v602;
      (*(v584 + 16))(v597, v449 + *(v584 + 72) * v444, v602);
      v439 = v586;
      v453 = *(v586 + 12);
      v454 = *(v446 + 32);
      v455 = v576;
      v454(v576, v447, v448);
      (*(v450 + 32))(v455 + v453, v451, v452);
      v456 = 0;
      v438 = v574;
LABEL_268:
      (*v592)(v455, v456, 1, v439);
      v457 = v575;
      sub_1A97D8380(v455, v575, &unk_1EB3B4F98, &unk_1A99A44A8);
      if (v593(v457, 1, v439) == 1)
      {

        goto LABEL_305;
      }

      v458 = *(v439 + 12);
      v459 = *v594;
      (*v594)(v457, v603);
      v460 = v457 + v458;
      v461 = v602;
      (*v601)(v438, v460, v602);
      v462 = sub_1A9976350();
      if (v462)
      {
        v463 = v462;
        v464 = [v462 _plugIn];
        v440 = v598;
        if (!v464)
        {
          (*v595)(v438, v461);

          goto LABEL_256;
        }

        v465 = v464;
        v620 = &unk_1F1DA42A0;
        v466 = swift_dynamicCastObjCProtocolConditional();
        if (!v466)
        {

          swift_unknownObjectRelease();
          (*v595)(v438, v461);
          goto LABEL_256;
        }

        v583 = v465;
        v580 = v466;
        v467 = [v466 identifier];
        if (!v467)
        {
          goto LABEL_315;
        }

        v468 = v467;
        v469 = sub_1A9976820();
        v471 = v470;

        if (v582[2].isa)
        {
          v581 = v459;
          v472 = v582;
          v473 = sub_1A97BCEB8(v469, v471);
          v475 = v474;

          if (v475)
          {
            v476 = v472[7].isa + *(v600 + 72) * v473;
            v477 = v567;
            (*(v600 + 16))(v567, v476, v603);
            v478 = v591;
            v440 = v598;
            if (*(v591 + 16))
            {
              v479 = sub_1A97BCE34(v477);
              v480 = v602;
              if (v481)
              {
                v482 = *(v478 + 56) + *(v584 + 72) * v479;
                v483 = v564;
                (*(v584 + 16))(v564, v482, v602);
                v484 = 0;
              }

              else
              {
                v484 = 1;
                v483 = v564;
              }
            }

            else
            {
              v484 = 1;
              v483 = v564;
              v480 = v602;
            }

            v485 = v581;
            (v579->isa)(v483, v484, 1, v480);
            if (!(*v578)(v483, 1, v480))
            {
              v486 = v560;
              (*v589)(v560, v483, v480);
              sub_1A97B06FC(v483, &qword_1EB3B4F90, &qword_1A99A44A0);
              v487 = sub_1A9976350();
              v488 = v480;
              v489 = *v595;
              (*v595)(v486, v488);
              if (v487)
              {
                v490 = [v487 _plugIn];

                v491 = v581;
                if (v490)
                {
                  v492 = v489;
                  v619 = &unk_1F1DA42A0;
                  v493 = swift_dynamicCastObjCProtocolConditional();
                  v494 = v567;
                  v495 = v490;
                  v440 = v598;
                  v439 = v586;
                  if (!v493)
                  {
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    v581(v494, v603);
                    (v492)(v438, v602);
                    goto LABEL_256;
                  }

                  v572 = v495;
                  v573 = v493;
                  v496 = [v463 identifier];
                  if (!v496)
                  {
                    goto LABEL_328;
                  }

                  v497 = v496;
                  v570 = sub_1A9976820();
                  v499 = v498;

                  swift_unknownObjectRetain();
                  v500 = v562;
                  v501 = swift_isUniquelyReferenced_nonNull_native();
                  *&v613 = v500;
                  sub_1A97E3630(v573, v570, v499, v501);

                  v562 = v613;
                  v570 = v492;
                  if (qword_1EB3ABCB0 != -1)
                  {
                    swift_once();
                  }

                  v502 = sub_1A99764A0();
                  __swift_project_value_buffer(v502, qword_1EB3ABCC0);
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v503 = v463;
                  v504 = sub_1A9976480();
                  v505 = sub_1A9976F60();
                  v506 = os_log_type_enabled(v504, v505);
                  v440 = v598;
                  if (!v506)
                  {
                    swift_unknownObjectRelease_n();
                    swift_unknownObjectRelease_n();

                    v581(v567, v603);
                    (v570)(v438, v602);
                    goto LABEL_256;
                  }

                  LODWORD(v565) = v505;
                  v566 = v504;
                  v568 = v503;
                  v507 = swift_slowAlloc();
                  v563 = swift_slowAlloc();
                  *&v613 = v563;
                  v569 = v507;
                  *v507 = v577;
                  v508 = [v573 uuid];
                  swift_unknownObjectRelease();
                  if (!v508)
                  {
                    goto LABEL_329;
                  }

                  v509 = v544;
                  sub_1A9976290();

                  v510 = v543;
                  v511 = v603;
                  v573 = *v588;
                  v573(v543, v509, v603);
                  v561 = sub_1A97C10E0(&qword_1EB3AC890);
                  v512 = sub_1A9977730();
                  v514 = v513;
                  v515 = v511;
                  v516 = v581;
                  v581(v510, v515);
                  v517 = sub_1A97AF148(v512, v514, &v613);

                  v518 = v569;
                  *(v569 + 4) = v517;
                  *(v518 + 6) = 2080;
                  v519 = [v580 uuid];
                  swift_unknownObjectRelease();
                  if (!v519)
                  {
                    goto LABEL_330;
                  }

                  v520 = v546;
                  sub_1A9976290();

                  v521 = v545;
                  v522 = v603;
                  v573(v545, v520, v603);
                  v523 = sub_1A9977730();
                  v525 = v524;
                  v516(v521, v522);
                  v526 = sub_1A97AF148(v523, v525, &v613);

                  v528 = v568;
                  v527 = v569;
                  *(v569 + 14) = v526;
                  *(v527 + 11) = 2080;
                  v529 = [v528 identifier];

                  if (!v529)
                  {
                    goto LABEL_331;
                  }

                  v530 = sub_1A9976820();
                  v532 = v531;

                  v533 = sub_1A97AF148(v530, v532, &v613);

                  v534 = v569;
                  v569[3] = v533;
                  v535 = v566;
                  _os_log_impl(&dword_1A9662000, v566, v565, "ExtensionsCache: Plugin %s supersedes %s for extension %s", v534, 0x20u);
                  v536 = v563;
                  swift_arrayDestroy();
                  MEMORY[0x1AC58D2C0](v536, -1, -1);
                  MEMORY[0x1AC58D2C0](v534, -1, -1);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v516(v567, v603);
                  (v570)(v438, v602);
                }

                else
                {
                  swift_unknownObjectRelease();

                  v491(v567, v603);
                  v489(v438, v602);
                }
              }

              else
              {
                swift_unknownObjectRelease();

                v581(v567, v603);
                v489(v438, v488);
              }

              v440 = v598;
              v439 = v586;
              goto LABEL_256;
            }

            swift_unknownObjectRelease();

            v485(v567, v603);
            (*v595)(v438, v480);
            sub_1A97B06FC(v483, &qword_1EB3B4F90, &qword_1A99A44A0);
LABEL_256:
            v435 = v587;
            v434 = v599;
            continue;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v440 = v598;

        (*v595)(v438, v602);
        goto LABEL_256;
      }

      (*v595)(v438, v461);
      v440 = v598;
      goto LABEL_256;
    }

    break;
  }

  if (v435 <= v436 + 1)
  {
    v442 = v436 + 1;
  }

  else
  {
    v442 = v435;
  }

  v443 = v442 - 1;
  while (1)
  {
    v441 = v436 + 1;
    if (__OFADD__(v436, 1))
    {
      break;
    }

    if (v441 >= v435)
    {
      v599 = 0;
      v456 = 1;
      v436 = v443;
      v455 = v576;
      goto LABEL_268;
    }

    v434 = *&v440[8 * v441];
    ++v436;
    if (v434)
    {
      v436 = v441;
      goto LABEL_267;
    }
  }

LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:

  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:

  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  swift_unknownObjectRelease();

  __break(1u);
LABEL_330:

  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  result = sub_1A9977880();
  __break(1u);
  return result;
}

uint64_t sub_1A98DE160(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a2 + 64;
    v4 = 1 << *(a2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;
    v22 = *MEMORY[0x1E69C4B18];

    v9 = 0;
    v35 = v2;
    while (1)
    {
      while (1)
      {
        if (!v6)
        {
          if (v7 <= v9 + 1)
          {
            v11 = v9 + 1;
          }

          else
          {
            v11 = v7;
          }

          v12 = v11 - 1;
          while (1)
          {
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v10 >= v7)
            {
              v6 = 0;
              v30 = 0;
              v28 = 0u;
              v29 = 0u;
              v9 = v12;
              v26 = 0u;
              v27 = 0u;
              goto LABEL_17;
            }

            v6 = *(v3 + 8 * v10);
            ++v9;
            if (v6)
            {
              v9 = v10;
              goto LABEL_16;
            }
          }

          __break(1u);
          return result;
        }

        v10 = v9;
LABEL_16:
        v13 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v14 = v13 | (v10 << 6);
        sub_1A97C1030(*(v2 + 48) + 40 * v14, v24);
        sub_1A97AF7EC(*(v2 + 56) + 32 * v14, v23);
        v26 = v24[0];
        v27 = v24[1];
        *&v28 = v25;
        sub_1A967C4DC(v23, (&v28 + 8));
LABEL_17:
        v33[0] = v28;
        v33[1] = v29;
        v34 = v30;
        v31 = v26;
        v32 = v27;
        if (!*(&v27 + 1))
        {

          v19 = 1;
          return v19 & 1;
        }

        sub_1A967C4DC((v33 + 8), v24);
        v26 = v31;
        v27 = v32;
        *&v28 = *&v33[0];
        if (swift_dynamicCast())
        {
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      v15 = v23[0];
      if (v15 == sub_1A9976820() && *(&v15 + 1) == v16)
      {
        break;
      }

      v17 = sub_1A99777E0();

      if (v17)
      {
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(v24);

        v2 = v35;
      }

      else
      {
        v18 = sub_1A98D9094(a1, v15, *(&v15 + 1), v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);

        v2 = v35;
        if (v21)
        {

          return v19 & 1;
        }

        if ((v18 & 1) == 0)
        {

          v19 = 0;
          return v19 & 1;
        }
      }
    }

    goto LABEL_23;
  }

  v19 = 1;
  return v19 & 1;
}

unint64_t sub_1A98DE438()
{
  result = qword_1EB3AB778;
  if (!qword_1EB3AB778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4F70, &qword_1A99A4478);
    sub_1A98DE4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB778);
  }

  return result;
}

unint64_t sub_1A98DE4BC()
{
  result = qword_1EB3AB6E0;
  if (!qword_1EB3AB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB6E0);
  }

  return result;
}

uint64_t sub_1A98DE538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  strcpy(v45, "extensionItems");
  HIBYTE(v45[0]) = -18;
  sub_1A9977250();
  if (!*(a3 + 16) || (v4 = sub_1A97BCF30(v47), (v5 & 1) == 0))
  {
    sub_1A97C108C(v47);
    goto LABEL_32;
  }

  sub_1A97AF7EC(*(a3 + 56) + 32 * v4, v48);
  sub_1A97C108C(v47);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  v7 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

    return a3;
  }

  v8 = *&v45[0];
  v9 = *(*&v45[0] + 16);
  v35 = a3;

  if (!v9)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v11 = 0;
  v12 = *&v45[0] + 32;
  v42 = 0x80000001A99E27C0;
  v36 = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v38 = *&v45[0];
  v37 = v9;
  v40 = *&v45[0] + 32;
  do
  {
    while (1)
    {
      if (v11 >= *(v8 + 16))
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v13 = *(v12 + 8 * v11++);
      strcpy(v45, "attachments");
      HIDWORD(v45[0]) = -352321536;

      sub_1A9977250();
      if (*(v13 + 16))
      {
        v14 = sub_1A97BCF30(v47);
        if (v15)
        {
          break;
        }
      }

      result = sub_1A97C108C(v47);
LABEL_7:
      if (v11 == v9)
      {
        goto LABEL_35;
      }
    }

    sub_1A97AF7EC(*(v13 + 56) + 32 * v14, v48);
    sub_1A97C108C(v47);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {

      goto LABEL_7;
    }

    v41 = v11;
    v16 = *&v45[0];
    v17 = *(*&v45[0] + 16);
    if (!v17)
    {
LABEL_24:

      v6 = v39;
      v12 = v40;
      v8 = v38;
      v9 = v37;
      v11 = v41;
      goto LABEL_7;
    }

    v18 = 0;
    v19 = v42;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v20 = *(v16 + 8 * v18 + 32);
      *&v45[0] = 0xD000000000000019;
      *(&v45[0] + 1) = v19;

      sub_1A9977250();
      if (*(v20 + 16))
      {
        v21 = sub_1A97BCF30(v47);
        if (v22)
        {
          break;
        }
      }

      result = sub_1A97C108C(v47);
LABEL_15:
      if (v17 == ++v18)
      {
        goto LABEL_24;
      }
    }

    sub_1A97AF7EC(*(v20 + 56) + 32 * v21, v48);
    sub_1A97C108C(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    v23 = swift_dynamicCast();
    if ((v23 & 1) == 0)
    {

      goto LABEL_15;
    }

    v24 = v7;
    v25 = *&v45[0];
    v47[0] = v43;
    v47[1] = v44;
    MEMORY[0x1EEE9AC00](v23);
    v34[2] = v47;
    v26 = sub_1A9824824(sub_1A97B2400, v34, v25);

    if ((v26 & 1) == 0)
    {
      v7 = v24;
      v19 = v42;
      goto LABEL_15;
    }

    v27 = v36;
    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = v27;
    v46 = v27;
    if ((result & 1) == 0)
    {
      result = sub_1A97BDC24(0, *(v27 + 16) + 1, 1);
      v28 = v46;
    }

    v6 = v39;
    v7 = v24;
    v8 = v38;
    v9 = v37;
    v11 = v41;
    v29 = v28;
    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1A97BDC24((v30 > 1), v31 + 1, 1);
      v29 = v46;
    }

    *(v29 + 16) = v31 + 1;
    v36 = v29;
    *(v29 + 8 * v31 + 32) = v13;
    v12 = v40;
  }

  while (v11 != v9);
LABEL_35:

  strcpy(v48, "extensionItems");
  v48[15] = -18;
  sub_1A9977250();
  v49 = v6;
  *v48 = v36;
  sub_1A967C4DC(v48, v45);
  v32 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v32;
  sub_1A97E34E4(v45, v47, isUniquelyReferenced_nonNull_native);
  sub_1A97C108C(v47);
  return v46;
}

uint64_t sub_1A98DEAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDrop.Transfers.receiveTransfers.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.Transfers() + 20));
}

uint64_t type metadata accessor for SFAirDrop.Transfers()
{
  result = qword_1EB3AB798;
  if (!qword_1EB3AB798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SFAirDrop.Transfers.sendTransfers.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.Transfers() + 24));
}

uint64_t SFAirDrop.Transfers.init(receiveTransfers:sendTransfers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropClient.Identifier();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  result = type metadata accessor for SFAirDrop.Transfers();
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static SFAirDrop.Transfers.stream<A, B>(receiveTransferSeq:sendTransfersSeq:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24[1] = a5;
  v24[2] = a6;
  v25 = a1;
  v26 = a2;
  v27 = a7;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v9 = type metadata accessor for AsyncCombineLatest2Sequence();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  v13 = type metadata accessor for SFAirDrop.Transfers();
  swift_getWitnessTable();
  v14 = sub_1A9977410();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  combineLatest<A, B>(_:_:)(v25, v26, a3, a4, v12);
  sub_1A9976D40();
  (*(v15 + 16))(v19, v21, v14);
  WitnessTable = swift_getWitnessTable();
  SFNoThrowAsyncSequence.init<A>(_:)(v19, v13, v14, WitnessTable, v27);
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_1A98DEE88(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98DEEB0, 0, 0);
}

uint64_t sub_1A98DEEB0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for SFAirDrop.Transfers();
  *(v3 + *(v5 + 20)) = v1;
  *(v3 + *(v5 + 24)) = v2;
  v7 = v0[1];

  return v7();
}

uint64_t SFAirDrop.Transfers.lastReceiveTransfer()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(v1 + *(type metadata accessor for SFAirDrop.Transfers() + 20));
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  if (v19)
  {
    v35 = a1;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v36 + 72);
    sub_1A98E0374(*(v16 + 56) + v26 * v21, v13, type metadata accessor for SFAirDropReceive.Transfer);
    sub_1A98DF718(v13, v15, type metadata accessor for SFAirDropReceive.Transfer);
    result = swift_bridgeObjectRetain_n();
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v23)
      {

        v31 = v35;
        sub_1A98DF718(v15, v35, type metadata accessor for SFAirDropReceive.Transfer);
        (*(v36 + 56))(v31, 0, 1, v37);
      }

      v22 = *(v16 + 64 + 8 * v28);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          sub_1A98E0374(*(v16 + 56) + (v29 | (v28 << 6)) * v26, v7, type metadata accessor for SFAirDropReceive.Transfer);
          sub_1A98DF718(v7, v10, type metadata accessor for SFAirDropReceive.Transfer);
          v30 = *(v37 + 44);
          if (sub_1A9976110())
          {
            sub_1A98E03DC(v15, type metadata accessor for SFAirDropReceive.Transfer);
            result = sub_1A98DF718(v10, v15, type metadata accessor for SFAirDropReceive.Transfer);
            v20 = v28;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1A98E03DC(v10, type metadata accessor for SFAirDropReceive.Transfer);
            v20 = v28;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v28 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(v16 + 72 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v35 = a1;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v32 = v37;
    v33 = *(v36 + 56);

    return v33(a1, 1, 1, v32);
  }

  return result;
}

uint64_t SFAirDrop.Transfers.lastSendTransfer()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDropSend.Transfer(0);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(v1 + *(type metadata accessor for SFAirDrop.Transfers() + 24));
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  if (v19)
  {
    v35 = a1;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v36 + 72);
    sub_1A98E0374(*(v16 + 56) + v26 * v21, v13, type metadata accessor for SFAirDropSend.Transfer);
    sub_1A98DF718(v13, v15, type metadata accessor for SFAirDropSend.Transfer);
    result = swift_bridgeObjectRetain_n();
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v23)
      {

        v31 = v35;
        sub_1A98DF718(v15, v35, type metadata accessor for SFAirDropSend.Transfer);
        (*(v36 + 56))(v31, 0, 1, v37);
      }

      v22 = *(v16 + 64 + 8 * v28);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          sub_1A98E0374(*(v16 + 56) + (v29 | (v28 << 6)) * v26, v7, type metadata accessor for SFAirDropSend.Transfer);
          sub_1A98DF718(v7, v10, type metadata accessor for SFAirDropSend.Transfer);
          v30 = *(v37 + 20);
          if (sub_1A9976110())
          {
            sub_1A98E03DC(v15, type metadata accessor for SFAirDropSend.Transfer);
            result = sub_1A98DF718(v10, v15, type metadata accessor for SFAirDropSend.Transfer);
            v20 = v28;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1A98E03DC(v10, type metadata accessor for SFAirDropSend.Transfer);
            v20 = v28;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v28 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(v16 + 72 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v35 = a1;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v32 = v37;
    v33 = *(v36 + 56);

    return v33(a1, 1, 1, v32);
  }

  return result;
}

uint64_t sub_1A98DF718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98DF780()
{
  v1 = 0x6E617254646E6573;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A98DF7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98E07CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98DF81C(uint64_t a1)
{
  v2 = sub_1A98DFAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98DF858(uint64_t a1)
{
  v2 = sub_1A98DFAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.Transfers.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB8, &qword_1A99A44D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98DFAD4();
  sub_1A9977AA0();
  LOBYTE(v14) = 0;
  type metadata accessor for SFAirDropClient.Identifier();
  sub_1A98E05C0(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A9977680();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDrop.Transfers();
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98DFB28();
    sub_1A99776E0();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98DFC14();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A98DFAD4()
{
  result = qword_1EB3B4FC0;
  if (!qword_1EB3B4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FC0);
  }

  return result;
}

unint64_t sub_1A98DFB28()
{
  result = qword_1EB3B4FD0;
  if (!qword_1EB3B4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98E05C0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B4FD8, type metadata accessor for SFAirDropReceive.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FD0);
  }

  return result;
}

unint64_t sub_1A98DFC14()
{
  result = qword_1EB3B4FE8;
  if (!qword_1EB3B4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98E05C0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B4FF0, type metadata accessor for SFAirDropSend.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FE8);
  }

  return result;
}

uint64_t SFAirDrop.Transfers.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FF8, &qword_1A99A44E8);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SFAirDrop.Transfers();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98DFAD4();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v12;
  v17 = v24;
  type metadata accessor for SFAirDropClient.Identifier();
  LOBYTE(v27) = 0;
  sub_1A98E05C0(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier);
  v18 = v25;
  sub_1A9977590();
  sub_1A98E00C4(v7, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
  v26 = 1;
  sub_1A98E0134();
  sub_1A99775F0();
  v19 = v22;
  *&v15[*(v22 + 20)] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
  v26 = 2;
  sub_1A98E0288();
  sub_1A99775F0();
  (*(v17 + 8))(v11, v18);
  *&v15[*(v19 + 24)] = v27;
  sub_1A98E0374(v15, v23, type metadata accessor for SFAirDrop.Transfers);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A98E03DC(v15, type metadata accessor for SFAirDrop.Transfers);
}

uint64_t sub_1A98E00C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A98E0134()
{
  result = qword_1EB3B5000;
  if (!qword_1EB3B5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98E05C0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B5008, type metadata accessor for SFAirDropReceive.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5000);
  }

  return result;
}

uint64_t sub_1A98E0220(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98E0288()
{
  result = qword_1EB3B5010;
  if (!qword_1EB3B5010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98E05C0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B5018, type metadata accessor for SFAirDropSend.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5010);
  }

  return result;
}

uint64_t sub_1A98E0374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98E03DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A98E0494()
{
  sub_1A98E0568();
  if (v0 <= 0x3F)
  {
    sub_1A98E0608(319, &qword_1EB3AB780, type metadata accessor for SFAirDropReceive.Transfer);
    if (v1 <= 0x3F)
    {
      sub_1A98E0608(319, &qword_1EB3AB788, type metadata accessor for SFAirDropSend.Transfer);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A98E0568()
{
  if (!qword_1EB3AC648)
  {
    type metadata accessor for SFAirDropClient.Identifier();
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC648);
    }
  }
}

uint64_t sub_1A98E05C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A98E0608(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier();
    a3(255);
    sub_1A98E05C0(&qword_1EB3AB7C0, type metadata accessor for SFAirDrop.TransferIdentifier);
    v5 = sub_1A9976720();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A98E06C8()
{
  result = qword_1EB3B5020;
  if (!qword_1EB3B5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5020);
  }

  return result;
}

unint64_t sub_1A98E0720()
{
  result = qword_1EB3B5028;
  if (!qword_1EB3B5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5028);
  }

  return result;
}

unint64_t sub_1A98E0778()
{
  result = qword_1EB3B5030[0];
  if (!qword_1EB3B5030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B5030);
  }

  return result;
}

uint64_t sub_1A98E07CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001A99E6F40 == a2;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6F60 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254646E6573 && a2 == 0xED00007372656673)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t combineLatest<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v33 = a8;
  v30 = a3;
  v31 = a9;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  (*(v19 + 16))(v23, a2, a5);
  (*(v13 + 16))(v17, v30, a6);
  return sub_1A98E0B20(v27, v23, v17, a4, a5, a6, v31);
}

uint64_t sub_1A98E0B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for AsyncCombineLatest3Sequence();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t AsyncCombineLatest3Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 56);
  v17 = *(a1 + 16);
  v18 = v5;
  v19 = *(a1 + 40);
  v20 = v11;
  type metadata accessor for CombineLatestStorage();
  v13 = *(a1 + 68);
  v12 = *(a1 + 72);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v10, v2 + v12, v5);
  (*(v14 + 56))(v10, 0, 1, v5);
  v15 = sub_1A9861A48(v2, v2 + v13, v10);
  (*(v7 + 8))(v10, v6);
  return sub_1A98E0DE4(v15, a2);
}

uint64_t sub_1A98E0DE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 112);
  type metadata accessor for AsyncCombineLatest3Sequence.Iterator.InternalClass();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1A98E0E64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v2[4] = swift_getAssociatedTypeWitness();
  v6 = v3[14];
  v7 = v3[11];
  v2[5] = swift_getAssociatedTypeWitness();
  v8 = v3[15];
  v9 = v3[12];
  v2[6] = swift_getAssociatedTypeWitness();
  v2[7] = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[8] = TupleTypeMetadata3;
  v11 = sub_1A99770A0();
  v2[9] = v11;
  v12 = *(v11 - 8);
  v2[10] = v12;
  v13 = *(v12 + 64) + 15;
  v2[11] = swift_task_alloc();
  v14 = *(TupleTypeMetadata3 - 8);
  v2[12] = v14;
  v15 = *(v14 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98E10B0, 0, 0);
}

uint64_t sub_1A98E10B0()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1A98E114C;
  v3 = v0[11];

  return sub_1A9859938(v3);
}

uint64_t sub_1A98E114C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A98E16BC;
  }

  else
  {
    v3 = sub_1A98E1260;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98E1260()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    (*(v0[10] + 8))(v1, v0[9]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v7, 1, 1, TupleTypeMetadata3);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v12 = v0[5];
    v40 = v0[14];
    v43 = v0[6];
    v13 = v0[4];
    v36 = v0[2];
    (*(v2 + 32))(v9, v1, v3);
    v34 = swift_getTupleTypeMetadata3();
    v38 = *(v34 + 48);
    v14 = *(v2 + 16);
    v14(v10, v9, v3);
    v35 = *(v13 - 8);
    (*(v35 + 32))(v36, v10, v13);
    v14(v40, v9, v3);
    v33 = *(v12 - 8);
    (*(v33 + 32))(v36 + v38, v40 + *(v3 + 48), v12);
    v14(v11, v9, v3);
    v15 = *(v43 - 8);
    v39 = *(v3 + 64);
    v41 = v11;
    result = (*(v15 + 48))(v11 + v39, 1);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v37 = v0[15];
    v17 = v0[13];
    v31 = v0[7];
    v32 = v0[14];
    v18 = v0[6];
    v44 = v0[5];
    v19 = v0[2];
    v20 = *(v34 + 64);
    v21 = *(v3 + 48);
    v30 = v0[4];
    (*(v0[12] + 8))(v0[16], v0[8]);
    (*(v15 + 32))(v19 + v20, v41 + v39, v18);
    (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
    v42 = *(v33 + 8);
    v42(v17 + v21, v44);
    v22 = *(v35 + 8);
    v22(v17, v30);
    v23 = *(*(v31 - 8) + 8);
    v23(v32 + v39, v31);
    v22(v32, v30);
    v23(v37 + v39, v31);
    v42(v37 + v21, v44);
  }

  v25 = v0[15];
  v24 = v0[16];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1A98E16BC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t AsyncCombineLatest3Sequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98E1770, 0, 0);
}

uint64_t sub_1A98E1770()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1A97E0474;
  v3 = *(v0 + 16);

  return sub_1A98E0E64(v3);
}

uint64_t sub_1A98E180C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return AsyncCombineLatest3Sequence.Iterator.next()(a1);
}

uint64_t sub_1A98E18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 40);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v6[5] = swift_task_alloc();
  v17 = *(MEMORY[0x1E69E85D8] + 4);
  v18 = swift_task_alloc();
  v6[6] = v18;
  *v18 = v6;
  v18[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A98E19F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AsyncCombineLatest3Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A98E1A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A98E1B20(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A98E1BC8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1A98E1E80(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1A98E2204()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _SFAirDropTransferObserverAdaptor.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*_SFAirDropTransferObserverAdaptor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A98E2468;
}

void sub_1A98E2468(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id _SFAirDropTransferObserverAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SFAirDropTransferObserverAdaptor.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SFAirDropClient.Identifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SFAirDropClient(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_client] = SFAirDropClient.init(identifier:)(v5);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id _SFAirDropTransferObserverAdaptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1A98E27A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F48, &qword_1A9999488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AF0, &qword_1A9992BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54F0, &unk_1A99A5928);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  if (*(a1 + *(v17 + 52)) != *(a2 + *(v17 + 52)))
  {
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 56);
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E4180(a1 + *(v18 + 60), a2 + *(v18 + 60)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v18 + 64);
  v21 = a1 + v20;
  v22 = *(v13 + 48);
  sub_1A97C13A4(v21, v16, &qword_1EB3B1AF0, &qword_1A9992BB0);
  sub_1A97C13A4(a2 + v20, &v16[v22], &qword_1EB3B1AF0, &qword_1A9992BB0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1A97B06FC(v16, &qword_1EB3B1AF0, &qword_1A9992BB0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v16, v12, &qword_1EB3B1AF0, &qword_1A9992BB0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B2F48, &qword_1A9999488);
LABEL_10:
    v25 = &qword_1EB3B54F0;
    v26 = &unk_1A99A5928;
LABEL_11:
    sub_1A97B06FC(v16, v25, v26);
    return 0;
  }

  sub_1A97D8380(&v16[v22], v8, &qword_1EB3B2F48, &qword_1A9999488);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v8, &qword_1EB3B2F48, &qword_1A9999488);
    sub_1A97B06FC(v12, &qword_1EB3B2F48, &qword_1A9999488);
    v25 = &qword_1EB3B1AF0;
    v26 = &qword_1A9992BB0;
    goto LABEL_11;
  }

  v27 = sub_1A98BB25C(*&v12[*(v4 + 52)], *&v8[*(v4 + 52)]);
  sub_1A97B06FC(v8, &qword_1EB3B2F48, &qword_1A9999488);
  sub_1A97B06FC(v12, &qword_1EB3B2F48, &qword_1A9999488);
  sub_1A97B06FC(v16, &qword_1EB3B1AF0, &qword_1A9992BB0);
  return (v27 & 1) != 0;
}

BOOL sub_1A98E2B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54B0, &qword_1A99A58C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54B8, &qword_1A99A58D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54C0, &qword_1A99A58D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  if (*(a1 + *(v17 + 52)) != *(a2 + *(v17 + 52)))
  {
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 56);
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E3698(a1 + *(v18 + 60), a2 + *(v18 + 60)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v18 + 64);
  v21 = a1 + v20;
  v22 = *(v13 + 48);
  sub_1A97C13A4(v21, v16, &qword_1EB3B54B8, &qword_1A99A58D0);
  sub_1A97C13A4(a2 + v20, &v16[v22], &qword_1EB3B54B8, &qword_1A99A58D0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1A97B06FC(v16, &qword_1EB3B54B8, &qword_1A99A58D0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v16, v12, &qword_1EB3B54B8, &qword_1A99A58D0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B54B0, &qword_1A99A58C8);
LABEL_10:
    v25 = &qword_1EB3B54C0;
    v26 = &qword_1A99A58D8;
LABEL_11:
    sub_1A97B06FC(v16, v25, v26);
    return 0;
  }

  sub_1A97D8380(&v16[v22], v8, &qword_1EB3B54B0, &qword_1A99A58C8);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v8, &qword_1EB3B54B0, &qword_1A99A58C8);
    sub_1A97B06FC(v12, &qword_1EB3B54B0, &qword_1A99A58C8);
    v25 = &qword_1EB3B54B8;
    v26 = &qword_1A99A58D0;
    goto LABEL_11;
  }

  v27 = sub_1A98BB25C(*&v12[*(v4 + 52)], *&v8[*(v4 + 52)]);
  sub_1A97B06FC(v8, &qword_1EB3B54B0, &qword_1A99A58C8);
  sub_1A97B06FC(v12, &qword_1EB3B54B0, &qword_1A99A58C8);
  sub_1A97B06FC(v16, &qword_1EB3B54B8, &qword_1A99A58D0);
  return (v27 & 1) != 0;
}

BOOL sub_1A98E2F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5490, &qword_1A99A5898);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5498, &qword_1A99A58A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54A0, &qword_1A99A58A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  if (*(a1 + *(v17 + 52)) != *(a2 + *(v17 + 52)))
  {
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 56);
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E5750(a1 + *(v18 + 60), a2 + *(v18 + 60)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v18 + 64);
  v21 = a1 + v20;
  v22 = *(v13 + 48);
  sub_1A97C13A4(v21, v16, &qword_1EB3B5498, &qword_1A99A58A0);
  sub_1A97C13A4(a2 + v20, &v16[v22], &qword_1EB3B5498, &qword_1A99A58A0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1A97B06FC(v16, &qword_1EB3B5498, &qword_1A99A58A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v16, v12, &qword_1EB3B5498, &qword_1A99A58A0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B5490, &qword_1A99A5898);
LABEL_10:
    v25 = &qword_1EB3B54A0;
    v26 = &qword_1A99A58A8;
LABEL_11:
    sub_1A97B06FC(v16, v25, v26);
    return 0;
  }

  sub_1A97D8380(&v16[v22], v8, &qword_1EB3B5490, &qword_1A99A5898);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v8, &qword_1EB3B5490, &qword_1A99A5898);
    sub_1A97B06FC(v12, &qword_1EB3B5490, &qword_1A99A5898);
    v25 = &qword_1EB3B5498;
    v26 = &qword_1A99A58A0;
    goto LABEL_11;
  }

  v27 = sub_1A98BB25C(*&v12[*(v4 + 52)], *&v8[*(v4 + 52)]);
  sub_1A97B06FC(v8, &qword_1EB3B5490, &qword_1A99A5898);
  sub_1A97B06FC(v12, &qword_1EB3B5490, &qword_1A99A5898);
  sub_1A97B06FC(v16, &qword_1EB3B5498, &qword_1A99A58A0);
  return (v27 & 1) != 0;
}

BOOL sub_1A98E32DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54D0, &qword_1A99A58F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54D8, &qword_1A99A5900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54E0, &unk_1A99A5908);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  if (*(a1 + *(v17 + 52)) != *(a2 + *(v17 + 52)))
  {
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 56);
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E4C68(a1 + *(v18 + 60), a2 + *(v18 + 60)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v18 + 64);
  v21 = a1 + v20;
  v22 = *(v13 + 48);
  sub_1A97C13A4(v21, v16, &qword_1EB3B54D8, &qword_1A99A5900);
  sub_1A97C13A4(a2 + v20, &v16[v22], &qword_1EB3B54D8, &qword_1A99A5900);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1A97B06FC(v16, &qword_1EB3B54D8, &qword_1A99A5900);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v16, v12, &qword_1EB3B54D8, &qword_1A99A5900);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B54D0, &qword_1A99A58F8);
LABEL_10:
    v25 = &qword_1EB3B54E0;
    v26 = &unk_1A99A5908;
LABEL_11:
    sub_1A97B06FC(v16, v25, v26);
    return 0;
  }

  sub_1A97D8380(&v16[v22], v8, &qword_1EB3B54D0, &qword_1A99A58F8);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v8, &qword_1EB3B54D0, &qword_1A99A58F8);
    sub_1A97B06FC(v12, &qword_1EB3B54D0, &qword_1A99A58F8);
    v25 = &qword_1EB3B54D8;
    v26 = &qword_1A99A5900;
    goto LABEL_11;
  }

  v27 = sub_1A98BB25C(*&v12[*(v4 + 52)], *&v8[*(v4 + 52)]);
  sub_1A97B06FC(v8, &qword_1EB3B54D0, &qword_1A99A58F8);
  sub_1A97B06FC(v12, &qword_1EB3B54D0, &qword_1A99A58F8);
  sub_1A97B06FC(v16, &qword_1EB3B54D8, &qword_1A99A5900);
  return (v27 & 1) != 0;
}

uint64_t sub_1A98E3698(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E60, &qword_1A99A58E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v98 - v6;
  v7 = type metadata accessor for SFAirDrop.DeclineAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v98 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54C8, &unk_1A99A58E8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v98 - v31;
  v33 = (&v98 + *(v30 + 56) - v31);
  sub_1A97C13A4(v104, &v98 - v31, &qword_1EB3B17E8, &unk_1A99A4890);
  sub_1A97C13A4(v105, v33, &qword_1EB3B17E8, &unk_1A99A4890);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v104 = v15;
    v105 = v32;
    v43 = v17;
    sub_1A97C13A4(v32, v27, &qword_1EB3B17E8, &unk_1A99A4890);
    v44 = *v27;
    v45 = v27[1];
    v46 = v27[2];
    v47 = v27[3];
    v48 = v27[4];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v27 + v49, type metadata accessor for SFAirDrop.DeclineAction);

      v32 = v105;
LABEL_16:
      v62 = &qword_1EB3B54C8;
      v63 = &unk_1A99A58E8;
LABEL_17:
      v64 = v32;
LABEL_63:
      sub_1A97B06FC(v64, v62, v63);
      v91 = 0;
      return v91 & 1;
    }

    v102 = v47;
    v103 = v48;
    v66 = *v33;
    v65 = v33[1];
    v67 = v33[3];
    v98 = v33[2];
    v99 = v46;
    v68 = v33[4];
    v100 = v67;
    v101 = v68;
    v69 = v27 + v49;
    v70 = v43;
    sub_1A98EEE34(v69, v43, type metadata accessor for SFAirDrop.DeclineAction);
    v71 = v33 + v49;
    v60 = v104;
    sub_1A98EEE34(v71, v104, type metadata accessor for SFAirDrop.DeclineAction);
    if (v44 == v66 && v45 == v65)
    {

      v72 = v102;
    }

    else
    {
      v75 = sub_1A99777E0();

      v72 = v102;
      if ((v75 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v74 = v105;
    v76 = v103;
    if (v99 == v98 && v72 == v100)
    {
    }

    else
    {
      v92 = sub_1A99777E0();

      if ((v92 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
        v96 = v70;
        goto LABEL_61;
      }
    }

    v93 = sub_1A99056D4(v76, v101);

    if (v93 & 1) != 0 && (*v70 == *v60 && *(v70 + 8) == *(v60 + 8) || (sub_1A99777E0()))
    {
      v79 = *(v70 + 16);
      v80 = *(v70 + 24);
      v81 = *(v70 + 32);
      v82 = *(v70 + 40);
      v83 = *(v70 + 48);
      v111 = v79;
      v112 = v80;
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v85 = *(v60 + 16);
      v86 = *(v60 + 24);
      v87 = *(v60 + 32);
      v88 = *(v60 + 40);
      v84 = v70;
LABEL_53:
      v94 = *(v60 + 48);
      v106 = v85;
      v107 = v86;
      v108 = v87;
      v109 = v88;
      v110 = v94;
      sub_1A97DC908(v79, v80, v81, v82, v83);
      sub_1A97DC908(v85, v86, v87, v88, v94);
      v95 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v111, &v106);
      sub_1A97DC96C(v106, v107, v108, v109, v110);
      sub_1A97DC96C(v111, v112, v113, v114, v115);
      sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v84, type metadata accessor for SFAirDrop.DeclineAction);
      if (v95)
      {
        sub_1A97B06FC(v74, &qword_1EB3B17E8, &unk_1A99A4890);
        v91 = 1;
        return v91 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v32, v22, &qword_1EB3B17E8, &unk_1A99A4890);
    v50 = *v22;
    v51 = v22[1];
    v52 = v22[3];
    v104 = v22[2];
    v53 = v22[4];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v22 + v54, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v105 = v32;
    v56 = *v33;
    v55 = v33[1];
    v57 = v33[3];
    v99 = v33[2];
    v100 = v33[4];
    v101 = v53;
    v58 = v22 + v54;
    v43 = v103;
    sub_1A98EEE34(v58, v103, type metadata accessor for SFAirDrop.DeclineAction);
    v59 = v33 + v54;
    v60 = v102;
    sub_1A98EEE34(v59, v102, type metadata accessor for SFAirDrop.DeclineAction);
    if (v50 == v56 && v51 == v55)
    {

      v61 = v101;
LABEL_22:
      v74 = v105;
      if (v104 == v99 && v52 == v57)
      {
      }

      else
      {
        v77 = sub_1A99777E0();

        if ((v77 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
          v96 = v43;
LABEL_61:
          sub_1A98E6488(v96, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v62 = &qword_1EB3B17E8;
          v63 = &unk_1A99A4890;
          v64 = v74;
          goto LABEL_63;
        }
      }

      v78 = sub_1A99056D4(v61, v100);

      if (v78 & 1) != 0 && (*v43 == *v60 && *(v43 + 8) == *(v60 + 8) || (sub_1A99777E0()))
      {
        v79 = *(v43 + 16);
        v80 = *(v43 + 24);
        v81 = *(v43 + 32);
        v82 = *(v43 + 40);
        v83 = *(v43 + 48);
        v111 = v79;
        v112 = v80;
        v113 = v81;
        v114 = v82;
        v115 = v83;
        v84 = v43;
        v85 = *(v60 + 16);
        v86 = *(v60 + 24);
        v87 = *(v60 + 32);
        v88 = *(v60 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v73 = sub_1A99777E0();

    v61 = v101;
    if (v73)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v43, type metadata accessor for SFAirDrop.DeclineAction);
    v62 = &qword_1EB3B17E8;
    v63 = &unk_1A99A4890;
    v64 = v105;
    goto LABEL_63;
  }

  sub_1A97C13A4(v32, v25, &qword_1EB3B17E8, &unk_1A99A4890);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E58, &unk_1A9994A90) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v25[v35], &qword_1EB3B1E60, &qword_1A99A58E0);
    goto LABEL_16;
  }

  v36 = *v25;
  v37 = *v33;
  v38 = v101;
  sub_1A97D8380(&v25[v35], v101, &qword_1EB3B1E60, &qword_1A99A58E0);
  v39 = v33 + v35;
  v40 = v100;
  sub_1A97D8380(v39, v100, &qword_1EB3B1E60, &qword_1A99A58E0);
  if (v36)
  {
    if (v36 == 1)
    {
      v41 = 0xE700000000000000;
      v42 = 0x65766965636572;
      if (!v37)
      {
LABEL_40:
        v89 = 0xE400000000000000;
        if (v42 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v41 = 0xE800000000000000;
      v42 = 0x6F666E4965726F6DLL;
      if (!v37)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v41 = 0xE400000000000000;
    v42 = 1684956531;
    if (!v37)
    {
      goto LABEL_40;
    }
  }

  if (v37 == 1)
  {
    v89 = 0xE700000000000000;
    if (v42 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v89 = 0xE800000000000000;
    if (v42 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v90 = sub_1A99777E0();

      if (v90)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v40, &qword_1EB3B1E60, &qword_1A99A58E0);
      sub_1A97B06FC(v38, &qword_1EB3B1E60, &qword_1A99A58E0);
      v62 = &qword_1EB3B17E8;
      v63 = &unk_1A99A4890;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v41 != v89)
  {
    goto LABEL_45;
  }

LABEL_46:
  v91 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v40, &qword_1EB3B1E60, &qword_1A99A58E0);
  sub_1A97B06FC(v38, &qword_1EB3B1E60, &qword_1A99A58E0);
  sub_1A97B06FC(v32, &qword_1EB3B17E8, &unk_1A99A4890);
  return v91 & 1;
}

uint64_t sub_1A98E4180(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E50, &qword_1A9994A88);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v98 - v6;
  v7 = type metadata accessor for SFAirDrop.DeclineAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v98 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54F8, &qword_1A99A5938);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v98 - v31;
  v33 = (&v98 + *(v30 + 56) - v31);
  sub_1A97C13A4(v104, &v98 - v31, &qword_1EB3B17F0, &qword_1A9992A00);
  sub_1A97C13A4(v105, v33, &qword_1EB3B17F0, &qword_1A9992A00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v104 = v15;
    v105 = v32;
    v43 = v17;
    sub_1A97C13A4(v32, v27, &qword_1EB3B17F0, &qword_1A9992A00);
    v44 = *v27;
    v45 = v27[1];
    v46 = v27[2];
    v47 = v27[3];
    v48 = v27[4];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v27 + v49, type metadata accessor for SFAirDrop.DeclineAction);

      v32 = v105;
LABEL_16:
      v62 = &qword_1EB3B54F8;
      v63 = &qword_1A99A5938;
LABEL_17:
      v64 = v32;
LABEL_63:
      sub_1A97B06FC(v64, v62, v63);
      v91 = 0;
      return v91 & 1;
    }

    v102 = v47;
    v103 = v48;
    v66 = *v33;
    v65 = v33[1];
    v67 = v33[3];
    v98 = v33[2];
    v99 = v46;
    v68 = v33[4];
    v100 = v67;
    v101 = v68;
    v69 = v27 + v49;
    v70 = v43;
    sub_1A98EEE34(v69, v43, type metadata accessor for SFAirDrop.DeclineAction);
    v71 = v33 + v49;
    v60 = v104;
    sub_1A98EEE34(v71, v104, type metadata accessor for SFAirDrop.DeclineAction);
    if (v44 == v66 && v45 == v65)
    {

      v72 = v102;
    }

    else
    {
      v75 = sub_1A99777E0();

      v72 = v102;
      if ((v75 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v74 = v105;
    v76 = v103;
    if (v99 == v98 && v72 == v100)
    {
    }

    else
    {
      v92 = sub_1A99777E0();

      if ((v92 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
        v96 = v70;
        goto LABEL_61;
      }
    }

    v93 = sub_1A99056FC(v76, v101);

    if (v93 & 1) != 0 && (*v70 == *v60 && *(v70 + 8) == *(v60 + 8) || (sub_1A99777E0()))
    {
      v79 = *(v70 + 16);
      v80 = *(v70 + 24);
      v81 = *(v70 + 32);
      v82 = *(v70 + 40);
      v83 = *(v70 + 48);
      v111 = v79;
      v112 = v80;
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v85 = *(v60 + 16);
      v86 = *(v60 + 24);
      v87 = *(v60 + 32);
      v88 = *(v60 + 40);
      v84 = v70;
LABEL_53:
      v94 = *(v60 + 48);
      v106 = v85;
      v107 = v86;
      v108 = v87;
      v109 = v88;
      v110 = v94;
      sub_1A97DC908(v79, v80, v81, v82, v83);
      sub_1A97DC908(v85, v86, v87, v88, v94);
      v95 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v111, &v106);
      sub_1A97DC96C(v106, v107, v108, v109, v110);
      sub_1A97DC96C(v111, v112, v113, v114, v115);
      sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v84, type metadata accessor for SFAirDrop.DeclineAction);
      if (v95)
      {
        sub_1A97B06FC(v74, &qword_1EB3B17F0, &qword_1A9992A00);
        v91 = 1;
        return v91 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v32, v22, &qword_1EB3B17F0, &qword_1A9992A00);
    v50 = *v22;
    v51 = v22[1];
    v52 = v22[3];
    v104 = v22[2];
    v53 = v22[4];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v22 + v54, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v105 = v32;
    v56 = *v33;
    v55 = v33[1];
    v57 = v33[3];
    v99 = v33[2];
    v100 = v33[4];
    v101 = v53;
    v58 = v22 + v54;
    v43 = v103;
    sub_1A98EEE34(v58, v103, type metadata accessor for SFAirDrop.DeclineAction);
    v59 = v33 + v54;
    v60 = v102;
    sub_1A98EEE34(v59, v102, type metadata accessor for SFAirDrop.DeclineAction);
    if (v50 == v56 && v51 == v55)
    {

      v61 = v101;
LABEL_22:
      v74 = v105;
      if (v104 == v99 && v52 == v57)
      {
      }

      else
      {
        v77 = sub_1A99777E0();

        if ((v77 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
          v96 = v43;
LABEL_61:
          sub_1A98E6488(v96, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v62 = &qword_1EB3B17F0;
          v63 = &qword_1A9992A00;
          v64 = v74;
          goto LABEL_63;
        }
      }

      v78 = sub_1A99056FC(v61, v100);

      if (v78 & 1) != 0 && (*v43 == *v60 && *(v43 + 8) == *(v60 + 8) || (sub_1A99777E0()))
      {
        v79 = *(v43 + 16);
        v80 = *(v43 + 24);
        v81 = *(v43 + 32);
        v82 = *(v43 + 40);
        v83 = *(v43 + 48);
        v111 = v79;
        v112 = v80;
        v113 = v81;
        v114 = v82;
        v115 = v83;
        v84 = v43;
        v85 = *(v60 + 16);
        v86 = *(v60 + 24);
        v87 = *(v60 + 32);
        v88 = *(v60 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v73 = sub_1A99777E0();

    v61 = v101;
    if (v73)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v43, type metadata accessor for SFAirDrop.DeclineAction);
    v62 = &qword_1EB3B17F0;
    v63 = &qword_1A9992A00;
    v64 = v105;
    goto LABEL_63;
  }

  sub_1A97C13A4(v32, v25, &qword_1EB3B17F0, &qword_1A9992A00);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E48, &qword_1A9994A80) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v25[v35], &qword_1EB3B1E50, &qword_1A9994A88);
    goto LABEL_16;
  }

  v36 = *v25;
  v37 = *v33;
  v38 = v101;
  sub_1A97D8380(&v25[v35], v101, &qword_1EB3B1E50, &qword_1A9994A88);
  v39 = v33 + v35;
  v40 = v100;
  sub_1A97D8380(v39, v100, &qword_1EB3B1E50, &qword_1A9994A88);
  if (v36)
  {
    if (v36 == 1)
    {
      v41 = 0xE700000000000000;
      v42 = 0x65766965636572;
      if (!v37)
      {
LABEL_40:
        v89 = 0xE400000000000000;
        if (v42 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v41 = 0xE800000000000000;
      v42 = 0x6F666E4965726F6DLL;
      if (!v37)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v41 = 0xE400000000000000;
    v42 = 1684956531;
    if (!v37)
    {
      goto LABEL_40;
    }
  }

  if (v37 == 1)
  {
    v89 = 0xE700000000000000;
    if (v42 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v89 = 0xE800000000000000;
    if (v42 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v90 = sub_1A99777E0();

      if (v90)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v40, &qword_1EB3B1E50, &qword_1A9994A88);
      sub_1A97B06FC(v38, &qword_1EB3B1E50, &qword_1A9994A88);
      v62 = &qword_1EB3B17F0;
      v63 = &qword_1A9992A00;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v41 != v89)
  {
    goto LABEL_45;
  }

LABEL_46:
  v91 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v40, &qword_1EB3B1E50, &qword_1A9994A88);
  sub_1A97B06FC(v38, &qword_1EB3B1E50, &qword_1A9994A88);
  sub_1A97B06FC(v32, &qword_1EB3B17F0, &qword_1A9992A00);
  return v91 & 1;
}

uint64_t sub_1A98E4C68(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E38, &qword_1A9994A70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v98 - v6;
  v7 = type metadata accessor for SFAirDrop.DeclineAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E18, &unk_1A9994A50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v98 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54E8, &qword_1A99A5918);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v98 - v31;
  v33 = (&v98 + *(v30 + 56) - v31);
  sub_1A97C13A4(v104, &v98 - v31, &qword_1EB3B1E18, &unk_1A9994A50);
  sub_1A97C13A4(v105, v33, &qword_1EB3B1E18, &unk_1A9994A50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v104 = v15;
    v105 = v32;
    v43 = v17;
    sub_1A97C13A4(v32, v27, &qword_1EB3B1E18, &unk_1A9994A50);
    v44 = *v27;
    v45 = v27[1];
    v46 = v27[2];
    v47 = v27[3];
    v48 = v27[4];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v27 + v49, type metadata accessor for SFAirDrop.DeclineAction);

      v32 = v105;
LABEL_16:
      v62 = &qword_1EB3B54E8;
      v63 = &qword_1A99A5918;
LABEL_17:
      v64 = v32;
LABEL_63:
      sub_1A97B06FC(v64, v62, v63);
      v91 = 0;
      return v91 & 1;
    }

    v102 = v47;
    v103 = v48;
    v66 = *v33;
    v65 = v33[1];
    v67 = v33[3];
    v98 = v33[2];
    v99 = v46;
    v68 = v33[4];
    v100 = v67;
    v101 = v68;
    v69 = v27 + v49;
    v70 = v43;
    sub_1A98EEE34(v69, v43, type metadata accessor for SFAirDrop.DeclineAction);
    v71 = v33 + v49;
    v60 = v104;
    sub_1A98EEE34(v71, v104, type metadata accessor for SFAirDrop.DeclineAction);
    if (v44 == v66 && v45 == v65)
    {

      v72 = v102;
    }

    else
    {
      v75 = sub_1A99777E0();

      v72 = v102;
      if ((v75 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v74 = v105;
    v76 = v103;
    if (v99 == v98 && v72 == v100)
    {
    }

    else
    {
      v92 = sub_1A99777E0();

      if ((v92 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
        v96 = v70;
        goto LABEL_61;
      }
    }

    v93 = sub_1A9905C4C(v76, v101);

    if (v93 & 1) != 0 && (*v70 == *v60 && *(v70 + 8) == *(v60 + 8) || (sub_1A99777E0()))
    {
      v79 = *(v70 + 16);
      v80 = *(v70 + 24);
      v81 = *(v70 + 32);
      v82 = *(v70 + 40);
      v83 = *(v70 + 48);
      v111 = v79;
      v112 = v80;
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v85 = *(v60 + 16);
      v86 = *(v60 + 24);
      v87 = *(v60 + 32);
      v88 = *(v60 + 40);
      v84 = v70;
LABEL_53:
      v94 = *(v60 + 48);
      v106 = v85;
      v107 = v86;
      v108 = v87;
      v109 = v88;
      v110 = v94;
      sub_1A97DC908(v79, v80, v81, v82, v83);
      sub_1A97DC908(v85, v86, v87, v88, v94);
      v95 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v111, &v106);
      sub_1A97DC96C(v106, v107, v108, v109, v110);
      sub_1A97DC96C(v111, v112, v113, v114, v115);
      sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v84, type metadata accessor for SFAirDrop.DeclineAction);
      if (v95)
      {
        sub_1A97B06FC(v74, &qword_1EB3B1E18, &unk_1A9994A50);
        v91 = 1;
        return v91 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v32, v22, &qword_1EB3B1E18, &unk_1A9994A50);
    v50 = *v22;
    v51 = v22[1];
    v52 = v22[3];
    v104 = v22[2];
    v53 = v22[4];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v22 + v54, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v105 = v32;
    v56 = *v33;
    v55 = v33[1];
    v57 = v33[3];
    v99 = v33[2];
    v100 = v33[4];
    v101 = v53;
    v58 = v22 + v54;
    v43 = v103;
    sub_1A98EEE34(v58, v103, type metadata accessor for SFAirDrop.DeclineAction);
    v59 = v33 + v54;
    v60 = v102;
    sub_1A98EEE34(v59, v102, type metadata accessor for SFAirDrop.DeclineAction);
    if (v50 == v56 && v51 == v55)
    {

      v61 = v101;
LABEL_22:
      v74 = v105;
      if (v104 == v99 && v52 == v57)
      {
      }

      else
      {
        v77 = sub_1A99777E0();

        if ((v77 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
          v96 = v43;
LABEL_61:
          sub_1A98E6488(v96, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v62 = &qword_1EB3B1E18;
          v63 = &unk_1A9994A50;
          v64 = v74;
          goto LABEL_63;
        }
      }

      v78 = sub_1A9905C4C(v61, v100);

      if (v78 & 1) != 0 && (*v43 == *v60 && *(v43 + 8) == *(v60 + 8) || (sub_1A99777E0()))
      {
        v79 = *(v43 + 16);
        v80 = *(v43 + 24);
        v81 = *(v43 + 32);
        v82 = *(v43 + 40);
        v83 = *(v43 + 48);
        v111 = v79;
        v112 = v80;
        v113 = v81;
        v114 = v82;
        v115 = v83;
        v84 = v43;
        v85 = *(v60 + 16);
        v86 = *(v60 + 24);
        v87 = *(v60 + 32);
        v88 = *(v60 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v73 = sub_1A99777E0();

    v61 = v101;
    if (v73)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v43, type metadata accessor for SFAirDrop.DeclineAction);
    v62 = &qword_1EB3B1E18;
    v63 = &unk_1A9994A50;
    v64 = v105;
    goto LABEL_63;
  }

  sub_1A97C13A4(v32, v25, &qword_1EB3B1E18, &unk_1A9994A50);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E30, &qword_1A99A5920) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v25[v35], &qword_1EB3B1E38, &qword_1A9994A70);
    goto LABEL_16;
  }

  v36 = *v25;
  v37 = *v33;
  v38 = v101;
  sub_1A97D8380(&v25[v35], v101, &qword_1EB3B1E38, &qword_1A9994A70);
  v39 = v33 + v35;
  v40 = v100;
  sub_1A97D8380(v39, v100, &qword_1EB3B1E38, &qword_1A9994A70);
  if (v36)
  {
    if (v36 == 1)
    {
      v41 = 0xE700000000000000;
      v42 = 0x65766965636572;
      if (!v37)
      {
LABEL_40:
        v89 = 0xE400000000000000;
        if (v42 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v41 = 0xE800000000000000;
      v42 = 0x6F666E4965726F6DLL;
      if (!v37)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v41 = 0xE400000000000000;
    v42 = 1684956531;
    if (!v37)
    {
      goto LABEL_40;
    }
  }

  if (v37 == 1)
  {
    v89 = 0xE700000000000000;
    if (v42 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v89 = 0xE800000000000000;
    if (v42 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v90 = sub_1A99777E0();

      if (v90)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v40, &qword_1EB3B1E38, &qword_1A9994A70);
      sub_1A97B06FC(v38, &qword_1EB3B1E38, &qword_1A9994A70);
      v62 = &qword_1EB3B1E18;
      v63 = &unk_1A9994A50;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v41 != v89)
  {
    goto LABEL_45;
  }

LABEL_46:
  v91 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v40, &qword_1EB3B1E38, &qword_1A9994A70);
  sub_1A97B06FC(v38, &qword_1EB3B1E38, &qword_1A9994A70);
  sub_1A97B06FC(v32, &qword_1EB3B1E18, &unk_1A9994A50);
  return v91 & 1;
}

uint64_t sub_1A98E5750(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E10, &qword_1A99A58B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v98 - v6;
  v7 = type metadata accessor for SFAirDrop.DeclineAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF0, &qword_1A9994A28);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v98 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54A8, &unk_1A99A58B8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v98 - v31;
  v33 = (&v98 + *(v30 + 56) - v31);
  sub_1A97C13A4(v104, &v98 - v31, &qword_1EB3B1DF0, &qword_1A9994A28);
  sub_1A97C13A4(v105, v33, &qword_1EB3B1DF0, &qword_1A9994A28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v104 = v15;
    v105 = v32;
    v43 = v17;
    sub_1A97C13A4(v32, v27, &qword_1EB3B1DF0, &qword_1A9994A28);
    v44 = *v27;
    v45 = v27[1];
    v46 = v27[2];
    v47 = v27[3];
    v48 = v27[4];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v27 + v49, type metadata accessor for SFAirDrop.DeclineAction);

      v32 = v105;
LABEL_16:
      v62 = &qword_1EB3B54A8;
      v63 = &unk_1A99A58B8;
LABEL_17:
      v64 = v32;
LABEL_63:
      sub_1A97B06FC(v64, v62, v63);
      v91 = 0;
      return v91 & 1;
    }

    v102 = v47;
    v103 = v48;
    v66 = *v33;
    v65 = v33[1];
    v67 = v33[3];
    v98 = v33[2];
    v99 = v46;
    v68 = v33[4];
    v100 = v67;
    v101 = v68;
    v69 = v27 + v49;
    v70 = v43;
    sub_1A98EEE34(v69, v43, type metadata accessor for SFAirDrop.DeclineAction);
    v71 = v33 + v49;
    v60 = v104;
    sub_1A98EEE34(v71, v104, type metadata accessor for SFAirDrop.DeclineAction);
    if (v44 == v66 && v45 == v65)
    {

      v72 = v102;
    }

    else
    {
      v75 = sub_1A99777E0();

      v72 = v102;
      if ((v75 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v74 = v105;
    v76 = v103;
    if (v99 == v98 && v72 == v100)
    {
    }

    else
    {
      v92 = sub_1A99777E0();

      if ((v92 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
        v96 = v70;
        goto LABEL_61;
      }
    }

    v93 = sub_1A9905C74(v76, v101);

    if (v93 & 1) != 0 && (*v70 == *v60 && *(v70 + 8) == *(v60 + 8) || (sub_1A99777E0()))
    {
      v79 = *(v70 + 16);
      v80 = *(v70 + 24);
      v81 = *(v70 + 32);
      v82 = *(v70 + 40);
      v83 = *(v70 + 48);
      v111 = v79;
      v112 = v80;
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v85 = *(v60 + 16);
      v86 = *(v60 + 24);
      v87 = *(v60 + 32);
      v88 = *(v60 + 40);
      v84 = v70;
LABEL_53:
      v94 = *(v60 + 48);
      v106 = v85;
      v107 = v86;
      v108 = v87;
      v109 = v88;
      v110 = v94;
      sub_1A97DC908(v79, v80, v81, v82, v83);
      sub_1A97DC908(v85, v86, v87, v88, v94);
      v95 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v111, &v106);
      sub_1A97DC96C(v106, v107, v108, v109, v110);
      sub_1A97DC96C(v111, v112, v113, v114, v115);
      sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v84, type metadata accessor for SFAirDrop.DeclineAction);
      if (v95)
      {
        sub_1A97B06FC(v74, &qword_1EB3B1DF0, &qword_1A9994A28);
        v91 = 1;
        return v91 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v32, v22, &qword_1EB3B1DF0, &qword_1A9994A28);
    v50 = *v22;
    v51 = v22[1];
    v52 = v22[3];
    v104 = v22[2];
    v53 = v22[4];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v22 + v54, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v105 = v32;
    v56 = *v33;
    v55 = v33[1];
    v57 = v33[3];
    v99 = v33[2];
    v100 = v33[4];
    v101 = v53;
    v58 = v22 + v54;
    v43 = v103;
    sub_1A98EEE34(v58, v103, type metadata accessor for SFAirDrop.DeclineAction);
    v59 = v33 + v54;
    v60 = v102;
    sub_1A98EEE34(v59, v102, type metadata accessor for SFAirDrop.DeclineAction);
    if (v50 == v56 && v51 == v55)
    {

      v61 = v101;
LABEL_22:
      v74 = v105;
      if (v104 == v99 && v52 == v57)
      {
      }

      else
      {
        v77 = sub_1A99777E0();

        if ((v77 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
          v96 = v43;
LABEL_61:
          sub_1A98E6488(v96, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v62 = &qword_1EB3B1DF0;
          v63 = &qword_1A9994A28;
          v64 = v74;
          goto LABEL_63;
        }
      }

      v78 = sub_1A9905C74(v61, v100);

      if (v78 & 1) != 0 && (*v43 == *v60 && *(v43 + 8) == *(v60 + 8) || (sub_1A99777E0()))
      {
        v79 = *(v43 + 16);
        v80 = *(v43 + 24);
        v81 = *(v43 + 32);
        v82 = *(v43 + 40);
        v83 = *(v43 + 48);
        v111 = v79;
        v112 = v80;
        v113 = v81;
        v114 = v82;
        v115 = v83;
        v84 = v43;
        v85 = *(v60 + 16);
        v86 = *(v60 + 24);
        v87 = *(v60 + 32);
        v88 = *(v60 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v73 = sub_1A99777E0();

    v61 = v101;
    if (v73)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v60, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v43, type metadata accessor for SFAirDrop.DeclineAction);
    v62 = &qword_1EB3B1DF0;
    v63 = &qword_1A9994A28;
    v64 = v105;
    goto LABEL_63;
  }

  sub_1A97C13A4(v32, v25, &qword_1EB3B1DF0, &qword_1A9994A28);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E08, &unk_1A9994A40) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v25[v35], &qword_1EB3B1E10, &qword_1A99A58B0);
    goto LABEL_16;
  }

  v36 = *v25;
  v37 = *v33;
  v38 = v101;
  sub_1A97D8380(&v25[v35], v101, &qword_1EB3B1E10, &qword_1A99A58B0);
  v39 = v33 + v35;
  v40 = v100;
  sub_1A97D8380(v39, v100, &qword_1EB3B1E10, &qword_1A99A58B0);
  if (v36)
  {
    if (v36 == 1)
    {
      v41 = 0xE700000000000000;
      v42 = 0x65766965636572;
      if (!v37)
      {
LABEL_40:
        v89 = 0xE400000000000000;
        if (v42 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v41 = 0xE800000000000000;
      v42 = 0x6F666E4965726F6DLL;
      if (!v37)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v41 = 0xE400000000000000;
    v42 = 1684956531;
    if (!v37)
    {
      goto LABEL_40;
    }
  }

  if (v37 == 1)
  {
    v89 = 0xE700000000000000;
    if (v42 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v89 = 0xE800000000000000;
    if (v42 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v90 = sub_1A99777E0();

      if (v90)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v40, &qword_1EB3B1E10, &qword_1A99A58B0);
      sub_1A97B06FC(v38, &qword_1EB3B1E10, &qword_1A99A58B0);
      v62 = &qword_1EB3B1DF0;
      v63 = &qword_1A9994A28;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v41 != v89)
  {
    goto LABEL_45;
  }

LABEL_46:
  v91 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v40, &qword_1EB3B1E10, &qword_1A99A58B0);
  sub_1A97B06FC(v38, &qword_1EB3B1E10, &qword_1A99A58B0);
  sub_1A97B06FC(v32, &qword_1EB3B1DF0, &qword_1A9994A28);
  return v91 & 1;
}

uint64_t SFAirDropSend.Transfer.State.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v2, v7, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v13 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48) + 8];

    sub_1A98EEE34(v7, a1, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    v14 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      sub_1A98EEE34(v7, a1, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v10 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
      (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      v11 = type metadata accessor for SFAirDropSend.Failure;
      v12 = &v7[v9];
    }

    else
    {
      v16 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
      v11 = type metadata accessor for SFAirDropSend.Transfer.State;
      v12 = v7;
    }

    return sub_1A98E6488(v12, v11);
  }
}

uint64_t sub_1A98E6488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SFAirDropSend.Transfer.State.description.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v72 - v19;
  v21 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v0, v24, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v44 = *(v24 + 1);
        v45 = *(v24 + 3);
        v46 = *(v24 + 4);
        v47 = *(v24 + 5);
        v48 = v24[48];
        v49 = *(v24 + 7);
        v50 = *(v24 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v49, v50);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        v34 = &qword_1EB3B1E20;
        v35 = &qword_1A99A4860;
        sub_1A97D8380(&v24[*(v51 + 48)], v12, &qword_1EB3B1E20, &qword_1A99A4860);
        v73 = 0;
        v74 = 0xE000000000000000;
        sub_1A99772B0();

        v73 = 0xD000000000000021;
        v74 = 0x80000001A99E7040;
        v52 = sub_1A97D463C();
        MEMORY[0x1AC5895B0](v52);

        MEMORY[0x1AC5895B0](41, 0xE100000000000000);
        v37 = v73;
        v38 = v12;
        goto LABEL_19;
      }

      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      sub_1A98EEE34(v24, v8, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      sub_1A98EEE34(&v24[v69], v4, type metadata accessor for SFAirDropSend.Failure);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](0x63697274656D202CLL, 0xEB00000000203A73);
      v70 = SFAirDropSend.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v70);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v37 = v73;
      sub_1A98E6488(v4, type metadata accessor for SFAirDropSend.Failure);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          return 0x646574616572632ELL;
        }

        else
        {
          return 0xD000000000000016;
        }
      }

      v64 = *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48) + 8];

      sub_1A98EEE34(v24, v8, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1A99772B0();

      v73 = 0xD000000000000020;
      v74 = 0x80000001A99E7010;
      v65 = SFAirDropSend.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v65);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v37 = v73;
    }

    v42 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    v43 = v8;
LABEL_22:
    sub_1A98E6488(v43, v42);
    return v37;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v66 = *v24;

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      v34 = &qword_1EB3B1DF8;
      v35 = &unk_1A9994A30;
      sub_1A97D8380(&v24[*(v67 + 48)], v20, &qword_1EB3B1DF8, &unk_1A9994A30);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1A99772B0();

      v73 = 0xD000000000000024;
      v74 = 0x80000001A99E33D0;
      v68 = sub_1A97D4920();
      MEMORY[0x1AC5895B0](v68);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v37 = v73;
      v38 = v20;
      goto LABEL_19;
    }

    v39 = *v24;

    v40 = *(v24 + 1);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD000000000000020, 0x80000001A99E3400);
    sub_1A9976DF0();
    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v37 = v73;
    v42 = type metadata accessor for SFAirDrop.DeclineAction;
    v43 = &v24[v41];
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v53 = *(v24 + 1);

    v54 = *(v24 + 2);
    v55 = *(v24 + 3);
    v56 = *(v24 + 4);
    v57 = *(v24 + 5);
    v58 = *(v24 + 6);
    v59 = *(v24 + 8);

    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1A99772B0();

    strcpy(v78, ".transferring(");
    HIBYTE(v78[1]) = -18;
    v73 = v54;
    v74 = v55;
    v75 = v56;
    v76 = v57;
    v77 = v58;
    v61 = SFAirDrop.Progress.description.getter();
    v63 = v62;
    sub_1A97C2280(v54, v55, v56);
    MEMORY[0x1AC5895B0](v61, v63);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v37 = v78[0];
    v42 = type metadata accessor for SFAirDrop.DeclineAction;
    v43 = &v24[v60];
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = *(v24 + 1);
    v27 = *(v24 + 3);
    v28 = *(v24 + 4);
    v29 = *(v24 + 5);
    v30 = v24[48];
    v31 = *(v24 + 7);
    v32 = *(v24 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v31, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
    v34 = &qword_1EB3B1798;
    v35 = &qword_1A99929A8;
    sub_1A97D8380(&v24[*(v33 + 48)], v16, &qword_1EB3B1798, &qword_1A99929A8);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1A99772B0();

    v73 = 0xD00000000000002DLL;
    v74 = 0x80000001A99E7070;
    v36 = sub_1A97D4074();
    MEMORY[0x1AC5895B0](v36);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v37 = v73;
    v38 = v16;
LABEL_19:
    sub_1A97B06FC(v38, v34, v35);
    return v37;
  }

  sub_1A98E6488(v24, type metadata accessor for SFAirDropSend.Transfer.State);
  return 0x676E61686378652ELL;
}

uint64_t SFAirDropSend.Transfer.State.shortDescription.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v0, v8, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = *(v8 + 1);
        v22 = *(v8 + 3);
        v23 = *(v8 + 4);
        v24 = *(v8 + 5);
        v25 = v8[48];
        v26 = *(v8 + 7);
        v27 = *(v8 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v26, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        sub_1A97B06FC(&v8[*(v28 + 48)], &qword_1EB3B1E20, &qword_1A99A4860);
        return 0xD000000000000020;
      }

      else
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
        sub_1A98EEE34(&v8[*(v44 + 48)], v4, type metadata accessor for SFAirDropSend.Failure);
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1A99772B0();
        MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
        sub_1A9977400();
        MEMORY[0x1AC5895B0](41, 0xE100000000000000);
        v45 = v47;
        sub_1A98E6488(v4, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v8, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        return v45;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v41 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48) + 8];

      sub_1A98E6488(v8, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      return 0xD000000000000016;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x646574616572632ELL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = *v8;

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      sub_1A97B06FC(&v8[*(v43 + 48)], &qword_1EB3B1DF8, &unk_1A9994A30);
      return 0xD000000000000023;
    }

    else
    {
      v19 = *v8;

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
      sub_1A98E6488(&v8[*(v20 + 64)], type metadata accessor for SFAirDrop.DeclineAction);
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = *(v8 + 1);

    v30 = *(v8 + 2);
    v31 = *(v8 + 3);
    v32 = *(v8 + 4);
    v33 = *(v8 + 5);
    v34 = *(v8 + 6);
    v35 = *(v8 + 8);

    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1A99772B0();

    strcpy(v52, ".transferring(");
    HIBYTE(v52[1]) = -18;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    v50 = v33;
    v51 = v34;
    v37 = SFAirDrop.Progress.description.getter();
    v39 = v38;
    sub_1A97C2280(v30, v31, v32);
    MEMORY[0x1AC5895B0](v37, v39);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v40 = v52[0];
    sub_1A98E6488(&v8[v36], type metadata accessor for SFAirDrop.DeclineAction);
    return v40;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = *(v8 + 1);
    v11 = *(v8 + 3);
    v12 = *(v8 + 4);
    v13 = *(v8 + 5);
    v14 = v8[48];
    v15 = *(v8 + 7);
    v16 = *(v8 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v15, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
    sub_1A97B06FC(&v8[*(v17 + 48)], &qword_1EB3B1798, &qword_1A99929A8);
    return 0xD00000000000002CLL;
  }

  else
  {
    sub_1A98E6488(v8, type metadata accessor for SFAirDropSend.Transfer.State);
    return 0x676E61686378652ELL;
  }
}

uint64_t SFAirDropSend.Transfer.State.cancelAction.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  v1 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v72 = (&v69 - v2);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v3 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF0, &qword_1A9994A28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v69 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E18, &unk_1A9994A50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v71 = (&v69 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - v19;
  v21 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v73, v24, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37 = *v24;

        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
        sub_1A97D8380(&v24[*(v38 + 48)], v13, &qword_1EB3B1DF8, &unk_1A9994A30);
        sub_1A97C13A4(&v13[*(v10 + 60)], v9, &qword_1EB3B1DF0, &qword_1A9994A28);
        sub_1A97B06FC(v13, &qword_1EB3B1DF8, &unk_1A9994A30);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = type metadata accessor for SFAirDrop.DeclineAction();
          (*(*(v39 - 8) + 56))(v74, 1, 1, v39);
          return sub_1A97B06FC(v9, &qword_1EB3B1DF0, &qword_1A9994A28);
        }

        v64 = v9[1];

        v65 = v9[3];

        v66 = v9[4];

        v56 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v55 = *v24;

    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v45 = *(v24 + 1);
        v46 = *(v24 + 3);
        v47 = *(v24 + 4);
        v48 = *(v24 + 5);
        v49 = v24[48];
        v50 = *(v24 + 7);
        v51 = *(v24 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v50, v51);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
        sub_1A97D8380(&v24[*(v52 + 48)], v5, &qword_1EB3B1798, &qword_1A99929A8);
        v53 = v72;
        sub_1A97C13A4(&v5[*(v69 + 60)], v72, &qword_1EB3B17E8, &unk_1A99A4890);
        sub_1A97B06FC(v5, &qword_1EB3B1798, &qword_1A99929A8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v54 = type metadata accessor for SFAirDrop.DeclineAction();
          (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
          return sub_1A97B06FC(v53, &qword_1EB3B17E8, &unk_1A99A4890);
        }

        v58 = v53[1];

        v59 = v53[3];

        v60 = v53[4];

        v56 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v26 = *(v24 + 1);
        v27 = *(v24 + 3);
        v28 = *(v24 + 4);
        v29 = *(v24 + 5);
        v30 = v24[48];
        v31 = *(v24 + 7);
        v32 = *(v24 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v31, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        sub_1A97D8380(&v24[*(v33 + 48)], v20, &qword_1EB3B1E20, &qword_1A99A4860);
        v34 = v71;
        sub_1A97C13A4(&v20[*(v17 + 60)], v71, &qword_1EB3B1E18, &unk_1A9994A50);
        sub_1A97B06FC(v20, &qword_1EB3B1E20, &qword_1A99A4860);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = type metadata accessor for SFAirDrop.DeclineAction();
          (*(*(v35 - 8) + 56))(v74, 1, 1, v35);
          return sub_1A97B06FC(v34, &qword_1EB3B1E18, &unk_1A9994A50);
        }

        v61 = v34[1];

        v62 = v34[3];

        v63 = v34[4];

        v56 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
        goto LABEL_20;
      }

LABEL_16:
      v57 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v57 - 8) + 56))(v74, 1, 1, v57);
      return sub_1A98E6488(v24, type metadata accessor for SFAirDropSend.Transfer.State);
    }

    v40 = *(v24 + 1);

    v41 = *(v24 + 5);
    v42 = *(v24 + 6);
    sub_1A97C2280(*(v24 + 2), *(v24 + 3), *(v24 + 4));
    v43 = *(v24 + 8);

    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
  }

  v56 = &v24[v44];
LABEL_20:
  v67 = v74;
  sub_1A98EEE34(v56, v74, type metadata accessor for SFAirDrop.DeclineAction);
  v68 = type metadata accessor for SFAirDrop.DeclineAction();
  return (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
}

uint64_t SFAirDropSend.Transfer.State.currentProgressCount.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v0, v4, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v28 = *(v4 + 1);
        v29 = *(v4 + 3);
        v30 = *(v4 + 4);
        v31 = *(v4 + 5);
        v32 = v4[48];
        v33 = *(v4 + 7);
        v34 = *(v4 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v33, v34);
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868) + 48);
        v14 = &qword_1EB3B1E20;
        v15 = &qword_1A99A4860;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
        sub_1A98E6488(&v4[*(v16 + 48)], type metadata accessor for SFAirDropSend.Failure);
      }

      else
      {
        v36 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48) + 8];
      }

      v35 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
LABEL_21:
      sub_1A98E6488(v4, v35);
      return 1000;
    }

    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = *v4;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      sub_1A97B06FC(&v4[*(v38 + 48)], &qword_1EB3B1DF8, &unk_1A9994A30);
      return 0;
    }

    v17 = *v4;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
    sub_1A98E6488(&v4[*(v18 + 64)], type metadata accessor for SFAirDrop.DeclineAction);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *(v4 + 1);

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    v24 = *(v4 + 4);
    v23 = *(v4 + 5);
    v25 = *(v4 + 6);
    v26 = *(v4 + 8);

    if (v24 >> 62)
    {
      if (v24 >> 62 == 1)
      {
        sub_1A97C2280(v22, v21, v24);
        v27 = 1000;
      }

      else
      {
        v40 = v24 != 0x8000000000000000 || (v21 | v22 | v23 | v25) != 0;
        v27 = v40 << 63 >> 63;
      }
    }

    else
    {
      v27 = 500;
      if ((v24 & 1) == 0 && v21 >= 1)
      {
        if ((v23 * 1000) >> 64 != (1000 * v23) >> 63)
        {
          __break(1u);
          return result;
        }

        v27 = 1000 * v23 / v21;
      }
    }

    v41 = v27;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
    sub_1A98E6488(&v4[*(v42 + 80)], type metadata accessor for SFAirDrop.DeclineAction);
    return v41;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v35 = type metadata accessor for SFAirDropSend.Transfer.State;
    goto LABEL_21;
  }

  v6 = *(v4 + 1);
  v7 = *(v4 + 3);
  v8 = *(v4 + 4);
  v9 = *(v4 + 5);
  v10 = v4[48];
  v11 = *(v4 + 7);
  v12 = *(v4 + 8);

  sub_1A97B4368();
  sub_1A97B43C4(v11, v12);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878) + 48);
  v14 = &qword_1EB3B1798;
  v15 = &qword_1A99929A8;
LABEL_17:
  sub_1A97B06FC(&v4[v13], v14, v15);
  return 1000;
}

unint64_t sub_1A98E7F78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x726566736E617274;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000028;
    if (a1 != 5)
    {
      v7 = 0x69676E6168637865;
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
    v1 = 0x64657461657263;
    v2 = 0xD000000000000022;
    v3 = 0x726566736E617274;
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_1A98E80E8()
{
  v1 = 0x73736572676F7270;
  if (*v0 != 1)
  {
    v1 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_1A98E8144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98F1BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98E816C(uint64_t a1)
{
  v2 = sub_1A98F0714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E81A8(uint64_t a1)
{
  v2 = sub_1A98F0714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E81EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98F1D08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98E8214(uint64_t a1)
{
  v2 = sub_1A98F03D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8250(uint64_t a1)
{
  v2 = sub_1A98F03D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98E828C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x7363697274656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A98E82CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A99E3B90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98E83B0(uint64_t a1)
{
  v2 = sub_1A98F042C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E83EC(uint64_t a1)
{
  v2 = sub_1A98F042C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8428(uint64_t a1)
{
  v2 = sub_1A98F0768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8464(uint64_t a1)
{
  v2 = sub_1A98F0768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E84A0(uint64_t a1)
{
  v2 = sub_1A98F0570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E84DC(uint64_t a1)
{
  v2 = sub_1A98F0570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8518(uint64_t a1)
{
  v2 = sub_1A98F0480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8554(uint64_t a1)
{
  v2 = sub_1A98F0480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98E8590()
{
  v1 = 0x73736572676F7270;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1A98E8620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98F2040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98E8648(uint64_t a1)
{
  v2 = sub_1A98F0618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8684(uint64_t a1)
{
  v2 = sub_1A98F0618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E86C0(uint64_t a1)
{
  v2 = sub_1A98F066C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E86FC(uint64_t a1)
{
  v2 = sub_1A98F066C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8738(uint64_t a1)
{
  v2 = sub_1A98F051C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8774(uint64_t a1)
{
  v2 = sub_1A98F051C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E87B0()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 1936487029;
  }

  *v0;
  return result;
}

uint64_t sub_1A98E87E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98E88C0(uint64_t a1)
{
  v2 = sub_1A98F06C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E88FC(uint64_t a1)
{
  v2 = sub_1A98F06C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8938()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 0x6F437265646E6573;
  }

  *v0;
  return result;
}

uint64_t sub_1A98E8980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98E8A64(uint64_t a1)
{
  v2 = sub_1A98F05C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8AA0(uint64_t a1)
{
  v2 = sub_1A98F05C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.State.encode(to:)(void *a1)
{
  *(&v161 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5208, &qword_1A99A48B0);
  *&v161 = *(*(&v161 + 1) - 8);
  v2 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](*(&v161 + 1));
  v159 = &v123 - v3;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5210, &qword_1A99A48B8);
  v158 = *(v160 - 8);
  v4 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v123 - v5;
  v128 = type metadata accessor for SFAirDropSend.Failure();
  v6 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v157 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v8 = *(*(v163 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v163);
  v154 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v123 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5218, &qword_1A99A48C0);
  v152 = *(v153 - 8);
  v12 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v123 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  v14 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v150 = &v123 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5220, &qword_1A99A48C8);
  v141 = *(v142 - 8);
  v16 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v123 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5228, &qword_1A99A48D0);
  v145 = *(v146 - 8);
  v18 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v123 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v20 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v143 = &v123 - v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5230, &qword_1A99A48D8);
  v148 = *(v149 - 8);
  v22 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v123 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5238, &qword_1A99A48E0);
  v130 = *(v131 - 8);
  v24 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v26 = &v123 - v25;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5240, &qword_1A99A48E8);
  v138 = *(v139 - 8);
  v27 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v123 - v28;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  v29 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v136 = &v123 - v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5248, &qword_1A99A48F0);
  v134 = *(v135 - 8);
  v31 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v123 - v32;
  v124 = type metadata accessor for SFAirDrop.DeclineAction();
  v33 = *(*(v124 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v124);
  v162 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v123 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5250, &qword_1A99A48F8);
  v129 = *(v37 - 8);
  v38 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v123 - v39;
  v41 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v123 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5258, &unk_1A99A4900);
  v165 = *(v168 - 8);
  v45 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v47 = &v123 - v46;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F03D8();
  v167 = v47;
  sub_1A9977AA0();
  sub_1A98F0858(v164, v44, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v50 = v168;
      v51 = v167;
      if (EnumCaseMultiPayload == 2)
      {
        v79 = *v44;
        v80 = v44[1];
        v81 = v44[3];
        v164 = v44[2];
        v160 = v81;
        v82 = v167;
        v83 = v44[5];
        *&v161 = v44[4];
        *(&v161 + 1) = v83;
        v84 = v44[7];
        v163 = v44[6];
        v159 = v84;
        v85 = v44[8];
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
        v87 = v162;
        sub_1A98EEE34(v44 + *(v86 + 80), v162, type metadata accessor for SFAirDrop.DeclineAction);
        LOBYTE(v175) = 4;
        sub_1A98F0618();
        v88 = v147;
        sub_1A9977640();
        LOBYTE(v175) = 0;
        v89 = v149;
        v90 = v166;
        sub_1A9977690();

        if (v90)
        {
          sub_1A97C2280(v164, v160, v161);

          (*(v148 + 8))(v88, v89);
          sub_1A98E6488(v87, type metadata accessor for SFAirDrop.DeclineAction);
          v91 = *(v165 + 8);
          v92 = v82;
        }

        else
        {
          v118 = v160;
          *&v175 = v164;
          *(&v175 + 1) = v160;
          v119 = v161;
          v176 = v161;
          *&v177 = v163;
          LOBYTE(v170) = 1;
          sub_1A97D7EDC();
          sub_1A99776E0();
          sub_1A97C2280(v164, v118, v119);
          LOBYTE(v175) = 2;
          sub_1A9977650();
          v121 = v162;

          LOBYTE(v175) = 3;
          sub_1A98F04D4(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
          sub_1A99776E0();
          v50 = v168;
          v122 = v167;
          (*(v148 + 8))(v88, v89);
          sub_1A98E6488(v121, type metadata accessor for SFAirDrop.DeclineAction);
          v91 = *(v165 + 8);
          v92 = v122;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v100 = *(v44 + 2);
          v178 = *(v44 + 3);
          v179 = v44[8];
          v101 = *v44;
          v176 = *(v44 + 1);
          v177 = v100;
          v175 = v101;
          LOBYTE(v170) = 6;
          sub_1A98F0570();
          v102 = v140;
          sub_1A9977640();
          v172 = v177;
          v173 = v178;
          v174 = v179;
          v170 = v175;
          v171 = v176;
          sub_1A97D79F0();
          v103 = v142;
          sub_1A99776E0();
          (*(v141 + 8))(v102, v103);
          (*(v165 + 8))(v51, v50);
          return sub_1A97D7A44(&v175);
        }

        v52 = *(v44 + 2);
        v178 = *(v44 + 3);
        v179 = v44[8];
        v53 = *v44;
        v176 = *(v44 + 1);
        v177 = v52;
        v175 = v53;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
        v55 = v143;
        sub_1A97D8380(v44 + *(v54 + 48), v143, &qword_1EB3B1798, &qword_1A99929A8);
        LOBYTE(v170) = 5;
        sub_1A98F05C4();
        v56 = v144;
        sub_1A9977640();
        v172 = v177;
        v173 = v178;
        v174 = v179;
        v170 = v175;
        v171 = v176;
        v169 = 0;
        sub_1A97D7AEC();
        v57 = v146;
        v58 = v166;
        sub_1A99776E0();
        if (v58)
        {
          (*(v145 + 8))(v56, v57);
          sub_1A97B06FC(v55, &qword_1EB3B1798, &qword_1A99929A8);
          (*(v165 + 8))(v51, v50);
          return sub_1A97B44F8(&v175);
        }

        LOBYTE(v170) = 1;
        sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8);
        sub_1A99776E0();
        sub_1A97B44F8(&v175);
        (*(v145 + 8))(v56, v57);
        sub_1A97B06FC(v55, &qword_1EB3B1798, &qword_1A99929A8);
        v91 = *(v165 + 8);
        v92 = v51;
      }

      goto LABEL_37;
    }

    v62 = v168;
    v63 = v167;
    if (EnumCaseMultiPayload)
    {
      v106 = *v44;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      v108 = v136;
      sub_1A97D8380(v44 + *(v107 + 48), v136, &qword_1EB3B1DF8, &unk_1A9994A30);
      LOBYTE(v175) = 2;
      sub_1A98F06C0();
      v109 = v137;
      sub_1A9977640();
      *&v175 = v106;
      LOBYTE(v170) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      sub_1A98F07BC(&qword_1EB3B1910, &qword_1EB3B1918);
      v110 = v139;
      v111 = v166;
      sub_1A99776E0();
      if (v111)
      {
        (*(v138 + 8))(v109, v110);
        sub_1A97B06FC(v108, &qword_1EB3B1DF8, &unk_1A9994A30);
        goto LABEL_27;
      }

      LOBYTE(v175) = 1;
      sub_1A97AF974(&qword_1EB3B52C0, &qword_1EB3B1DF8, &unk_1A9994A30);
      sub_1A99776E0();
      (*(v138 + 8))(v109, v110);
      sub_1A97B06FC(v108, &qword_1EB3B1DF8, &unk_1A9994A30);
LABEL_39:
      v91 = *(v165 + 8);
      v92 = v63;
      v120 = v62;
      return v91(v92, v120);
    }

    v64 = *v44;
    v65 = v44[1];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
    v67 = v132;
    sub_1A98EEE34(v44 + *(v66 + 64), v132, type metadata accessor for SFAirDrop.DeclineAction);
    LOBYTE(v175) = 1;
    sub_1A98F0714();
    v68 = v133;
    sub_1A9977640();
    *&v175 = v64;
    LOBYTE(v170) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98F07BC(&qword_1EB3B1910, &qword_1EB3B1918);
    v69 = v135;
    v70 = v166;
    sub_1A99776E0();
    if (v70)
    {
      (*(v134 + 8))(v68, v69);
      sub_1A98E6488(v67, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_27:
      (*(v165 + 8))(v63, v62);
    }

    LOBYTE(v175) = 1;
    sub_1A99776B0();
    LOBYTE(v175) = 2;
    sub_1A98F04D4(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A99776E0();
    (*(v134 + 8))(v68, v69);
    v99 = type metadata accessor for SFAirDrop.DeclineAction;
LABEL_34:
    sub_1A98E6488(v67, v99);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v71 = *(v44 + 2);
      v178 = *(v44 + 3);
      v179 = v44[8];
      v72 = *v44;
      v176 = *(v44 + 1);
      v177 = v71;
      v175 = v72;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
      v74 = v150;
      sub_1A97D8380(v44 + *(v73 + 48), v150, &qword_1EB3B1E20, &qword_1A99A4860);
      LOBYTE(v170) = 7;
      sub_1A98F051C();
      v75 = v151;
      v50 = v168;
      v76 = v167;
      sub_1A9977640();
      v172 = v177;
      v173 = v178;
      v174 = v179;
      v170 = v175;
      v171 = v176;
      v169 = 0;
      sub_1A97D7AEC();
      v77 = v153;
      v78 = v166;
      sub_1A99776E0();
      if (v78)
      {
        (*(v152 + 8))(v75, v77);
        sub_1A97B06FC(v74, &qword_1EB3B1E20, &qword_1A99A4860);
        (*(v165 + 8))(v76, v50);
        return sub_1A97B44F8(&v175);
      }

      LOBYTE(v170) = 1;
      sub_1A97AF974(&qword_1EB3B5290, &qword_1EB3B1E20, &qword_1A99A4860);
      sub_1A99776E0();
      sub_1A97B44F8(&v175);
      (*(v152 + 8))(v75, v77);
      sub_1A97B06FC(v74, &qword_1EB3B1E20, &qword_1A99A4860);
    }

    else
    {
      v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      v113 = v156;
      sub_1A98EEE34(v44, v156, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v114 = v157;
      sub_1A98EEE34(v44 + v112, v157, type metadata accessor for SFAirDropSend.Failure);
      LOBYTE(v175) = 8;
      sub_1A98F0480();
      v115 = v155;
      v50 = v168;
      v76 = v167;
      sub_1A9977640();
      LOBYTE(v175) = 0;
      sub_1A98F04D4(&qword_1EB3B5270, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v116 = v160;
      v117 = v166;
      sub_1A99776E0();
      if (!v117)
      {
        LOBYTE(v175) = 1;
        sub_1A98F04D4(&qword_1EB3B5280, type metadata accessor for SFAirDropSend.Failure);
        sub_1A99776E0();
      }

      (*(v158 + 8))(v115, v116);
      sub_1A98E6488(v114, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98E6488(v113, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    }

    v91 = *(v165 + 8);
    v92 = v76;
LABEL_37:
    v120 = v50;
    return v91(v92, v120);
  }

  if (EnumCaseMultiPayload == 7)
  {
    v93 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48));
    v95 = *v93;
    v94 = v93[1];
    v67 = v154;
    sub_1A98EEE34(v44, v154, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    LOBYTE(v175) = 9;
    sub_1A98F042C();
    v96 = v159;
    v62 = v168;
    v63 = v167;
    sub_1A9977640();
    LOBYTE(v175) = 0;
    sub_1A98F04D4(&qword_1EB3B5270, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    v97 = *(&v161 + 1);
    v98 = v166;
    sub_1A99776E0();
    if (!v98)
    {
      LOBYTE(v175) = 1;
      sub_1A9977650();
    }

    (*(v161 + 8))(v96, v97);
    v99 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v175) = 0;
    sub_1A98F0768();
    v59 = v168;
    v60 = v167;
    sub_1A9977640();
    (*(v129 + 8))(v40, v37);
    return (*(v165 + 8))(v60, v59);
  }

  else
  {
    LOBYTE(v175) = 3;
    sub_1A98F066C();
    v104 = v168;
    v105 = v167;
    sub_1A9977640();
    (*(v130 + 8))(v26, v131);
    return (*(v165 + 8))(v105, v104);
  }
}

uint64_t SFAirDropSend.Transfer.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52D8, &qword_1A99A4910);
  v159 = *(v156 - 8);
  v3 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v165 = &v135 - v4;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52E0, &qword_1A99A4918);
  v157 = *(v158 - 8);
  v5 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v175 = &v135 - v6;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52E8, &qword_1A99A4920);
  v155 = *(v162 - 8);
  v7 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v168 = &v135 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52F0, &qword_1A99A4928);
  v150 = *(v151 - 8);
  v9 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v174 = &v135 - v10;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52F8, &qword_1A99A4930);
  v152 = *(v153 - 8);
  v11 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v167 = &v135 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5300, &qword_1A99A4938);
  v154 = *(v160 - 8);
  v13 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v173 = &v135 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5308, &qword_1A99A4940);
  v143 = *(v145 - 8);
  v15 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v164 = &v135 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5310, &qword_1A99A4948);
  v147 = *(v149 - 8);
  v17 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v166 = &v135 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5318, &qword_1A99A4950);
  v148 = *(v146 - 8);
  v19 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v172 = &v135 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5320, &qword_1A99A4958);
  v141 = *(v142 - 8);
  v21 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v171 = &v135 - v22;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5328, &unk_1A99A4960);
  v170 = *(v178 - 8);
  v23 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v25 = &v135 - v24;
  v169 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v26 = *(*(v169 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v169);
  v161 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v144 = &v135 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v163 = &v135 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v140 = &v135 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v135 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v135 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v135 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v135 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v135 - v47;
  v50 = a1[3];
  v49 = a1[4];
  v179 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1A98F03D8();
  v176 = v25;
  v51 = v180;
  sub_1A9977A70();
  if (v51)
  {
    goto LABEL_13;
  }

  v52 = v171;
  v136 = v43;
  v138 = v37;
  v137 = v46;
  v135 = v40;
  v53 = v172;
  v54 = v174;
  v55 = v173;
  v56 = v175;
  v180 = 0;
  v139 = v48;
  v57 = v177;
  v58 = v178;
  v59 = v176;
  v60 = sub_1A9977620();
  v61 = (2 * *(v60 + 16)) | 1;
  v187 = v60;
  v188 = v60 + 32;
  v189 = 0;
  v190 = v61;
  v62 = sub_1A97AB860();
  if (v62 == 10 || v189 != v190 >> 1)
  {
    v69 = sub_1A9977300();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v71 = v169;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v62 <= 4u)
  {
    if (v62 <= 1u)
    {
      v79 = v57;
      v80 = v170;
      v81 = v180;
      if (v62)
      {
        LOBYTE(v181) = 1;
        sub_1A98F0714();
        sub_1A9977530();
        if (!v81)
        {
          v92 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
          LOBYTE(v181) = 0;
          sub_1A98F07BC(&qword_1EB3B1AA8, &qword_1EB3B1AB0);
          v93 = v146;
          sub_1A99775F0();
          LOBYTE(v181) = 1;
          sub_1A99775C0();
          v114 = v148;
          v116 = v115;
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
          v180 = 0;
          v175 = *(v117 + 64);
          v137[1] = v116;
          type metadata accessor for SFAirDrop.DeclineAction();
          LOBYTE(v181) = 2;
          sub_1A98F04D4(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction);
          v118 = v180;
          sub_1A99775F0();
          if (!v118)
          {
            (*(v114 + 8))(v53, v93);
            (*(v80 + 8))(v59, v58);
            swift_unknownObjectRelease();
            v134 = v137;
            swift_storeEnumTagMultiPayload();
            v67 = v139;
            sub_1A98EEE34(v134, v139, type metadata accessor for SFAirDropSend.Transfer.State);
            v68 = v179;
            v65 = v92;
            goto LABEL_48;
          }

          (*(v114 + 8))(v53, v93);
          (*(v80 + 8))(v59, v58);
          swift_unknownObjectRelease();
          v119 = *v137;

          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v181) = 0;
        sub_1A98F0768();
        sub_1A9977530();
        if (!v81)
        {
          (*(v141 + 8))(v52, v142);
          (*(v80 + 8))(v59, v58);
          swift_unknownObjectRelease();
          v67 = v139;
          swift_storeEnumTagMultiPayload();
          v68 = v179;
          v65 = v177;
          goto LABEL_48;
        }
      }

      (*(v80 + 8))(v59, v58);
      goto LABEL_12;
    }

    v63 = v170;
    v64 = v180;
    if (v62 == 2)
    {
      LOBYTE(v181) = 2;
      sub_1A98F06C0();
      sub_1A9977530();
      if (!v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        LOBYTE(v181) = 0;
        sub_1A98F07BC(&qword_1EB3B1AA8, &qword_1EB3B1AB0);
        v84 = v136;
        v85 = v149;
        sub_1A99775F0();
        v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880) + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
        LOBYTE(v181) = 1;
        sub_1A97AF974(&qword_1EB3B5348, &qword_1EB3B1DF8, &unk_1A9994A30);
        v101 = v166;
        sub_1A99775F0();
        (*(v147 + 8))(v101, v85);
        (*(v63 + 8))(v176, v178);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v123 = v84;
LABEL_46:
        v67 = v139;
        sub_1A98EEE34(v123, v139, type metadata accessor for SFAirDropSend.Transfer.State);
        v68 = v179;
        goto LABEL_47;
      }
    }

    else
    {
      if (v62 == 3)
      {
        v65 = v57;
        LOBYTE(v181) = 3;
        sub_1A98F066C();
        v66 = v164;
        sub_1A9977530();
        if (!v64)
        {
          (*(v143 + 8))(v66, v145);
          (*(v63 + 8))(v59, v58);
          swift_unknownObjectRelease();
          v67 = v139;
          swift_storeEnumTagMultiPayload();
          v68 = v179;
LABEL_48:
          sub_1A98EEE34(v67, v65, type metadata accessor for SFAirDropSend.Transfer.State);
          v73 = v68;
          return __swift_destroy_boxed_opaque_existential_0Tm(v73);
        }

        goto LABEL_33;
      }

      LOBYTE(v181) = 4;
      sub_1A98F0618();
      sub_1A9977530();
      if (!v64)
      {
        LOBYTE(v181) = 0;
        v88 = sub_1A99775A0();
        v105 = v55;
        v106 = v135;
        *v135 = v88;
        v106[1] = v107;
        v180 = v107;
        LOBYTE(v181) = 1;
        sub_1A97D826C();
        sub_1A99775F0();
        LOBYTE(v181) = 2;
        v130 = sub_1A9977550();
        v132 = v131;
        v175 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
        v106[7] = v130;
        v106[8] = v132;
        v174 = v132;
        type metadata accessor for SFAirDrop.DeclineAction();
        LOBYTE(v181) = 3;
        sub_1A98F04D4(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction);
        v133 = v160;
        sub_1A99775F0();
        (*(v154 + 8))(v105, v133);
        (*(v63 + 8))(v59, v58);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v123 = v106;
        goto LABEL_46;
      }
    }

LABEL_33:
    (*(v63 + 8))(v59, v58);
    goto LABEL_12;
  }

  if (v62 <= 6u)
  {
    if (v62 == 5)
    {
      LOBYTE(v181) = 5;
      sub_1A98F05C4();
      v82 = v180;
      sub_1A9977530();
      if (!v82)
      {
        LOBYTE(v181) = 0;
        sub_1A97D8218();
        v83 = v153;
        sub_1A99775F0();
        v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878) + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
        v186 = 1;
        sub_1A97AF974(&qword_1EB3B1AC0, &qword_1EB3B1798, &qword_1A99929A8);
        v112 = v138;
        v113 = v167;
        sub_1A99775F0();
        (*(v152 + 8))(v113, v83);
        (*(v170 + 8))(v59, v58);
        swift_unknownObjectRelease();
LABEL_45:
        swift_storeEnumTagMultiPayload();
        v123 = v112;
        goto LABEL_46;
      }
    }

    else
    {
      LOBYTE(v181) = 6;
      sub_1A98F0570();
      v94 = v180;
      sub_1A9977530();
      if (!v94)
      {
        sub_1A97D81C4();
        v95 = v151;
        sub_1A99775F0();
        v96 = v170;
        (*(v150 + 8))(v54, v95);
        (*(v96 + 8))(v59, v58);
        swift_unknownObjectRelease();
        v120 = v184;
        v121 = v140;
        *(v140 + 2) = v183;
        *(v121 + 48) = v120;
        *(v121 + 64) = v185;
        v122 = v182;
        *v121 = v181;
        *(v121 + 16) = v122;
        swift_storeEnumTagMultiPayload();
        v67 = v139;
        sub_1A98EEE34(v121, v139, type metadata accessor for SFAirDropSend.Transfer.State);
        v68 = v179;
LABEL_47:
        v65 = v57;
        goto LABEL_48;
      }
    }

LABEL_11:
    (*(v170 + 8))(v59, v58);
    goto LABEL_12;
  }

  if (v62 == 7)
  {
    LOBYTE(v181) = 7;
    sub_1A98F051C();
    v86 = v180;
    sub_1A9977530();
    v87 = v170;
    if (!v86)
    {
      LOBYTE(v181) = 0;
      sub_1A97D8218();
      sub_1A99775F0();
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
      v186 = 1;
      v103 = v162;
      sub_1A97AF974(&qword_1EB3B5340, &qword_1EB3B1E20, &qword_1A99A4860);
      v112 = v163;
      v104 = v168;
      sub_1A99775F0();
      (*(v155 + 8))(v104, v103);
      (*(v87 + 8))(v59, v58);
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v75 = v170;
  if (v62 != 8)
  {
    LOBYTE(v181) = 9;
    sub_1A98F042C();
    v89 = v165;
    v90 = v178;
    v91 = v180;
    sub_1A9977530();
    if (v91)
    {
      (*(v75 + 8))(v59, v90);
      swift_unknownObjectRelease();
      v73 = v179;
      return __swift_destroy_boxed_opaque_existential_0Tm(v73);
    }

    type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    LOBYTE(v181) = 0;
    sub_1A98F04D4(&qword_1EB3B5330, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    v99 = v156;
    sub_1A99775F0();
    LOBYTE(v181) = 1;
    v109 = sub_1A9977550();
    v110 = v159;
    v124 = v109;
    v126 = v125;
    v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48);
    v128 = v110;
    v180 = 0;
    v112 = v161;
    v129 = &v161[v127];
    (*(v128 + 8))(v89, v99);
    (*(v75 + 8))(v59, v178);
    swift_unknownObjectRelease();
    *v129 = v124;
    *(v129 + 1) = v126;
    goto LABEL_45;
  }

  LOBYTE(v181) = 8;
  sub_1A98F0480();
  v76 = v56;
  v77 = v178;
  v78 = v180;
  sub_1A9977530();
  if (!v78)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    LOBYTE(v181) = 0;
    sub_1A98F04D4(&qword_1EB3B5330, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    v97 = v144;
    v98 = v158;
    sub_1A99775F0();
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
    type metadata accessor for SFAirDropSend.Failure();
    LOBYTE(v181) = 1;
    sub_1A98F04D4(&qword_1EB3B5338, type metadata accessor for SFAirDropSend.Failure);
    sub_1A99775F0();
    (*(v157 + 8))(v76, v98);
    (*(v75 + 8))(v59, v178);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v123 = v97;
    goto LABEL_46;
  }

  (*(v75 + 8))(v59, v77);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v73 = v179;
  return __swift_destroy_boxed_opaque_existential_0Tm(v73);
}

uint64_t SFAirDropSend.Transfer.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Transfer(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Transfer.displayPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropSend.Transfer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t SFAirDropSend.Transfer.activeInterfaceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropSend.Transfer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SFAirDropSend.Transfer.endpointID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 40);
  v4 = *(type metadata accessor for SFAirDropSend.Request() + 28);
  v5 = sub_1A99762C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t SFAirDropSend.Transfer.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropSend.Transfer.receiverName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13)
{
  v19 = *a7;
  v20 = *a11;
  sub_1A98EEE34(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v21 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98EEE34(a2, a9 + v21[10], type metadata accessor for SFAirDropSend.Request);
  v22 = (a9 + v21[12]);
  *v22 = a3;
  v22[1] = a4;
  v23 = v21[5];
  v24 = sub_1A9976230();
  (*(*(v24 - 8) + 32))(a9 + v23, a5, v24);
  sub_1A98EEE34(a6, a9 + v21[6], type metadata accessor for SFAirDropSend.Transfer.State);
  *(a9 + v21[7]) = v19;
  v25 = (a9 + v21[11]);
  *v25 = a8;
  v25[1] = a10;
  *(a9 + v21[8]) = v20;
  sub_1A98EEE34(a12, a9 + v21[9], type metadata accessor for SFAirDropClient.Identifier);
  return sub_1A98EEE34(a13, a9 + v21[13], type metadata accessor for SFAirDrop.NetworkMetrics);
}

uint64_t SFAirDropSend.Transfer.update(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(a1, a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  LOBYTE(v9) = *(v2 + v5[7]);
  v11 = (v2 + v5[11]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v5[8]);
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v9;
  v16 = (a2 + v5[11]);
  *v16 = v13;
  v16[1] = v12;
  *(a2 + v5[8]) = v14;
}

uint64_t SFAirDropSend.Transfer.update(displayPriority:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v11 = (v2 + v5[11]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v5[8]);
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v4;
  v16 = (a2 + v5[11]);
  *v16 = v13;
  v16[1] = v12;
  *(a2 + v5[8]) = v14;
}

uint64_t SFAirDropSend.Transfer.update(activeInterfaceType:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v11 = *(v2 + v5[7]);
  v12 = (v2 + v5[11]);
  v14 = *v12;
  v13 = v12[1];
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v11;
  v16 = (a2 + v5[11]);
  *v16 = v14;
  v16[1] = v13;
  *(a2 + v5[8]) = v4;
}

uint64_t SFAirDropSend.Transfer.update(networkMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1A98F0858(v3, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v3 + v6[10], a2 + v6[10], type metadata accessor for SFAirDropSend.Request);
  v7 = (v3 + v6[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v6[5];
  v11 = sub_1A9976230();
  (*(*(v11 - 8) + 16))(a2 + v10, v3 + v10, v11);
  sub_1A98F0858(v3 + v6[6], a2 + v6[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v12 = *(v3 + v6[7]);
  v13 = (v3 + v6[11]);
  v15 = *v13;
  v14 = v13[1];
  v16 = *(v3 + v6[8]);
  sub_1A98F0858(v3 + v6[9], a2 + v6[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(a1, a2 + v6[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v17 = (a2 + v6[12]);
  *v17 = v9;
  v17[1] = v8;
  *(a2 + v6[7]) = v12;
  v18 = (a2 + v6[11]);
  *v18 = v15;
  v18[1] = v14;
  *(a2 + v6[8]) = v16;
}

uint64_t SFAirDropSend.Transfer.description.getter()
{
  v1 = v0;
  _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v2 = sub_1A98752D4(8);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1AC589540](v2, v4, v6, v8);

  v13 = v9;
  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  v10 = v1 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 24);
  v11 = SFAirDropSend.Transfer.State.description.getter();
  MEMORY[0x1AC5895B0](v11);

  return v13;
}

unint64_t sub_1A98ED154(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x7265766965636572;
    if (a1 != 8)
    {
      v6 = 0x4D6B726F7774656ELL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746E6573657270;
    if (a1 != 5)
    {
      v7 = 0x75716552646E6573;
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
    v1 = 25705;
    v2 = 0x6574617473;
    v3 = 0x5079616C70736964;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7461447472617473;
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

uint64_t sub_1A98ED2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98F21B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98ED2F0(uint64_t a1)
{
  v2 = sub_1A98F08E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98ED32C(uint64_t a1)
{
  v2 = sub_1A98F08E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5350, &qword_1A99A4970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F08E0();
  sub_1A9977AA0();
  v24[15] = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1A98F04D4(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDropSend.Transfer(0);
    v12 = v11[5];
    v24[14] = 1;
    sub_1A9976230();
    sub_1A98F04D4(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v13 = v11[6];
    v24[13] = 2;
    type metadata accessor for SFAirDropSend.Transfer.State(0);
    sub_1A98F04D4(&qword_1EB3B5360, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A99776E0();
    v24[12] = *(v3 + v11[7]);
    v24[11] = 3;
    sub_1A97D843C();
    sub_1A99776E0();
    v24[10] = *(v3 + v11[8]);
    v24[9] = 4;
    sub_1A97D84E4();
    sub_1A9977680();
    v14 = v11[9];
    v24[8] = 5;
    type metadata accessor for SFAirDropClient.Identifier();
    sub_1A98F04D4(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier);
    sub_1A99776E0();
    v15 = v11[10];
    v24[7] = 6;
    type metadata accessor for SFAirDropSend.Request();
    sub_1A98F04D4(&qword_1EB3B41C8, type metadata accessor for SFAirDropSend.Request);
    sub_1A99776E0();
    v16 = (v3 + v11[11]);
    v17 = *v16;
    v18 = v16[1];
    v24[6] = 7;
    sub_1A9977650();
    v19 = (v3 + v11[12]);
    v20 = *v19;
    v21 = v19[1];
    v24[5] = 8;
    sub_1A9977650();
    v22 = v11[13];
    v24[4] = 9;
    type metadata accessor for SFAirDrop.NetworkMetrics();
    sub_1A98F04D4(&qword_1EB3B1B40, type metadata accessor for SFAirDrop.NetworkMetrics);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropSend.Transfer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SFAirDropSend.Request();
  v5 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SFAirDropClient.Identifier();
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A9976230();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5368, &qword_1A99A4978);
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v22 = type metadata accessor for SFAirDropSend.Transfer(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1A98F08E0();
  v56 = v21;
  v28 = v57;
  sub_1A9977A70();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  v29 = v52;
  v57 = v11;
  v30 = v22;
  v70 = 0;
  sub_1A98F04D4(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
  v31 = v53;
  sub_1A99775F0();
  sub_1A98EEE34(v31, v25, type metadata accessor for SFAirDrop.TransferIdentifier);
  v69 = 1;
  sub_1A98F04D4(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
  v32 = v57;
  sub_1A99775F0();
  (*(v51 + 32))(&v25[v30[5]], v14, v32);
  v68 = 2;
  sub_1A98F04D4(&qword_1EB3B5370, type metadata accessor for SFAirDropSend.Transfer.State);
  v53 = 0;
  sub_1A99775F0();
  sub_1A98EEE34(v29, &v25[v30[6]], type metadata accessor for SFAirDropSend.Transfer.State);
  v66 = 3;
  sub_1A97D8538();
  sub_1A99775F0();
  v25[v30[7]] = v67;
  v64 = 4;
  sub_1A97D85E0();
  sub_1A9977590();
  v25[v30[8]] = v65;
  v63 = 5;
  sub_1A98F04D4(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier);
  v33 = v49;
  sub_1A99775F0();
  sub_1A98EEE34(v33, &v25[v30[9]], type metadata accessor for SFAirDropClient.Identifier);
  v62 = 6;
  sub_1A98F04D4(&qword_1EB3B43C0, type metadata accessor for SFAirDropSend.Request);
  v34 = v47;
  sub_1A99775F0();
  sub_1A98EEE34(v34, &v25[v30[10]], type metadata accessor for SFAirDropSend.Request);
  v61 = 7;
  v35 = sub_1A9977550();
  v36 = &v25[v30[11]];
  *v36 = v35;
  v36[1] = v37;
  v60 = 8;
  v38 = sub_1A9977550();
  v39 = &v25[v30[12]];
  *v39 = v38;
  v39[1] = v40;
  v59 = 9;
  sub_1A98F04D4(&qword_1EB3B1B88, type metadata accessor for SFAirDrop.NetworkMetrics);
  sub_1A99775F0();
  (*(v54 + 8))(v56, v55);
  sub_1A98EEE34(v45, &v25[v30[13]], type metadata accessor for SFAirDrop.NetworkMetrics);
  sub_1A98F0858(v25, v43, type metadata accessor for SFAirDropSend.Transfer);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  return sub_1A98E6488(v25, type metadata accessor for SFAirDropSend.Transfer);
}

uint64_t sub_1A98EE31C(uint64_t a1)
{
  v3 = v1;
  _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v4 = sub_1A98752D4(8);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x1AC589540](v4, v6, v8, v10);

  v15 = v11;
  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  v12 = v3 + *(a1 + 24);
  v13 = SFAirDropSend.Transfer.State.description.getter();
  MEMORY[0x1AC5895B0](v13);

  return v15;
}

uint64_t SFAirDropSend.Transfer.State.sameCase(as:)(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v113 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v112 = &v112 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v114 = &v112 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v112 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v112 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v112 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v112 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v112 - v23);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v112 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v112 - v31;
  sub_1A98F0858(a1, &v112 - v31, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          sub_1A98F0858(v115, v30, type metadata accessor for SFAirDropSend.Transfer.State);
          v56 = swift_getEnumCaseMultiPayload() == 8;
          sub_1A98E6488(v30, type metadata accessor for SFAirDropSend.Transfer.State);
          return v56;
        }

        sub_1A98F0858(v115, v18, type metadata accessor for SFAirDropSend.Transfer.State);
        v99 = swift_getEnumCaseMultiPayload() == 9;
        v100 = v18;
        goto LABEL_23;
      }

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);
      v96 = *&v32[*(v95 + 48) + 8];

      v97 = v113;
      sub_1A98F0858(v115, v113, type metadata accessor for SFAirDropSend.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v98 = *(v97 + *(v95 + 48) + 8);

        v93 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
        sub_1A98E6488(v97, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        v94 = v32;
        goto LABEL_38;
      }

      sub_1A98E6488(v97, type metadata accessor for SFAirDropSend.Transfer.State);
      v61 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v62 = v32;
LABEL_35:
      sub_1A98E6488(v62, v61);
      return 0;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
      v107 = *(v106 + 48);
      v108 = v112;
      sub_1A98F0858(v115, v112, type metadata accessor for SFAirDropSend.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1A98E6488(v108 + *(v106 + 48), type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v108, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        sub_1A98E6488(&v32[v107], type metadata accessor for SFAirDropSend.Failure);
        v94 = v32;
        v109 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
LABEL_39:
        sub_1A98E6488(v94, v109);
        return 1;
      }

      sub_1A98E6488(v108, type metadata accessor for SFAirDropSend.Transfer.State);
      sub_1A98E6488(&v32[v107], type metadata accessor for SFAirDropSend.Failure);
      v61 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v62 = v32;
      goto LABEL_35;
    }

    v63 = v32;
    v64 = *(v32 + 1);
    v65 = *(v32 + 3);
    v66 = *(v32 + 4);
    v67 = *(v32 + 5);
    v68 = v32[48];
    v69 = *(v32 + 7);
    v70 = *(v32 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v69, v70);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
    v72 = *(v71 + 48);
    v73 = v114;
    sub_1A98F0858(v115, v114, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v74 = *(v73 + 8);
      v75 = *(v73 + 24);
      v76 = *(v73 + 32);
      v77 = *(v73 + 40);
      v78 = *(v73 + 48);
      v79 = *(v73 + 56);
      v80 = *(v73 + 64);

      sub_1A97B4368();
      sub_1A97B43C4(v79, v80);
      v81 = *(v71 + 48);
      v53 = &qword_1EB3B1E20;
      v54 = &qword_1A99A4860;
      sub_1A97B06FC(v73 + v81, &qword_1EB3B1E20, &qword_1A99A4860);
      v55 = &v63[v72];
      goto LABEL_26;
    }

    sub_1A98E6488(v73, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(&v32[v72], &qword_1EB3B1E20, &qword_1A99A4860);
    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v58 = *v32;

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
      v60 = *(v59 + 64);
      sub_1A98F0858(v115, v27, type metadata accessor for SFAirDropSend.Transfer.State);
      if (!swift_getEnumCaseMultiPayload())
      {
        v110 = *v27;

        v111 = *(v59 + 64);
        v93 = type metadata accessor for SFAirDrop.DeclineAction;
        sub_1A98E6488(v27 + v111, type metadata accessor for SFAirDrop.DeclineAction);
        v94 = &v32[v60];
        goto LABEL_38;
      }

      sub_1A98E6488(v27, type metadata accessor for SFAirDropSend.Transfer.State);
      v61 = type metadata accessor for SFAirDrop.DeclineAction;
      v62 = &v32[v60];
      goto LABEL_35;
    }

    v101 = *v32;

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
    v103 = *(v102 + 48);
    sub_1A98F0858(v115, v24, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v104 = *v24;

      v105 = *(v102 + 48);
      v53 = &qword_1EB3B1DF8;
      v54 = &unk_1A9994A30;
      sub_1A97B06FC(v24 + v105, &qword_1EB3B1DF8, &unk_1A9994A30);
      v55 = &v32[v103];
      goto LABEL_26;
    }

    sub_1A98E6488(v24, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(&v32[v103], &qword_1EB3B1DF8, &unk_1A9994A30);
    return 0;
  }

  v34 = v32;
  if (EnumCaseMultiPayload == 2)
  {
    v82 = *(v32 + 1);

    v83 = *(v32 + 5);
    v84 = *(v32 + 6);
    sub_1A97C2280(*(v32 + 2), *(v32 + 3), *(v32 + 4));
    v85 = *(v32 + 8);

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
    v87 = *(v86 + 80);
    sub_1A98F0858(v115, v15, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v88 = v15[1];

      v89 = v15[5];
      v90 = v15[6];
      sub_1A97C2280(v15[2], v15[3], v15[4]);
      v91 = v15[8];

      v92 = *(v86 + 80);
      v93 = type metadata accessor for SFAirDrop.DeclineAction;
      sub_1A98E6488(v15 + v92, type metadata accessor for SFAirDrop.DeclineAction);
      v94 = &v32[v87];
LABEL_38:
      v109 = v93;
      goto LABEL_39;
    }

    sub_1A98E6488(v15, type metadata accessor for SFAirDropSend.Transfer.State);
    v61 = type metadata accessor for SFAirDrop.DeclineAction;
    v62 = &v32[v87];
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1A98E6488(v32, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A98F0858(v115, v12, type metadata accessor for SFAirDropSend.Transfer.State);
    v99 = swift_getEnumCaseMultiPayload() == 4;
    v100 = v12;
LABEL_23:
    sub_1A98E6488(v100, type metadata accessor for SFAirDropSend.Transfer.State);
    return v99;
  }

  v35 = *(v32 + 1);
  v36 = *(v32 + 3);
  v37 = *(v32 + 4);
  v38 = *(v32 + 5);
  v39 = v32[48];
  v40 = *(v32 + 7);
  v41 = *(v32 + 8);

  sub_1A97B4368();
  sub_1A97B43C4(v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
  v43 = *(v42 + 48);
  sub_1A98F0858(v115, v21, type metadata accessor for SFAirDropSend.Transfer.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1A98E6488(v21, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(&v34[v43], &qword_1EB3B1798, &qword_1A99929A8);
    return 0;
  }

  v44 = *(v21 + 1);
  v45 = *(v21 + 3);
  v46 = *(v21 + 4);
  v47 = *(v21 + 5);
  v48 = v21[48];
  v49 = v34;
  v50 = *(v21 + 7);
  v51 = *(v21 + 8);

  sub_1A97B4368();
  sub_1A97B43C4(v50, v51);
  v52 = *(v42 + 48);
  v53 = &qword_1EB3B1798;
  v54 = &qword_1A99929A8;
  sub_1A97B06FC(&v21[v52], &qword_1EB3B1798, &qword_1A99929A8);
  v55 = &v49[v43];
LABEL_26:
  sub_1A97B06FC(v55, v53, v54);
  return 1;
}

uint64_t sub_1A98EEE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7Sharing13SFAirDropSendO8TransferV5StateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v205 = a1;
  v3 = type metadata accessor for SFAirDropSend.Failure();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  *(&v194 + 1) = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v196 = &v188 - v7;
  v8 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v198 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v194 = &v188 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v195 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v197 = &v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  *&v193 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  *(&v193 + 1) = &v188 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v191 = &v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v188 - v27;
  v28 = type metadata accessor for SFAirDrop.DeclineAction();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v199 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v200 = &v188 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v189 = &v188 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v190 = &v188 - v36;
  v37 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v203 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v204 = &v188 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v201 = &v188 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v202 = &v188 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v188 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v188 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = (&v188 - v54);
  MEMORY[0x1EEE9AC00](v53);
  v57 = (&v188 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5488, &qword_1A99A5890);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v62 = &v188 - v61;
  v63 = &v188 + *(v60 + 56) - v61;
  sub_1A98F0858(v205, &v188 - v61, type metadata accessor for SFAirDropSend.Transfer.State);
  v64 = a2;
  v65 = v63;
  sub_1A98F0858(v64, v63, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v67 = v63;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v124 = v202;
          sub_1A98F0858(v62, v202, type metadata accessor for SFAirDropSend.Transfer.State);
          v125 = *(v124 + 48);
          v223 = *(v124 + 32);
          v224 = v125;
          v225 = *(v124 + 64);
          v126 = *(v124 + 16);
          v221 = *v124;
          v222 = v126;
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v127 = *(v63 + 1);
            v128 = *(v63 + 3);
            v218 = *(v63 + 2);
            v219 = v128;
            v129 = *(v63 + 1);
            v216 = *v63;
            v217 = v129;
            v130 = *(v124 + 48);
            v213 = *(v124 + 32);
            v214 = v130;
            v131 = *(v124 + 16);
            v211 = *v124;
            v212 = v131;
            v132 = *(v63 + 3);
            v208 = v218;
            v209 = v132;
            v220 = *(v63 + 8);
            v215 = *(v124 + 64);
            v210 = *(v63 + 8);
            v206 = v216;
            v207 = v127;
            v78 = _s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(&v211, &v206);
            sub_1A97D7A44(&v216);
            sub_1A97D7A44(&v221);
LABEL_43:
            sub_1A98E6488(v62, type metadata accessor for SFAirDropSend.Transfer.State);
            return v78 & 1;
          }

          sub_1A97D7A44(&v221);
          goto LABEL_54;
        }

        sub_1A98F0858(v62, v49, type metadata accessor for SFAirDropSend.Transfer.State);
        v68 = *(v49 + 3);
        v223 = *(v49 + 2);
        v224 = v68;
        v225 = *(v49 + 8);
        v69 = *(v49 + 1);
        v221 = *v49;
        v222 = v69;
        v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878) + 48);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v71 = *(v63 + 3);
          v218 = *(v63 + 2);
          v219 = v71;
          v220 = *(v63 + 8);
          v72 = *(v63 + 1);
          v216 = *v63;
          v217 = v72;
          v73 = &qword_1EB3B1798;
          v74 = &qword_1A99929A8;
          v75 = *(&v193 + 1);
          sub_1A97D8380(&v49[v70], *(&v193 + 1), &qword_1EB3B1798, &qword_1A99929A8);
          v76 = v67 + v70;
          v77 = v193;
          sub_1A97D8380(v76, v193, &qword_1EB3B1798, &qword_1A99929A8);
          v213 = v223;
          v214 = v224;
          v215 = v225;
          v211 = v221;
          v212 = v222;
          v208 = v218;
          v209 = v219;
          v210 = v220;
          v206 = v216;
          v207 = v217;
          if (_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v211, &v206))
          {
            v78 = sub_1A98E2B64(v75, v77);
            sub_1A97B44F8(&v216);
            sub_1A97B44F8(&v221);
            sub_1A97B06FC(v77, &qword_1EB3B1798, &qword_1A99929A8);
            v79 = v75;
LABEL_39:
            sub_1A97B06FC(v79, v73, v74);
            goto LABEL_43;
          }

          sub_1A97B44F8(&v216);
          sub_1A97B44F8(&v221);
          v90 = &qword_1EB3B1798;
          v91 = &qword_1A99929A8;
          sub_1A97B06FC(v77, &qword_1EB3B1798, &qword_1A99929A8);
          v173 = v75;
          goto LABEL_75;
        }

        v147 = &qword_1EB3B1798;
        v148 = &qword_1A99929A8;
        v149 = &v49[v70];
        goto LABEL_49;
      }

      sub_1A98F0858(v62, v52, type metadata accessor for SFAirDropSend.Transfer.State);
      v95 = v52[1];
      v203 = *v52;
      v204 = v95;
      v205 = v62;
      v97 = v52[2];
      v96 = v52[3];
      v98 = v52[4];
      v99 = v52[5];
      v100 = v52[6];
      v202 = v52[7];
      v101 = v52[8];
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v196 = v97;
        v197 = v100;
        v201 = v101;
        v103 = *v67;
        v104 = v67[1];
        v105 = v67[2];
        v106 = v67[3];
        v192 = v98;
        *&v193 = v105;
        v107 = v67[4];
        v108 = v67[5];
        *(&v193 + 1) = v106;
        *&v194 = v107;
        v110 = v67[6];
        v109 = v67[7];
        *(&v194 + 1) = v108;
        v195 = v110;
        v190 = v109;
        v198 = v67[8];
        v111 = v52 + v102;
        v112 = v200;
        sub_1A98EEE34(v111, v200, type metadata accessor for SFAirDrop.DeclineAction);
        v113 = v199;
        sub_1A98EEE34(v67 + v102, v199, type metadata accessor for SFAirDrop.DeclineAction);
        if (v203 == v103 && v204 == v104)
        {

          v114 = v192;
          v115 = v96;
        }

        else
        {
          v166 = sub_1A99777E0();

          v114 = v192;
          v115 = v96;
          if ((v166 & 1) == 0)
          {
            sub_1A97C2280(v193, *(&v193 + 1), v194);
            sub_1A97C2280(v196, v96, v114);

            sub_1A98E6488(v113, type metadata accessor for SFAirDrop.DeclineAction);
            sub_1A98E6488(v112, type metadata accessor for SFAirDrop.DeclineAction);
            v174 = v205;
            goto LABEL_79;
          }
        }

        v191 = v99;
        v167 = v196;
        *&v221 = v196;
        *(&v221 + 1) = v115;
        *&v222 = v114;
        *(&v222 + 1) = v99;
        *&v223 = v197;
        v168 = v193;
        v216 = v193;
        v169 = v194;
        v217 = v194;
        *&v218 = v195;
        LODWORD(v204) = _s7Sharing9SFAirDropO8ProgressO2eeoiySbAE_AEtFZ_0(&v221, &v216);
        sub_1A97C2280(v168, *(&v168 + 1), v169);
        sub_1A97C2280(v167, v115, v114);
        v170 = v205;
        if ((v204 & 1) == 0)
        {

          sub_1A98E6488(v199, type metadata accessor for SFAirDrop.DeclineAction);
          v176 = v200;
LABEL_89:
          sub_1A98E6488(v176, type metadata accessor for SFAirDrop.DeclineAction);
          goto LABEL_90;
        }

        v171 = v199;
        if (v201)
        {
          v172 = v200;
          if (v198)
          {
            if (v202 == v190 && v201 == v198)
            {

              goto LABEL_95;
            }

            v178 = sub_1A99777E0();

            if (v178)
            {
LABEL_95:
              if (*v172 == *v171 && *(v172 + 8) == *(v171 + 8) || (sub_1A99777E0() & 1) != 0)
              {
                v179 = *(v172 + 24);
                v180 = *(v172 + 32);
                v181 = *(v172 + 40);
                v182 = *(v172 + 48);
                *&v221 = *(v172 + 16);
                *(&v221 + 1) = v179;
                *&v222 = v180;
                *(&v222 + 1) = v181;
                LOBYTE(v223) = v182;
                v184 = *(v171 + 24);
                v185 = *(v171 + 32);
                v186 = *(v171 + 40);
                v187 = *(v171 + 48);
                *&v216 = *(v171 + 16);
                v183 = v216;
                *(&v216 + 1) = v184;
                *&v217 = v185;
                *(&v217 + 1) = v186;
                LOBYTE(v218) = v187;
                sub_1A97DC908(v221, v179, v180, v181, v182);
                sub_1A97DC908(v183, v184, v185, v186, v187);
                LOBYTE(v183) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v221, &v216);
                sub_1A97DC96C(v216, *(&v216 + 1), v217, *(&v217 + 1), v218);
                sub_1A97DC96C(v221, *(&v221 + 1), v222, *(&v222 + 1), v223);
                sub_1A98E6488(v171, type metadata accessor for SFAirDrop.DeclineAction);
                sub_1A98E6488(v172, type metadata accessor for SFAirDrop.DeclineAction);
                if (v183)
                {
                  v133 = v170;
                  goto LABEL_35;
                }

LABEL_90:
                v174 = v170;
                goto LABEL_79;
              }
            }

LABEL_88:
            sub_1A98E6488(v171, type metadata accessor for SFAirDrop.DeclineAction);
            v176 = v172;
            goto LABEL_89;
          }
        }

        else
        {
          v172 = v200;
          if (!v198)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_88;
      }

      sub_1A98E6488(v52 + v102, type metadata accessor for SFAirDrop.DeclineAction);

      sub_1A97C2280(v97, v96, v98);

      v62 = v205;
LABEL_54:
      sub_1A97B06FC(v62, &qword_1EB3B5488, &qword_1A99A5890);
LABEL_80:
      v78 = 0;
      return v78 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1A98F0858(v62, v55, type metadata accessor for SFAirDropSend.Transfer.State);
      v134 = *v55;
      v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v136 = *v65;
        v137 = v55 + v135;
        v138 = v192;
        sub_1A97D8380(v137, v192, &qword_1EB3B1DF8, &unk_1A9994A30);
        v139 = v65 + v135;
        v140 = v191;
        sub_1A97D8380(v139, v191, &qword_1EB3B1DF8, &unk_1A9994A30);
        v141 = sub_1A99054C0(v134, v136);

        if (v141)
        {
          v78 = sub_1A98E2F20(v138, v140);
          v73 = &qword_1EB3B1DF8;
          v74 = &unk_1A9994A30;
          sub_1A97B06FC(v140, &qword_1EB3B1DF8, &unk_1A9994A30);
          v79 = v138;
          goto LABEL_39;
        }

        v90 = &qword_1EB3B1DF8;
        v91 = &unk_1A9994A30;
        sub_1A97B06FC(v140, &qword_1EB3B1DF8, &unk_1A9994A30);
        v173 = v138;
LABEL_75:
        sub_1A97B06FC(v173, v90, v91);
        goto LABEL_78;
      }

      sub_1A97B06FC(v55 + v135, &qword_1EB3B1DF8, &unk_1A9994A30);
      goto LABEL_51;
    }

    sub_1A98F0858(v62, v57, type metadata accessor for SFAirDropSend.Transfer.State);
    v81 = *v57;
    v82 = v57[1];
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v57 + v83, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_51:

      goto LABEL_54;
    }

    v150 = *v63;
    v151 = *(v63 + 1);
    v152 = v190;
    sub_1A98EEE34(v57 + v83, v190, type metadata accessor for SFAirDrop.DeclineAction);
    v153 = v189;
    sub_1A98EEE34(v65 + v83, v189, type metadata accessor for SFAirDrop.DeclineAction);
    v154 = sub_1A99054C0(v81, v150);

    if (v154 & 1) != 0 && v82 == v151 && (*v152 == *v153 && *(v152 + 8) == *(v153 + 8) || (sub_1A99777E0()))
    {
      v155 = *(v152 + 24);
      v156 = *(v152 + 32);
      v157 = *(v152 + 40);
      v158 = *(v152 + 48);
      *&v221 = *(v152 + 16);
      *(&v221 + 1) = v155;
      *&v222 = v156;
      *(&v222 + 1) = v157;
      LOBYTE(v223) = v158;
      v160 = *(v153 + 24);
      v161 = *(v153 + 32);
      v162 = *(v153 + 40);
      v163 = *(v153 + 48);
      *&v216 = *(v153 + 16);
      v159 = v216;
      *(&v216 + 1) = v160;
      *&v217 = v161;
      *(&v217 + 1) = v162;
      LOBYTE(v218) = v163;
      sub_1A97DC908(v221, v155, v156, v157, v158);
      sub_1A97DC908(v159, v160, v161, v162, v163);
      LOBYTE(v159) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v221, &v216);
      sub_1A97DC96C(v216, *(&v216 + 1), v217, *(&v217 + 1), v218);
      sub_1A97DC96C(v221, *(&v221 + 1), v222, *(&v222 + 1), v223);
      sub_1A98E6488(v153, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v152, type metadata accessor for SFAirDrop.DeclineAction);
      if ((v159 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_34;
    }

    sub_1A98E6488(v153, type metadata accessor for SFAirDrop.DeclineAction);
    v164 = v152;
    v165 = type metadata accessor for SFAirDrop.DeclineAction;
LABEL_77:
    sub_1A98E6488(v164, v165);
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v84 = v201;
      sub_1A98F0858(v62, v201, type metadata accessor for SFAirDropSend.Transfer.State);
      v85 = *(v84 + 48);
      v223 = *(v84 + 32);
      v224 = v85;
      v225 = *(v84 + 64);
      v86 = *(v84 + 16);
      v221 = *v84;
      v222 = v86;
      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868) + 48);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v88 = *(v63 + 3);
        v218 = *(v63 + 2);
        v219 = v88;
        v220 = *(v63 + 8);
        v89 = *(v63 + 1);
        v216 = *v63;
        v217 = v89;
        v90 = &qword_1EB3B1E20;
        v91 = &qword_1A99A4860;
        v92 = v84 + v87;
        v93 = v197;
        sub_1A97D8380(v92, v197, &qword_1EB3B1E20, &qword_1A99A4860);
        v94 = v195;
        sub_1A97D8380(&v63[v87], v195, &qword_1EB3B1E20, &qword_1A99A4860);
        v213 = v223;
        v214 = v224;
        v215 = v225;
        v211 = v221;
        v212 = v222;
        v208 = v218;
        v209 = v219;
        v210 = v220;
        v206 = v216;
        v207 = v217;
        if (_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v211, &v206))
        {
          v78 = sub_1A98E32DC(v93, v94);
          sub_1A97B44F8(&v216);
          sub_1A97B44F8(&v221);
          v73 = &qword_1EB3B1E20;
          v74 = &qword_1A99A4860;
          sub_1A97B06FC(v94, &qword_1EB3B1E20, &qword_1A99A4860);
          v79 = v93;
          goto LABEL_39;
        }

        sub_1A97B44F8(&v216);
        sub_1A97B44F8(&v221);
        sub_1A97B06FC(v94, &qword_1EB3B1E20, &qword_1A99A4860);
        v173 = v93;
        goto LABEL_75;
      }

      v147 = &qword_1EB3B1E20;
      v148 = &qword_1A99A4860;
      v149 = v84 + v87;
LABEL_49:
      sub_1A97B06FC(v149, v147, v148);
      sub_1A97B44F8(&v221);
      goto LABEL_54;
    }

    v116 = v204;
    sub_1A98F0858(v62, v204, type metadata accessor for SFAirDropSend.Transfer.State);
    v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v143 = v194;
      sub_1A98EEE34(v63, v194, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v144 = v196;
      sub_1A98EEE34(v116 + v142, v196, type metadata accessor for SFAirDropSend.Failure);
      v145 = *(&v194 + 1);
      sub_1A98EEE34(&v63[v142], *(&v194 + 1), type metadata accessor for SFAirDropSend.Failure);
      v146 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v116, v143);
      sub_1A98E6488(v116, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      if (v146)
      {
        v78 = _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(v144, v145);
        sub_1A98E6488(v145, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v144, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v143, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        goto LABEL_43;
      }

      sub_1A98E6488(v145, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98E6488(v144, type metadata accessor for SFAirDropSend.Failure);
      v165 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v164 = v143;
      goto LABEL_77;
    }

    sub_1A98E6488(v116 + v142, type metadata accessor for SFAirDropSend.Failure);
LABEL_53:
    sub_1A98E6488(v116, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    goto LABEL_54;
  }

  v80 = v63;
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_54;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 9)
    {
      goto LABEL_54;
    }

    goto LABEL_34;
  }

  v116 = v203;
  sub_1A98F0858(v62, v203, type metadata accessor for SFAirDropSend.Transfer.State);
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48);
  v119 = *(v116 + v117);
  v118 = *(v116 + v117 + 8);
  if (swift_getEnumCaseMultiPayload() != 7)
  {

    goto LABEL_53;
  }

  v121 = *&v63[v117];
  v120 = *&v63[v117 + 8];
  v122 = v198;
  sub_1A98EEE34(v80, v198, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  v123 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v116, v122);
  sub_1A98E6488(v116, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  if (!v123)
  {
    sub_1A98E6488(v122, type metadata accessor for SFAirDropSend.Transfer.Metrics);

    goto LABEL_71;
  }

  if (!v118)
  {
    sub_1A98E6488(v122, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    if (!v120)
    {
      goto LABEL_34;
    }

LABEL_71:

LABEL_78:
    v174 = v62;
LABEL_79:
    sub_1A98E6488(v174, type metadata accessor for SFAirDropSend.Transfer.State);
    goto LABEL_80;
  }

  if (!v120)
  {

    v165 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    v164 = v122;
    goto LABEL_77;
  }

  if (v119 == v121 && v118 == v120)
  {

    sub_1A98E6488(v122, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  }

  else
  {
    v177 = sub_1A99777E0();

    sub_1A98E6488(v122, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    if ((v177 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_34:
  v133 = v62;
LABEL_35:
  sub_1A98E6488(v133, type metadata accessor for SFAirDropSend.Transfer.State);
  v78 = 1;
  return v78 & 1;
}