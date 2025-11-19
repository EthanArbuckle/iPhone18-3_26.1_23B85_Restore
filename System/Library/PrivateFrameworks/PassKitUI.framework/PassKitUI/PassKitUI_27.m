uint64_t sub_1BD312178@<X0>(void *a1@<X8>)
{
  v3 = 0;
  v72[17] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI35AppleCardFeaturesAndBenefitsManager_accountUsers);
  if (!v9)
  {
LABEL_52:
    v14 = v72;
    sub_1BD3115CC(v72);
    v18 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = *(v18 + 2);
    v20 = *(v18 + 3);
    v9 = v15 + 1;
    if (v15 < v20 >> 1)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

  v69 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  v67 = v5;
  v68 = 0;
  v66 = v1;
  if ((v9 & 0xC000000000000001) == 0)
  {
    v29 = *(v9 + 32);
    v30 = v29 & 0x3F;
    v31 = ((1 << v29) + 63) >> 6;
    v32 = 8 * v31;
    v33 = sub_1BE048C84();
    if (v30 > 0xD)
    {
      sub_1BE048C84();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v62 = swift_slowAlloc();
        v10 = sub_1BD313EEC(v62, v31, v9, sub_1BD31293C, 0, sub_1BD2AF0D4);
        v68 = 0;

        MEMORY[0x1BFB45F20](v62, -1, -1);
        goto LABEL_38;
      }
    }

    v64 = v31;
    v63[1] = v63;
    MEMORY[0x1EEE9AC00](v33, v34);
    v4 = v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v4, v32);
    v8 = 0;
    v3 = 0;
    v15 = v9 + 56;
    v35 = 1 << *(v9 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v14 = v36 & *(v9 + 56);
    v5 = ((v35 + 63) >> 6);
    v18 = &selRef_initWithVerificationController_fieldsModel_;
    while (v14)
    {
      v37 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_33:
      v39 = v37 | (v3 << 6);
      if (([*(*(v9 + 48) + 8 * v39) isCurrentUser] & 1) == 0)
      {
        *&v4[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_37:
          v10 = sub_1BD2AF0D4(v4, v64, v8, v9);
          goto LABEL_38;
        }
      }
    }

    v20 = v3;
    while (1)
    {
      v3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v3 >= v5)
      {
        goto LABEL_37;
      }

      v38 = *(v15 + 8 * v3);
      ++v20;
      if (v38)
      {
        v37 = __clz(__rbit64(v38));
        v14 = (v38 - 1) & v38;
        goto LABEL_33;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v18 = sub_1BD1D8574((v20 > 1), v9, 1, v18);
    goto LABEL_53;
  }

  v10 = MEMORY[0x1E69E7CD0];
  v72[0] = MEMORY[0x1E69E7CD0];
  sub_1BE048C84();
  v4 = sub_1BE0536B4();
  v11 = sub_1BE053744();
  if (v11)
  {
    v12 = v11;
    v8 = sub_1BD0E5E8C(0, &qword_1EBD41C18);
    v13 = v12;
    v14 = MEMORY[0x1E69E7C98];
    v9 = &selRef_initWithVerificationController_fieldsModel_;
    v15 = -1;
    v3 = 1;
    do
    {
      v70 = v13;
      swift_dynamicCast();
      v16 = [v71 isCurrentUser];
      v5 = v71;
      if (v16)
      {
      }

      else
      {
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1BD2A81DC(v17 + 1);
        }

        v10 = v72[0];
        v18 = v5;
        v19 = sub_1BE053064();
        v20 = v10 + 56;
        v21 = -1 << *(v10 + 32);
        v22 = v19 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v10 + 56 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v10 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              goto LABEL_56;
            }

            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v20 + 8 * v23);
          }

          while (v28 == -1);
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
        }

        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v10 + 48) + 8 * v24) = v5;
        ++*(v10 + 16);
      }

      v13 = sub_1BE053744();
    }

    while (v13);
  }

LABEL_38:
  v5 = v67;
  v8 = v69;
  v3 = v68;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v41 = sub_1BE053704();
  }

  else
  {
    v41 = *(v10 + 16);
  }

  if (!v41)
  {
    v4 = v65;
    goto LABEL_52;
  }

  v42 = sub_1BD30C28C();
  if (!v42)
  {
    goto LABEL_47;
  }

  v43 = v42;
  v44 = [v42 accountUserInvitationAllowedFeatureDescriptor];
  if (!v44)
  {
    __break(1u);
    goto LABEL_63;
  }

  v45 = v44;
  v46 = [v44 maximumAccountUsers];

  v47 = v41 < v46;
  v8 = v69;
  if (v47)
  {
    v48 = 1;
  }

  else
  {
LABEL_47:
    v48 = 0;
  }

  v14 = v72;
  sub_1BD311B8C(v41, v48, v72);
  v18 = sub_1BD1D8574(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v18 + 2);
  v49 = *(v18 + 3);
  v9 = v15 + 1;
  if (v15 >= v49 >> 1)
  {
    v18 = sub_1BD1D8574((v49 > 1), v15 + 1, 1, v18);
  }

  v4 = v65;
LABEL_53:
  *(v18 + 2) = v9;
  v50 = &v18[136 * v15];
  v51 = *(v14 + 112);
  *(v50 + 8) = *(v14 + 96);
  *(v50 + 9) = v51;
  *(v50 + 20) = *(v14 + 128);
  v52 = *(v14 + 48);
  *(v50 + 4) = *(v14 + 32);
  *(v50 + 5) = v52;
  v53 = *(v14 + 80);
  *(v50 + 6) = *(v14 + 64);
  *(v50 + 7) = v53;
  v54 = *(v14 + 16);
  *(v50 + 2) = *v14;
  *(v50 + 3) = v54;
  v71 = v18;
  sub_1BE048C84();
  v43 = v3;
  sub_1BD312F2C(&v71);
  if (v3)
  {
LABEL_63:

    __break(1u);
    return result;
  }

  v55 = v71;
  (*(v5 + 13))(v8, *MEMORY[0x1E69B80B0], v4);
  v56 = PKPassKitBundle();
  if (!v56)
  {
    __break(1u);
  }

  v57 = v56;
  v58 = sub_1BE04B6F4();
  v60 = v59;

  result = (*(v5 + 1))(v8, v4);
  *a1 = 0xD000000000000014;
  a1[1] = 0x80000001BE122EB0;
  a1[2] = v58;
  a1[3] = v60;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v55;
  return result;
}

void sub_1BD3128D8()
{
  if (!qword_1EBD41BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41C00);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD41BF8);
    }
  }
}

uint64_t sub_1BD312974@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppleCardFeaturesAndBenefitsManager();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

id sub_1BD3129B4(id *a1)
{
  v1 = *a1;
  result = [*a1 state];
  if (result != 1)
  {
    return ([v1 state] == 2);
  }

  return result;
}

uint64_t sub_1BD312A10(void *a1, char a2, uint64_t (*a3)(void *))
{
  if (a1 && (a2 & 1) != 0)
  {
    v4 = a1;
    v5 = a1;
    v6 = [v5 navigationItem];
    sub_1BD0E5E8C(0, &qword_1EBD41C40);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE0530B4();
    v8 = sub_1BE052C74();
    [v6 setLeftBarButtonItem_];

    a1 = v4;
  }

  return a3(a1);
}

void sub_1BD312B64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1BD312BC8(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v1 = [a1 accountIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BE052434();
    v5 = v4;

    v6 = sub_1BD30C28C();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = sub_1BD30C28C();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = v6;
  v8 = [v6 accountIdentifier];

  if (v8)
  {
    v9 = sub_1BE052434();
    v11 = v10;

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (v5)
  {
LABEL_11:
    if (v11)
    {
      if (v3 == v9 && v5 == v11)
      {
      }

      else
      {
        v12 = sub_1BE053B84();

        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_8:
  if (!v11)
  {
LABEL_19:

    sub_1BD309550();
    return;
  }

LABEL_15:
}

uint64_t sub_1BD312E50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  if (a3)
  {
    sub_1BD0E5E8C(0, a5);
    sub_1BD214890(a7, a5);
    sub_1BE052A34();
  }

  if (a4)
  {
    a4 = sub_1BE052434();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  sub_1BD314240(a4, v12);
}

uint64_t sub_1BD312F2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED754(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BD312F98(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BD312F98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BE053B14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BE0527B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BD313260(v7, v8, a1, v4);
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
    return sub_1BD313090(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BD313090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 136 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 24);
      v12 = *(v10 - 112);
      v13 = *(v10 - 24);
      if (*(v10 + 112))
      {
        if (!v13)
        {
          goto LABEL_22;
        }

        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v11 == 0;
        }

        if (v15 || v12 == 0)
        {
LABEL_4:
          ++v4;
          v7 += 136;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      sub_1BD0DDEBC();
      result = sub_1BE0535A4();
      if (result != -1)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v17 = v10 - 136;
      v28 = *(v10 + 80);
      v29 = *(v10 + 96);
      v30 = *(v10 + 112);
      v31 = *(v10 + 128);
      v24 = *(v10 + 16);
      v25 = *(v10 + 32);
      v26 = *(v10 + 48);
      v27 = *(v10 + 64);
      v23 = *v10;
      v18 = *(v10 - 56);
      *(v10 + 64) = *(v10 - 72);
      *(v10 + 80) = v18;
      v19 = *(v10 - 24);
      *(v10 + 96) = *(v10 - 40);
      *(v10 + 112) = v19;
      *(v10 + 128) = *(v10 - 8);
      v20 = *(v10 - 88);
      *(v10 + 32) = *(v10 - 104);
      *(v10 + 48) = v20;
      v21 = *(v10 - 120);
      *v10 = *(v10 - 136);
      *(v10 + 16) = v21;
      *(v17 + 64) = v27;
      *(v17 + 80) = v28;
      *(v17 + 96) = v29;
      *(v17 + 112) = v30;
      *(v17 + 128) = v31;
      *(v17 + 16) = v24;
      *(v17 + 32) = v25;
      *(v17 + 48) = v26;
      *v17 = v23;
      v10 -= 136;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1BD313260(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v110 = result;
  v6 = *(a3 + 8);
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_131:
    __src = *v110;
    if (!*v110)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_133:
      v100 = v8 + 16;
      v101 = *(v8 + 2);
      if (v101 >= 2)
      {
        v112 = v5;
        v5 = 136;
        while (*v112)
        {
          v102 = &v8[16 * v101];
          v103 = *v102;
          v104 = &v100[2 * v101];
          v105 = v104[1];
          sub_1BD313A68((*v112 + 136 * *v102), (*v112 + 136 * *v104), (*v112 + 136 * v105), __src);
          if (v4)
          {
          }

          if (v105 < v103)
          {
            goto LABEL_156;
          }

          if (v101 - 2 >= *v100)
          {
            goto LABEL_157;
          }

          *v102 = v103;
          *(v102 + 1) = v105;
          v106 = *v100 - v101;
          if (*v100 < v101)
          {
            goto LABEL_158;
          }

          v101 = *v100 - 1;
          result = memmove(v104, v104 + 2, 16 * v106);
          *v100 = v101;
          if (v101 <= 1)
          {
          }
        }

        goto LABEL_168;
      }
    }

LABEL_164:
    result = sub_1BD5ED6C8(v8);
    v8 = result;
    goto LABEL_133;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_47;
    }

    v10 = *v5;
    v11 = *v5 + 136 * v7;
    v12 = *(v11 + 24);
    v13 = *v5 + 136 * v9;
    v14 = *(v13 + 24);
    v15 = *(v13 + 112);
    if (*(v11 + 112))
    {
      if (!v15)
      {
        v17 = 1;
        goto LABEL_22;
      }

      if (v12)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
LABEL_20:
        sub_1BD0DDEBC();
        result = sub_1BE0535A4();
        v17 = result == -1;
        goto LABEL_22;
      }
    }

    else
    {
      if (v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = v12 == 0;
      }

      if (!v18 && v14 != 0)
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
LABEL_22:
    v7 = v9 + 2;
    if (v9 + 2 < v6)
    {
      v20 = v10 + 136 * v9 + 248;
      while (1)
      {
        v21 = v20;
        v22 = *(v20 + 48);
        v23 = *(v20 + 136);
        v20 += 136;
        v24 = *(v21 - 11);
        v25 = *v21;
        if (v23)
        {
          if (!v25)
          {
            if (!v17)
            {
              goto LABEL_47;
            }

            goto LABEL_26;
          }
        }

        else if (v25)
        {
          goto LABEL_25;
        }

        if (v22)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          sub_1BD0DDEBC();
          result = sub_1BE0535A4();
          if (((v17 ^ (result != -1)) & 1) == 0)
          {
            break;
          }

          goto LABEL_26;
        }

LABEL_25:
        if (v17)
        {
          goto LABEL_39;
        }

LABEL_26:
        if (v6 == ++v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v17)
    {
LABEL_39:
      if (v7 < v9)
      {
        goto LABEL_161;
      }

      if (v9 < v7)
      {
        v27 = v5;
        v28 = 136 * v7 - 136;
        v29 = 136 * v9;
        v30 = v7;
        v107 = v9;
        do
        {
          if (v9 != --v30)
          {
            v31 = *v27;
            if (!*v27)
            {
              goto LABEL_167;
            }

            v32 = v31 + v28;
            v124 = *(v31 + v29 + 80);
            v126 = *(v31 + v29 + 96);
            v128 = *(v31 + v29 + 112);
            v130 = *(v31 + v29 + 128);
            v116 = *(v31 + v29 + 16);
            v118 = *(v31 + v29 + 32);
            v120 = *(v31 + v29 + 48);
            v122 = *(v31 + v29 + 64);
            v114 = *(v31 + v29);
            result = memmove((v31 + v29), (v31 + v28), 0x88uLL);
            *(v32 + 80) = v124;
            *(v32 + 96) = v126;
            *(v32 + 112) = v128;
            *(v32 + 128) = v130;
            *(v32 + 16) = v116;
            *(v32 + 32) = v118;
            *(v32 + 48) = v120;
            *(v32 + 64) = v122;
            *v32 = v114;
          }

          ++v9;
          v28 -= 136;
          v29 += 136;
        }

        while (v9 < v30);
        v5 = v27;
        v9 = v107;
      }
    }

LABEL_47:
    v33 = *(v5 + 8);
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_160;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_80:
    if (v7 < v9)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BD1D7844(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1BD1D7844((v53 > 1), v54 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v7;
    v57 = *v110;
    if (!*v110)
    {
      goto LABEL_169;
    }

    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_100:
          if (v62)
          {
            goto LABEL_147;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_150;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_154;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_114:
        if (v80)
        {
          goto LABEL_149;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_152;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_121:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
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
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v5)
        {
          goto LABEL_166;
        }

        v97 = *&v8[16 * v96 + 32];
        v98 = *&v8[16 * v58 + 40];
        sub_1BD313A68((*v5 + 136 * v97), (*v5 + 136 * *&v8[16 * v58 + 32]), (*v5 + 136 * v98), v57);
        if (v4)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BD5ED6C8(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_144;
        }

        v99 = &v8[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        result = sub_1BD5ED63C(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_145;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_146;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_148;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_151;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_155;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v6 = *(v5 + 8);
    if (v7 >= v6)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_162;
  }

  if (v9 + a4 >= v33)
  {
    v34 = *(v5 + 8);
  }

  else
  {
    v34 = (v9 + a4);
  }

  if (v34 < v9)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v7 == v34)
  {
    goto LABEL_80;
  }

  v111 = v5;
  __src = v34;
  v35 = v9;
  v36 = *v5;
  v37 = *v5 + 136 * v7;
  v108 = v35;
  v38 = v35 - v7;
LABEL_58:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    v41 = *(v40 + 24);
    v42 = *(v40 - 112);
    v43 = *(v40 - 24);
    if (!*(v40 + 112))
    {
      if (v43)
      {
        v45 = 1;
      }

      else
      {
        v45 = v41 == 0;
      }

      if (!v45 && v42 != 0)
      {
        goto LABEL_74;
      }

LABEL_57:
      ++v7;
      v37 += 136;
      --v38;
      if (v7 == __src)
      {
        v7 = __src;
        v5 = v111;
        v9 = v108;
        goto LABEL_80;
      }

      goto LABEL_58;
    }

    if (!v43)
    {
      goto LABEL_75;
    }

    if (v41)
    {
      v44 = v42 == 0;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_57;
    }

LABEL_74:
    sub_1BD0DDEBC();
    result = sub_1BE0535A4();
    if (result != -1)
    {
      goto LABEL_57;
    }

LABEL_75:
    if (!v36)
    {
      break;
    }

    v47 = v40 - 136;
    v125 = *(v40 + 80);
    v127 = *(v40 + 96);
    v129 = *(v40 + 112);
    v131 = *(v40 + 128);
    v117 = *(v40 + 16);
    v119 = *(v40 + 32);
    v121 = *(v40 + 48);
    v123 = *(v40 + 64);
    v115 = *v40;
    v48 = *(v40 - 56);
    *(v40 + 64) = *(v40 - 72);
    *(v40 + 80) = v48;
    v49 = *(v40 - 24);
    *(v40 + 96) = *(v40 - 40);
    *(v40 + 112) = v49;
    *(v40 + 128) = *(v40 - 8);
    v50 = *(v40 - 88);
    *(v40 + 32) = *(v40 - 104);
    *(v40 + 48) = v50;
    v51 = *(v40 - 120);
    *v40 = *(v40 - 136);
    *(v40 + 16) = v51;
    *(v47 + 64) = v123;
    *(v47 + 80) = v125;
    *(v47 + 96) = v127;
    *(v47 + 112) = v129;
    *(v47 + 128) = v131;
    *(v47 + 16) = v117;
    *(v47 + 32) = v119;
    *(v47 + 48) = v121;
    *v47 = v115;
    v40 -= 136;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_1BD313A68(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 136;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 136;
  if (v9 >= v11)
  {
    if (__src != a2 || &a2[136 * v11] <= __src)
    {
      memmove(__src, a2, 136 * v11);
    }

    v12 = &v4[136 * v11];
    if (v10 < 136 || v6 <= v7)
    {
      goto LABEL_63;
    }

    while (2)
    {
      v5 -= 136;
      while (1)
      {
        v20 = *(v12 - 14);
        v21 = *(v6 - 14);
        v22 = *(v6 - 3);
        if (*(v12 - 3))
        {
          break;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v20 == 0;
        }

        if (!v24 && v21 != 0)
        {
          goto LABEL_53;
        }

LABEL_54:
        v26 = (v12 - 136);
        if (v5 + 136 != v12)
        {
          memmove(v5, v12 - 136, 0x88uLL);
        }

        v5 -= 136;
        v12 -= 136;
        if (v26 <= v4)
        {
          v12 = v26;
          goto LABEL_63;
        }
      }

      if (!v22)
      {
        goto LABEL_56;
      }

      if (v20)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_54;
      }

LABEL_53:
      sub_1BD0DDEBC();
      if (sub_1BE0535A4() == -1)
      {
LABEL_56:
        v27 = v6 - 136;
        if (v5 + 136 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v12 <= v4 || (v6 -= 136, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_63;
        }

        continue;
      }

      goto LABEL_54;
    }
  }

  if (__src != __dst || &__dst[136 * v9] <= __src)
  {
    memmove(__src, __dst, 136 * v9);
  }

  v12 = &v4[136 * v9];
  if (v8 >= 136 && v6 < v5)
  {
    do
    {
      v13 = *(v6 + 3);
      v14 = *(v4 + 3);
      v15 = *(v4 + 14);
      if (*(v6 + 14))
      {
        if (!v15)
        {
          goto LABEL_28;
        }

        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v13 == 0;
        }

        if (v17 || v14 == 0)
        {
LABEL_23:
          v19 = v4;
          v16 = v7 == v4;
          v4 += 136;
          if (v16)
          {
            goto LABEL_25;
          }

LABEL_24:
          memmove(v7, v19, 0x88uLL);
          goto LABEL_25;
        }
      }

      sub_1BD0DDEBC();
      if (sub_1BE0535A4() != -1)
      {
        goto LABEL_23;
      }

LABEL_28:
      v19 = v6;
      v16 = v7 == v6;
      v6 += 136;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_25:
      v7 += 136;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_63:
  v28 = (v12 - v4) / 136;
  if (v6 != v4 || v6 >= &v4[136 * v28])
  {
    memmove(v6, v4, 136 * v28);
  }

  return 1;
}

void sub_1BD313D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1BE048964();
        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1BD313EEC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    sub_1BD313D78(result, a2, a3, a4, a5, a6);
    v13 = v12;

    return v13;
  }

  return result;
}

id sub_1BD313F8C()
{
  v0 = sub_1BE04AA64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKPassKitUIBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE052404();
    v8 = sub_1BE052404();
    v9 = [v6 URLForResource:v7 withExtension:v8];

    if (v9)
    {
      sub_1BE04A9F4();

      v10 = sub_1BE04A9C4();
      (*(v1 + 8))(v4, v0);
    }

    else
    {
      v10 = 0;
    }

    v11 = PKUIScreenScale();
    v12 = PKUIImageFromPDF(v10, 40.0, 40.0, v11);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD314128()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = sub_1BE052404();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = [v2 imageWithTintColor_];

    v2 = [v4 imageWithRenderingMode_];
  }

  return v2;
}

void sub_1BD314240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD30C28C();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 accountIdentifier];

    if (v6)
    {
      v7 = sub_1BE052434();
      v9 = v8;

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (!v9)
      {
        return;
      }

      if (v7 == a1 && v9 == a2)
      {
      }

      else
      {
        v10 = sub_1BE053B84();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_14;
    }
  }

  v7 = 0;
  v9 = 0;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v9)
  {

    return;
  }

LABEL_14:

  sub_1BD309550();
}

uint64_t objectdestroy_124Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_1BD314874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD3148BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD314918()
{
  v1 = v0;
  sub_1BE052524();
  if (v0[3])
  {
    sub_1BE052524();
  }

  if (v0[5])
  {
    sub_1BE052524();
  }

  if (v0[7])
  {
    sub_1BE052524();
  }

  v2 = v0[8];
  if (v2)
  {
    v3 = v2;
    sub_1BE053084();
  }

  v4 = v1[9];
  if (v4)
  {
    v5 = v4;
    sub_1BE053084();
  }

  if (v1[14])
  {
    sub_1BE052524();
  }

  v6 = v1[10];
  if (v6)
  {
    v7 = v6;
    sub_1BE053084();
  }

  if ((v1[12] & 1) == 0)
  {
    MEMORY[0x1BFB40DA0](v1[11]);
  }
}

uint64_t sub_1BD314A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1BD314DA4(v11, v13) & 1;
}

uint64_t sub_1BD314A88()
{
  sub_1BE053D04();
  sub_1BD314918();
  return sub_1BE053D64();
}

uint64_t sub_1BD314ACC()
{
  sub_1BE053D04();
  sub_1BD314918();
  return sub_1BE053D64();
}

uint64_t sub_1BD314B08()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1BE053D04();
  sub_1BE052524();
  if (v1)
  {
    sub_1BE052524();
  }

  if (v2)
  {
    sub_1BE052524();
  }

  if (v3)
  {
    sub_1BD3D8A74(v5, v3);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD314BB0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  result = sub_1BE052524();
  if (v3)
  {
    result = sub_1BE052524();
  }

  if (v4)
  {
    result = sub_1BE052524();
  }

  if (v5)
  {

    return sub_1BD3D8A74(a1, v5);
  }

  return result;
}

uint64_t sub_1BD314C4C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1BE053D04();
  sub_1BE052524();
  if (v1)
  {
    sub_1BE052524();
  }

  if (v2)
  {
    sub_1BE052524();
  }

  if (v3)
  {
    sub_1BD3D8A74(v5, v3);
  }

  return sub_1BE053D64();
}

BOOL sub_1BD314CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BD314FC4(v5, v7);
}

unint64_t sub_1BD314D50()
{
  result = qword_1EBD41C70;
  if (!qword_1EBD41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C70);
  }

  return result;
}

uint64_t sub_1BD314DA4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (*(a1 + 48) != *(a2 + 48) || v10 != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, qword_1EBD4F790);
    v14 = v13;
    v15 = v12;
    v16 = sub_1BE053074();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = *(a1 + 112);
  v18 = *(a2 + 112);
  if (v17)
  {
    if (!v18 || (*(a1 + 104) != *(a2 + 104) || v17 != v18) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 80);
  v20 = *(a2 + 80);
  if (v19)
  {
    if (v20)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43100);
      v21 = v20;
      v22 = v19;
      v23 = sub_1BE053074();

      if (v23)
      {
        goto LABEL_44;
      }
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_44:
  result = *(a2 + 96);
  if ((*(a1 + 96) & 1) == 0)
  {
    return (*(a1 + 88) == *(a2 + 88)) & ~result;
  }

  return result;
}

BOOL sub_1BD314FC4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_1BE053B84() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_20:
  v10 = a1[6];
  v11 = a2[6];
  result = (v10 | v11) == 0;
  if (v10)
  {
    if (v11)
    {
      sub_1BE048C84();
      v13 = sub_1BD3FFE28(v10, v11);

      return v13 & 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCSgIegg_Iegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BD315110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1BD315158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD3151CC()
{
  result = qword_1EBD41C78;
  if (!qword_1EBD41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So14UIActivityTypeaSgSbSayypGSgs5Error_pSgIeggygg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD315238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD315280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD3152E0()
{
  v1 = v0[3];
  v2 = sub_1BE052724();
  if (v1)
  {
    sub_1BD31566C();
    v3 = sub_1BE052724();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69CD9F8]) initWithActivityItems:v2 applicationActivities:v3];

  v5 = v0[4];
  if (v5)
  {
    type metadata accessor for ActivityType(0);
    v5 = sub_1BE052724();
  }

  [v4 setExcludedActivityTypes_];

  if (v0[5])
  {
    v6 = v0[6];
    v9[4] = v0[5];
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BD315448;
    v9[3] = &block_descriptor_56;
    v7 = _Block_copy(v9);
    sub_1BE048964();
  }

  else
  {
    v7 = 0;
  }

  [v4 setCompletionWithItemsHandler_];
  _Block_release(v7);
  return v4;
}

uint64_t sub_1BD315448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1BE052744();
  }

  else
  {
    v9 = 0;
  }

  sub_1BE048964();
  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_1BD315528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD315618();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD31558C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD315618();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD3155F0()
{
  sub_1BD315618();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD315618()
{
  result = qword_1EBD41C80;
  if (!qword_1EBD41C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41C80);
  }

  return result;
}

unint64_t sub_1BD31566C()
{
  result = qword_1EBD41C88;
  if (!qword_1EBD41C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41C88);
  }

  return result;
}

uint64_t sub_1BD3156B8()
{

  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_1BD31572C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C384();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04C3A4();
  if (*(v9 + 16))
  {
    (*(v5 + 16))(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v10 = sub_1BE04C2F4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      v11 = [v10 carKeyTerminalPairingCredential];

      if (v11)
      {
        if (!a1)
        {
          v17 = *(v2 + 16);
          v18 = *(v2 + 32);
          v19 = type metadata accessor for ProvisioningCarHeroFlowItem();
          v20 = objc_allocWithZone(v19);
          *&v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
          *&v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v21 = &v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_identifier];
          *v21 = 0x466F726548726143;
          v21[1] = 0xEF6D657449776F6CLL;
          *&v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_context] = v17;
          *&v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_credential] = v11;
          v20[OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_allowPartnerAppFlow] = v18;
          v30.receiver = v20;
          v30.super_class = v19;
          sub_1BE048964();
          return objc_msgSendSuper2(&v30, sel_init);
        }

        type metadata accessor for ProvisioningCarHeroFlowItem();
        if (swift_dynamicCastClass())
        {
          v12 = *(v2 + 16);
          v13 = type metadata accessor for ProvisioningCarPairingPinCodeFlowItem();
          v14 = objc_allocWithZone(v13);
          *&v14[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v15 = &v14[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_identifier];
          *v15 = 0xD000000000000019;
          *(v15 + 1) = 0x80000001BE123840;
          *&v14[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_context] = v12;
          *&v14[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPairingPinCodeFlowItem_credential] = v11;
          v29.receiver = v14;
          v29.super_class = v13;
          sub_1BE048964();
          return objc_msgSendSuper2(&v29, sel_init);
        }

        type metadata accessor for ProvisioningCarPairingPinCodeFlowItem();
        if (swift_dynamicCastClass())
        {
          objc_allocWithZone(type metadata accessor for ProvisioningCarPerformPairingFlowItem());
          v22 = sub_1BE048964();
          return sub_1BD59A460(v22, v11);
        }

        type metadata accessor for ProvisioningCarPerformPairingFlowItem();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = *(v23 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses);
          if (v24)
          {
            v25 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
            swift_unknownObjectRetain();
            v26 = v24;
            v27 = sub_1BE048964();
            v28 = sub_1BD989980(v27, v26);
            swift_unknownObjectRelease();

            return v28;
          }
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BD315AEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD315B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI33StyledMicaLayerColorConfigurationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1BD315C00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 112))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1BD315C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PassEntitySnippetView()
{
  result = qword_1EBD41C90;
  if (!qword_1EBD41C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD315D58()
{
  sub_1BD315DF4();
  if (v0 <= 0x3F)
  {
    sub_1BE04A884();
    if (v1 <= 0x3F)
    {
      sub_1BD315E44();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD315DF4()
{
  if (!qword_1EBD41CA0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD41CA0);
    }
  }
}

void sub_1BD315E44()
{
  if (!qword_1EBD41CA8)
  {
    sub_1BE04A884();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD41CA8);
    }
  }
}

double sub_1BD315EB8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v13 = 1;
  sub_1BD316054(a1, __src);
  memcpy(__dst, __src, 0x189uLL);
  memcpy(v16, __src, 0x189uLL);
  sub_1BD0DE19C(__dst, v10, &qword_1EBD41CB8);
  sub_1BD0DE53C(v16, &qword_1EBD41CB8);
  memcpy(&v12[7], __dst, 0x189uLL);
  v5 = v13;
  LOBYTE(a1) = sub_1BE0501D4();
  v10[0] = 1;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v14[55] = __src[3];
  *&v14[71] = __src[4];
  *&v14[87] = __src[5];
  *&v14[103] = __src[6];
  *&v14[7] = __src[0];
  *&v14[23] = __src[1];
  *&v14[39] = __src[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v12, 0x190uLL);
  *(a2 + 424) = a1;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 1;
  v6 = *&v14[80];
  *(a2 + 529) = *&v14[64];
  *(a2 + 545) = v6;
  *(a2 + 561) = *&v14[96];
  *(a2 + 576) = *&v14[111];
  v7 = *&v14[16];
  *(a2 + 465) = *v14;
  *(a2 + 481) = v7;
  result = *&v14[32];
  v9 = *&v14[48];
  *(a2 + 497) = *&v14[32];
  *(a2 + 513) = v9;
  return result;
}

uint64_t sub_1BD316054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1BE051584();
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  if (v8 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v35 = v5;
  v37 = a1;
  v9 = *a1;
  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v9, v8);
  sub_1BD041A38(v9, v8);
  v11 = sub_1BE04AAB4();
  v12 = [v10 initWithData_];

  v36 = v9;
  sub_1BD030220(v9, v8);
  if (!v12)
  {
    sub_1BD030220(v36, v8);
    a1 = v37;
LABEL_5:
    sub_1BD316EB8(&v99);
    goto LABEL_6;
  }

  v13 = v12;
  sub_1BE051544();
  v14 = v35;
  (*(v35 + 104))(v7, *MEMORY[0x1E6981630], v3);
  v34 = sub_1BE0515E4();

  (*(v14 + 8))(v7, v3);
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v39[54] = v95;
  *&v39[70] = v96;
  *&v39[86] = v97;
  *&v39[102] = v98;
  *&v39[6] = v92;
  *&v39[22] = v93;
  LOBYTE(v64[0]) = 1;
  LOBYTE(v42) = 1;
  *&v39[38] = v94;
  sub_1BE0513F4();
  v15 = sub_1BE051454();

  sub_1BE0513F4();
  v16 = sub_1BE051454();
  sub_1BD030220(v36, v8);

  *(&v87[4] + 2) = *&v39[64];
  *(&v87[5] + 2) = *&v39[80];
  *(&v87[6] + 2) = *&v39[96];
  *(v87 + 2) = *v39;
  *(&v87[1] + 2) = *&v39[16];
  *(&v87[2] + 2) = *&v39[32];
  v85 = v34;
  LOWORD(v86) = 1;
  *(&v86 + 1) = 0;
  LOWORD(v87[0]) = 1;
  *(&v87[3] + 2) = *&v39[48];
  *&v87[7] = *&v39[110];
  *(&v87[7] + 1) = v15;
  v88 = xmmword_1BE0CACB0;
  *&v89 = 0x3FF0000000000000;
  *(&v89 + 1) = v16;
  v90 = xmmword_1BE0CC060;
  v91 = 0x4000000000000000;
  PKEdgeInsetsMake(&v85, v17);
  v109 = v88;
  v110 = v89;
  v111 = v90;
  v112 = v91;
  v105 = v87[4];
  v106 = v87[5];
  v107 = v87[6];
  v108 = v87[7];
  v101 = v87[0];
  v102 = v87[1];
  v103 = v87[2];
  v104 = v87[3];
  v99 = v85;
  v100 = v86;
  a1 = v37;
LABEL_6:
  v18 = sub_1BE04F7C4();
  LOBYTE(v42) = 0;
  sub_1BD31671C(a1, &v85);
  v59 = v87[0];
  v60 = v87[1];
  v61 = v87[2];
  v62 = v87[3];
  v57 = v85;
  v58 = v86;
  v63[2] = v87[0];
  v63[3] = v87[1];
  v63[4] = v87[2];
  v63[5] = v87[3];
  v63[0] = v85;
  v63[1] = v86;
  sub_1BD0DE19C(&v57, v64, &qword_1EBD41CC0);
  sub_1BD0DE53C(v63, &qword_1EBD41CC0);
  *(&v56[2] + 7) = v59;
  *(&v56[3] + 7) = v60;
  *(&v56[4] + 7) = v61;
  *(&v56[5] + 7) = v62;
  *(v56 + 7) = v57;
  *(&v56[1] + 7) = v58;
  v19 = v42;
  LODWORD(v37) = v42;
  v20 = sub_1BE050204();
  sub_1BE04E1F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v52 = v109;
  v53 = v110;
  v54 = v111;
  v48 = v105;
  v49 = v106;
  v50 = v107;
  v51 = v108;
  v44 = v101;
  v45 = v102;
  v46 = v103;
  v47 = v104;
  v42 = v99;
  v43 = v100;
  v64[10] = v109;
  v64[11] = v110;
  v64[12] = v111;
  v64[6] = v105;
  v64[7] = v106;
  v64[8] = v107;
  v64[9] = v108;
  v64[2] = v101;
  v64[3] = v102;
  v64[4] = v103;
  v64[5] = v104;
  v64[0] = v99;
  v64[1] = v100;
  v41[11] = v110;
  v41[12] = v111;
  v41[7] = v106;
  v41[8] = v107;
  v41[9] = v108;
  v41[10] = v109;
  v41[3] = v102;
  v41[4] = v103;
  v41[5] = v104;
  v41[6] = v105;
  v41[0] = v99;
  v41[1] = v100;
  v41[2] = v101;
  *(&v66 + 1) = 0x4010000000000000;
  LOBYTE(v67[0]) = v19;
  *&v67[6] = *(&v56[5] + 15);
  *(&v67[5] + 1) = v56[5];
  *(&v67[3] + 1) = v56[3];
  *(&v67[4] + 1) = v56[4];
  *(v67 + 1) = v56[0];
  *(&v67[1] + 1) = v56[1];
  *(&v67[2] + 1) = v56[2];
  BYTE8(v67[6]) = v20;
  *&v68 = v21;
  *(&v68 + 1) = v23;
  *&v69 = v25;
  *(&v69 + 1) = v27;
  *(&v41[18] + 8) = v67[4];
  *(&v41[19] + 8) = v67[5];
  *(&v41[16] + 8) = v67[2];
  *(&v41[17] + 8) = v67[3];
  *(&v41[20] + 8) = v67[6];
  *(&v41[21] + 8) = v68;
  v29 = v18;
  *&v66 = v18;
  *(&v41[22] + 8) = v69;
  *(&v41[15] + 8) = v67[1];
  *(&v41[14] + 8) = v67[0];
  v55 = v112;
  v65 = v112;
  *&v41[13] = v112;
  v70 = 0;
  BYTE8(v41[23]) = 0;
  *(&v41[13] + 8) = v66;
  v40 = 1;
  v30 = v38;
  memcpy(v38, v41, 0x180uLL);
  v31 = v56[2];
  v76 = v56[3];
  v77 = v56[4];
  *v78 = v56[5];
  v73 = v56[0];
  v74 = v56[1];
  v30[48] = 0;
  *(v30 + 392) = 1;
  v71[0] = v29;
  v71[1] = 0x4010000000000000;
  v72 = v37;
  *&v78[15] = *(&v56[5] + 15);
  v75 = v31;
  v79 = v20;
  v80 = v22;
  v81 = v24;
  v82 = v26;
  v83 = v28;
  v84 = 0;
  sub_1BD0DE19C(v64, &v85, &qword_1EBD41CC8);
  sub_1BD0DE19C(&v66, &v85, &qword_1EBD41CD0);
  sub_1BD0DE53C(v71, &qword_1EBD41CD0);
  v88 = v52;
  v89 = v53;
  v90 = v54;
  v91 = v55;
  v87[4] = v48;
  v87[5] = v49;
  v87[6] = v50;
  v87[7] = v51;
  v87[0] = v44;
  v87[1] = v45;
  v87[2] = v46;
  v87[3] = v47;
  v85 = v42;
  v86 = v43;
  return sub_1BD0DE53C(&v85, &qword_1EBD41CC8);
}

uint64_t sub_1BD31671C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a1;
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v104 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v89 - v8;
  v9 = sub_1BE04A884();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v101 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v106 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v89 - v18;
  v20 = type metadata accessor for PassEntitySnippetView();
  v21 = a1 + *(v20 + 20);
  v94 = v10[2];
  v94(v19, v21, v9);
  v22 = sub_1BE0506B4();
  v24 = v23;
  v26 = v25;
  sub_1BE050464();
  v102 = sub_1BE0505F4();
  v105 = v27;
  v100 = v28;
  v107 = v29;
  v30 = v10;

  sub_1BD0DDF10(v22, v24, v26 & 1);
  v31 = v98;

  v93 = v20;
  sub_1BD0DE19C(v103 + *(v20 + 24), v31, &unk_1EBD528E0);
  v32 = v10[6];
  v33 = v9;
  v34 = v32(v31, 1, v9);
  v99 = v10;
  v92 = v19;
  v91 = v10 + 2;
  if (v34 == 1)
  {
    sub_1BD0DE53C(v31, &unk_1EBD528E0);
    v98 = 0;
    v106 = 0;
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v35 = v10[4];
    v36 = v106;
    v35(v106, v31, v9);
    v94(v19, v36, v9);
    v37 = sub_1BE0506B4();
    v39 = v38;
    v41 = v40;
    sub_1BE0502A4();
    v42 = sub_1BE0505F4();
    v43 = v9;
    v90 = v32;
    v45 = v44;
    LODWORD(v98) = v46;
    v48 = v47;

    v49 = v37;
    v30 = v99;
    sub_1BD0DDF10(v49, v39, v41 & 1);

    (v30[1])(v106, v43);
    v50 = v98 & 1;
    v98 = v42;
    v106 = v45;
    v51 = v45;
    v32 = v90;
    v33 = v43;
    v95 = v50;
    sub_1BD0D7F18(v42, v51, v50);
    v96 = v48;
    sub_1BE048C84();
  }

  v52 = v104;
  sub_1BD0DE19C(v103 + *(v93 + 28), v104, &unk_1EBD528E0);
  if (v32(v52, 1, v33) == 1)
  {
    sub_1BD0DE53C(v104, &unk_1EBD528E0);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v57 = v101;
    v58 = v33;
    (v30[4])(v101, v104, v33);
    v94(v92, v57, v33);
    v59 = sub_1BE0506B4();
    v61 = v60;
    v63 = v62;
    sub_1BE0502A4();
    v64 = sub_1BE0505F4();
    v66 = v65;
    v68 = v67;

    sub_1BD0DDF10(v59, v61, v63 & 1);

    v108 = sub_1BE04FC94();
    v69 = sub_1BE050574();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_1BD0DDF10(v64, v66, v68 & 1);

    (v99[1])(v101, v58);
    v53 = v69;
    v54 = v71;
    v55 = v73 & 1;
    sub_1BD0D7F18(v69, v71, v73 & 1);
    v56 = v75;
    sub_1BE048C84();
  }

  v76 = v100 & 1;
  v110 = v100 & 1;
  v109 = v100 & 1;
  v77 = v102;
  v78 = v105;
  sub_1BD0D7F18(v102, v105, v100 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v77, v78, v76);
  sub_1BE048C84();
  v79 = v98;
  v80 = v106;
  v82 = v95;
  v81 = v96;
  sub_1BD1969AC(v98, v106, v95, v96);
  sub_1BD1969AC(v53, v54, v55, v56);
  sub_1BD1969F0(v79, v80, v82, v81);
  sub_1BD1969F0(v53, v54, v55, v56);
  v83 = v105;
  sub_1BD0DDF10(v77, v105, v76);
  v84 = v107;

  v85 = v109;
  v86 = v97;
  *v97 = v77;
  v86[1] = v83;
  *(v86 + 16) = v85;
  v86[3] = v84;
  v86[4] = v79;
  v87 = v106;
  v86[5] = v106;
  v86[6] = v82;
  v86[7] = v81;
  v86[8] = v53;
  v86[9] = v54;
  v86[10] = v55;
  v86[11] = v56;
  sub_1BD1969F0(v53, v54, v55, v56);
  sub_1BD1969F0(v79, v87, v82, v81);
  sub_1BD0DDF10(v77, v83, v110);
}

void *sub_1BD316DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F7B4();
  v9 = 1;
  sub_1BD315EB8(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_1BD0DE19C(__dst, v6, &qword_1EBD41CB0);
  sub_1BD0DE53C(v11, &qword_1EBD41CB0);
  memcpy(&v8[7], __dst, 0x248uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x24FuLL);
}

double sub_1BD316EB8(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1BD316EE0()
{
  result = qword_1EBD41CD8;
  if (!qword_1EBD41CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41CD8);
  }

  return result;
}

uint64_t (*sub_1BD316F5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD316FFC;
}

void sub_1BD317048(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BD3170A4(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_viewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD31713C;
}

void sub_1BD31713C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1BD31721C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD317284(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD31FE58;
}

void sub_1BD317324(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

id CarKeyProvisioningUICoordinator.__allocating_init(context:configuration:viewController:renderer:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = a1;
  *&v11[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v12 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v15.receiver = v11;
  v15.super_class = v6;
  sub_1BE048964();
  sub_1BE048964();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_unknownObjectRelease();
  return v13;
}

id CarKeyProvisioningUICoordinator.init(context:configuration:viewController:renderer:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = a1;
  *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v10 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v13.receiver = v5;
  v13.super_class = type metadata accessor for CarKeyProvisioningUICoordinator();
  sub_1BE048964();
  sub_1BE048964();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  swift_unknownObjectRelease();
  return v11;
}

id CarKeyProvisioningUICoordinator.__deallocating_deinit()
{
  sub_1BD319750();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarKeyProvisioningUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD317860(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v7;
    sub_1BE048964();
  }

  if (*&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] || *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
  {
    v23 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex;
    sub_1BE04D0D4();
    v10 = v2;
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();

    if (os_log_type_enabled(v11, v12))
    {
      v21 = v5;
      v22 = v4;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      if (*&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v15 = sub_1BE04C0A4();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0xE000000000000000;
      }

      v18 = sub_1BD123690(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1BD026000, v11, v12, "[%s] Resetting provisioning coordinator", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1BFB45F20](v14, -1, -1);
      MEMORY[0x1BFB45F20](v13, -1, -1);

      (*(v21 + 8))(v9, v22);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    *&v2[v23] = 0;
    v19 = *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    v20 = *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
    *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;

    *&v10[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  }
}

void sub_1BD317B18(void *a1)
{
  v2 = v1;
  v65 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v65, v4);
  v64 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C384();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v61 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
  *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = a1;
  v15 = a1;

  v16 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  if (!*&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B98D0;
    v18 = v10;
    v19 = *MEMORY[0x1E69BB6E0];
    v20 = *MEMORY[0x1E69BB6E8];
    *(v17 + 32) = *MEMORY[0x1E69BB6E0];
    *(v17 + 40) = v20;
    v21 = v16;
    v22 = *MEMORY[0x1E69BB728];
    *(v17 + 48) = *MEMORY[0x1E69BB728];
    v60 = objc_opt_self();
    type metadata accessor for PKAnalyticsSubject(0);
    v23 = v19;
    v24 = v20;
    v25 = v22;
    v16 = v21;
    v26 = sub_1BE052724();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v28 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v29;
    v30 = v28;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    v10 = v18;
    sub_1BD31E8A4(inited + 32);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
    v31 = sub_1BE052224();

    [v60 subjects:v26 sendEvent:v31];

    *&v2[v21] = sub_1BD319034();
  }

  v32 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;

  v33 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong view];

    if (!v36)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v37 = [v36 window];

    if (v37)
    {
      v38 = [v37 windowScene];

      if (v38)
      {
        v39 = [v38 _sceneIdentifier];

        sub_1BE052434();
      }
    }
  }

  sub_1BE04BB44();
  sub_1BE04D0D4();
  v40 = v2;
  v41 = sub_1BE04D204();
  v42 = sub_1BE052C54();

  if (!os_log_type_enabled(v41, v42))
  {

    (*(v10 + 8))(v13, v9);
    if (!*&v2[v16])
    {
      return;
    }

    goto LABEL_12;
  }

  v57[1] = v33;
  v59 = v10;
  v60 = v9;
  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v66 = v44;
  *v43 = 136315650;
  v58 = v16;
  if (*&v2[v16])
  {
    sub_1BE048964();
    v45 = sub_1BE04C0A4();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = sub_1BD123690(v45, v47, &v66);

  *(v43 + 4) = v48;
  *(v43 + 12) = 2080;
  v49 = *&v40[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v50 = sub_1BE04C3A4();

  if ((v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v49 >= *(v50 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(v62 + 16))(v61, v50 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v49, v63);

  v51 = sub_1BE0524A4();
  v53 = sub_1BD123690(v51, v52, &v66);

  *(v43 + 14) = v53;
  *(v43 + 22) = 2080;
  sub_1BE04BB94();
  v54 = sub_1BE0524A4();
  v56 = sub_1BD123690(v54, v55, &v66);

  *(v43 + 24) = v56;
  _os_log_impl(&dword_1BD026000, v41, v42, "[%s] Continuing provisioning credential: %s to %s", v43, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1BFB45F20](v44, -1, -1);
  MEMORY[0x1BFB45F20](v43, -1, -1);

  (*(v59 + 8))(v13, v60);
  if (*&v2[v58])
  {
LABEL_12:
    sub_1BE048964();
    sub_1BE04C094();
  }
}

uint64_t sub_1BD31821C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v41 = a1;
  v8 = sub_1BE04D214();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C384();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  v17 = *&v4[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v18 = sub_1BE04C3A4();

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 >= *(v18 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v37 = a3;
  v38 = a4;
  (*(v13 + 16))(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v12);

  sub_1BE053974();
  (*(v13 + 8))(v16, v12);
  v20 = v43;
  v21 = v44;
  sub_1BE04D0D4();
  v22 = v5;
  sub_1BE048C84();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();

  if (os_log_type_enabled(v23, v24))
  {
    v36 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315394;
    if (*&v22[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v27 = sub_1BE04C0A4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v30 = sub_1BD123690(v27, v29, &v43);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_1BD123690(v36, v21, &v43);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1BD026000, v23, v24, "[%s] Preflighting provisioning credential: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);

    (*(v39 + 8))(v11, v40);
  }

  else
  {

    (*(v39 + 8))(v11, v40);
  }

  v32 = *&v22[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
  v33 = v41;
  *&v22[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = v41;
  v34 = v33;

  *&v22[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = sub_1BD319034();
  sub_1BE048964();

  LOBYTE(v43) = v42;
  sub_1BE04C0D4();
}

void sub_1BD31862C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BD123690(v11, v13, v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Canceling flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v2 + 8))(v5, v20);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v15 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  if (*&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    sub_1BE04C024();
    *&v6[v15] = 0;

    v16 = &v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 1);
      ObjectType = swift_getObjectType();
      v21 = 4;
      (*(*(v17 + 8) + 8))(&v21, 0, ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_1BD3188FC();
  }
}

void sub_1BD3188FC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v24 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BD123690(v11, v13, v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Terminating flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v2 + 8))(v5, v24);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  sub_1BD319750();
  v15 = *&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  if (v15)
  {
    v16 = *&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
  }

  else
  {
    v16 = [objc_opt_self() errorWithCommonType:1 severity:5];
  }

  v17 = &v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 8);
    v21 = v15;
    v22 = v16;
    v20(v6, v16, 1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = v15;
  }
}

uint64_t sub_1BD318BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BE04BC84();

  return v3;
}

void sub_1BD318C1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31[1] = a2;
  v4 = sub_1BE04D214();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v14 = sub_1BE04C3A4();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= *(v14 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  (*(v9 + 16))(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v8);

  v15 = sub_1BE04C2D4();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v16 = [v15 share];

    if (v16)
    {
      v17 = [v16 activationOptions];
      if (!v17)
      {
        goto LABEL_10;
      }

      v18 = v17;
      v19 = PKPassShareActivationOptionActivationCodeTypes();
      if (!v19)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3D270);
        sub_1BE052744();
        v19 = sub_1BE052724();
      }

      v20 = [v18 optionOfTypes_];

      if (v20)
      {
        v21 = sub_1BE052404();
        [v20 setValue_];
      }

      else
      {
LABEL_10:
        sub_1BE04D0D4();
        v22 = v3;
        v23 = sub_1BE04D204();
        v24 = sub_1BE052C54();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v33 = v26;
          *v25 = 136315138;
          if (*&v22[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
          {
            sub_1BE048964();
            v27 = sub_1BE04C0A4();
            v29 = v28;
          }

          else
          {
            v27 = 0;
            v29 = 0xE000000000000000;
          }

          v30 = sub_1BD123690(v27, v29, &v33);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_1BD026000, v23, v24, "[%s] Failed to set activation code because no pin code activation option found", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x1BFB45F20](v26, -1, -1);
          MEMORY[0x1BFB45F20](v25, -1, -1);
        }

        (*(v32 + 8))(v7, v4);
      }
    }
  }
}

uint64_t sub_1BD319034()
{
  v1 = sub_1BE04C384();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
    v6 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  v9 = v6;
  sub_1BE048964();
  v10 = sub_1BE04C3A4();

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v10 + 16))
  {
    (*(v2 + 16))(v5, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v1);

    sub_1BD31FCB8(&qword_1EBD41D98, v12, type metadata accessor for CarKeyProvisioningUICoordinator);
    v13 = sub_1BE04BF24();
    (*(v2 + 8))(v5, v1);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C054();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE04C0B4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BE04C044();

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1BD3192FC(unsigned __int8 *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v40 = v9;
    sub_1BE04D0D4();
    v12 = v11;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v39 = v2;
      v2 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v2 = 136315650;
      if (*&v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v15 = sub_1BE04C0A4();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0xE000000000000000;
      }

      v18 = sub_1BD123690(v15, v17, v42);

      *(v2 + 4) = v18;
      *(v2 + 12) = 2080;
      v19 = MEMORY[0x1BFB38E20](v40);
      v21 = sub_1BD123690(v19, v20, v42);

      *(v2 + 14) = v21;
      *(v2 + 22) = 2080;
      v22 = v39;
      if (v39)
      {
        v23 = 7562585;
      }

      else
      {
        v23 = 28494;
      }

      if (v39)
      {
        v24 = 0xE300000000000000;
      }

      else
      {
        v24 = 0xE200000000000000;
      }

      v25 = sub_1BD123690(v23, v24, v42);

      *(v2 + 24) = v25;
      _os_log_impl(&dword_1BD026000, v13, v14, "[%s] Transitioning to Step %s isRunning: %s", v2, 0x20u);
      v26 = v38;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v26, -1, -1);
      v27 = v2;
      LOBYTE(v2) = v22;
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v28 = &v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD88BA00(v40, &v41);
      (*(*(v29 + 8) + 8))(&v41, v2 & 1, ObjectType);
      swift_unknownObjectRelease();
    }

    v31 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion;
    v32 = *&v12[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion];
    if (v2)
    {
      if (v32)
      {
LABEL_20:

        return;
      }

      v33 = objc_allocWithZone(PKIdleTimerAssertion);
      v34 = sub_1BE052404();
      v35 = [v33 initWithReason_];
    }

    else
    {
      [v32 invalidate];
      v35 = 0;
    }

    v36 = *&v12[v31];
    *&v12[v31] = v35;

    v12 = v36;
    goto LABEL_20;
  }
}

void sub_1BD3196A0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD31A1D4(a2);
  }
}

void sub_1BD3196FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD31A928();
  }
}

uint64_t sub_1BD319750()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v53 = &v46 - v12;
  v13 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  v14 = *(v0 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  sub_1BE048964();
  v15 = sub_1BE04C3A4();

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= *(v15 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v50 = v13 != 0;
  v49 = v4;
  v17 = *(v3 + 80);
  v18 = v15 + ((v17 + 32) & ~v17) + *(v3 + 72) * v14;
  v19 = v2;
  v51 = v13;
  v20 = *(v3 + 16);
  v21 = v53;
  v20(v53, v18, v2);

  v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning);
  v23 = v21;
  v24 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer;
  v47 = *(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer);
  v48 = v47 != 0;
  v20(v9, v23, v2);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v52, v9, v2);
  v25 = (v17 + 16) & ~v17;
  v26 = v25 + v49;
  v27 = v3;
  v28 = swift_allocObject();
  v29 = v28 + v25;
  v30 = v19;
  v31 = v9;
  v32 = v22;
  (*(v27 + 32))(v29, v31, v19);
  v33 = (v28 + v26);
  *v33 = v50;
  v33[1] = v22;
  v33[2] = v48;
  v34 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion;
  [*(v1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion) invalidate];
  v35 = *(v1 + v34);
  *(v1 + v34) = 0;

  v36 = *(v1 + v24);
  if (v36)
  {
    LODWORD(v51) = v51 != 0;
    v37 = *(v27 + 8);
    sub_1BE048964();
    v37(v52, v19);
    *(v1 + v24) = 0;

    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    v39 = [objc_opt_self() sharedApplication];
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v36;
    aBlock[4] = sub_1BD31FDA4;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_82;
    v41 = _Block_copy(aBlock);
    sub_1BE048964();
    sub_1BE048964();

    v42 = [v39 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v41);

    swift_beginAccess();
    *(v38 + 16) = v42;
    *(v38 + 24) = 0;
    v43 = swift_allocObject();
    v43[2] = sub_1BD31FD18;
    v43[3] = v28;
    v43[4] = v38;
    v43[5] = v36;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04C024();

    v37(v53, v30);
  }

  else
  {
    v44 = v52;
    sub_1BD319C58(v52, v51 != 0, v32, v47 != 0);

    v45 = *(v27 + 8);
    v45(v44, v19);
    return (v45)(v53, v19);
  }
}

void sub_1BD319C58(uint64_t a1, char a2, char a3, char a4)
{
  v7 = sub_1BE04C364();
  if (!v7)
  {
    return;
  }

  v10 = v8;
  v12 = v9;

  if ((a2 & 1) != 0 && (a3 & 1) == 0)
  {
    v11 = &selRef_closeWithCompletion_;
LABEL_5:
    [v10 *v11];
    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    [v12 status];
    if (PKShareStatusIsPending())
    {
      v11 = &selRef_relinquishWithCompletion_;
      goto LABEL_5;
    }
  }

LABEL_10:
  [v10 invalidate];
}

uint64_t sub_1BD319D3C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v4 = *MEMORY[0x1E69DDBE8];
    if (v3 != *MEMORY[0x1E69DDBE8])
    {
      v5 = [objc_opt_self() sharedApplication];
      [v5 endBackgroundTask_];

      result = swift_beginAccess();
      *(a1 + 16) = v4;
      *(a1 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1BD319DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1BD31FE00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_91_0;
  v18 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

uint64_t sub_1BD31A110(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  result = swift_beginAccess();
  if ((*(a3 + 24) & 1) == 0)
  {
    v5 = *(a3 + 16);
    v6 = *MEMORY[0x1E69DDBE8];
    if (v5 != *MEMORY[0x1E69DDBE8])
    {
      v7 = [objc_opt_self() sharedApplication];
      [v7 endBackgroundTask_];

      result = swift_beginAccess();
      *(a3 + 16) = v6;
      *(a3 + 24) = 0;
    }
  }

  return result;
}

void sub_1BD31A1D4(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v52 = v16;
    v53 = v15;
    v19 = *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError];
    *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = a1;
    v54 = a1;

    if ([v54 severity] == 1)
    {
      v20 = v54;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1BE0B98D0;
      v30 = *MEMORY[0x1E69BB6E0];
      v51 = v9;
      v31 = *MEMORY[0x1E69BB6E8];
      *(v29 + 32) = v30;
      *(v29 + 40) = v31;
      v32 = *MEMORY[0x1E69BB728];
      *(v29 + 48) = *MEMORY[0x1E69BB728];
      v33 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = sub_1BE052724();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v39 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v40;
      v41 = v39;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      sub_1BD31E8A4(inited + 32);
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
      v42 = sub_1BE052224();

      [v33 subjects:v37 sendEvent:v42];

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v43 = sub_1BE052D54();
      v44 = swift_allocObject();
      v45 = v54;
      *(v44 + 16) = v1;
      *(v44 + 24) = v45;
      aBlock[4] = sub_1BD31FC04;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_57;
      v46 = _Block_copy(aBlock);
      v47 = v54;
      v48 = v1;

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v18, v12, v46);
      _Block_release(v46);

      (*(v51 + 8))(v12, v8);
      (*(v52 + 8))(v18, v53);
    }
  }

  else
  {
    sub_1BE04D0D4();
    v21 = v1;
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      if (*&v21[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v26 = sub_1BE04C0A4();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      v49 = sub_1BD123690(v26, v28, aBlock);

      *(v24 + 4) = v49;
      _os_log_impl(&dword_1BD026000, v22, v23, "[%s] Step failed with nil error", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BD31A898(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 16))(a2, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD31A928()
{
  v1 = sub_1BE051F54();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v56 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BE051FA4();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - v12;
  sub_1BD319750();
  sub_1BE04D0D4();
  v14 = v0;
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v7;
    v53 = v6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    if (*&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v20 = sub_1BE04C0A4();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v24 = sub_1BD123690(v20, v22, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1BD026000, v15, v16, "[%s] Coordinator did complete", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1BFB45F20](v19, -1, -1);
    MEMORY[0x1BFB45F20](v18, -1, -1);

    v7 = v17;
    v23 = *(v17 + 8);
    v6 = v53;
    v23(v13, v53);
  }

  else
  {

    v23 = *(v7 + 8);
    v23(v13, v6);
  }

  v25 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex;
  v26 = *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v27 = sub_1BE04C3A4();

  v28 = *(v27 + 16);

  if (v26 >= v28 - 1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v40 = sub_1BE052D54();
    v41 = swift_allocObject();
    *(v41 + 16) = v14;
    aBlock[4] = sub_1BD31FC14;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_46_0;
    v42 = _Block_copy(aBlock);
    v43 = v14;

    v44 = v54;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v45 = v56;
    v46 = v59;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v44, v45, v42);
    _Block_release(v42);

    (*(v58 + 8))(v45, v46);
    (*(v55 + 8))(v44, v57);
  }

  else
  {
    v29 = *&v14[v25];
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
    }

    else
    {
      *&v14[v25] = v30;
      v31 = v60;
      sub_1BE04D0D4();
      v32 = v14;
      v33 = sub_1BE04D204();
      v34 = sub_1BE052C54();

      if (os_log_type_enabled(v33, v34))
      {
        v59 = v7;
        v53 = v6;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315394;
        if (*&v32[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
        {
          sub_1BE048964();
          v37 = sub_1BE04C0A4();
          v39 = v38;
        }

        else
        {
          v37 = 0;
          v39 = 0xE000000000000000;
        }

        v49 = sub_1BD123690(v37, v39, aBlock);

        *(v35 + 4) = v49;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v30;
        _os_log_impl(&dword_1BD026000, v33, v34, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v35, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x1BFB45F20](v36, -1, -1);
        MEMORY[0x1BFB45F20](v35, -1, -1);

        v47 = v60;
        v48 = v53;
      }

      else
      {

        v47 = v31;
        v48 = v6;
      }

      v23(v47, v48);
      v50 = *&v32[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
      if (v50)
      {
        v51 = *&v32[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel];
      }

      else
      {
        v51 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
        v50 = 0;
      }

      v52 = v50;
      sub_1BD317B18(v51);
    }
  }
}

void sub_1BD31B020(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1BE051FC4();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - v15;
  v17 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = 12;
    (*(*(v18 + 8) + 8))(aBlock, 0, ObjectType);
    swift_unknownObjectRelease();
  }

  v20 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
  if (v20)
  {
    v60 = v6;
    v61 = v7;
    v62 = v3;
    v63 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B98D0;
    v22 = *MEMORY[0x1E69BB6E0];
    v23 = *MEMORY[0x1E69BB6E8];
    *(v21 + 32) = *MEMORY[0x1E69BB6E0];
    *(v21 + 40) = v23;
    v24 = *MEMORY[0x1E69BB728];
    *(v21 + 48) = *MEMORY[0x1E69BB728];
    v25 = objc_opt_self();
    type metadata accessor for PKAnalyticsSubject(0);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v20;
    v30 = sub_1BE052724();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v32 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v33;
    v34 = v32;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD31E8A4(inited + 32);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD31FCB8(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
    v35 = sub_1BE052224();

    [v25 subjects:v30 sendEvent:v35];

    if (!*(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer) || (sub_1BE048964(), v36 = sub_1BE04C0C4(), , (v36 & 0x100) == 0))
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v59 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v64 = *(v64 + 8);
      (v64)(v12, v67);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v29;
      aBlock[4] = sub_1BD31FC1C;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_55_1;
      v39 = _Block_copy(aBlock);
      v40 = v29;

      v41 = v65;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD31FCB8(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      v42 = v60;
      v43 = v63;
      sub_1BE053664();
      v44 = v59;
      MEMORY[0x1BFB3FD90](v16, v41, v42, v39);
      _Block_release(v39);

      (*(v62 + 8))(v42, v43);
      (*(v66 + 8))(v41, v61);
      (v64)(v16, v67);
      return;
    }

    v56 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_12;
    }

    v57 = *(v56 + 8);
    v58 = swift_getObjectType();
    v50 = *(v57 + 8);
    v29 = v29;
    v51 = a1;
    v52 = v20;
    v53 = 0;
    v54 = v58;
    v55 = v57;
LABEL_11:
    v50(v51, v52, v53, v54, v55);
    swift_unknownObjectRelease();

LABEL_12:
    return;
  }

  v45 = [objc_opt_self() errorWithSeverity_];
  v46 = sub_1BE052404();
  [v45 addInternalDebugDescription_];

  v47 = a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v47 + 8);
    v49 = swift_getObjectType();
    v50 = *(v48 + 8);
    v29 = v45;
    v51 = a1;
    v52 = v45;
    v53 = 1;
    v54 = v49;
    v55 = v48;
    goto LABEL_11;
  }
}

void sub_1BD31B80C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, 0, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD31B8D8()
{
  v1 = v0;
  v86 = sub_1BE04BD74();
  v2 = *(v86 - 1);
  MEMORY[0x1EEE9AC00](v86, v3);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v84 = &v77 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v85 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v77 - v13;
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04C384();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v82 = v16;
  v87 = Strong;
  v88 = v2;
  v26 = *&v1[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v27 = sub_1BE04C3A4();

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v26 >= *(v27 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  (*(v21 + 16))(v24, v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v26, v20);

  v28 = sub_1BE04C2F4();
  (*(v21 + 8))(v24, v20);
  if (!v28 || (v29 = [v28 carKeyTerminalPairingCredential], v28, !v29))
  {

LABEL_10:
    sub_1BD3188FC();
    return;
  }

  sub_1BE04D0D4();
  v30 = v1;
  v31 = sub_1BE04D204();
  v32 = sub_1BE052C54();

  v33 = os_log_type_enabled(v31, v32);
  v80 = v30;
  v81 = v29;
  if (v33)
  {
    v79 = v32;
    v34 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock = v78;
    *v34 = 136315138;
    v35 = v86;
    v36 = v88;
    if (*&v30[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v37 = sub_1BE04C0A4();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = sub_1BD123690(v37, v39, &aBlock);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_1BD026000, v31, v79, "[%s] Prompting for new pin code", v34, 0xCu);
    v41 = v78;
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x1BFB45F20](v41, -1, -1);
    MEMORY[0x1BFB45F20](v34, -1, -1);

    v82[1](v19, v15);
  }

  else
  {

    v82[1](v19, v15);
    v35 = v86;
    v36 = v88;
  }

  v42 = *MEMORY[0x1E69B8038];
  v43 = *(v36 + 104);
  (v43)(v14, v42, v35);
  v44 = PKPassKitBundle();
  if (!v44)
  {
    goto LABEL_21;
  }

  v45 = v44;
  sub_1BE04B6F4();

  v47 = *(v36 + 8);
  v46 = v36 + 8;
  v86 = v47;
  (v47)(v14, v35);
  v48 = v85;
  v82 = v43;
  (v43)(v85, v42, v35);
  v49 = PKPassKitBundle();
  if (!v49)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = v49;
  sub_1BE04B6F4();

  (v86)(v48, v35);
  v51 = sub_1BE052404();

  v52 = sub_1BE052404();

  v53 = [objc_opt_self() alertControllerWithTitle:v51 message:v52 preferredStyle:1];

  v54 = v46;
  v55 = *MEMORY[0x1E69B80D8];
  v56 = v84;
  (v82)(v84, v55, v35);
  v57 = PKPassKitBundle();
  if (!v57)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v58 = v57;
  sub_1BE04B6F4();

  v88 = v54;
  (v86)(v56, v35);
  v59 = swift_allocObject();
  v60 = v80;
  v61 = v81;
  v59[2] = v80;
  v59[3] = v61;
  v62 = v87;
  v59[4] = v87;
  v63 = v60;
  v87 = v62;
  v85 = v61;
  v64 = sub_1BE052404();

  v93 = sub_1BD31FC24;
  v94 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = sub_1BD198918;
  v92 = &block_descriptor_61_0;
  v65 = _Block_copy(&aBlock);

  v66 = objc_opt_self();
  v67 = [v66 actionWithTitle:v64 style:0 handler:v65];
  _Block_release(v65);

  [v53 addAction_];
  v68 = v83;
  (v82)(v83, v55, v35);
  v69 = PKPassKitBundle();
  if (v69)
  {
    v70 = v69;
    sub_1BE04B6F4();

    (v86)(v68, v35);
    v71 = swift_allocObject();
    *(v71 + 16) = v63;
    v72 = v63;
    v73 = sub_1BE052404();

    v93 = sub_1BD31FC30;
    v94 = v71;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1BD198918;
    v92 = &block_descriptor_67;
    v74 = _Block_copy(&aBlock);

    v75 = [v66 actionWithTitle:v73 style:1 handler:v74];
    _Block_release(v74);

    [v53 addAction_];
    v76 = v87;
    [v87 presentViewController:v53 animated:1 completion:0];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1BD31C244(uint64_t a1, char *a2, void *a3, void *a4)
{
  v7 = *&a2[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context];
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningCarPairingPinCodeViewController());
  sub_1BE048964();
  v9 = sub_1BD8EA7B8(v7, a3, a2, v8);
  [v9 setShowCancelButton_];
  v10 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  [a4 presentViewController:v10 animated:1 completion:0];
}

id CarKeyProvisioningUICoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BD31C3C4()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BD123690(v11, v13, aBlock);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Continuing to provision after pin code entered", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v2 + 8))(v5, v20);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    aBlock[4] = sub_1BD31FC0C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_40;
    v18 = _Block_copy(aBlock);
    v19 = v6;

    [v16 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }
}

void sub_1BD31C6A0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  if (v1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
    v1 = 0;
  }

  v2 = v1;
  sub_1BD317B18(v3);
}

void sub_1BD31C720()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v15 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Pin code recovery failed, canceling", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v2 + 8))(v5, v15);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  sub_1BD3188FC();
}

void CarKeyProvisioningUICoordinator.handleRequestInvite(result:completion:)(void *a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v60 = a5;
  v61 = a2;
  v62 = a1;
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D48);
  v13 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v14);
  v16 = (&v56 - v15);
  v17 = sub_1BE04D214();
  v18 = *(v17 - 8);
  v21 = MEMORY[0x1EEE9AC00](v17, v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v57 = v20;
    sub_1BE048C84();
    sub_1BE04D0D4();
    v40 = v5;
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C54();

    if (os_log_type_enabled(v41, v42))
    {
      v58 = a4;
      v43 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v43 = 136315138;
      if (*&v40[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v44 = sub_1BE04C0A4();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v50 = sub_1BD123690(v44, v46, &v63);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_1BD026000, v41, v42, "[%s] Falling back to legacy share accept flow", v43, 0xCu);
      v51 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1BFB45F20](v51, -1, -1);
      MEMORY[0x1BFB45F20](v43, -1, -1);

      (*(v18 + 8))(v23, v57);
      a4 = v58;
    }

    else
    {

      (*(v18 + 8))(v23, v57);
    }

    v52 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D50) + 48));
    v53 = *MEMORY[0x1E69B8308];
    v54 = sub_1BE04C534();
    (*(*(v54 - 8) + 104))(v16, v53, v54);
    v55 = v61;
    *v52 = v62;
    v52[1] = v55;
    v48 = v59;
    (*(v13 + 104))(v16, *MEMORY[0x1E69B8170], v59);
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    v47 = v62;
    *v16 = v62;
    v48 = v59;
    (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v59, v21);
    v49 = v47;
LABEL_15:
    a4(v16);
    (*(v13 + 8))(v16, v48);
    return;
  }

  v58 = a4;
  v24 = objc_opt_self();
  v25 = v61;
  v26 = v62;
  v27 = [v24 createTaggedShare];
  v28 = [objc_allocWithZone(MEMORY[0x1E69B92B8]) initWithSharingChannelHandle:v25 invitation:v26 share:v27];
  v62 = v25;

  if (v28)
  {
    *v12 = v28;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B82A8], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B69E0;
    (*(v9 + 16))(v30 + v29, v12, v8);
    sub_1BE048964();
    v31 = v28;
    sub_1BE04C3B4();

    if (*&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      sub_1BE04C084();
    }

    v32 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D50) + 48));
    v33 = *MEMORY[0x1E69B8308];
    v34 = sub_1BE04C534();
    (*(*(v34 - 8) + 104))(v16, v33, v34);
    v35 = [v62 transportIdentifier];
    v36 = sub_1BE052434();
    v38 = v37;

    *v32 = v36;
    v32[1] = v38;
    v39 = v59;
    (*(v13 + 104))(v16, *MEMORY[0x1E69B8170], v59);
    v58(v16);

    (*(v13 + 8))(v16, v39);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void CarKeyProvisioningUICoordinator.handleImportKey(result:completion:)(void *a1, char a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v122 = a3;
  v9 = sub_1BE04D214();
  v117 = *(v9 - 8);
  v118 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v115 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v119 = &v108 - v14;
  v15 = sub_1BE04BD74();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BAC4();
  v116 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04C384();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58);
  v120 = *(v27 - 8);
  v121 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v108 - v29;
  if (!a2)
  {
    v48 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D60) + 48);
    v50 = *MEMORY[0x1E69B8308];
    v51 = sub_1BE04C534();
    (*(*(v51 - 8) + 104))(v30, v50, v51);
    *&v30[v49] = a1;
    v52 = MEMORY[0x1E69B8170];
LABEL_11:
    v55 = v120;
    v54 = v121;
    (*(v120 + 104))(v30, *v52, v121);
    v56 = a1;
    v122(v30);
LABEL_12:
    (*(v55 + 8))(v30, v54);
    return;
  }

  if (a2 != 1)
  {
    v53 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;

    *v30 = a1;
    v52 = MEMORY[0x1E69B8168];
    goto LABEL_11;
  }

  v110 = a4;
  v111 = a1;
  v31 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v32 = sub_1BE04C3A4();

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v31 >= *(v32 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  (*(v23 + 16))(v26, v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v31, v22);

  v33 = sub_1BE04C364();
  v108 = v35;
  v109 = v34;
  (*(v23 + 8))(v26, v22);
  if (v33)
  {
    v36 = v33;
    sub_1BE04BC34();
    v37 = sub_1BE04BAB4();
    (*(v116 + 8))(v21, v18);
    v38 = OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses;
    v39 = *&v5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses];
    v41 = v110;
    v40 = v111;
    if (v39)
    {
      v42 = v39;
      v43 = sub_1BE04BC84();

      v44 = [v43 passActivationState];
      v45 = v44 == 0;
      v46 = v119;
      if ((v37 | v45))
      {
        v47 = v37 ^ 1 | v45;
LABEL_19:
        sub_1BE04D0D4();
        v67 = v5;
        v68 = sub_1BE04D204();
        v69 = sub_1BE052C54();

        if (os_log_type_enabled(v68, v69))
        {
          LODWORD(v116) = v47;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v123[0] = v71;
          *v70 = 136315650;
          if (*&v67[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
          {
            sub_1BE048964();
            v72 = sub_1BE04C0A4();
            v74 = v73;
          }

          else
          {
            v72 = 0;
            v74 = 0xE000000000000000;
          }

          v106 = sub_1BD123690(v72, v74, v123);

          *(v70 + 4) = v106;
          *(v70 + 12) = 1024;
          *(v70 + 14) = v37 & 1;
          *(v70 + 18) = 1024;
          *(v70 + 20) = v116 & 1;
          _os_log_impl(&dword_1BD026000, v68, v69, "[%s] Not finishing in background. isBridge: %{BOOL}d isPassActive: %{BOOL}d ", v70, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x1BFB45F20](v71, -1, -1);
          MEMORY[0x1BFB45F20](v70, -1, -1);

          (*(v117 + 8))(v119, v118);
          v40 = v111;
        }

        else
        {

          (*(v117 + 8))(v46, v118);
        }

        v55 = v120;
        v54 = v121;
        *v30 = v40;
        (*(v55 + 104))(v30, *MEMORY[0x1E69B8168], v54);
        v107 = v40;
        v122(v30);

        goto LABEL_12;
      }
    }

    else
    {
      v46 = v119;
      if (v37)
      {
        v47 = 0;
        goto LABEL_19;
      }
    }

    v75 = swift_allocObject();
    v76 = v122;
    v75[2] = v122;
    v75[3] = v41;
    v77 = v108;
    v78 = v109;
    v75[4] = v109;
    v75[5] = v36;
    v75[6] = v77;
    v75[7] = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v86 = v5;
      sub_1BE048964();
      v87 = v77;
      v88 = v36;
      v89 = v78;
      goto LABEL_28;
    }

    v80 = Strong;
    if (*&v5[v38])
    {
      v81 = v5;
      sub_1BE048964();
      v82 = v77;
      v83 = v36;
      v84 = v78;

LABEL_28:
      sub_1BD31DB28(v76, v41, v78, v36, v77, v5);

      return;
    }

    v91 = v112;
    v90 = v113;
    (*(v113 + 104))(v112, *MEMORY[0x1E69B80D0], v114);
    v92 = v5;
    sub_1BE048964();
    v93 = v77;
    v94 = v36;
    v95 = v78;
    v96 = PKPassKitBundle();
    if (v96)
    {
      v97 = v96;
      v98 = sub_1BE04B6F4();
      v99 = v91;
      v101 = v100;

      (*(v90 + 8))(v99, v114);
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v102 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(v111, 0, 0, v98, v101, sub_1BD31F5F0, v75, sub_1BD31F5F0, v75, 0, 0);

      [v80 presentViewController:v102 animated:1 completion:0];

      return;
    }

LABEL_39:
    __break(1u);
    return;
  }

  v57 = v115;
  sub_1BE04D0D4();
  v58 = v5;
  v59 = sub_1BE04D204();
  v60 = sub_1BE052C54();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v123[0] = v62;
    *v61 = 136315138;
    v63 = v121;
    if (*&v58[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v64 = sub_1BE04C0A4();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    v103 = sub_1BD123690(v64, v66, v123);

    *(v61 + 4) = v103;
    _os_log_impl(&dword_1BD026000, v59, v60, "[%s] Not finishing in background, incorrect credential type", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1BFB45F20](v62, -1, -1);
    MEMORY[0x1BFB45F20](v61, -1, -1);

    (*(v117 + 8))(v57, v118);
    v85 = v111;
  }

  else
  {

    (*(v117 + 8))(v57, v118);
    v85 = v111;
    v63 = v121;
  }

  *v30 = v85;
  v104 = v120;
  (*(v120 + 104))(v30, *MEMORY[0x1E69B8168], v63);
  v105 = v85;
  v122(v30);
  (*(v104 + 8))(v30, v63);
}

void sub_1BD31DB28(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v9 = sub_1BE04B944();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C384();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v36 - v20;
  sub_1BD0E5E8C(0, &qword_1EBD398B8);
  sub_1BE04BF44();
  a1(v21);
  (*(v18 + 8))(v21, v17);
  v22 = [a3 transportIdentifier];
  if (!v22)
  {
    sub_1BE052434();
    v22 = sub_1BE052404();
  }

  [a3 invalidate];
  v23 = objc_allocWithZone(MEMORY[0x1E69B9058]);
  v24 = [v23 initWithTransportIdentifier:v22 invitation:v40 share:v41];

  v25 = *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex);
  sub_1BE048964();
  v26 = sub_1BE04C3A4();

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v25 >= *(v26 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  (*(v13 + 16))(v16, v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, v12);

  v27 = sub_1BE04C2D4();
  (*(v13 + 8))(v16, v12);
  if (!v27 || (v28 = [v27 originalShareURL], v27, !v28))
  {
    v28 = 0;
  }

  [v24 setOriginalShareURL_];

  if (*(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer))
  {
    v29 = v24;
    sub_1BE048964();
    v30 = sub_1BE04C034();
  }

  else
  {
    v31 = v24;
    v30 = 0;
  }

  [v24 setProvisioningState_];

  [v24 setShouldAutoProvision_];
  v32 = v37;
  sub_1BE04BB94();
  v33 = sub_1BE04B934();
  (*(v38 + 8))(v32, v39);
  v34 = v24;
  if ([v33 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B7020;
    *(v35 + 32) = v24;
    sub_1BD0E5E8C(0, &unk_1EBD44440);
    v34 = sub_1BE052724();
    [v33 addPendingProvisionings:v34 completion:0];
  }

  swift_unknownObjectRelease();

  *(a6 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning) = 1;
  sub_1BD31A928();
}

uint64_t CarKeyProvisioningUICoordinator.handleFindReader(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D58);
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v18 - v10);
  if (a2)
  {
    if (a2 != 1)
    {
      sub_1BD31B8D8();
      sub_1BD0E5E8C(0, &qword_1EBD398B8);
      sub_1BE04BF44();
      goto LABEL_7;
    }

    *v11 = a1;
    v12 = MEMORY[0x1E69B8168];
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D60) + 48);
    v14 = *MEMORY[0x1E69B8308];
    v15 = sub_1BE04C534();
    (*(*(v15 - 8) + 104))(v11, v14, v15);
    *(v11 + v13) = a1;
    v12 = MEMORY[0x1E69B8170];
  }

  (*(v7 + 104))(v11, *v12, v6, v9);
  v16 = a1;
LABEL_7:
  a3(v11);
  return (*(v7 + 8))(v11, v6);
}

uint64_t CarKeyProvisioningUICoordinator.handleProvisioned(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD455B0);
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v21 - v11);
  if (a2)
  {
    *v12 = a1;
    v13 = MEMORY[0x1E69B8168];
  }

  else
  {
    v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
    *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses) = a1;
    v15 = a1;

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D68) + 48);
    v17 = *MEMORY[0x1E69B8308];
    v18 = sub_1BE04C534();
    (*(*(v18 - 8) + 104))(v12, v17, v18);
    *(v12 + v16) = v15;
    v13 = MEMORY[0x1E69B8170];
  }

  (*(v8 + 104))(v12, *v13, v7, v10);
  v19 = a1;
  a3(v12);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1BD31E3BC(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1BE04C534();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v15 - v12;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8308], v3, v11);
  sub_1BE04BF54();
  (*(v4 + 8))(v7, v3);
  a2(v13);
  return (*(v9 + 8))(v13, v8);
}

void CarKeyProvisioningUICoordinator.handleLegacyRedeem(result:completion:)(void *a1, char a2, void (*a3)(void *))
{
  v21 = a3;
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v20 - v15);
  if (a2)
  {
    if (a2 == 1)
    {
      *v16 = a1;
      (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
      v17 = a1;
    }

    else
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
      sub_1BE04BF54();
      (*(v7 + 8))(v10, v6);
    }

    v21(v16);
    (*(v12 + 8))(v16, v11);
  }

  else
  {
    v18 = *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses);
    *(v3 + OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses) = a1;
    v19 = a1;

    (*(v7 + 104))(v10, *MEMORY[0x1E69B8300], v6);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
    v21(v16);
    (*(v12 + 8))(v16, v11);
    sub_1BD31A928();
  }
}

uint64_t sub_1BD31E8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD31E90C(void *a1, char a2, void (*a3)(void *))
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v19 - v15);
  if (a2)
  {
    *v16 = a1;
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
    v17 = a1;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
  }

  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t _s9PassKitUI31CarKeyProvisioningUICoordinatorC22handleValidationResult6result10completiony0aB4Core0F25StepValidatePreconditionsC0iJ0O_yAG0f9OperationJ0OyytGctF_0(int64_t *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  v61 = a1;
  v5 = sub_1BE04BDB4();
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BDF4();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04C534();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v18 = *(v57 - 8);
  v20 = MEMORY[0x1EEE9AC00](v57, v19);
  v22 = (&v53 - v21);
  if (a2)
  {
    if (a2 == 1)
    {
      v23 = v61;
      *v22 = v61;
      v24 = v57;
      (*(v18 + 104))(v22, *MEMORY[0x1E69B8168], v57, v20);
      v25 = v23;
      v59(v22);
      return (*(v18 + 8))(v22, v24);
    }

    else
    {
      (*(v14 + 104))(v17, *MEMORY[0x1E69B8308], v13, v20);
      sub_1BE04BF54();
      (*(v14 + 8))(v17, v13);
      v59(v22);
      return (*(v18 + 8))(v22, v57);
    }
  }

  else
  {
    v64 = v12;
    v65 = v9;
    v27 = v62;
    v66 = v8;
    v63 = v5;
    v28 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v29 = v28;
    v30 = v61;
    v31 = v61[2];
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v54 = v28;
      v55 = v22;
      v56 = v18;
      v67 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v31, 0);
      v32 = v67;
      v34 = v27[2];
      v33 = (v27 + 2);
      v35 = v30 + ((v33[64] + 32) & ~v33[64]);
      v61 = *(v33 + 7);
      v62 = v34;
      ++v60;
      v36 = (v33 - 8);
      v38 = v64;
      v37 = v65;
      do
      {
        v39 = v33;
        (v62)(v38, v35, v37);
        sub_1BE04BDE4();
        v40 = sub_1BE04BDA4();
        v42 = v41;
        (*v60)(v66, v63);
        (*v36)(v38, v37);
        v67 = v32;
        v44 = *(v32 + 16);
        v43 = *(v32 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1BD03B254((v43 > 1), v44 + 1, 1);
          v32 = v67;
        }

        *(v32 + 16) = v44 + 1;
        v45 = v32 + 16 * v44;
        *(v45 + 32) = v40;
        *(v45 + 40) = v42;
        v35 += v61;
        --v31;
        v38 = v64;
        v37 = v65;
        v33 = v39;
      }

      while (v31);
      v46 = v59;
      v18 = v56;
      v47 = v57;
      v29 = v54;
      v22 = v55;
    }

    else
    {
      v46 = v59;
      v47 = v57;
    }

    v67 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
    sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
    v48 = sub_1BE0522E4();
    v50 = v49;

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1BE053834();

    v67 = 0xD000000000000016;
    v68 = 0x80000001BE123A30;
    MEMORY[0x1BFB3F610](v48, v50);

    v51 = sub_1BE052404();

    [v29 addInternalDebugDescription_];

    *v22 = v29;
    (*(v18 + 104))(v22, *MEMORY[0x1E69B8168], v47);
    v52 = v29;
    v46(v22);

    return (*(v18 + 8))(v22, v47);
  }
}

uint64_t _s9PassKitUI31CarKeyProvisioningUICoordinatorC16handleFindSource6result10completiony0aB4Core0fde4StepiJ0C0iJ6ResultO_yAG0f9OperationO0OyAG0fde10InvitationJ13ConfigurationOGXEtF_0(uint64_t a1, void (*a2)(char *))
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - v6;
  v8 = sub_1BE04C544();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04C194();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD31FC54(a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    *v7 = *v16;
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8168], v3);
    v18 = v17;
    v24(v7);

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D90) + 48);
    v21 = *MEMORY[0x1E69B8308];
    v22 = sub_1BE04C534();
    (*(*(v22 - 8) + 104))(v7, v21, v22);
    (*(v9 + 16))(&v7[v20], v12, v8);
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8170], v3);
    v24(v7);
    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1BD31F404(void *a1, void (*a2)(void *))
{
  v4 = sub_1BE04C534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v16 - v12);
  if (a1)
  {
    *v13 = a1;
    (*(v10 + 104))(v13, *MEMORY[0x1E69B8168], v9);
    v14 = a1;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8308], v4);
    sub_1BE04BF54();
    (*(v5 + 8))(v8, v4);
  }

  a2(v13);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1BD31F600(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v12 = *(v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v23 - v15);
  if (a2)
  {
    *v16 = a1;
    v17 = MEMORY[0x1E69B8168];
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) + 48);
    v19 = *MEMORY[0x1E69B8308];
    v20 = sub_1BE04C534();
    (*(*(v20 - 8) + 104))(v16, v19, v20);
    *(v16 + v18) = a1;
    v17 = MEMORY[0x1E69B8170];
  }

  (*(v12 + 104))(v16, *v17, v11, v14);
  v21 = a1;
  a3(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD31FC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04C194();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD31FCB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD31FD18()
{
  v1 = *(sub_1BE04C384() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = (v2 + *(v1 + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  sub_1BD319C58(v2, v4, v5, v6);
}

uint64_t objectdestroy_84Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BD31FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD324884();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD31FED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD324884();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD31FF34()
{
  sub_1BD324884();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD31FF5C()
{
  type metadata accessor for PaymentSheetFooter.AudioPlayer();

  return swift_allocObject();
}

uint64_t sub_1BD31FF90()
{
  if (*(v0 + 56))
  {
    sub_1BE048964();
    v1 = sub_1BE04CD74();

    if (!v1)
    {
      v5 = 0;
      return v5 & 1;
    }

    v2 = [v1 displayIdentity];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isMainDisplay];

      if (v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = sub_1BE04CBF4();
      }

      return v5 & 1;
    }

    __break(1u);
  }

  sub_1BE04CDA4();
  sub_1BD32410C(&qword_1EBD369D0, MEMORY[0x1E69BCB10]);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD320098@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DA0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v56 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DA8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DB0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DB8);
  MEMORY[0x1EEE9AC00](v57, v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DC0);
  v20 = *(v19 - 8);
  v59 = v19;
  v60 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v58 = &v56 - v22;
  v23 = sub_1BD32062C();
  *v5 = sub_1BE04F7B4();
  v5[1] = v23;
  *(v5 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41DC8);
  sub_1BD320798(v1, v5 + *(v24 + 44));
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v5, v10, &qword_1EBD41DA0);
  v25 = &v10[*(v7 + 44)];
  v26 = v70;
  v27 = v72;
  v28 = v73;
  *(v25 + 4) = v71;
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  v29 = v68;
  v30 = v69;
  *v25 = v67;
  *(v25 + 1) = v29;
  *(v25 + 2) = v30;
  *(v25 + 3) = v26;
  LOBYTE(v7) = sub_1BE050234();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE204(v10, v15, &qword_1EBD41DA8);
  v39 = &v15[*(v12 + 44)];
  *v39 = v7;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v15, v18, &qword_1EBD41DB0);
  v40 = v57;
  v41 = &v18[*(v57 + 36)];
  v42 = v79;
  *(v41 + 4) = v78;
  *(v41 + 5) = v42;
  *(v41 + 6) = v80;
  v43 = v75;
  *v41 = v74;
  *(v41 + 1) = v43;
  v44 = v77;
  *(v41 + 2) = v76;
  *(v41 + 3) = v44;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v66 = v63;
  v45 = swift_allocObject();
  v46 = v1[5];
  v45[5] = v1[4];
  v45[6] = v46;
  v45[7] = v1[6];
  v47 = v1[1];
  v45[1] = *v1;
  v45[2] = v47;
  v48 = v1[3];
  v45[3] = v1[2];
  v45[4] = v48;
  sub_1BD0EEF94(v1, &v62);
  type metadata accessor for PKAuthenticatorESBiometricAnnotation(0);
  v50 = v49;
  v51 = sub_1BD323808();
  v52 = sub_1BD32410C(&qword_1EBD41DF0, type metadata accessor for PKAuthenticatorESBiometricAnnotation);
  v53 = v58;
  sub_1BE051064();

  sub_1BD0DE53C(v18, &qword_1EBD41DB8);
  sub_1BE052434();
  v62 = v40;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  swift_getOpaqueTypeConformance2();
  v54 = v59;
  sub_1BE050DE4();

  return (*(v60 + 8))(v53, v54);
}

double sub_1BD32062C()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 48);
  v6 = *(v0 + 40);
  v10 = v6;
  if (v11 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v10, &qword_1EBD5C6E0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 2.0;
  if (v6)
  {
    return 4.0;
  }

  return result;
}

id sub_1BD320798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v113 = sub_1BE04E8A4();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v3);
  v110 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = &v104 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E00);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v8);
  v109 = (&v104 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E08);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v125 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v124 = &v104 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E10);
  MEMORY[0x1EEE9AC00](v118, v16);
  v120 = (&v104 - v17);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E18);
  MEMORY[0x1EEE9AC00](v116, v18);
  v128 = &v104 - v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E20);
  MEMORY[0x1EEE9AC00](v119, v20);
  v117 = &v104 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E28);
  MEMORY[0x1EEE9AC00](v105, v22);
  v106 = (&v104 - v23);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E30);
  MEMORY[0x1EEE9AC00](v127, v24);
  v26 = &v104 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E38);
  MEMORY[0x1EEE9AC00](v115, v27);
  v29 = &v104 - v28;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E40);
  MEMORY[0x1EEE9AC00](v114, v30);
  v107 = &v104 - v31;
  v32 = sub_1BE04C7B4();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E48);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v121 = &v104 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v104 - v42;
  v44 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v129 = v44;
  v45 = v33;
  sub_1BE04D8B4();

  v46 = (*(v33 + 88))(v36, v32);
  if (v46 == *MEMORY[0x1E69BC988])
  {
    v47 = a1;
    v48 = *(a1 + 104);
    *v26 = sub_1BE04F7B4();
    *(v26 + 1) = v48;
    v26[16] = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA0);
    sub_1BD3225A0(&v26[*(v49 + 44)]);
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30);
    sub_1BE050DE4();

    sub_1BD0DE53C(v26, &qword_1EBD41E30);
    sub_1BD0DE19C(v29, v128, &qword_1EBD41E38);
    swift_storeEnumTagMultiPayload();
    sub_1BD323B44();
    sub_1BD323BD0();
    v50 = v117;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v50, v120, &qword_1EBD41E20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58);
    sub_1BD323AB8();
    sub_1BD323E24();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v50, &qword_1EBD41E20);
    sub_1BD0DE53C(v29, &qword_1EBD41E38);
    v51 = v124;
    v52 = v123;
  }

  else
  {
    v53 = v128;
    v108 = a1;
    if (v46 == *MEMORY[0x1E69BC980])
    {
      v54 = v108;
      if (sub_1BD31FF90())
      {
        v55 = *(v54 + 104);
        *v26 = sub_1BE04F7B4();
        *(v26 + 1) = v55;
        v26[16] = 0;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA0);
        sub_1BD3225A0(&v26[*(v56 + 44)]);
        sub_1BE052434();
        sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30);
        sub_1BE050DE4();

        sub_1BD0DE53C(v26, &qword_1EBD41E30);
        sub_1BD0DE19C(v29, v106, &qword_1EBD41E38);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E80);
        sub_1BD323BD0();
        sub_1BD323CB8();
        v57 = v107;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v29, &qword_1EBD41E38);
      }

      else
      {
        v62 = *(v54 + 80);
        v127 = *(v54 + 72);
        v63 = v129 + qword_1EBDAADA8;
        v64 = *(v129 + qword_1EBDAADA8 + 32);
        sub_1BE048964();
        v104 = [v64 confirmationStyle];
        result = [*(v63 + 32) paymentRequest];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v66 = result;
        v67 = [result _isAMPPayment];

        v68 = sub_1BD83BBFC();
        v70 = v69;
        v71 = swift_allocObject();
        v72 = *(v54 + 80);
        v71[5] = *(v54 + 64);
        v71[6] = v72;
        v71[7] = *(v54 + 96);
        v73 = *(v54 + 16);
        v71[1] = *v54;
        v71[2] = v73;
        v74 = *(v54 + 48);
        v71[3] = *(v54 + 32);
        v71[4] = v74;
        sub_1BD0EEF94(v54, &v130);
        v75 = sub_1BE050234();
        sub_1BD321A38();
        sub_1BE04E1F4();
        LOBYTE(v130) = 0;
        v76 = v106;
        *v106 = v127;
        v76[1] = v62;
        v76[2] = v104;
        *(v76 + 24) = v67;
        v76[4] = v68;
        v76[5] = v70;
        v76[6] = sub_1BD323EB0;
        v76[7] = v71;
        v76[8] = 0;
        v76[9] = 0;
        *(v76 + 80) = v75;
        v76[11] = v77;
        v76[12] = v78;
        v76[13] = v79;
        v76[14] = v80;
        *(v76 + 120) = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E80);
        sub_1BD323BD0();
        sub_1BD323CB8();
        v57 = v107;
        sub_1BE04F9A4();
      }

      sub_1BD0DE19C(v57, v53, &qword_1EBD41E40);
      swift_storeEnumTagMultiPayload();
      sub_1BD323B44();
      sub_1BD323BD0();
      v81 = v117;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v81, v120, &qword_1EBD41E20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58);
      sub_1BD323AB8();
      sub_1BD323E24();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v81, &qword_1EBD41E20);
      sub_1BD0DE53C(v57, &qword_1EBD41E40);
      v51 = v124;
    }

    else
    {
      v51 = v124;
      if (v46 == *MEMORY[0x1E69BC978])
      {
        v47 = v108;
        v58 = *(v108 + 88);
        v59 = *(v108 + 96);
        if (v58)
        {
          v60 = swift_allocObject();
          *(v60 + 16) = v58;
          *(v60 + 24) = v59;
          v61 = sub_1BD1839E8;
        }

        else
        {
          v61 = PKEdgeInsetsMake;
          v60 = 0;
        }

        v52 = v123;
        v84 = v120;
        v85 = swift_allocObject();
        *(v85 + 16) = v61;
        *(v85 + 24) = v60;
        sub_1BD0D44B8(v58);
        v86 = sub_1BE050234();
        sub_1BD321A38();
        sub_1BE04E1F4();
        v133 = 0;
        v142 = 0;
        v134 = sub_1BD1839E0;
        v135 = v85;
        v136 = v86;
        v137 = v87;
        v138 = v88;
        v139 = v89;
        v140 = v90;
        v141 = 0;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E50);
        sub_1BD3239D8();
        sub_1BE04F9A4();
        v91 = v131;
        *v84 = v130;
        v84[1] = v91;
        v84[2] = *v132;
        *(v84 + 42) = *&v132[10];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58);
        sub_1BD323AB8();
        sub_1BD323E24();
        sub_1BE04F9A4();

        goto LABEL_16;
      }

      v142 = 1;
      HIBYTE(v141) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E50);
      sub_1BD3239D8();
      sub_1BE04F9A4();
      v82 = v131;
      v83 = v120;
      *v120 = v130;
      v83[1] = v82;
      v83[2] = *v132;
      *(v83 + 42) = *&v132[10];
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E58);
      sub_1BD323AB8();
      sub_1BD323E24();
      sub_1BE04F9A4();
      (*(v45 + 8))(v36, v32);
    }

    v52 = v123;
    v47 = v108;
  }

LABEL_16:
  v92 = 1;
  if (sub_1BE04CB54())
  {
    v93 = sub_1BE04F7B4();
    v94 = v109;
    *v109 = v93;
    *(v94 + 8) = 0;
    *(v94 + 16) = 1;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E98);
    sub_1BD321BA4(v47, (v94 + *(v95 + 44)));
    v96 = v111;
    sub_1BE04E894();
    v97 = v112;
    v98 = v113;
    (*(v112 + 16))(v110, v96, v113);
    sub_1BD32410C(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v99 = sub_1BE04E644();
    (*(v97 + 8))(v96, v98);
    *(v94 + *(v52 + 36)) = v99;
    sub_1BD0DE204(v94, v51, &qword_1EBD41E00);
    v92 = 0;
  }

  (*(v122 + 56))(v51, v92, 1, v52);
  v100 = v121;
  sub_1BD0DE19C(v43, v121, &qword_1EBD41E48);
  v101 = v125;
  sub_1BD0DE19C(v51, v125, &qword_1EBD41E08);
  v102 = v126;
  sub_1BD0DE19C(v100, v126, &qword_1EBD41E48);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41E90);
  sub_1BD0DE19C(v101, v102 + *(v103 + 48), &qword_1EBD41E08);
  sub_1BD0DE53C(v51, &qword_1EBD41E08);
  sub_1BD0DE53C(v43, &qword_1EBD41E48);
  sub_1BD0DE53C(v101, &qword_1EBD41E08);
  return sub_1BD0DE53C(v100, &qword_1EBD41E48);
}

void sub_1BD3218D4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  v6 = PKPassKitBundle();
  if (v6)
  {
    v7 = v6;
    sub_1BE04B6F4();

    (*(v1 + 8))(v5, v0);
    v8 = *MEMORY[0x1E69DD888];
    v9 = sub_1BE052404();

    UIAccessibilityPostNotification(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD321A38()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 48);
  v6 = *(v0 + 40);
  v10 = v6;
  if (v11 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v10, &qword_1EBD5C6E0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 11.0;
  if (v6)
  {
    return 12.0;
  }

  return result;
}

id sub_1BD321BA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v97 = a2;
  v82 = sub_1BE04F3D4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v3);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE04BD74();
  v5 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v84 = &v79 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F50);
  MEMORY[0x1EEE9AC00](v83, v11);
  v13 = &v79 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F58);
  MEMORY[0x1EEE9AC00](v87, v14);
  v94 = &v79 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F60);
  MEMORY[0x1EEE9AC00](v92, v16);
  v96 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v91 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v95 = &v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030);
  MEMORY[0x1EEE9AC00](v24, v25);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F68);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v26);
  v93 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v79 - v30;
  sub_1BE051C64();
  v32 = MEMORY[0x1E6981CD0];
  v33 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v99 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F70);
  v101 = v33;
  v102 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1BD324414();
  v90 = v31;
  v34 = v98;
  sub_1BE051C84();
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v34);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v37 = sub_1BE04B6F4();
    v39 = v38;

    (*(v5 + 8))(v8, v34);
    v101 = v37;
    v102 = v39;
    sub_1BD0DDEBC();
    sub_1BE048964();
    v40 = v84;
    sub_1BE051744();
    LOBYTE(v37) = sub_1BE0501E4();
    sub_1BD321A38();
    sub_1BE04E1F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    (*(v85 + 32))(v13, v40, v86);
    v49 = &v13[*(v83 + 36)];
    *v49 = v37;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = sub_1BE0501F4();
    v51 = *(a1 + 40);
    v101 = v51;
    LOBYTE(v102) = *(a1 + 48);
    if (v102 == 1)
    {
      if (v51)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v52 = sub_1BE050174();
      sub_1BE04CF84();

      v53 = v80;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v101, &qword_1EBD5C6E0);
      (*(v81 + 8))(v53, v82);
      if (v100)
      {
LABEL_7:
        sub_1BE04E1F4();
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v62 = v94;
        sub_1BD0DE204(v13, v94, &qword_1EBD41F50);
        v63 = v62 + *(v87 + 36);
        *v63 = v50;
        *(v63 + 8) = v55;
        *(v63 + 16) = v57;
        *(v63 + 24) = v59;
        *(v63 + 32) = v61;
        *(v63 + 40) = 0;
        v64 = sub_1BE04CAE4();
        KeyPath = swift_getKeyPath();
        v66 = swift_allocObject();
        *(v66 + 16) = v64 & 1;
        v67 = v91;
        sub_1BD0DE204(v62, v91, &qword_1EBD41F58);
        v68 = (v67 + *(v92 + 36));
        *v68 = KeyPath;
        v68[1] = sub_1BD10DF54;
        v68[2] = v66;
        v69 = v95;
        sub_1BD0DE204(v67, v95, &qword_1EBD41F60);
        v70 = v88;
        v71 = *(v88 + 16);
        v72 = v93;
        v73 = v89;
        v74 = v90;
        v71(v93, v90, v89);
        v75 = v96;
        sub_1BD0DE19C(v69, v96, &qword_1EBD41F60);
        v76 = v97;
        v71(v97, v72, v73);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F80);
        sub_1BD0DE19C(v75, &v76[*(v77 + 48)], &qword_1EBD41F60);
        sub_1BD0DE53C(v69, &qword_1EBD41F60);
        v78 = *(v70 + 8);
        v78(v74, v73);
        sub_1BD0DE53C(v75, &qword_1EBD41F60);
        return (v78)(v72, v73);
      }
    }

    sub_1BD321A38();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD32248C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE0501E4();
  sub_1BD321A38();
  result = sub_1BE04E1F4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

void sub_1BD3224D8(uint64_t a1, void *a2)
{
  if (*a2 == 1 && (sub_1BE04C984() & 1) == 0)
  {
    type metadata accessor for PaymentSheetFooter.AudioPlayer();
    sub_1BD32410C(&qword_1EBD41DF8, type metadata accessor for PaymentSheetFooter.AudioPlayer);
    sub_1BE04E3C4();

    AudioServicesPlaySystemSound(0x573u);
  }
}

uint64_t sub_1BD3225A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v30 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EB0);
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v30 - v11;
  sub_1BD3229A8(&v34);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD322DFC();
  *&v5[*(v2 + 36)] = 256;
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EB8);
  v12 = sub_1BD323EB8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0);
  v14 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
  *&v61 = v2;
  *(&v61 + 1) = v13;
  *&v62 = v12;
  *(&v62 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v31;
  sub_1BE0510C4();
  sub_1BD0DE53C(v5, &qword_1EBD41EA8);
  v16 = *(v6 + 16);
  v17 = v32;
  v18 = v15;
  v19 = v15;
  v20 = v33;
  v16(v32, v18, v33);
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v43;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v47 = v34;
  v48 = v35;
  v60 = 256;
  *(a1 + 208) = 256;
  v21 = v58;
  *(a1 + 160) = v57;
  *(a1 + 176) = v21;
  *(a1 + 192) = v59;
  v22 = v54;
  *(a1 + 96) = v53;
  *(a1 + 112) = v22;
  v23 = v56;
  *(a1 + 128) = v55;
  *(a1 + 144) = v23;
  v24 = v50;
  *(a1 + 32) = v49;
  *(a1 + 48) = v24;
  v25 = v52;
  *(a1 + 64) = v51;
  *(a1 + 80) = v25;
  v26 = v48;
  *a1 = v47;
  *(a1 + 16) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EF0);
  v16((a1 + *(v27 + 48)), v17, v20);
  sub_1BD0DE19C(&v47, &v61, &qword_1EBD41EF8);
  v28 = *(v6 + 8);
  v28(v19, v20);
  v28(v17, v20);
  v71 = v44;
  v72 = v45;
  v73 = v46;
  v67 = v40;
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v63 = v36;
  v64 = v37;
  v65 = v38;
  v66 = v39;
  v61 = v34;
  v62 = v35;
  v74 = 256;
  return sub_1BD0DE53C(&v61, &qword_1EBD41EF8);
}

double sub_1BD3229A8@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v22 - v4;
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD31FF90())
  {
    sub_1BE051574();
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
    sub_1BE0515E4();

    (*(v7 + 8))(v10, v6);
    sub_1BE04F814();
    v11 = sub_1BE04F824();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = sub_1BE0515B4();

    sub_1BD0DE53C(v5, &qword_1EBD41F00);
    v13 = sub_1BE0511D4();
    v14 = sub_1BE0512D4();
    *&v31 = v12;
    *(&v31 + 1) = v13;
    v32 = v14;
    LOWORD(v33) = 1;
    sub_1BD0D4684(&v31);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v28 = v44;
    v29 = v45;
    v30 = v46;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    type metadata accessor for PaymentSheetFooter.AudioPlayer();
    sub_1BD32410C(&qword_1EBD41DF8, type metadata accessor for PaymentSheetFooter.AudioPlayer);
    v15 = sub_1BE04E3C4();
    v16 = sub_1BE04E3C4();
    LOBYTE(v40) = 1;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    *&v38 = sub_1BD3241CC;
    *(&v38 + 1) = v15;
    *&v39[0] = sub_1BD3241D4;
    *(&v39[0] + 1) = v16;
    *&v39[1] = 0;
    WORD4(v39[1]) = 1;
    sub_1BD3241DC(&v31);
  }

  v22[6] = v37;
  v22[7] = v38;
  v23[0] = v39[0];
  *(v23 + 11) = *(v39 + 11);
  v22[2] = v33;
  v22[3] = v34;
  v22[4] = v35;
  v22[5] = v36;
  v22[0] = v31;
  v22[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F10);
  sub_1BD3241E8();
  sub_1BD32432C();
  sub_1BE04F9A4();
  v17 = v47;
  a1[6] = v46;
  a1[7] = v17;
  a1[8] = v48[0];
  *(a1 + 139) = *(v48 + 11);
  v18 = v43;
  a1[2] = v42;
  a1[3] = v18;
  v19 = v45;
  a1[4] = v44;
  a1[5] = v19;
  result = *&v40;
  v21 = v41;
  *a1 = v40;
  a1[1] = v21;
  return result;
}

uint64_t sub_1BD322DFC()
{
  v1 = v0;
  v2 = sub_1BD3232A0();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1BD3232A0();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v25 = v9;
  v26 = v8;
  v10 = sub_1BD323478();
  sub_1BD250AA8();
  sub_1BD32410C(&qword_1EBD35E40, sub_1BD250AA8);
  v11 = sub_1BE04EEC4();
  v23 = v12;
  v24 = v11;
  v13 = sub_1BD3232A0();
  v15 = v14;
  *&v27[0] = 0xD000000000000010;
  *(&v27[0] + 1) = 0x80000001BE123AF0;
  MEMORY[0x1BFB3F610](v4, v5);

  sub_1BE04E624();
  sub_1BE051D84();
  sub_1BE04E634();

  sub_1BE04E624();
  sub_1BE051D84();
  sub_1BE04E634();

  v16 = sub_1BE04E604();

  *&v31 = v24;
  *(&v31 + 1) = v23;
  *&v32 = v26;
  *(&v32 + 1) = v25;
  LOBYTE(v33) = v10;
  *(&v33 + 1) = 0;
  *&v34 = v13;
  *(&v34 + 1) = v15;
  v35 = v27[0];
  v36 = v16;
  v29 = sub_1BD3232A0();
  v30 = v17;
  v18 = swift_allocObject();
  v19 = v1[5];
  v18[5] = v1[4];
  v18[6] = v19;
  v18[7] = v1[6];
  v20 = v1[1];
  v18[1] = *v1;
  v18[2] = v20;
  v21 = v1[3];
  v18[3] = v1[2];
  v18[4] = v21;
  sub_1BD0EEF94(v1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BD323FAC();
  sub_1BD324090();
  sub_1BE051064();

  v27[2] = v33;
  v27[3] = v34;
  v27[4] = v35;
  v28 = v36;
  v27[0] = v31;
  v27[1] = v32;
  return sub_1BD0DE53C(v27, &qword_1EBD41EC8);
}

uint64_t sub_1BD3230E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v7 - v2;
  v4 = *MEMORY[0x1E697E728];
  v5 = sub_1BE04EB24();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  sub_1BD32410C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41EA8);
    sub_1BD323EB8();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    sub_1BE050B34();
    return sub_1BD0DE53C(v3, &qword_1EBD3C1D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3232A0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1BD31FF90() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v9[4] = v8[4];
    v9[5] = v8[5];
    v9[6] = v8[6];
    v9[0] = v8[0];
    v9[1] = v8[1];
    v9[2] = v8[2];
    v9[3] = v8[3];
    v7 = *&v8[0];
    sub_1BE048C84();
    sub_1BD146D0C(v9);
    return v7;
  }

  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    return v7;
  }

  __break(1u);
  return result;
}

BOOL sub_1BD323478()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (*(&v9 + 1) != 1)
  {
    return 0;
  }

  if (sub_1BE04CC34())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v13 = v6;
    v14 = v7;
    v15 = v8;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    sub_1BD146D0C(&v9);
    return v10 == 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v13 = v6;
    v14 = v7;
    v15 = v8;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    sub_1BD146D0C(&v9);
    return v10 == 0;
  }
}

void sub_1BD3235F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *MEMORY[0x1E69DD888];
    v3 = sub_1BE052404();
    UIAccessibilityPostNotification(v2, v3);
  }
}

uint64_t sub_1BD3236F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BD323738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD3237C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PaymentSheetFooter.AudioPlayer();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

unint64_t sub_1BD323808()
{
  result = qword_1EBD41DD0;
  if (!qword_1EBD41DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB8);
    sub_1BD323894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DD0);
  }

  return result;
}

unint64_t sub_1BD323894()
{
  result = qword_1EBD41DD8;
  if (!qword_1EBD41DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB0);
    sub_1BD323920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DD8);
  }

  return result;
}

unint64_t sub_1BD323920()
{
  result = qword_1EBD41DE0;
  if (!qword_1EBD41DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DA8);
    sub_1BD0DE4F4(&qword_1EBD41DE8, &qword_1EBD41DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41DE0);
  }

  return result;
}

unint64_t sub_1BD3239D8()
{
  result = qword_1EBD36858;
  if (!qword_1EBD36858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E50);
    sub_1BD323A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36858);
  }

  return result;
}

unint64_t sub_1BD323A64()
{
  result = qword_1EBD365A0;
  if (!qword_1EBD365A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365A0);
  }

  return result;
}

unint64_t sub_1BD323AB8()
{
  result = qword_1EBD41E60;
  if (!qword_1EBD41E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E20);
    sub_1BD323B44();
    sub_1BD323BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E60);
  }

  return result;
}

unint64_t sub_1BD323B44()
{
  result = qword_1EBD41E68;
  if (!qword_1EBD41E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E40);
    sub_1BD323BD0();
    sub_1BD323CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E68);
  }

  return result;
}

unint64_t sub_1BD323BD0()
{
  result = qword_1EBD41E70;
  if (!qword_1EBD41E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E38);
    sub_1BD0DE4F4(&qword_1EBD41E78, &qword_1EBD41E30);
    sub_1BD32410C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41E70);
  }

  return result;
}

unint64_t sub_1BD323CB8()
{
  result = qword_1EBD367F8;
  if (!qword_1EBD367F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E80);
    sub_1BD323D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367F8);
  }

  return result;
}

unint64_t sub_1BD323D44()
{
  result = qword_1EBD36850;
  if (!qword_1EBD36850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E88);
    sub_1BD323DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36850);
  }

  return result;
}

unint64_t sub_1BD323DD0()
{
  result = qword_1EBD36598;
  if (!qword_1EBD36598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36598);
  }

  return result;
}

unint64_t sub_1BD323E24()
{
  result = qword_1EBD36740;
  if (!qword_1EBD36740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41E58);
    sub_1BD3239D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36740);
  }

  return result;
}

unint64_t sub_1BD323EB8()
{
  result = qword_1EBD41EC0;
  if (!qword_1EBD41EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    sub_1BD323FAC();
    sub_1BD324090();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41EC0);
  }

  return result;
}

unint64_t sub_1BD323FAC()
{
  result = qword_1EBD41ED0;
  if (!qword_1EBD41ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41EC8);
    sub_1BD0DE4F4(&qword_1EBD41ED8, &qword_1EBD41EE0);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41ED0);
  }

  return result;
}

unint64_t sub_1BD324090()
{
  result = qword_1EBD41EE8;
  if (!qword_1EBD41EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41EE8);
  }

  return result;
}

uint64_t sub_1BD32410C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_25()
{

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v0 + 56), *(v0 + 64));

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD3241E8()
{
  result = qword_1EBD41F18;
  if (!qword_1EBD41F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F08);
    sub_1BD324274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F18);
  }

  return result;
}

unint64_t sub_1BD324274()
{
  result = qword_1EBD41F20;
  if (!qword_1EBD41F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F28);
    sub_1BD0DE4F4(&qword_1EBD41F30, &qword_1EBD41F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F20);
  }

  return result;
}

unint64_t sub_1BD32432C()
{
  result = qword_1EBD41F40;
  if (!qword_1EBD41F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F10);
    sub_1BD3243B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F40);
  }

  return result;
}

unint64_t sub_1BD3243B8()
{
  result = qword_1EBD41F48;
  if (!qword_1EBD41F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F48);
  }

  return result;
}

unint64_t sub_1BD324414()
{
  result = qword_1EBD41F78;
  if (!qword_1EBD41F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F70);
    sub_1BD0EEEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F78);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD3244B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BD3244FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD324550()
{
  result = qword_1EBD41F88;
  if (!qword_1EBD41F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41DB8);
    type metadata accessor for PKAuthenticatorESBiometricAnnotation(255);
    sub_1BD323808();
    sub_1BD32410C(&qword_1EBD41DF0, type metadata accessor for PKAuthenticatorESBiometricAnnotation);
    swift_getOpaqueTypeConformance2();
    sub_1BD32410C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F88);
  }

  return result;
}

unint64_t sub_1BD32469C()
{
  result = qword_1EBD41F98;
  if (!qword_1EBD41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41F98);
  }

  return result;
}

id sub_1BD3246F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontSizeToFitWidth_];
  v1 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38]);
  [v0 setFont_];

  LODWORD(v2) = 1132068864;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  return v0;
}

void sub_1BD3247CC(id a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    [a1 pkui:0 shakeWithCompletion:?];
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1BE048C84();
  }

  v9 = sub_1BE052404();

  [a1 setText_];
}

unint64_t sub_1BD324884()
{
  result = qword_1EBD41FA0;
  if (!qword_1EBD41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FA0);
  }

  return result;
}

double ACHCredentialDetailsView.init(model:credential:)@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ACHCredentialDetailsView();
  v5 = a2 + v4[6];
  sub_1BE051694();
  *v5 = v14;
  *(v5 + 1) = *(&v14 + 1);
  v6 = a2 + v4[7];
  sub_1BE051694();
  *v6 = v14;
  *(v6 + 1) = *(&v14 + 1);
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  sub_1BE048964();
  *a2 = sub_1BE04E954();
  a2[1] = v7;
  v8 = v4[5];
  v9 = sub_1BE049364();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2 + v8, a1, v9);
  sub_1BE049314();
  v11 = a2 + v4[8];
  sub_1BE051694();
  *v11 = v14;
  *(v11 + 2) = v15;
  sub_1BE0492E4();
  v12 = a2 + v4[9];
  sub_1BE051694();

  (*(v10 + 8))(a1, v9);
  result = *&v14;
  *v12 = v14;
  *(v12 + 2) = v15;
  return result;
}

uint64_t type metadata accessor for ACHCredentialDetailsView()
{
  result = qword_1EBD41FF0;
  if (!qword_1EBD41FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD324AE4()
{
  result = qword_1EBD41FA8;
  if (!qword_1EBD41FA8)
  {
    type metadata accessor for CredentialCenterModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FA8);
  }

  return result;
}

uint64_t ACHCredentialDetailsView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7[-v4];
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB8);
  sub_1BD324E30();
  sub_1BE0504A4();
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0);
  sub_1BD325E94();
  sub_1BE051034();
  return (*(v2 + 8))(v5, v1);
}

void sub_1BD324CE4()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    MEMORY[0x1EEE9AC00](v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD0);
    sub_1BD0DE4F4(&qword_1EBD41FC8, &qword_1EBD41FD0);
    sub_1BD0DDEBC();
    sub_1BE051A14();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD324E30()
{
  result = qword_1EBD41FC0;
  if (!qword_1EBD41FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FB8);
    sub_1BD0DE4F4(&qword_1EBD41FC8, &qword_1EBD41FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FC0);
  }

  return result;
}

uint64_t sub_1BD324EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42018);
  sub_1BD328010();
  return sub_1BE0504E4();
}

void sub_1BD324F64(char *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42040);
  MEMORY[0x1EEE9AC00](v94, v3);
  v89 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42048);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v87 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v86 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v88 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v90 = &v83 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42050);
  MEMORY[0x1EEE9AC00](v91, v18);
  v93 = &v83 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42030);
  MEMORY[0x1EEE9AC00](v92, v20);
  v85 = &v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42058);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v83 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v84 = &v83 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v83 - v35;
  v37 = a1;
  v38 = &a1[*(type metadata accessor for ACHCredentialDetailsView() + 24)];
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v96) = v39;
  v97 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v41 = v100;
  v42 = sub_1BE052404();
  v43 = PKLocalizedPaymentString(v42);

  if (v41 == 1)
  {
    if (v43)
    {
      v44 = sub_1BE052434();
      v46 = v45;

      v96 = v44;
      v97 = v46;
      MEMORY[0x1EEE9AC00](v47, v48);
      *(&v83 - 2) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
      sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590);
      sub_1BD0DDEBC();
      v90 = v36;
      sub_1BE04E824();
      v49 = sub_1BE052404();
      v50 = PKLocalizedPaymentString(v49);

      if (v50)
      {
        v51 = sub_1BE052434();
        v53 = v52;

        v96 = v51;
        v97 = v53;
        MEMORY[0x1EEE9AC00](v54, v55);
        *(&v83 - 2) = v37;
        v56 = v84;
        sub_1BE04E824();
        v57 = *(v23 + 16);
        v57(v29, v90, v22);
        v58 = v83;
        v57(v83, v56, v22);
        v59 = v85;
        v57(v85, v29, v22);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42068);
        v57((v59 + *(v60 + 48)), v58, v22);
        v61 = *(v23 + 8);
        v61(v58, v22);
        v61(v29, v22);
        sub_1BD328110(v59, v93);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030);
        sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v59, &qword_1EBD42030);
        v61(v56, v22);
        v61(v90, v22);
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v43)
  {
    goto LABEL_10;
  }

  v62 = sub_1BE052434();
  v64 = v63;

  v100 = v62;
  v101 = v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v83 - 2) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AD90);
  v67 = sub_1BE04FE44();
  v96 = MEMORY[0x1E6981148];
  v97 = v67;
  v98 = MEMORY[0x1E6981138];
  v99 = MEMORY[0x1E69803B8];
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v68 = v90;
  sub_1BE04E824();
  v69 = sub_1BE052404();
  v70 = PKLocalizedPaymentString(v69);

  if (!v70)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v71 = sub_1BE052434();
  v73 = v72;

  v96 = v71;
  v97 = v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  *(&v83 - 2) = v37;
  v76 = v88;
  sub_1BE04E824();
  v77 = *(v6 + 16);
  v78 = v86;
  v77(v86, v68, v5);
  v79 = v87;
  v77(v87, v76, v5);
  v80 = v89;
  v77(v89, v78, v5);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42060);
  v77((v80 + *(v81 + 48)), v79, v5);
  v82 = *(v6 + 8);
  v82(v79, v5);
  v82(v78, v5);
  sub_1BD05E3BC(v80, v93);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030);
  sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040);
  sub_1BE04F9A4();
  sub_1BD05E42C(v80);
  v82(v76, v5);
  v82(v68, v5);
}

uint64_t sub_1BD325960()
{
  sub_1BE04F624();
  type metadata accessor for ACHCredentialDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  return sub_1BE051E04();
}

uint64_t sub_1BD325A48()
{
  sub_1BE04F624();
  type metadata accessor for ACHCredentialDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  return sub_1BE051E04();
}

uint64_t sub_1BD325B30(uint64_t a1)
{
  v2 = sub_1BE04FE44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for ACHCredentialDetailsView() + 36));
  v8 = *v7;
  v9 = *(v7 + 2);
  v17 = v8;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v17 = v20;
  sub_1BD0DDEBC();
  v10 = sub_1BE0506C4();
  v12 = v11;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v14 = v13 & 1;
  LOBYTE(v18) = v13 & 1;
  v19 = v15;
  sub_1BE04FE34();
  sub_1BE050A74();
  (*(v3 + 8))(v6, v2);
  sub_1BD0DDF10(v10, v12, v14);
}

uint64_t sub_1BD325CD0(uint64_t a1)
{
  v2 = sub_1BE04FE44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for ACHCredentialDetailsView() + 32));
  v8 = *v7;
  v9 = *(v7 + 2);
  v17 = v8;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v17 = v20;
  sub_1BD0DDEBC();
  v10 = sub_1BE0506C4();
  v12 = v11;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v14 = v13 & 1;
  LOBYTE(v18) = v13 & 1;
  v19 = v15;
  sub_1BE04FE34();
  sub_1BE050A74();
  (*(v3 + 8))(v6, v2);
  sub_1BD0DDF10(v10, v12, v14);
}

unint64_t sub_1BD325E94()
{
  result = qword_1EBD41FE8;
  if (!qword_1EBD41FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD41FE8);
  }

  return result;
}

uint64_t sub_1BD325FA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42008);
  MEMORY[0x1EEE9AC00](v37, v3);
  v38 = &v33 - v4;
  v5 = type metadata accessor for ACHCredentialDetailsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42010);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v13);
  v15 = &v33 - v14;
  v16 = v1 + *(v5 + 24);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v40) = v17;
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v19 = v42;
  sub_1BD327C24(v2, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_1BD327C88(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_1BE051704();
  if (v19 == 1)
  {
    v22 = v2 + *(v5 + 28);
    v23 = *v22;
    v24 = *(v22 + 8);
    v42 = v23;
    v43 = v24;
    v25 = sub_1BE0516C4();
    MEMORY[0x1EEE9AC00](v25, v26);
    *(&v33 - 2) = v2;
    v27 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BE050EE4();

    (*(v35 + 8))(v12, v9);
    v28 = v34;
    v29 = v36;
    (*(v34 + 16))(v38, v15, v36);
    swift_storeEnumTagMultiPayload();
    v40 = v9;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v28 + 8))(v15, v29);
  }

  else
  {
    v31 = v35;
    (*(v35 + 16))(v38, v12, v9);
    swift_storeEnumTagMultiPayload();
    v32 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v40 = v9;
    v41 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v31 + 8))(v12, v9);
  }
}

uint64_t sub_1BD32654C(uint64_t a1)
{
  v2 = type metadata accessor for ACHCredentialDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD327C24(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD327C88(v6, v14 + v13);
  sub_1BD122C00(0, 0, v10, &unk_1BE0CC888, v14);
}

uint64_t sub_1BD326704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_1BE04D214();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = sub_1BE0528A4();
  v4[42] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[43] = v10;
  v4[44] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD326928, v10, v9);
}

uint64_t sub_1BD326928()
{
  v1 = *(v0 + 208);
  *(v0 + 360) = *(v1 + 8);
  v2 = type metadata accessor for ACHCredentialDetailsView();
  *(v0 + 368) = v2;
  *(v0 + 480) = v2[5];
  v3 = (v1 + v2[8]);
  v4 = *v3;
  v5 = *(v3 + 2);
  *(v0 + 80) = v4;
  *(v0 + 96) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v6 = *(v0 + 136);
  *(v0 + 376) = *(v0 + 128);
  *(v0 + 384) = v6;
  v7 = (v1 + v2[9]);
  v8 = *v7;
  v9 = *(v7 + 2);
  *(v0 + 104) = v8;
  *(v0 + 120) = v9;
  sub_1BE0516A4();
  v10 = *(v0 + 152);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 400) = v10;
  *(v0 + 408) = sub_1BE049344();
  *(v0 + 416) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BD326A3C, 0, 0);
}

uint64_t sub_1BD326A3C()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v12 = *(v0 + 288);
  v4 = *(v0 + 272);
  v11 = *(v0 + 264);
  v5 = *(*(v0 + 312) + 16);
  v5(v1, *(v0 + 208) + *(v0 + 480), v2);
  sub_1BE0492F4();
  sub_1BE049324();
  sub_1BE049354();
  v5(v3, v1, v2);
  v6 = *MEMORY[0x1E6967770];
  v7 = *(v4 + 104);
  v7(v3, v6, v11);
  v5(v12, v1, v2);
  v7(v12, v6, v11);
  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_1BD326BF4;
  v9 = *(v0 + 288);

  return MEMORY[0x1EEDC1528](v9);
}

uint64_t sub_1BD326BF4()
{
  v2 = *v1;
  v2[54] = v0;

  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[33];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[58] = v6;
    v2[59] = v7;
    v6(v3, v5);
    v8 = sub_1BD32714C;
  }

  else
  {
    v2[55] = v6;
    v2[56] = v7;
    v6(v3, v5);
    v8 = sub_1BD326D78;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BD326D78()
{
  *(v0 + 456) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD326E04, v2, v1);
}

uint64_t sub_1BD326E04()
{
  v1 = v0[32];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = *(v0[24] + 16);

  sub_1BE0492D4();
  v3 = swift_task_alloc();
  v3[2] = v1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_1BE04D8A4();
  v7 = v6;
  v8 = sub_1BD1DA97C(sub_1BD327FE0, v3);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
LABEL_11:
    v5 = sub_1BD1D7C4C(0, v5[2] + 1, 1, v5);
    *v3 = v5;
    goto LABEL_4;
  }

  v22 = v2;
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[30];
  sub_1BD1DD4E0(v8, v9);

  (v5)(v0 + 2, 0);

  (*(v10 + 8))(v11, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(v0[25] + 16);

  if (v13 >= v22)
  {
    goto LABEL_7;
  }

  v7 = v0 + 6;
  (*(v0[34] + 16))(v0[35], v0[37], v0[33]);
  swift_getKeyPath();
  swift_getKeyPath();
  KeyPath = sub_1BE04D8A4();
  v3 = v14;
  v5 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v17 = v5[2];
  v16 = v5[3];
  if (v17 >= v16 >> 1)
  {
    v5 = sub_1BD1D7C4C(v16 > 1, v17 + 1, 1, v5);
    *v3 = v5;
  }

  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[33];
  v5[2] = v17 + 1;
  (*(v19 + 32))(v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);
  KeyPath(v7, 0);

LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD327400, 0, 0);
}

uint64_t sub_1BD32714C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 464))(*(v0 + 296), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BD3271DC, v4, v5);
}

uint64_t sub_1BD3271DC()
{
  v1 = *(v0 + 432);

  sub_1BE04D1E4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Error updating ACH credential: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = *(v0 + 432);
  v11 = *(v0 + 368);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);

  (*(v13 + 8))(v12, v14);
  v16 = v15 + *(v11 + 28);
  v17 = *(v16 + 8);
  *(v0 + 160) = *v16;
  *(v0 + 168) = v17;
  *(v0 + 484) = 1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1BD327400()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 440))(*(v0 + 296), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BD327490, v4, v5);
}

uint64_t sub_1BD327490()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 208);

  v3 = (v2 + *(v1 + 24));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 485) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();

  v6 = *(v0 + 8);

  return v6();
}

void sub_1BD327588(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedPaymentString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    *a1 = sub_1BE0506C4();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD327634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ACHCredentialDetailsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BD327C24(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD327C88(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  static BankCredentialListView.invalidInputErrorAlert(action:)(sub_1BD327E64, a2);
}

uint64_t sub_1BD327740()
{
  type metadata accessor for ACHCredentialDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD3277B0()
{
  type metadata accessor for ACHCredentialDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

void sub_1BD327824(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedPaymentString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    *a1 = sub_1BE0506C4();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3278D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7[-v4];
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FB8);
  sub_1BD324E30();
  sub_1BE0504A4();
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41FD8);
  sub_1BD0DE4F4(&qword_1EBD41FE0, &qword_1EBD41FB0);
  sub_1BD325E94();
  sub_1BE051034();
  return (*(v2 + 8))(v5, v1);
}

void sub_1BD327AA0()
{
  sub_1BD327B74();
  if (v0 <= 0x3F)
  {
    sub_1BE049364();
    if (v1 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0);
      if (v2 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD327B74()
{
  if (!qword_1EBD42000)
  {
    type metadata accessor for CredentialCenterModel(255);
    sub_1BD324AE4();
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42000);
    }
  }
}

void sub_1BD327BD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE0516D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BD327C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHCredentialDetailsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD327C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHCredentialDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = (type metadata accessor for ACHCredentialDetailsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1BE049364();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD327E7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ACHCredentialDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD327EF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ACHCredentialDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD326704(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD328010()
{
  result = qword_1EBD42020;
  if (!qword_1EBD42020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42018);
    sub_1BD0DE4F4(&qword_1EBD42028, &qword_1EBD42030);
    sub_1BD0DE4F4(&qword_1EBD42038, &qword_1EBD42040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42020);
  }

  return result;
}

uint64_t sub_1BD328110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD328188(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillManager;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69B8680]) init];
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication] = xmmword_1BE0CC930;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_identifier];
  *v8 = 0xD00000000000001DLL;
  *(v8 + 1) = 0x80000001BE123D50;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_groupsViewController] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *sub_1BD3283AC()
{
  v1 = type metadata accessor for AutoFillFPANCardsView(0);
  v2 = (v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v36 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication + 8);
  v8 = v36;
  v37 = v7;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_groupsViewController);
  v34 = v6;
  v35 = v9;
  v39 = type metadata accessor for AutoFillCardsViewController();
  v38 = objc_allocWithZone(v39);
  v44 = 0;
  sub_1BD041A38(v7, v8);
  v10 = v9;
  sub_1BD041A38(v7, v8);
  v40 = v10;
  sub_1BE048C84();
  sub_1BE051694();
  v11 = v42;
  *v5 = v41;
  *(v5 + 1) = v11;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD329898(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v12 = sub_1BE04E954();
  v14 = v13;
  *(v5 + 2) = v12;
  *(v5 + 3) = v13;
  v15 = v2[8];
  *&v5[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v16 = v2[9];
  sub_1BE052434();
  v17 = *MEMORY[0x1E69BC6D8];
  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v18 initWithSuiteName_];
  *&v5[v16] = sub_1BE04E124();
  v19 = v2[10];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *&v5[v19] = sub_1BE04E124();
  v20 = v2[12];
  *&v5[v2[11]] = 0;
  *&v5[v20] = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v34;
  sub_1BE04D8C4();
  v21 = *(v14 + 24);
  v22 = *(v14 + 32);
  v24 = v36;
  v23 = v37;
  *(v14 + 24) = v37;
  *(v14 + 32) = v24;
  sub_1BD030220(v21, v22);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD420B8));
  v26 = sub_1BE04F894();
  v27 = v38;
  *&v38[OBJC_IVAR___PKAutoFillCardsViewController_hostingVC] = v26;
  *&v27[OBJC_IVAR___PKAutoFillCardsViewController_context] = 0;
  v43.receiver = v27;
  v43.super_class = v39;
  v28 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  v29 = OBJC_IVAR___PKAutoFillCardsViewController_hostingVC;
  swift_beginAccess();
  v30 = *&v28[v29];
  v31 = v28;
  [v31 addChildViewController_];

  sub_1BD1245AC(v23, v24);
  return v31;
}

void sub_1BD328740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0C63C0;
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  *(inited + 32) = sub_1BE053054();
  *(inited + 40) = sub_1BE053054();
  *(inited + 48) = sub_1BE053054();
  sub_1BD112388(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD22CFF8();
  v8 = sub_1BE052A24();

  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  aBlock[4] = sub_1BD329880;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3293A4;
  aBlock[3] = &block_descriptor_58;
  v10 = _Block_copy(aBlock);
  v11 = v3;
  sub_1BE048964();

  [v6 activeFPANCardsWithOptions:7 allowedCardTypes:v8 sortType:1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1BD328914(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v17 = a1;
  }

  *&a2[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_autoFillCardDescriptors] = v17;
  sub_1BE048C84();

  if (PKPasscodeEnabled())
  {
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a2;
    sub_1BE048964();
    v19 = a2;
    sub_1BD328FE4(sub_1BD32988C, v18);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v21 = sub_1BE052D54();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    aBlock[4] = sub_1BD32990C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_17_1;
    v23 = _Block_copy(aBlock);
    sub_1BE048964();

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v11, v23);
    _Block_release(v23);

    (*(v25 + 8))(v11, v8);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1BD328CA4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FA4();
  v16 = *(v15 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    return a3(0, v19);
  }

  v23 = (a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v29 = v11;
  v30 = v18;
  v24 = *(a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_authentication);
  v25 = v23[1];
  *v23 = a1;
  v23[1] = a2;
  sub_1BD030394(a1, a2);
  sub_1BD041A38(a1, a2);
  sub_1BD1245AC(v24, v25);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v26 = sub_1BE052D54();
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  aBlock[4] = sub_1BD19E0B8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_35_0;
  v28 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v21, v14, v28);
  _Block_release(v28);

  sub_1BD030220(a1, a2);
  (*(v29 + 8))(v14, v10);
  return (*(v16 + 8))(v21, v30);
}

void sub_1BD328FE4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 2;
  v33 = inited + 32;
  v11 = *(v3 + 104);
  v11(v9, *MEMORY[0x1E69B80D8], v2);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    v17 = *(v3 + 8);
    v17(v9, v2);
    v18 = MEMORY[0x1E69E6158];
    *(inited + 40) = v14;
    *(inited + 48) = v16;
    *(inited + 64) = v18;
    *(inited + 72) = 1021;
    v19 = v37;
    v11(v37, *MEMORY[0x1E69B80D0], v2);
    v20 = PKPassKitBundle();
    if (v20)
    {
      v21 = v20;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      v17(v19, v2);
      *(inited + 104) = MEMORY[0x1E69E6158];
      *(inited + 80) = v22;
      *(inited + 88) = v24;
      v25 = sub_1BD1AB050(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE20);
      swift_arrayDestroy();
      v26 = v36;
      v27 = *&v36[OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext];
      sub_1BD1A7FCC(v25);

      v28 = sub_1BE052224();

      v29 = swift_allocObject();
      v30 = v35;
      v29[2] = v34;
      v29[3] = v30;
      v29[4] = v26;
      aBlock[4] = sub_1BD3298E0;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD1AA864;
      aBlock[3] = &block_descriptor_23_3;
      v31 = _Block_copy(aBlock);
      sub_1BE048964();
      v32 = v26;

      [v27 evaluatePolicy:1025 options:v28 reply:v31];
      _Block_release(v31);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD3293A4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD420C0);
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

uint64_t sub_1BD32942C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BE051F54();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1BD3298EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_29_3;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  v20 = a2;
  sub_1BE048964();
  v21 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD329898(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v22 = v25;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_1BD329724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4, uint64_t a5)
{
  if (!a1 || a2)
  {
    return a3(0, 0xF000000000000000);
  }

  v6 = [*(a5 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_localAuthenticationContext) externalizedContext];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE04AAC4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  a3(v8, v10);

  return sub_1BD030220(v8, v10);
}

uint64_t sub_1BD3297F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD32982C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36AutoFillCredentialManagementFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD329898(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD3299F4(void (*a1)(void, void, void, void), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product;
  v6 = [*(v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product) provisioningMethodMetadataForType_];
  v7 = [v6 digitalIssuanceMetadata];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [*(v2 + v5) provisioningMethodMetadataForType_];
  if (v8)
  {
    v7 = v8;
LABEL_4:

LABEL_5:
    a1(0, 0, 0, 0);
    return;
  }

  if ([*(v2 + v5) supportsSetupProductMethodForType_] & 1) != 0 || (objc_msgSend(*(v2 + v5), sel_supportsSetupProductMethodForType_, 6))
  {
    goto LABEL_5;
  }

  v9 = [*(v2 + v5) configuration];
  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 type];

  if (v11 == 4)
  {
    goto LABEL_5;
  }

  v12 = PKDisplayableErrorForCommonType();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v15 = sub_1BE04A844();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v22[4] = sub_1BD32AC18;
  v22[5] = v16;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1BD126964;
  v22[3] = &block_descriptor_59;
  v17 = _Block_copy(v22);
  sub_1BE048964();

  v18 = PKAlertForDisplayableErrorWithCancelHandler(v15, 0, v17);
  _Block_release(v17);

  if (!v18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v19 = v2 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 24))(v18, ObjectType, v20);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD329C94(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v141 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v141 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v141 - v27;
  if (!a1)
  {
    v45 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v46 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v47 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    v48 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry);
    v49 = type metadata accessor for PaymentSetupProductProvidersFlowItem();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController] = 0;
    v51 = OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod;
    *&v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod] = 0;
    *&v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v52 = &v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_identifier];
    *v52 = 0xD000000000000018;
    v52[1] = 0x80000001BE123DF0;
    *&v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_context] = v45;
    *&v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product] = v46;
    v53 = *&v50[v51];
    *&v50[v51] = v47;
    v54 = v46;
    v55 = v47;
    v56 = v54;
    v57 = v55;
    sub_1BE048964();

    v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_allowSecondaryManualEntry] = v48;
    v50[OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_showOtherProviders] = 0;
    v148.receiver = v50;
    v148.super_class = v49;
    v44 = objc_msgSendSuper2(&v148, sel_init);

    return v44;
  }

  v143 = v26;
  type metadata accessor for PaymentSetupProductProvidersFlowItem();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod);
    v31 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod) = v30;
    v32 = v30;
    swift_unknownObjectRetain();

    v33 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v34 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v35 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry);
    v36 = type metadata accessor for ProvisioningHeroFlowItem();
    v37 = objc_allocWithZone(v36);
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v38 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v39 = &v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v39[13] = 0;
    *(v39 + 7) = -5120;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v33;
    v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = v34;
    v40 = *&v37[v38];
    *&v37[v38] = v30;
    v41 = v34;
    v42 = v32;
    v43 = v41;
    sub_1BE048964();

    v37[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = (v30 == 0) & v35;
    v144.receiver = v37;
    v144.super_class = v36;
    v44 = objc_msgSendSuper2(&v144, sel_init);

    swift_unknownObjectRelease();
    return v44;
  }

  type metadata accessor for ProvisioningHeroFlowItem();
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = *(v58 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod);
    v60 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
    *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod) = v59;
    swift_unknownObjectRetain();
    v61 = v59;

    v62 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
    v63 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
    v64 = objc_allocWithZone(type metadata accessor for PaymentSetupProductDevicePickerFlowItem());
    sub_1BE048964();
    v44 = sub_1BD5B8C48(v62, v63);
    swift_unknownObjectRelease();
    return v44;
  }

  type metadata accessor for PaymentSetupProductDevicePickerFlowItem();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    return 0;
  }

  v142 = v4;
  v66 = *(v65 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct);
  v67 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product);
  v141 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product;
  *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product) = v66;
  swift_unknownObjectRetain();
  v68 = v66;

  v69 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod);
  if (!v69)
  {
LABEL_28:
    sub_1BE04D0E4();
    v95 = sub_1BE04D204();
    v96 = sub_1BE052C34();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1BD026000, v95, v96, "Error: Cannot create manual entry view controller because no valid provisioning methods exist for product", v97, 2u);
      MEMORY[0x1BFB45F20](v97, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v142 + 8))(v7, v143);
    return 0;
  }

  v70 = v69;
  v71 = [v70 type];
  if (v71 <= 2)
  {
    switch(v71)
    {
      case 0:
        goto LABEL_12;
      case 1:
        v105 = v141;
        v106 = [*(v1 + v141) provisioningMethodMetadataForType_];
        if (v106)
        {

          v107 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
          v108 = *(v1 + v105);
          v109 = type metadata accessor for ProvisioningReaderModeDetailsFlowItem();
          v110 = v70;
          v111 = objc_allocWithZone(v109);
          *&v111[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem__isManualProvisioning] = &type metadata for IsManualProvisioning;
          *&v111[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v112 = &v111[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_identifier];
          *v112 = 0xD000000000000019;
          *(v112 + 1) = 0x80000001BE123E10;
          *&v111[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_context] = v107;
          *&v111[OBJC_IVAR____TtC9PassKitUI37ProvisioningReaderModeDetailsFlowItem_product] = v108;
          v146.receiver = v111;
          v146.super_class = v109;
          sub_1BE048964();
          v113 = v108;
          v44 = objc_msgSendSuper2(&v146, sel_init);
          swift_unknownObjectRelease();

          return v44;
        }

        sub_1BE04D0E4();
        v119 = sub_1BE04D204();
        v120 = sub_1BE052C34();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&dword_1BD026000, v119, v120, "Error: No provisioningMethodMetadata for readerMode", v121, 2u);
          MEMORY[0x1BFB45F20](v121, -1, -1);
        }

        else
        {
        }

        (*(v142 + 8))(v15, v143);
        goto LABEL_28;
      case 2:
        v82 = v141;
        v83 = [*(v1 + v141) provisioningMethodMetadataForType_];
        if (v83)
        {
          v84 = v83;
          v85 = [v83 digitalIssuanceMetadata];
          if (v85)
          {
            v86 = v85;
            v87 = v70;
            v88 = [v85 balanceIdentifier];
            v89 = v88;
            if (v88)
            {
            }

            v90 = [v86 serviceProviderProducts];
            if (v90)
            {
              v91 = v90;
              sub_1BD160A1C();
              v92 = sub_1BE052744();

              if (v92 >> 62)
              {
                v93 = sub_1BE053704();
              }

              else
              {
                v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v94 = v93 != 0;
            }

            else
            {
              v94 = 0;
              v92 = 0;
            }

            result = [*(v1 + v82) showOtherProviders];
            if (result)
            {
              result = [*(v1 + v82) supportsSetupProductMethodForType_];
              if (result)
              {
                v131 = 1;
              }

              else
              {
                result = [*(v1 + v82) supportsSetupProductMethodForType_];
                v131 = result;
              }
            }

            else
            {
              v131 = 0;
            }

            if (v89)
            {

              if (v94)
              {
                v132 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
                v133 = *(v1 + v82);
                v134 = objc_allocWithZone(type metadata accessor for PaymentSetupProductTypeFlowItem());
                sub_1BE048964();
                v44 = sub_1BD160194(v132, v133, v131);
                swift_unknownObjectRelease();

                return v44;
              }
            }

            else
            {
              if (v94)
              {
                if (v92)
                {
                  v135 = *(v1 + v82);
                  v136 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
                  type metadata accessor for PaymentSetupServiceProviderProductsFlowSection();
                  swift_allocObject();
                  sub_1BE048964();
                  v137 = v135;
                  v44 = sub_1BD59AB30(v136, v137, v92, v131);
                  swift_unknownObjectRelease();

                  return v44;
                }

                goto LABEL_76;
              }
            }

            v138 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
            v139 = *(v1 + v82);
            v140 = objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseProductFlowItem());
            sub_1BE048964();
            v44 = sub_1BD7F6138(v138, v139);
            swift_unknownObjectRelease();

            return v44;
          }
        }

        sub_1BE04D0E4();
        v128 = sub_1BE04D204();
        v129 = sub_1BE052C34();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_1BD026000, v128, v129, "Error: No provisioningMethodMetadata for digitalIssuanceMetadata", v130, 2u);
          MEMORY[0x1BFB45F20](v130, -1, -1);
        }

        else
        {
        }

        (*(v142 + 8))(v19, v143);
        goto LABEL_28;
    }

    goto LABEL_42;
  }

  if (v71 > 8)
  {
LABEL_42:

    goto LABEL_28;
  }

  if (((1 << v71) & 0x198) == 0)
  {
    if (v71 == 5)
    {
      objc_opt_self();
      v114 = swift_dynamicCastObjCClass();
      if (v114)
      {
        v115 = v114;
        v116 = *(v1 + OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context);
        v117 = *(v1 + v141);
        v118 = objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
        sub_1BE048964();
        v44 = sub_1BD9DC084(v116, v117, v115);
        swift_unknownObjectRelease();
        return v44;
      }

      sub_1BE04D0E4();
      v125 = sub_1BE04D204();
      v126 = sub_1BE052C34();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_1BD026000, v125, v126, "Error: No inApp method", v127, 2u);
        MEMORY[0x1BFB45F20](v127, -1, -1);
      }

      else
      {
      }

      (*(v142 + 8))(v28, v143);
      goto LABEL_28;
    }

    if (v71 == 6)
    {
      objc_opt_self();
      v98 = swift_dynamicCastObjCClass();
      if (v98)
      {
        v99 = v98;
        v100 = type metadata accessor for PaymentSetupOpenAppClipFlowItem();
        v101 = v70;
        v102 = objc_allocWithZone(v100);
        *&v102[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v103 = &v102[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier];
        *v103 = 0xD000000000000013;
        *(v103 + 1) = 0x80000001BE123E30;
        *&v102[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] = v99;
        v145.receiver = v102;
        v145.super_class = v100;
        v104 = v101;
        v44 = objc_msgSendSuper2(&v145, sel_init);

        swift_unknownObjectRelease();
        return v44;
      }

      sub_1BE04D0E4();
      v122 = sub_1BE04D204();
      v123 = sub_1BE052C34();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1BD026000, v122, v123, "Error: No appClip method", v124, 2u);
        MEMORY[0x1BFB45F20](v124, -1, -1);
      }

      else
      {
      }

      (*(v142 + 8))(v23, v143);
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_12:
  [v70 type];
  result = PKPaymentSupportedProvisioningMethodToString();
  if (result)
  {
    v73 = result;
    v74 = sub_1BE052434();
    v76 = v75;

    sub_1BE04D0E4();
    sub_1BE048C84();
    v77 = sub_1BE04D204();
    v78 = sub_1BE052C34();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v147 = v80;
      *v79 = 136315138;
      v81 = sub_1BD123690(v74, v76, &v147);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_1BD026000, v77, v78, "Error: Unsupported method type: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x1BFB45F20](v80, -1, -1);
      MEMORY[0x1BFB45F20](v79, -1, -1);
    }

    else
    {
    }

    (*(v142 + 8))(v11, v143);
    goto LABEL_28;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}