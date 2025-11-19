uint64_t sub_1AF3FBEE4(uint64_t a1, uint64_t a2, char a3, unint64_t a4, int a5, void *a6)
{
  v35 = sub_1AF43AB80(MEMORY[0x1E69E7CC0]);
  v36 = v13;
  sub_1AF413C70(a1, a2, a3 & 1, a4, a5, a6, &v35);
  if (v6)
  {
  }

  else
  {
    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = type metadata accessor for Node();
    a6 = v35;
    v17 = v36;
    if (v15 == v16)
    {
      v18 = *(v36 + 2);

      if (v18)
      {
        v19 = 0;
        v20 = v17 + 32;
        v21 = v17;
        do
        {
          v32 = v21;
          while (1)
          {
            v22 = *&v20[8 * v19];
            if (a6[2])
            {
              sub_1AF0D3F10(*&v20[8 * v19]);
              if (v23)
              {
              }
            }

            _s11DeletedNodeCMa(0);
            if (swift_dynamicCast())
            {

              v24 = sub_1AF0D3F10(v22);
              if (v25)
              {
                break;
              }
            }

            if (v18 == ++v19)
            {
              goto LABEL_24;
            }
          }

          v33 = v24;
          v26 = v35;
          v34 = v35;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1AF846294();
            v26 = v34;
          }

          sub_1AF6B2920(v33, v26);

          v35 = v26;
          v27 = *(v32 + 2);
          if (v27)
          {
            v28 = 0;
            while (*&v32[8 * v28 + 32] != v22)
            {
              if (v27 == ++v28)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            v28 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1AFC0D940(v32);
          }

          v21 = v32;
          v31 = *(v32 + 2) - 1;
          memmove(&v32[8 * v28 + 32], &v32[8 * v28 + 40], 8 * (v31 - v28));
          *(v32 + 2) = v31;
          v36 = v32;
        }

        while (v18 - 1 != v19++);
      }

LABEL_24:

      return v35;
    }
  }

  return a6;
}

uint64_t sub_1AF3FC1C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, __objc2_class **a6)
{
  v32 = sub_1AF441394(MEMORY[0x1E69E7CC0], type metadata accessor for Node, sub_1AF8351A0, sub_1AF849498);
  v33 = v13;
  sub_1AF4144D0(a1, a2, a3 & 1, a4, a5, a6, &v32);
  v14 = v32;
  if (!v6)
  {
    v15 = v33;
    v16 = *(v33 + 2);

    a3 = v14;
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      a3 = v14;
      v19 = v15;
      do
      {
        v20 = v17;
        while (1)
        {
          v21 = *&v18[8 * v20];
          if (*(v14 + 16))
          {
            sub_1AF0D3F10(*&v18[8 * v20]);
            if (v22)
            {
            }
          }

          _s11DeletedNodeCMa(0);
          v23 = swift_dynamicCastClass();

          if (v23)
          {
            v24 = sub_1AF0D3F10(v21);
            if (v25)
            {
              break;
            }
          }

          if (v16 == ++v20)
          {
            goto LABEL_21;
          }
        }

        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = a3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF849498();
          a3 = v34;
        }

        sub_1AF6B761C(v26, a3);

        v32 = a3;
        v28 = *(v19 + 2);
        if (v28)
        {
          v29 = 0;
          while (*&v19[8 * v29 + 32] != v21)
          {
            if (v28 == ++v29)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v29 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AFC0D940(v19);
        }

        v17 = v20 + 1;
        v30 = *(v19 + 2) - 1;
        memmove(&v19[8 * v29 + 32], &v19[8 * v29 + 40], 8 * (v30 - v29));
        *(v19 + 2) = v30;
        v33 = v19;
      }

      while (v16 - 1 != v20);
    }
  }

LABEL_21:

  return a3;
}

uint64_t sub_1AF3FC510(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t (*a8)(void), void (*a9)(void))
{
  v41 = sub_1AF440EB8(MEMORY[0x1E69E7CC0]);
  v42 = v17;
  a7(a1, a2, a3 & 1, a4, a5, a6, &v41);
  if (v9)
  {
  }

  else
  {
    v18 = a8(0);
    a1 = v41;
    if (v18 == MEMORY[0x1E69E6530])
    {
      v19 = *(v42 + 2);
      if (v19)
      {
        v21 = v42 + 32;
        v22 = v42;

        v23 = 0;
        v40 = v19;
        do
        {
          v26 = *&v21[8 * v23];
          v27 = *(a1 + 16);
          if (v27)
          {
            v28 = sub_1AF0D3F10(*&v21[8 * v23]);
            if (v29)
            {
              v27 = *(*(a1 + 56) + 8 * v28);
            }

            else
            {
              v27 = 0;
            }
          }

          v43 = v27;
          a9(0);
          if (swift_dynamicCast())
          {

            v30 = sub_1AF0D3F10(v26);
            if (v31)
            {
              v32 = v21;
              v33 = a9;
              v34 = v30;
              v35 = v41;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = v35;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1AF84E5F8();
                v35 = v43;
              }

              sub_1AF6B2F08(v34, v35);
              v41 = v35;
              v37 = *(v22 + 2);
              if (v37)
              {
                v24 = 0;
                a9 = v33;
                v21 = v32;
                v19 = v40;
                while (*&v22[8 * v24 + 32] != v26)
                {
                  if (v37 == ++v24)
                  {
                    v24 = 0;
                    break;
                  }
                }
              }

              else
              {
                v24 = 0;
                a9 = v33;
                v21 = v32;
                v19 = v40;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_1AFC0D940(v22);
              }

              v25 = *(v22 + 2) - 1;
              memmove(&v22[8 * v24 + 32], &v22[8 * v24 + 40], 8 * (v25 - v24));
              *(v22 + 2) = v25;
              v42 = v22;
            }
          }

          ++v23;
        }

        while (v23 != v19);

        return v41;
      }
    }
  }

  return a1;
}

uint64_t sub_1AF3FC79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF44479C(0);
  type metadata accessor for Node();
  type metadata accessor for AuthoringNode();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = *(a1 + 16);
    v8 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v10 = sub_1AF3D6B1C(v9, a2, a3, sub_1AF3FD720);

    *(v7 + v8) = v10;
  }

  return result;
}

uint64_t sub_1AF3FC898(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    v6 = *(a1 + 16);

    v8 = sub_1AF3D7490(v7, a2, a3);

    *(v6 + 16) = v8;
  }

  else
  {

    return type metadata accessor for AuthoringNode();
  }
}

uint64_t sub_1AF3FC9A0(uint64_t a1, uint64_t *a2)
{
  sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    v4 = *(a1 + 16);

    v6 = sub_1AF3D72E8(v5, a2);

    *(v4 + 16) = v6;
  }

  else
  {

    return type metadata accessor for AuthoringNode();
  }
}

uint64_t sub_1AF3FCAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Node();
  type metadata accessor for AuthoringNode();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = *(a1 + 16);
    v8 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v10 = sub_1AF3D6B1C(v9, a2, a3, sub_1AF3FE1F8);

    *(v7 + v8) = v10;
  }

  return result;
}

uint64_t sub_1AF3FCBA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    v6 = *(a1 + 16);

    v8 = sub_1AF3D7890(v7, a2, a3);

    *(v6 + 16) = v8;
  }

  else
  {

    return type metadata accessor for AuthoringNode();
  }
}

unint64_t sub_1AF3FCC84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37[6] = a2;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v37[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37[-1] - v17;
  if (!a1)
  {
    return 0;
  }

  v36 = v3;
  v19 = *a3;
  if (!*(v19 + 16) || (v20 = sub_1AF0D3F10(a1), (v21 & 1) == 0) || (*(*(v19 + 56) + v20) & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v22 = swift_allocObject();
    v37[3] = type metadata accessor for AuthoringNode();
    v37[4] = &off_1EE801558;
    v37[0] = a1;
    sub_1AF441194(v37, v22 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v23 = MEMORY[0x1E69E7CC0];
    v22[3] = 0;
    v22[4] = 0;
    v22[2] = v23;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
    (*(v7 + 56))(v18, 1, 1, v6);
    v24 = swift_allocObject();
    v25 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v27 = 0;
    *(v27 + 8) = 1;
    v28 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v28 = 0;
    v28[1] = 0;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v22;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AF449A04(v18, v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v29 = *(v7 + 48);
    if (v29(v14, 1, v6) == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v18, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v29(v14, 1, v6) != 1)
      {
        sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v18, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v7 + 32))(v10, v14, v6);
    }

    (*(v7 + 32))(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v10, v6);
    (*(v7 + 24))(*(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v6);
    v30 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v32 = 0;
    *(v32 + 8) = 1;
    v33 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v33 = 0;
    v33[1] = 0;

    _s11DeletedNodeCMa_0(0);
    v34 = swift_dynamicCastClass();

    if (v34)
    {

      return 0;
    }

    return v24;
  }

  result = sub_1AF0D3F10(a1);
  __break(1u);
  return result;
}

uint64_t sub_1AF3FD1BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v42[6] = a2;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v42[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42[-1] - v19;
  if (!a1)
  {
    return 0;
  }

  v21 = *a3;
  if (*(v21 + 16) && (v22 = sub_1AF0D3F10(a1), (v23 & 1) != 0) && *(*(v21 + 56) + v22) != 1)
  {
    v38 = *a4;
    if (*(*a4 + 16) && (v39 = sub_1AF0D3F10(a1), (v40 & 1) != 0))
    {
      v26 = *(*(v38 + 56) + 8 * v39);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v41 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v24 = swift_allocObject();
    v42[3] = type metadata accessor for AuthoringNode();
    v42[4] = &off_1EE801558;
    v42[0] = a1;
    sub_1AF441194(v42, v24 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v25 = MEMORY[0x1E69E7CC0];
    v24[3] = 0;
    v24[4] = 0;
    v24[2] = v25;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
    (*(v9 + 56))(v20, 1, 1, v8);
    v26 = swift_allocObject();
    v27 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = (v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v30 = 0;
    v30[1] = 0;
    *(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v24;
    *(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AF449A04(v20, v16, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v31 = *(v9 + 48);
    if (v31(v16, 1, v8) == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v31(v16, 1, v8) != 1)
      {
        sub_1AF44832C(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v12, v16, v8);
    }

    (*(v9 + 32))(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v12, v8);
    (*(v9 + 24))(*(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);
    v32 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    v33 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v34 = 0;
    *(v34 + 8) = 1;
    v35 = (v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v35 = 0;
    v35[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v36 = swift_dynamicCastClass();

  if (v36)
  {

    return 0;
  }

  return v26;
}

uint64_t sub_1AF3FD720(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = a4;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  v45 = a1;
  if (!a1)
  {
    return 0;
  }

  v21 = *a3;
  if (*(v21 + 16) && (v22 = sub_1AF0D3F10(v45), (v23 & 1) != 0) && (*(*(v21 + 56) + v22) & 1) == 0)
  {
    if (*(*v44 + 16) && (sub_1AF0D3F10(v45), (v39 & 1) != 0))
    {
    }

    else
    {
      v40 = 1;
    }

    v46[0] = v40;
    sub_1AF44479C(0);
    type metadata accessor for AuthoringNode();

    swift_dynamicCast();
    v27 = v46[6];
  }

  else
  {
    v43 = a2;
    v44 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v24 = swift_allocObject();
    v46[3] = type metadata accessor for AuthoringNode();
    v46[4] = &off_1EE801558;
    v46[0] = v45;
    sub_1AF441194(v46, &v24[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v25 = MEMORY[0x1E69E7CC0];
    *(v24 + 3) = 0;
    *(v24 + 4) = 0;
    *(v24 + 2) = v25;
    v26 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v42 = v26;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
    (*(v9 + 56))(v20, 1, 1, v8);
    v27 = swift_allocObject();
    v28 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = 0;
    *(v30 + 8) = 1;
    v31 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v31 = 0;
    v31[1] = 0;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v24;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v25;
    sub_1AF449A04(v20, v16, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v32 = *(v9 + 48);
    LODWORD(v26) = v32(v16, 1, v8);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v32(v16, 1, v8) != 1)
      {
        sub_1AF44832C(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v12, v16, v8);
    }

    (*(v9 + 32))(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v12, v8);
    (*(v9 + 24))(&v24[v42], v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v33 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v35 = 0;
    *(v35 + 8) = 1;
    v36 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v36 = 0;
    v36[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v37 = swift_dynamicCastClass();

  if (v37)
  {

    return 0;
  }

  return v27;
}

unint64_t sub_1AF3FDCB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  v46 = a1;
  if (!a1)
  {
    return 0;
  }

  v42 = a2;
  v43 = v3;
  v19 = *a3;
  if (!*(v19 + 16) || (v20 = sub_1AF0D3F10(v46), (v21 & 1) == 0) || (*(*(v19 + 56) + v20) & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v22 = swift_allocObject();
    v45[3] = type metadata accessor for AuthoringNode();
    v45[4] = &off_1EE801558;
    v45[0] = v46;
    sub_1AF441194(v45, &v22[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v23 = MEMORY[0x1E69E7CC0];
    *(v22 + 3) = 0;
    *(v22 + 4) = 0;
    *(v22 + 2) = v23;
    v24 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v41 = v24;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    (*(v8 + 56))(v18, 1, 1, v7);
    v25 = swift_allocObject();
    v26 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v28 = 0;
    *(v28 + 8) = 1;
    v29 = (v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v29 = 0;
    v29[1] = 0;
    *(v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v22;
    *(v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v23;
    sub_1AF449A04(v18, v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v30 = *(v8 + 48);
    LODWORD(v24) = v30(v14, 1, v7);

    if (v24 == 1)
    {
      v31 = v44;
      sub_1AFDFC308();
      sub_1AF44832C(v18, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v32 = v30(v14, 1, v7);
      v33 = v31;
      if (v32 != 1)
      {
        sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v18, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v33 = v44;
      (*(v8 + 32))(v44, v14, v7);
    }

    (*(v8 + 32))(v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v33, v7);
    (*(v8 + 24))(&v22[v41], v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7);

    v34 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v36 = 0;
    *(v36 + 8) = 1;
    v37 = (v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v37 = 0;
    v37[1] = 0;

    _s11DeletedNodeCMa_0(0);
    v38 = swift_dynamicCastClass();

    if (v38)
    {

      return 0;
    }

    return v25;
  }

  result = sub_1AF0D3F10(v46);
  __break(1u);
  return result;
}

uint64_t sub_1AF3FE1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v46 = a4;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  v47 = a1;
  if (!a1)
  {
    return 0;
  }

  v21 = *a3;
  if (*(v21 + 16) && (v22 = sub_1AF0D3F10(v47), (v23 & 1) != 0) && (*(*(v21 + 56) + v22) & 1) == 0)
  {
    v39 = *v46;
    v40 = *(*v46 + 16);
    if (v40)
    {
      v41 = sub_1AF0D3F10(v47);
      if (v42)
      {
        v40 = *(*(v39 + 56) + 8 * v41);
      }

      else
      {
        v40 = 0;
      }
    }

    v48[0] = v40;
    type metadata accessor for AuthoringNode();

    swift_dynamicCast();
    v27 = v48[6];
  }

  else
  {
    v45 = a2;
    v46 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v24 = swift_allocObject();
    v48[3] = type metadata accessor for AuthoringNode();
    v48[4] = &off_1EE801558;
    v48[0] = v47;
    sub_1AF441194(v48, &v24[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v25 = MEMORY[0x1E69E7CC0];
    *(v24 + 3) = 0;
    *(v24 + 4) = 0;
    *(v24 + 2) = v25;
    v26 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v44 = v26;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
    (*(v9 + 56))(v20, 1, 1, v8);
    v27 = swift_allocObject();
    v28 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = 0;
    *(v30 + 8) = 1;
    v31 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v31 = 0;
    v31[1] = 0;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v24;
    *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v25;
    sub_1AF449A04(v20, v16, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v32 = *(v9 + 48);
    LODWORD(v26) = v32(v16, 1, v8);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v32(v16, 1, v8) != 1)
      {
        sub_1AF44832C(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v12, v16, v8);
    }

    (*(v9 + 32))(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v12, v8);
    (*(v9 + 24))(&v24[v44], v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v33 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v35 = 0;
    *(v35 + 8) = 1;
    v36 = (v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v36 = 0;
    v36[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v37 = swift_dynamicCastClass();

  if (v37)
  {

    return 0;
  }

  return v27;
}

unint64_t sub_1AF3FE780(__objc2_class **a1, char a2, unint64_t a3, int a4, void *a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, unint64_t *a11)
{
  v156 = a8;
  v157 = a7;
  v158 = a6;
  v153 = a4;
  v162 = a3;
  v154 = a11;
  v155 = a9;
  v14 = sub_1AFDFC318();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v149 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v148 = &v126 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v126 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v126 - v27;
  if ((a2 & 1) == 0)
  {
    goto LABEL_100;
  }

  if (*(*a5 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v30)
    {
      return result;
    }

    sub_1AF0D3F10(a1);
    if (v31)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (sub_1AF971360(a1, *a10) != 2)
  {
LABEL_14:
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v169 = *a10;
  *a10 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a10 = v169;
  v33 = sub_1AF96D010(a1);
  v152 = a5;
  v141 = v14;
  v160 = a10;
  if (v33)
  {
    v34 = *(v15 + 16);
    v34(v28, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v14);
    v34(v24, v28, v14);

    v35 = v157;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AF4276E0(0, v157[2] + 1, 1, v157, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1AF4276E0(v36 > 1, v37 + 1, 1, v35, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v14 = v141;
    (*(v15 + 8))(v28, v141);
    v35[2] = v37 + 1;
    (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v37, v24, v14);
    v169 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v170 = v38;
    sub_1AF412AA8(v156, v155, 1, v162, v153 & 1, v35, &v169);

    v40 = v152;
  }

  else
  {
    v40 = a5;
  }

  v41 = v162 >> 59;
  if (((v162 >> 59) & 2) != 0)
  {
    v42 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
  }

  else
  {
    ((*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v168, v39);
    v42 = v168[0];
    v131 = v168[1];
    v130 = v168[2];
    v129 = v168[3];
    v128 = v168[4];
    v127 = v168[5];
  }

  v132 = a1;
  v43 = sub_1AF97228C();
  v44 = *(v43 + 16);
  v126 = v43;
  if (v44)
  {
    v45 = v15;
    v46 = 0;
    v139 = v41 & 2;
    v161 = v139 | (v162 >> 2) & 1;
    v151 = v43 + 32;
    v137 = v42 + 32;
    v135 = (v45 + 16);
    v134 = v45 + 8;
    v136 = v45;
    v133 = v45 + 32;
    v138 = v153 & 1;
    v140 = v42;
    v142 = v44;
    do
    {
      if (!*(v151 + 16 * v46))
      {
        goto LABEL_24;
      }

      v159 = *(v151 + 16 * v46);
      if (v42 && v46 < *(v42 + 16))
      {
        v47 = *(v137 + 8 * v46);
        sub_1AF4410A8(v47);
      }

      else
      {
        v47 = 0xA000000000000000;
      }

      if (v161)
      {
        if (v161 == 1)
        {
          v48 = sub_1AF9C5694(v47, v162 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v47);
          if (v48)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1AF441114(v47);
        }
      }

      else
      {
        v49 = sub_1AF9C5694(v47, v162);
        sub_1AF441114(v47);
        if (!v49)
        {
          goto LABEL_23;
        }
      }

      v50 = v159;
      if (!*(*v40 + 16) || (sub_1AF0D3F10(v159), (v51 & 1) == 0))
      {
        if (!*(*v160 + 16))
        {
          v53 = v160;
LABEL_43:
          v54 = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = *v53;
          v55 = v163;
          *v53 = 0x8000000000000000;
          v56 = sub_1AF0D3F10(v50);
          v58 = v57;
          v59 = *(v55 + 16) + ((v57 & 1) == 0);
          if (*(v55 + 24) >= v59)
          {
            if (v54)
            {
              goto LABEL_47;
            }

            v63 = v56;
            sub_1AF843F7C();
            v56 = v63;
            v61 = v163;
            if ((v58 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_48:
            *(v61[7] + v56) = 1;
            v62 = v159;
          }

          else
          {
            sub_1AF82BC4C(v59, v54);
            v56 = sub_1AF0D3F10(v50);
            if ((v58 & 1) != (v60 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);

              while (1)
              {
                sub_1AF441284(v140);

                swift_unexpectedError();
                __break(1u);
LABEL_100:
                sub_1AFDFE518();
                __break(1u);

                swift_isEscapingClosureAtFileLocation();

                swift_isEscapingClosureAtFileLocation();
              }
            }

LABEL_47:
            v61 = v163;
            if (v58)
            {
              goto LABEL_48;
            }

LABEL_50:
            v61[(v56 >> 6) + 8] |= 1 << v56;
            v62 = v159;
            *(v61[6] + 8 * v56) = v159;
            *(v61[7] + v56) = 1;
            ++v61[2];
          }

          *v53 = v61;

          if (sub_1AF96D010(v62))
          {
            v64 = *v135;
            v65 = v148;
            (*v135)(v148, v62 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v14);
            v64(v149, v65, v14);
            v66 = v157;

            v67 = v66;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_1AF4276E0(0, v66[2] + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v69 = v67[2];
            v68 = v67[3];
            if (v69 >= v68 >> 1)
            {
              v67 = sub_1AF4276E0(v68 > 1, v69 + 1, 1, v67, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v70 = v136;
            (*(v136 + 8))(v148, v14);
            v67[2] = v69 + 1;
            (*(v70 + 32))(v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, v149, v14);
            *&v163 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            *(&v163 + 1) = v71;
            sub_1AF412AA8(v156, v155, 1, v162, v153 & 1, v67, &v163);

            v62 = v159;
          }

          else
          {
          }

          if (v139)
          {
            v74 = 0;
            v147 = 0;
            v146 = 0;
            v145 = 0;
            v144 = 0;
            v143 = 0;
          }

          else
          {
            info = (*(v62 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info;

            (info)(&v169, v73);
            v74 = v169;
            v147 = v170;
            v146 = v171;
            v145 = v172;
            v144 = v173;
            v143 = v174;
          }

          v75 = sub_1AF97228C();
          v76 = *(v75 + 16);
          if (v76)
          {
            v77 = 0;
            v150 = v74 + 32;
            v78 = 32;
            while (2)
            {
              v79 = *(v75 + v78);
              if (!v79)
              {
                goto LABEL_66;
              }

              if (v74 && v77 < *(v74 + 16))
              {
                v80 = *(v150 + 8 * v77);
                sub_1AF4410A8(v80);
              }

              else
              {
                v80 = 0xA000000000000000;
              }

              if (v161)
              {
                if (v161 == 1)
                {
                  v81 = sub_1AF9C5694(v80, v162 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v80);
                  if (v81)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  sub_1AF441114(v80);
                }
              }

              else
              {
                v82 = sub_1AF9C5694(v80, v162);
                sub_1AF441114(v80);
                if (!v82)
                {
LABEL_65:

LABEL_66:
                  ++v77;
                  v78 += 16;
                  if (v76 == v77)
                  {
                    goto LABEL_78;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3DAE80(v79, 1, v162, v153 & 1, v157, v156, v155, v160, v152, v154);
            goto LABEL_65;
          }

LABEL_78:

          sub_1AF441284(v74);
          type metadata accessor for Node();
          type metadata accessor for AuthoringNode();
          if (swift_dynamicCastMetatype())
          {
            v83 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
            v84 = v159;

            v86 = v152;
            v87 = sub_1AF3D6B1C(v85, v160, v152, sub_1AF3FCC84);

            *(v84 + v83) = v87;
          }

          else
          {
            v86 = v152;
          }

          v88 = v157;
          v89 = swift_allocObject();
          v90 = v156;
          v91 = v155;
          *(v89 + 16) = v156;
          *(v89 + 24) = v91;
          v92 = v158;

          v93 = v162;
          sub_1AF4410E4(v162, sub_1AF4410A8);

          v94 = swift_allocObject();
          *(v94 + 16) = 1;
          *(v94 + 24) = v93;
          *(v94 + 32) = v138;
          *(v94 + 40) = v86;
          *(v94 + 48) = v92;
          *(v94 + 56) = v88;
          *(v94 + 64) = v90;
          v95 = v160;
          *(v94 + 72) = v91;
          *(v94 + 80) = v95;
          v96 = v154;
          *(v94 + 88) = v154;
          v97 = swift_allocObject();
          *(v97 + 16) = sub_1AF449D4C;
          *(v97 + 24) = v94;
          v98 = v159;
          v163 = __PAIR128__(v159, v92);
          v164 = v88;
          v165 = sub_1AF449D50;
          v166 = v97;
          v167 = v96;
          swift_bridgeObjectRetain_n();

          sub_1AF449CCC(&v163);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v40 = v86;
          v99 = sub_1AF633A88(v98);
          v14 = v141;
          v42 = v140;
          v100 = v98;
          v44 = v142;
          if (v99)
          {
            v101 = v40[1];
            v102 = swift_isUniquelyReferenced_nonNull_native();
            v40[1] = v101;
            if ((v102 & 1) == 0)
            {
              v101 = sub_1AF422330(0, *(v101 + 2) + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v40[1] = v101;
            }

            v104 = *(v101 + 2);
            v103 = *(v101 + 3);
            if (v104 >= v103 >> 1)
            {
              v101 = sub_1AF422330(v103 > 1, v104 + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v40[1] = v101;
            }

            *(v101 + 2) = v104 + 1;
            v100 = v159;
            *&v101[8 * v104 + 32] = v159;
            v44 = v142;
          }

          v105 = v160;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = *v105;
          *v105 = 0x8000000000000000;
          sub_1AF850FDC(0, v100, v106);
          *v105 = v163;

          goto LABEL_23;
        }

        sub_1AF0D3F10(v50);
        if ((v52 & 1) == 0)
        {
          v53 = v160;
          goto LABEL_43;
        }
      }

LABEL_23:

LABEL_24:
      ++v46;
    }

    while (v46 != v44);
  }

  sub_1AF441284(v42);
  type metadata accessor for Node();
  type metadata accessor for AuthoringNode();
  if (swift_dynamicCastMetatype())
  {
    v107 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v108 = v132;

    v110 = v160;
    v111 = sub_1AF3D6B1C(v109, v160, v40, sub_1AF3FCC84);

    *(v108 + v107) = v111;
  }

  else
  {
    v108 = v132;
    v110 = v160;
  }

  v112 = swift_allocObject();
  v113 = v156;
  v114 = v155;
  *(v112 + 16) = v156;
  *(v112 + 24) = v114;
  v115 = v158;

  v116 = v162;
  sub_1AF4410E4(v162, sub_1AF4410A8);

  v117 = swift_allocObject();
  *(v117 + 16) = 1;
  *(v117 + 24) = v116;
  *(v117 + 32) = v153 & 1;
  *(v117 + 40) = v40;
  *(v117 + 48) = v115;
  v118 = v157;
  *(v117 + 56) = v157;
  *(v117 + 64) = v113;
  *(v117 + 72) = v114;
  *(v117 + 80) = v110;
  v119 = v154;
  *(v117 + 88) = v154;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_1AF449D4C;
  *(v120 + 24) = v117;
  *&v163 = v115;
  *(&v163 + 1) = v108;
  v164 = v118;
  v165 = sub_1AF449D50;
  v166 = v120;
  v167 = v119;

  sub_1AF449CCC(&v163);

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  if (sub_1AF633A88(v108))
  {
    v121 = v40[1];
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v40[1] = v121;
    if ((v122 & 1) == 0)
    {
      v121 = sub_1AF422330(0, *(v121 + 2) + 1, 1, v121, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v40[1] = v121;
    }

    v124 = *(v121 + 2);
    v123 = *(v121 + 3);
    if (v124 >= v123 >> 1)
    {
      v121 = sub_1AF422330(v123 > 1, v124 + 1, 1, v121, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v40[1] = v121;
    }

    *(v121 + 2) = v124 + 1;
    *&v121[8 * v124 + 32] = v108;
  }

  v125 = swift_isUniquelyReferenced_nonNull_native();
  *&v163 = *v110;
  *v110 = 0x8000000000000000;
  sub_1AF850FDC(0, v108, v125);
  *v110 = v163;
}

uint64_t sub_1AF3FFD3C(__objc2_class **a1, char a2, unint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v177 = a8;
  v178 = a7;
  v179 = a4;
  v183 = a3;
  v161 = sub_1AFDFC318();
  v181 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v15);
  v158 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v149 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v149 - v23;
  if ((a2 & 1) == 0)
  {
    goto LABEL_111;
  }

  v25 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v180 = a10;
    if (!*(*a10 + 16))
    {
      v33 = v180;
      goto LABEL_13;
    }

    sub_1AF0D3F10(a1);
    if ((v32 & 1) == 0)
    {
      v33 = v180;
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191[0] = *v33;
      *v33 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *v33 = v191[0];

      v154 = a1;
      v175 = a5;
      if (v179)
      {
        cache = (*a1)[7].cache;

        v36 = cache(1);
        a5 = v175;
        a1 = v36;
      }

      else
      {
      }

      v176 = a9;
      v37 = sub_1AF96D010(a1);
      v153 = a1;
      if (v37)
      {
        v38 = *(v181 + 16);
        v39 = v161;
        v38(v24, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v161);
        v38(v20, v24, v39);
        v40 = v178;

        v41 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1AF4276E0(0, v40[2] + 1, 1, v40, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v41, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v44 = v181;
        v45 = v24;
        v46 = v161;
        (*(v181 + 8))(v45, v161);
        v41[2] = v43 + 1;
        (*(v44 + 32))(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v20, v46);
        v47 = sub_1AF3FB9C8(v177, v176, 1, v183, v179 & 1, v41);
        v49 = v48;

        v50 = *(v49 + 16);
        if (v50)
        {
          v191[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v51 = 32;
          do
          {
            if (*(v47 + 16))
            {
              sub_1AF0D3F10(*(v49 + v51));
              if (v52)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v51 += 8;
            --v50;
          }

          while (v50);

          v53 = v191[0];
          a1 = v153;
        }

        else
        {

          v53 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph();
        v54 = swift_allocObject();
        v54->cache = 0;
        v55 = MEMORY[0x1E69E7CC0];
        v54->vtable = MEMORY[0x1E69E7CC0];
        v54->info = 0;
        v54[1].isa = 0;
        v54[1].superclass = sub_1AF42B820(v55, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v54->vtable = v53;

        *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v54;

        a5 = v175;
      }

      v56 = v180;
      v57 = v183 >> 59;
      if (((v183 >> 59) & 2) != 0)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v152 = 0;
        v151 = 0;
        v150 = 0;
      }

      else
      {
        ((*(v154 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v190);
        v58 = v190[0];
        v59 = v190[1];
        v60 = v190[2];
        v152 = v190[3];
        v151 = v190[4];
        v150 = v190[5];
      }

      v174 = a11;
      v61 = sub_1AF97228C();
      v171 = *(v61 + 16);
      if (!v171)
      {
        v162 = v179 & 1;
LABEL_107:

        sub_1AF441284(v58);
        v132 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
        v133 = v153;

        v135 = v180;
        v136 = sub_1AF3D6B1C(v134, v180, a5, sub_1AF3FD1BC);

        *(v133 + v132) = v136;

        v137 = swift_allocObject();
        v138 = v177;
        v139 = v176;
        *(v137 + 16) = v177;
        *(v137 + 24) = v139;

        v140 = v183;
        sub_1AF4410E4(v183, sub_1AF4410A8);

        v141 = swift_allocObject();
        *(v141 + 16) = 1;
        *(v141 + 24) = v140;
        *(v141 + 32) = v162;
        *(v141 + 40) = a5;
        *(v141 + 48) = a6;
        v142 = v178;
        *(v141 + 56) = v178;
        *(v141 + 64) = v138;
        *(v141 + 72) = v139;
        *(v141 + 80) = v135;
        v143 = v174;
        *(v141 + 88) = v174;
        v144 = swift_allocObject();
        *(v144 + 16) = sub_1AF449D9C;
        *(v144 + 24) = v141;
        *&v184 = a6;
        *(&v184 + 1) = v133;
        v185 = v142;
        v186 = sub_1AF449D48;
        v187 = v144;
        v188 = v143;

        sub_1AF449DC0(&v184, &v189);

        v28 = v189;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v146 = v154;
        sub_1AF3D8F00(v145, v154, sub_1AF633A48, sub_1AF6B761C, sub_1AF843E0C);

        v147 = swift_isUniquelyReferenced_nonNull_native();
        *&v184 = *v135;
        *v135 = 0x8000000000000000;
        sub_1AF850FDC(0, v146, v147);
        *v135 = v184;

        goto LABEL_108;
      }

      v149[1] = v60;
      v149[2] = v59;
      v62 = 0;
      v159 = v57 & 2;
      v182 = v159 | (v183 >> 2) & 1;
      v169 = v61 + 32;
      v157 = v58 + 32;
      v156 = (v181 + 16);
      v155 = (v181 + 8);
      v173 = a6;
      v160 = v58;
      v162 = v179 & 1;
      v168 = v61;
      while (1)
      {
        v181 = *(v169 + 16 * v62);
        if (!v181)
        {
          goto LABEL_37;
        }

        if (v58 && v62 < *(v58 + 16))
        {
          v63 = *(v157 + 8 * v62);
          sub_1AF4410A8(v63);
        }

        else
        {
          v63 = 0xA000000000000000;
        }

        if (v182)
        {
          if (v182 == 1)
          {
            v64 = sub_1AF9C5694(v63, v183 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v63);
            if (v64)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_1AF441114(v63);
          }
        }

        else
        {
          v65 = sub_1AF9C5694(v63, v183);
          sub_1AF441114(v63);
          if (!v65)
          {
            goto LABEL_36;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v181), (v66 & 1) == 0))
        {
          if (*(*v56 + 16))
          {
            v67 = v181;
            sub_1AF0D3F10(v181);
            if (v68)
            {
              break;
            }
          }

          else
          {
            v67 = v181;
          }

          v69 = swift_isUniquelyReferenced_nonNull_native();
          *&v184 = *v56;
          v70 = v184;
          *v56 = 0x8000000000000000;
          v71 = sub_1AF0D3F10(v67);
          v73 = v72;
          v74 = *(v70 + 16) + ((v72 & 1) == 0);
          if (*(v70 + 24) >= v74)
          {
            if (v69)
            {
              goto LABEL_60;
            }

            v77 = v71;
            sub_1AF843F7C();
            v71 = v77;
            v56 = v180;
            v76 = v184;
            if ((v73 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_61:
            *(v76[7] + v71) = 1;
          }

          else
          {
            sub_1AF82BC4C(v74, v69);
            v71 = sub_1AF0D3F10(v67);
            if ((v73 & 1) != (v75 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }

LABEL_60:
            v76 = v184;
            if (v73)
            {
              goto LABEL_61;
            }

LABEL_63:
            v76[(v71 >> 6) + 8] |= 1 << v71;
            *(v76[6] + 8 * v71) = v67;
            *(v76[7] + v71) = 1;
            ++v76[2];
          }

          *v56 = v76;

          if (v179)
          {
            v78 = *(*v67 + 296);

            v79 = v78(1);
          }

          else
          {

            v79 = v67;
          }

          v80 = sub_1AF96D010(v79);
          v170 = v79;
          if (v80)
          {
            v81 = v79 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
            v82 = v158;
            v83 = v161;
            (*v156)(v158, v81, v161);
            v84 = sub_1AF3D88AC(v82, v178);
            (*v155)(v82, v83);
            v85 = sub_1AF3FB9C8(v177, v176, 1, v183, v179 & 1, v84);
            v87 = v86;

            v88 = *(v87 + 16);
            v89 = MEMORY[0x1E69E7CC0];
            if (v88)
            {
              *&v184 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v90 = 32;
              do
              {
                if (*(v85 + 16))
                {
                  sub_1AF0D3F10(*(v87 + v90));
                  if (v91)
                  {
                  }
                }

                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v90 += 8;
                --v88;
              }

              while (v88);

              v92 = v184;
              v93 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v93 = v89;
              v92 = v89;
            }

            type metadata accessor for AuthoringGraph();
            v94 = swift_allocObject();
            v94->cache = 0;
            v94->vtable = v93;
            v94->info = 0;
            v94[1].isa = 0;
            v94[1].superclass = sub_1AF42B820(v93, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v94->vtable = v92;

            *(v170 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v94;

            v67 = v181;
          }

          if (v159)
          {
            v97 = 0;
            v167 = 0;
            v166 = 0;
            v165 = 0;
            v164 = 0;
            v163 = 0;
          }

          else
          {
            v95 = *(**(v67 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

            v95(v191, v96);
            v97 = v191[0];
            v167 = v191[1];
            v166 = v191[2];
            v165 = v191[3];
            v164 = v191[4];
            v163 = v191[5];
          }

          v98 = sub_1AF97228C();
          v99 = *(v98 + 16);
          if (v99)
          {
            v100 = 0;
            v172 = v97 + 32;
            v101 = 32;
            while (2)
            {
              v102 = *(v98 + v101);
              if (!v102)
              {
                goto LABEL_83;
              }

              if (v97 && v100 < *(v97 + 16))
              {
                v103 = *(v172 + 8 * v100);
                sub_1AF4410A8(v103);
              }

              else
              {
                v103 = 0xA000000000000000;
              }

              if (v182)
              {
                if (v182 != 1)
                {
                  sub_1AF441114(v103);
                  goto LABEL_96;
                }

                v104 = sub_1AF9C5694(v103, v183 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v103);
                if (!v104)
                {
LABEL_96:
                  sub_1AF3DBA8C(v102, 1, v183, v179 & 1, v178, v177, v176, v180, v175, v174);
                }
              }

              else
              {
                v105 = sub_1AF9C5694(v103, v183);
                sub_1AF441114(v103);
                if (v105)
                {
                  goto LABEL_96;
                }
              }

LABEL_83:
              ++v100;
              v101 += 16;
              if (v99 == v100)
              {
                break;
              }

              continue;
            }
          }

          v172 = v62;

          sub_1AF441284(v97);
          v106 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v107 = v170;

          v109 = v180;
          v110 = v175;
          v111 = sub_1AF3D6B1C(v108, v180, v175, sub_1AF3FD1BC);

          *(v107 + v106) = v111;
          v112 = v109;

          v113 = swift_allocObject();
          v114 = v177;
          v115 = v176;
          *(v113 + 16) = v177;
          *(v113 + 24) = v115;
          v116 = v173;

          v117 = v183;
          sub_1AF4410E4(v183, sub_1AF4410A8);

          v118 = swift_allocObject();
          *(v118 + 16) = 1;
          *(v118 + 24) = v117;
          *(v118 + 32) = v162;
          *(v118 + 40) = v110;
          *(v118 + 48) = v116;
          v119 = v178;
          *(v118 + 56) = v178;
          *(v118 + 64) = v114;
          *(v118 + 72) = v115;
          *(v118 + 80) = v112;
          v120 = v174;
          *(v118 + 88) = v174;
          v121 = swift_allocObject();
          *(v121 + 16) = sub_1AF449D9C;
          *(v121 + 24) = v118;
          *&v184 = v116;
          *(&v184 + 1) = v107;
          v185 = v119;
          v186 = sub_1AF449D48;
          v187 = v121;
          v188 = v120;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v184, &v189);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v122 = swift_retain_n();
          a5 = v110;
          if (sub_1AF633A48(v122, v181))
          {

            v58 = v160;
            v123 = v181;
            a6 = v116;
            v62 = v172;
          }

          else
          {
            v124 = *(v110 + 8);
            v125 = swift_isUniquelyReferenced_nonNull_native();
            *(v110 + 8) = v124;
            v58 = v160;
            a6 = v116;
            if ((v125 & 1) == 0)
            {
              v124 = sub_1AF422330(0, *(v124 + 2) + 1, 1, v124, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v124;
            }

            v62 = v172;
            v127 = *(v124 + 2);
            v126 = *(v124 + 3);
            if (v127 >= v126 >> 1)
            {
              v131 = sub_1AF422330(v126 > 1, v127 + 1, 1, v124, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v175[1] = v131;
            }

            v128 = v175;
            v129 = v175[1];
            *(v129 + 16) = v127 + 1;
            a5 = v128;
            v123 = v181;
            *(v129 + 8 * v127 + 32) = v181;
          }

          v56 = v180;

          v130 = swift_isUniquelyReferenced_nonNull_native();
          *&v184 = *v56;
          *v56 = 0x8000000000000000;
          sub_1AF850FDC(0, v123, v130);
          *v56 = v184;
        }

LABEL_36:

LABEL_37:
        if (++v62 == v171)
        {
          goto LABEL_107;
        }
      }
    }

LABEL_111:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v160);
    }
  }

  v26 = sub_1AF0D3F10(a1);
  if ((v27 & 1) == 0)
  {
    v29 = *(v25 + 16);

    if (v29)
    {
      v30 = sub_1AF0D3F10(a1);
      if (v31)
      {
        v28 = *(*(v25 + 56) + 8 * v30);

LABEL_108:

        return v28;
      }
    }

    goto LABEL_9;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  return v28;
}

unint64_t sub_1AF401544(uint64_t a1, char a2, unint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v170 = a8;
  v171 = a7;
  v167 = a4;
  v175 = a3;
  v168 = a11;
  v15 = a10;
  v169 = a9;
  v154 = sub_1AFDFC318();
  v16 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v17);
  v152 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v139 - v25;
  if ((a2 & 1) == 0)
  {
    sub_1AFDFE518();
    __break(1u);
LABEL_115:
    sub_1AFDFF1A8();
    __break(1u);
LABEL_116:

    while (1)
    {
LABEL_111:
      sub_1AF441284(v153);
LABEL_112:

      swift_unexpectedError();
      __break(1u);
LABEL_113:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }
  }

  if (*(*a5 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v28)
    {
      return result;
    }

    sub_1AF0D3F10(a1);
    if (v29)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (*(*a10 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v30)
    {
LABEL_9:
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v182 = *a10;
  *a10 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a10 = v182;

  v32 = sub_1AF96CD1C(a1);
  v172 = a5;
  if (v32)
  {
    v33 = *(v16 + 16);
    v34 = v154;
    v33(v26, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v154);
    v33(v22, v26, v34);

    v35 = v171;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AF4276E0(0, v171[2] + 1, 1, v171, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1AF4276E0(v36 > 1, v37 + 1, 1, v35, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v38 = v26;
    v39 = v154;
    (*(v16 + 8))(v38, v154);
    v35[2] = v37 + 1;
    (*(v16 + 32))(v35 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v37, v22, v39);
    v182 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v183 = v40;
    v41 = 0;
    sub_1AF412D4C(v170, v169, 1, v175, v167 & 1, v35, &v182);

    a5 = v172;
  }

  else
  {

    v41 = 0;
  }

  v174 = v175 >> 59;
  if (((v175 >> 59) & 2) != 0)
  {
    v153 = 0;
    v144 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
  }

  else
  {
    (*(*a1 + 152))(v181, v42);
    v153 = v181[0];
    v144 = v181[1];
    v143 = v181[2];
    v142 = v181[3];
    v141 = v181[4];
    v140 = v181[5];
  }

  v145 = a1;
  v43 = *(a1 + 16);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  v161 = a6;
  v166 = a10;
  if (v44)
  {
    v173 = v16;
    v162 = 0;
    v182 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v44, 0);
    v46 = 0;
    v45 = v182;
    v47 = *(v182 + 16);
    v48 = 16 * v47;
    do
    {
      v49 = *(v43 + v46 + 32);
      v50 = *(v43 + v46 + 40);
      v182 = v45;
      v51 = *(v45 + 24);
      v52 = v47 + 1;

      if (v47 >= v51 >> 1)
      {
        sub_1AFC05E2C(v51 > 1, v52, 1);
        v45 = v182;
      }

      *(v45 + 16) = v52;
      v53 = v45 + v48 + v46;
      *(v53 + 32) = v49;
      *(v53 + 40) = v50;
      v46 += 16;
      ++v47;
      --v44;
    }

    while (v44);

    v15 = v166;
    a5 = v172;
    v41 = v162;
    v16 = v173;
  }

  v54 = *(v45 + 16);
  v55 = v153;
  if (v54)
  {
    v56 = 0;
    v150 = v174 & 2;
    v163 = v150 | (v175 >> 2) & 1;
    v164 = v45 + 32;
    v148 = v153 + 32;
    v147 = (v16 + 16);
    v146 = (v16 + 8);
    v149 = v167 & 1;
    v155 = v45;
    v151 = v54;
    do
    {
      if (!*(v164 + 16 * v56))
      {
        goto LABEL_31;
      }

      v173 = *(v164 + 16 * v56);
      if (v55 && v56 < *(v55 + 16))
      {
        v57 = *(v148 + 8 * v56);
        sub_1AF4410A8(v57);
      }

      else
      {
        v57 = 0xA000000000000000;
      }

      v165 = v56;
      if (v163)
      {
        if (v163 == 1)
        {
          v58 = sub_1AF9C5694(v57, v175 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v57);
          if (v58)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1AF441114(v57);
        }
      }

      else
      {
        v59 = sub_1AF9C5694(v57, v175);
        sub_1AF441114(v57);
        if (!v59)
        {
          goto LABEL_30;
        }
      }

      v60 = v173;
      if (!*(*a5 + 16) || (sub_1AF0D3F10(v173), (v61 & 1) == 0))
      {
        if (!*(*v15 + 16) || (sub_1AF0D3F10(v60), (v62 & 1) == 0))
        {
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *&v176 = *v15;
          v64 = v176;
          *v15 = 0x8000000000000000;
          v65 = sub_1AF0D3F10(v60);
          v67 = v66;
          v68 = *(v64 + 16) + ((v66 & 1) == 0);
          v69 = v163;
          if (*(v64 + 24) >= v68)
          {
            if (v63)
            {
              goto LABEL_52;
            }

            v73 = v41;
            v74 = v65;
            sub_1AF843F7C();
            v65 = v74;
            v41 = v73;
            v71 = v176;
            if ((v67 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_53:
            *(v71[7] + v65) = 1;
            v72 = v173;
          }

          else
          {
            sub_1AF82BC4C(v68, v63);
            v65 = sub_1AF0D3F10(v60);
            if ((v67 & 1) != (v70 & 1))
            {
              goto LABEL_115;
            }

LABEL_52:
            v71 = v176;
            if (v67)
            {
              goto LABEL_53;
            }

LABEL_55:
            v71[(v65 >> 6) + 8] |= 1 << v65;
            v72 = v173;
            *(v71[6] + 8 * v65) = v173;
            *(v71[7] + v65) = 1;
            ++v71[2];
          }

          *v15 = v71;

          if (sub_1AF96CD1C(v72))
          {
            v75 = v152;
            v76 = v154;
            (*v147)(v152, v72 + OBJC_IVAR____TtC3VFX4Node_authoringID, v154);

            v77 = sub_1AF3D88AC(v75, v171);
            (*v146)(v75, v76);
            v78 = MEMORY[0x1E69E7CC0];
            *&v176 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            *(&v176 + 1) = v79;
            sub_1AF412D4C(v170, v169, 1, v175, v167 & 1, v77, &v176);
            if (v41)
            {
              goto LABEL_116;
            }

            v72 = v173;
          }

          else
          {

            v78 = MEMORY[0x1E69E7CC0];
          }

          v162 = v41;
          if (v150)
          {
            v81 = 0;
            v160 = 0;
            v159 = 0;
            v158 = 0;
            v157 = 0;
            v156 = 0;
          }

          else
          {
            (*(*v72 + 152))(&v182, v80);
            v81 = v182;
            v160 = v183;
            v159 = v184;
            v158 = v185;
            v157 = v186;
            v156 = v187;
          }

          v82 = *(v72 + 16);
          v83 = *(v82 + 16);
          v174 = v81;
          if (!v83)
          {
            v85 = v78;
            v41 = v162;
            v93 = *(v78 + 16);
            if (v93)
            {
              goto LABEL_71;
            }

            goto LABEL_87;
          }

          *&v176 = v78;

          sub_1AFC05E2C(0, v83, 0);
          v84 = 0;
          v85 = v176;
          v86 = *(v176 + 16);
          v87 = 16 * v86;
          do
          {
            v88 = *(v82 + v84 + 32);
            v89 = *(v82 + v84 + 40);
            *&v176 = v85;
            v90 = *(v85 + 24);
            v91 = v86 + 1;

            if (v86 >= v90 >> 1)
            {
              sub_1AFC05E2C(v90 > 1, v91, 1);
              v85 = v176;
            }

            *(v85 + 16) = v91;
            v92 = v85 + v87 + v84;
            *(v92 + 32) = v88;
            *(v92 + 40) = v89;
            v84 += 16;
            ++v86;
            --v83;
          }

          while (v83);

          v41 = v162;
          v69 = v163;
          v81 = v174;
          v93 = *(v85 + 16);
          if (!v93)
          {
LABEL_87:

            sub_1AF441284(v81);
            type metadata accessor for Node();
            if (swift_dynamicCastMetatype())
            {
              v100 = v173;

              v102 = v166;
              v103 = sub_1AF3D72E8(v101, v166);

              *(v100 + 16) = v103;

              v104 = v171;
            }

            else
            {
              type metadata accessor for AuthoringNode();
              v102 = v166;
              v104 = v171;
              v100 = v173;
            }

            v105 = swift_allocObject();
            v106 = v170;
            v107 = v169;
            *(v105 + 16) = v170;
            *(v105 + 24) = v107;
            v108 = v161;

            v109 = v175;
            sub_1AF4410E4(v175, sub_1AF4410A8);

            v110 = swift_allocObject();
            *(v110 + 16) = 1;
            *(v110 + 24) = v109;
            *(v110 + 32) = v149;
            *(v110 + 40) = v172;
            *(v110 + 48) = v108;
            *(v110 + 56) = v104;
            *(v110 + 64) = v106;
            *(v110 + 72) = v107;
            *(v110 + 80) = v102;
            v111 = v102;
            v112 = v168;
            *(v110 + 88) = v168;
            v113 = swift_allocObject();
            *(v113 + 16) = sub_1AF449D7C;
            *(v113 + 24) = v110;
            *&v176 = v108;
            *(&v176 + 1) = v100;
            v177 = v104;
            v178 = sub_1AF449D50;
            v179 = v113;
            v180 = v112;
            swift_bridgeObjectRetain_n();

            sub_1AF449CCC(&v176);
            if (v41)
            {
              goto LABEL_113;
            }

            swift_isEscapingClosureAtFileLocation();

            swift_isEscapingClosureAtFileLocation();

            a5 = v172;
            v114 = sub_1AF633A88(v100);
            v55 = v153;
            v54 = v151;
            v15 = v111;
            if (v114)
            {
              v115 = a5[1];
              v116 = swift_isUniquelyReferenced_nonNull_native();
              a5[1] = v115;
              if ((v116 & 1) == 0)
              {
                v115 = sub_1AF422330(0, *(v115 + 2) + 1, 1, v115, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                a5[1] = v115;
              }

              v118 = *(v115 + 2);
              v117 = *(v115 + 3);
              if (v118 >= v117 >> 1)
              {
                v115 = sub_1AF422330(v117 > 1, v118 + 1, 1, v115, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                a5[1] = v115;
              }

              *(v115 + 2) = v118 + 1;
              v100 = v173;
              *&v115[8 * v118 + 32] = v173;
            }

            v119 = swift_isUniquelyReferenced_nonNull_native();
            *&v176 = *v111;
            *v111 = 0x8000000000000000;
            sub_1AF850FDC(0, v100, v119);
            *v111 = v176;

            goto LABEL_30;
          }

LABEL_71:
          v94 = 0;
          v162 = v81 + 32;
          v95 = 32;
          while (2)
          {
            v96 = *(v85 + v95);
            if (v96)
            {
              if (v81 && v94 < *(v81 + 16))
              {
                v97 = *(v162 + 8 * v94);
                sub_1AF4410A8(v97);
              }

              else
              {
                v97 = 0xA000000000000000;
              }

              if (v69)
              {
                if (v69 == 1)
                {
                  v98 = sub_1AF9C5694(v97, v175 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v97);
                  if (v98)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                  sub_1AF441114(v97);
                }

LABEL_73:
                sub_1AF3DC99C(v96, 1, v175, v167 & 1, v171, v170, v169, v166, v172, v168);
                if (v41)
                {

                  sub_1AF441284(v174);
                  goto LABEL_111;
                }
              }

              else
              {
                v99 = sub_1AF9C5694(v97, v175);
                sub_1AF441114(v97);
                if (v99)
                {
                  goto LABEL_73;
                }
              }

LABEL_74:
              v81 = v174;
            }

            ++v94;
            v95 += 16;
            if (v93 == v94)
            {
              goto LABEL_87;
            }

            continue;
          }
        }
      }

LABEL_30:

      v56 = v165;
LABEL_31:
      ++v56;
    }

    while (v56 != v54);
  }

  sub_1AF441284(v55);
  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    v120 = v145;

    v122 = sub_1AF3D72E8(v121, v15);
    v162 = v41;

    *(v120 + 16) = v122;
  }

  else
  {
    type metadata accessor for AuthoringNode();
    v162 = v41;
    v120 = v145;
  }

  v123 = v161;
  v124 = swift_allocObject();
  v125 = v170;
  v126 = v169;
  *(v124 + 16) = v170;
  *(v124 + 24) = v126;

  v127 = v175;
  sub_1AF4410E4(v175, sub_1AF4410A8);

  v128 = swift_allocObject();
  *(v128 + 16) = 1;
  *(v128 + 24) = v127;
  *(v128 + 32) = v167 & 1;
  *(v128 + 40) = a5;
  *(v128 + 48) = v123;
  v129 = a5;
  v130 = v171;
  *(v128 + 56) = v171;
  *(v128 + 64) = v125;
  *(v128 + 72) = v126;
  *(v128 + 80) = v15;
  v131 = v168;
  *(v128 + 88) = v168;
  v132 = swift_allocObject();
  *(v132 + 16) = sub_1AF449D7C;
  *(v132 + 24) = v128;
  *&v176 = v123;
  *(&v176 + 1) = v120;
  v177 = v130;
  v178 = sub_1AF449D50;
  v179 = v132;
  v180 = v131;

  v133 = v162;
  sub_1AF449CCC(&v176);
  if (v133)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    goto LABEL_112;
  }

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  if (sub_1AF633A88(v120))
  {
    v134 = v129[1];
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v129[1] = v134;
    if ((v135 & 1) == 0)
    {
      v134 = sub_1AF422330(0, *(v134 + 2) + 1, 1, v134, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v129[1] = v134;
    }

    v137 = *(v134 + 2);
    v136 = *(v134 + 3);
    if (v137 >= v136 >> 1)
    {
      v134 = sub_1AF422330(v136 > 1, v137 + 1, 1, v134, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v129[1] = v134;
    }

    *(v134 + 2) = v137 + 1;
    *&v134[8 * v137 + 32] = v120;
  }

  v138 = swift_isUniquelyReferenced_nonNull_native();
  *&v176 = *v15;
  *v15 = 0x8000000000000000;
  sub_1AF850FDC(0, v120, v138);
  *v15 = v176;
}

uint64_t sub_1AF402B20(uint64_t a1, char a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v188 = a8;
  v192 = a7;
  v190 = a6;
  v186 = a4;
  v194 = a3;
  v165 = a1;
  v168 = sub_1AFDFC318();
  v13 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v14);
  v164 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v152 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v152 - v22;
  if ((a2 & 1) == 0)
  {
    goto LABEL_126;
  }

  v24 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v31 = a10;
    if (*(*a10 + 16))
    {
      v32 = v165;
      sub_1AF0D3F10(v165);
      if (v33)
      {
LABEL_126:
        sub_1AFDFE518();
        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        while (1)
        {

          swift_unexpectedError();
          __break(1u);
LABEL_125:

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          sub_1AF441284(v171);
        }
      }
    }

    else
    {
      v32 = v165;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, v32, isUniquelyReferenced_nonNull_native);
    *a10 = v203[0];

    sub_1AF44479C(0);
    v36 = v35;
    v183 = type metadata accessor for AuthoringNode();
    v180 = v36;
    LODWORD(v36) = v186 & (v36 == v183);
    v37 = swift_allocObject();
    v160 = v37;
    *(v37 + 16) = v32;
    v38 = (v37 + 16);
    v169 = v36;
    v153 = (v37 + 16);
    if (v36 == 1)
    {
      cache = (*v32)[7].cache;

      *v38 = cache(1);

      v32 = *v38;
    }

    else
    {
    }

    v187 = a9;
    v40 = sub_1AF96D010(v32);
    v189 = a10;
    if (v40)
    {
      v41 = *(v13 + 16);
      v42 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v43 = v168;
      v41(v23, v42, v168);
      v41(v19, v23, v43);
      v44 = v192;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1AF4276E0(0, v192[2] + 1, 1, v192, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1AF4276E0(v45 > 1, v46 + 1, 1, v44, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v47 = v168;
      (*(v13 + 8))(v23, v168);
      v44[2] = v46 + 1;
      v193 = v13;
      (*(v13 + 32))(v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v46, v19, v47);
      v48 = sub_1AF3FBC60(v188, v187, 1, v194, v186 & 1, v44);
      v50 = v49;

      if (v180 == v183)
      {
        v51 = *(v50 + 16);
        v52 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v203[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v53 = 32;
          do
          {
            if (*(v48 + 16))
            {
              sub_1AF0D3F10(*(v50 + v53));
              if (v55)
              {
              }

              else
              {
                v54 = 1;
              }
            }

            else
            {
              v54 = 1;
            }

            *&v196 = v54;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v53 += 8;
            --v51;
          }

          while (v51);

          v56 = v203[0];
          v52 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v56 = MEMORY[0x1E69E7CC0];
        }

        v57 = *v153;
        type metadata accessor for AuthoringGraph();
        v58 = swift_allocObject();
        v58[2] = 0;
        v58[3] = v52;
        v58[4] = 0;
        v58[5] = 0;

        v58[6] = sub_1AF42B820(v52, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v58[3] = v56;

        *(v57 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v58;

        v31 = v189;
      }

      else
      {
      }

      v13 = v193;
    }

    v59 = v194 >> 59;
    v60 = v183;
    v61 = v13;
    if (((v194 >> 59) & 2) != 0)
    {
      v171 = 0;
      v159 = 0;
      v158 = 0;
      v157 = 0;
      v156 = 0;
      v155 = 0;
    }

    else
    {
      ((*(v165 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v202);
      v171 = v202[0];
      v159 = v202[1];
      v158 = v202[2];
      v157 = v202[3];
      v156 = v202[4];
      v155 = v202[5];
    }

    v184 = a11;
    v62 = sub_1AF97228C();
    v63 = *(v62 + 16);
    v185 = a5;
    v154 = v62;
    if (!v63)
    {
      v170 = v186 & 1;
      v65 = v171;
      goto LABEL_119;
    }

    v64 = 0;
    v166 = v59 & 2;
    LODWORD(v193) = v166 | (v194 >> 2) & 1;
    v181 = v62 + 32;
    v65 = v171;
    v163 = v171 + 32;
    v162 = (v61 + 16);
    v161 = (v61 + 8);
    v66 = a5;
    v170 = v186 & 1;
    v167 = v63;
    while (1)
    {
      v191 = *(v181 + 16 * v64);
      if (!v191)
      {
        goto LABEL_42;
      }

      v182 = v64;
      if (v65 && v64 < *(v65 + 16))
      {
        v67 = *(v163 + 8 * v64);
        sub_1AF4410A8(v67);
      }

      else
      {
        v67 = 0xA000000000000000;
      }

      if (v193)
      {
        if (v193 == 1)
        {
          v68 = sub_1AF9C5694(v67, v194 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v67);
          if (v68)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_1AF441114(v67);
        }
      }

      else
      {
        v69 = sub_1AF9C5694(v67, v194);
        sub_1AF441114(v67);
        if (!v69)
        {
          goto LABEL_41;
        }
      }

      if (!*(*v66 + 16) || (sub_1AF0D3F10(v191), (v70 & 1) == 0))
      {
        if (*(*v31 + 16))
        {
          v71 = v191;
          sub_1AF0D3F10(v191);
          if (v72)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v71 = v191;
        }

        v73 = swift_isUniquelyReferenced_nonNull_native();
        *&v196 = *v31;
        v74 = v196;
        *v31 = 0x8000000000000000;
        v75 = sub_1AF0D3F10(v71);
        v77 = v76;
        v78 = *(v74 + 16) + ((v76 & 1) == 0);
        if (*(v74 + 24) >= v78)
        {
          if (v73)
          {
            goto LABEL_65;
          }

          v81 = v75;
          sub_1AF843F7C();
          v75 = v81;
          v80 = v196;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_66:
          *(v80[7] + v75) = 1;
        }

        else
        {
          sub_1AF82BC4C(v78, v73);
          v75 = sub_1AF0D3F10(v71);
          if ((v77 & 1) != (v79 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
            goto LABEL_126;
          }

LABEL_65:
          v80 = v196;
          if (v77)
          {
            goto LABEL_66;
          }

LABEL_68:
          v80[(v75 >> 6) + 8] |= 1 << v75;
          *(v80[6] + 8 * v75) = v71;
          *(v80[7] + v75) = 1;
          ++v80[2];
        }

        *v31 = v80;

        v82 = swift_allocObject();
        v179 = v82;
        *(v82 + 16) = v71;
        v83 = (v82 + 16);
        if (v169)
        {
          v84 = *(*v71 + 296);

          *v83 = v84(1);

          v85 = *v83;
        }

        else
        {

          v85 = v71;
        }

        v86 = sub_1AF96D010(v85);
        v172 = v83;
        if (v86)
        {
          v87 = v85 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v88 = v164;
          v89 = v168;
          (*v162)(v164, v87, v168);
          v90 = sub_1AF3D88AC(v88, v192);
          (*v161)(v88, v89);
          v91 = sub_1AF3FBC60(v188, v187, 1, v194, v186 & 1, v90);
          v93 = v92;

          if (v180 == v60)
          {
            v94 = *(v93 + 16);
            if (v94)
            {
              *&v196 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v95 = 32;
              do
              {
                if (*(v91 + 16) && (sub_1AF0D3F10(*(v93 + v95)), (v97 & 1) != 0))
                {
                }

                else
                {
                  v96 = 1;
                }

                v195 = v96;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v95 += 8;
                --v94;
              }

              while (v94);

              v98 = v196;
              v71 = v191;
              v99 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v99 = MEMORY[0x1E69E7CC0];
              v98 = MEMORY[0x1E69E7CC0];
            }

            v100 = *v172;
            type metadata accessor for AuthoringGraph();
            v101 = swift_allocObject();
            v101->cache = 0;
            v101->vtable = v99;
            v101->info = 0;
            v101[1].isa = 0;

            v101[1].superclass = sub_1AF42B820(v99, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v101->vtable = v98;

            *(v100 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v101;
          }

          else
          {
          }
        }

        if (v166)
        {
          v104 = 0;
          v178 = 0;
          v177 = 0;
          v176 = 0;
          v175 = 0;
          v174 = 0;
        }

        else
        {
          v102 = *(**(v71 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

          v102(v203, v103);
          v104 = v203[0];
          v178 = v203[1];
          v177 = v203[2];
          v176 = v203[3];
          v175 = v203[4];
          v174 = v203[5];
        }

        v105 = sub_1AF97228C();
        v106 = *(v105 + 16);
        if (v106)
        {
          v107 = 0;
          v108 = 32;
          while (2)
          {
            v109 = *(v105 + v108);
            if (!v109)
            {
              goto LABEL_92;
            }

            if (v104 && v107 < *(v104 + 16))
            {
              v110 = *(v104 + 32 + 8 * v107);
              sub_1AF4410A8(v110);
            }

            else
            {
              v110 = 0xA000000000000000;
            }

            if (v193)
            {
              if (v193 != 1)
              {
                sub_1AF441114(v110);
                goto LABEL_105;
              }

              v111 = sub_1AF9C5694(v110, v194 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v110);
              if (!v111)
              {
LABEL_105:
                sub_1AF3DDA58(v109, 1, v194, v186 & 1, v192, v188, v187, v189, v185, v184);
              }
            }

            else
            {
              v112 = sub_1AF9C5694(v110, v194);
              sub_1AF441114(v110);
              if (v112)
              {
                goto LABEL_105;
              }
            }

LABEL_92:
            ++v107;
            v108 += 16;
            if (v106 == v107)
            {
              break;
            }

            continue;
          }
        }

        v173 = 0;

        sub_1AF441284(v104);
        v113 = v179;
        v114 = v189;
        v115 = v185;
        sub_1AF3FC79C(v179, v189, v185);
        v116 = swift_allocObject();
        v117 = v188;
        v118 = v187;
        *(v116 + 16) = v188;
        *(v116 + 24) = v118;
        v119 = v190;

        v120 = v194;
        sub_1AF4410E4(v194, sub_1AF4410A8);

        v121 = swift_allocObject();
        *(v121 + 16) = 1;
        *(v121 + 24) = v120;
        *(v121 + 32) = v170;
        *(v121 + 40) = v115;
        *(v121 + 48) = v119;
        v122 = v192;
        *(v121 + 56) = v192;
        *(v121 + 64) = v117;
        *(v121 + 72) = v118;
        *(v121 + 80) = v114;
        v123 = v184;
        *(v121 + 88) = v184;
        v124 = swift_allocObject();
        *(v124 + 16) = sub_1AF449D78;
        *(v124 + 24) = v121;
        v125 = *(v113 + 16);
        *&v196 = v119;
        *(&v196 + 1) = v125;
        v197 = v122;
        v198 = sub_1AF449D48;
        v199 = v124;
        v200 = v123;
        swift_bridgeObjectRetain_n();

        v126 = v173;
        sub_1AF449DC0(&v196, &v201);
        if (v126)
        {
          goto LABEL_125;
        }

        v127 = v201;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v128 = swift_retain_n();
        v129 = sub_1AF633B74(v128, v191);
        v60 = v183;
        if (v129 == 1)
        {
          v130 = *(v115 + 8);
          v131 = swift_isUniquelyReferenced_nonNull_native();
          *(v115 + 8) = v130;
          v63 = v167;
          v31 = v189;
          if ((v131 & 1) == 0)
          {
            v130 = sub_1AF422330(0, *(v130 + 2) + 1, 1, v130, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            *(v115 + 8) = v130;
          }

          v133 = *(v130 + 2);
          v132 = *(v130 + 3);
          if (v133 >= v132 >> 1)
          {
            *(v115 + 8) = sub_1AF422330(v132 > 1, v133 + 1, 1, v130, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          v66 = v115;
          v134 = *(v115 + 8);
          *(v134 + 16) = v133 + 1;
          *(v134 + 8 * v133 + 32) = v191;
          v65 = v171;
        }

        else
        {
          v66 = v115;
          v135 = v129;

          sub_1AF0DB74C(v135);
          v65 = v171;
          v63 = v167;
          v31 = v189;
        }

        if (v180 == v60)
        {
          *&v196 = v127;

          swift_dynamicCast();
        }

        v136 = swift_isUniquelyReferenced_nonNull_native();
        *&v196 = *v31;
        *v31 = 0x8000000000000000;
        sub_1AF850FDC(0, v191, v136);
        *v31 = v196;
      }

LABEL_41:

      v64 = v182;
LABEL_42:
      if (++v64 == v63)
      {
        a5 = v66;
LABEL_119:

        sub_1AF441284(v65);
        sub_1AF3FC79C(v160, v31, a5);
        v137 = a5;
        v138 = swift_allocObject();
        v139 = v188;
        v140 = v187;
        *(v138 + 16) = v188;
        *(v138 + 24) = v140;
        v141 = v190;

        v142 = v194;
        sub_1AF4410E4(v194, sub_1AF4410A8);

        v143 = swift_allocObject();
        *(v143 + 16) = 1;
        *(v143 + 24) = v142;
        *(v143 + 32) = v170;
        *(v143 + 40) = v137;
        *(v143 + 48) = v141;
        v144 = v192;
        *(v143 + 56) = v192;
        *(v143 + 64) = v139;
        *(v143 + 72) = v140;
        *(v143 + 80) = v31;
        v145 = v184;
        *(v143 + 88) = v184;
        v146 = swift_allocObject();
        *(v146 + 16) = sub_1AF449D78;
        *(v146 + 24) = v143;
        v147 = *(v160 + 16);
        *&v196 = v141;
        *(&v196 + 1) = v147;
        v197 = v144;
        v198 = sub_1AF449D48;
        v199 = v146;
        v200 = v145;

        sub_1AF449DC0(&v196, &v201);

        v27 = v201;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v149 = v165;
        sub_1AF3D9030(v148, v165, sub_1AF633B74, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84466C);
        if (v180 == v60)
        {
          *&v196 = v27;

          swift_dynamicCast();
        }

        v150 = swift_isUniquelyReferenced_nonNull_native();
        *&v196 = *v31;
        *v31 = 0x8000000000000000;
        sub_1AF850FDC(0, v149, v150);
        *v31 = v196;

        goto LABEL_122;
      }
    }
  }

  v25 = sub_1AF0D3F10(v165);
  if ((v26 & 1) == 0)
  {
    v28 = *(v24 + 16);

    if (v28)
    {
      v29 = sub_1AF0D3F10(v165);
      if (v30)
      {
        v27 = *(*(v24 + 56) + 8 * v29);

LABEL_122:

        return v27;
      }
    }

    goto LABEL_9;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  return v27;
}

uint64_t sub_1AF404534@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v209 = a8;
  v210 = a7;
  v204 = a6;
  v205 = a4;
  v215 = a3;
  v195 = sub_1AFDFC318();
  v213 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v16);
  v190 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v179 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v179 - v24;
  if ((a2 & 1) == 0)
  {
    goto LABEL_114;
  }

  v26 = *a5;
  if (!*(*a5 + 16))
  {
    v186 = a9;

LABEL_9:
    v57 = a11;
    if (*(*a11 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v58)
      {
        goto LABEL_114;
      }
    }

    v208 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v267 = *a11;
    *a11 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a11 = v267;

    v60 = sub_1AF96CD1C(a1);
    v211 = a11;
    if (v60)
    {
      v61 = a5;
      v62 = *(v213 + 16);
      v63 = v195;
      v62(v25, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v195);
      v62(v21, v25, v63);

      v64 = v210;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1AF4276E0(0, v210[2] + 1, 1, v210, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1AF4276E0(v65 > 1, v66 + 1, 1, v64, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v67 = v213;
      v68 = v25;
      v69 = v195;
      (*(v213 + 8))(v68, v195);
      v64[2] = v66 + 1;
      (*(v67 + 32))(v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, v21, v69);
      *&v267 = sub_1AF439808(MEMORY[0x1E69E7CC0]);
      *(&v267 + 1) = v70;
      v71 = 0;
      sub_1AF413434(v209, v208, 1, v215, v205 & 1, v64, &v267);

      v57 = v211;
      a5 = v61;
    }

    else
    {

      v71 = 0;
    }

    v73 = a5;
    v74 = v215 >> 59;
    if (((v215 >> 59) & 2) != 0)
    {
      v75 = 0;
      v183 = 0;
      v184 = 0;
      v181 = 0;
      v182 = 0;
      v180 = 0;
    }

    else
    {
      (*(*a1 + 152))(v265, v72);
      v75 = v265[0];
      v183 = v265[2];
      v184 = v265[1];
      v181 = v265[4];
      v182 = v265[3];
      v180 = v265[5];
    }

    v185 = a1;
    v76 = *(a1 + 16);
    v77 = *(v76 + 16);
    v78 = MEMORY[0x1E69E7CC0];
    v212 = v73;
    v196 = v75;
    if (v77)
    {
      v214 = v74;
      v202 = 0;
      *&v267 = MEMORY[0x1E69E7CC0];
      v216 = v76;

      sub_1AFC05E2C(0, v77, 0);
      v79 = v216;
      v80 = 0;
      v81 = v267;
      v82 = *(v267 + 16);
      v83 = 16 * v82;
      do
      {
        v84 = *(v79 + v80 + 32);
        v85 = *(v79 + v80 + 40);
        *&v267 = v81;
        v86 = *(v81 + 24);
        v87 = v82 + 1;

        if (v82 >= v86 >> 1)
        {
          sub_1AFC05E2C(v86 > 1, v87, 1);
          v81 = v267;
        }

        *(v81 + 16) = v87;
        v88 = v81 + v83 + v80;
        *(v88 + 32) = v84;
        *(v88 + 40) = v85;
        v80 += 16;
        ++v82;
        --v77;
        v79 = v216;
      }

      while (v77);

      v57 = v211;
      v89 = v212;
      v90 = v81;
      v71 = v202;
      v75 = v196;
      v78 = MEMORY[0x1E69E7CC0];
      LOBYTE(v74) = v214;
    }

    else
    {
      v90 = MEMORY[0x1E69E7CC0];
      v89 = v73;
    }

    v206 = a12;
    v91 = *(v90 + 16);
    v92 = v204;
    v179 = v90;
    if (!v91)
    {
LABEL_102:

      sub_1AF441284(v75);
      sub_1AF448148();
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v161 = v185;

        v163 = sub_1AF3D72E8(v162, v57);
        v202 = v71;

        *(v161 + 16) = v163;

        v164 = v89;
      }

      else
      {
        type metadata accessor for AuthoringNode();
        v202 = v71;
        v164 = v89;
        v161 = v185;
      }

      v165 = swift_allocObject();
      v167 = v208;
      v166 = v209;
      *(v165 + 16) = v209;
      *(v165 + 24) = v167;

      v168 = v215;
      sub_1AF4410E4(v215, sub_1AF4410A8);

      v169 = swift_allocObject();
      *(v169 + 16) = 1;
      *(v169 + 24) = v168;
      *(v169 + 32) = v205 & 1;
      *(v169 + 40) = v164;
      *(v169 + 48) = v92;
      v170 = v210;
      *(v169 + 56) = v210;
      *(v169 + 64) = v166;
      *(v169 + 72) = v167;
      *(v169 + 80) = v57;
      v171 = v206;
      *(v169 + 88) = v206;
      v172 = v92;
      v173 = swift_allocObject();
      *(v173 + 16) = sub_1AF449D8C;
      *(v173 + 24) = v169;
      *&v225 = v172;
      *(&v225 + 1) = v161;
      *&v226 = v170;
      *(&v226 + 1) = sub_1AF449D50;
      *&v227 = v173;
      *(&v227 + 1) = v171;

      v174 = v202;
      sub_1AF449CCC(&v225);
      if (!v174)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        *&v251[96] = v223;
        *&v251[112] = v224[0];
        *&v251[121] = *(v224 + 9);
        *&v251[32] = v219;
        *&v251[48] = v220;
        *&v251[64] = v221;
        *&v251[80] = v222;
        *v251 = v217;
        *&v251[16] = v218;
        v263 = v223;
        v264[0] = v224[0];
        *(v264 + 9) = *(v224 + 9);
        v259 = v219;
        v260 = v220;
        v262 = v222;
        v261 = v221;
        v258 = v218;
        v257 = v217;
        nullsub_106();
        v273 = v263;
        v274[0] = v264[0];
        *(v274 + 9) = *(v264 + 9);
        v269 = v259;
        v270 = v260;
        v271 = v261;
        v272 = v262;
        v267 = v257;
        v268 = v258;
        sub_1AF4495B8(v251, &v243, sub_1AF448148);
        sub_1AF3D8A74(&v267, v161);
        v175 = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = *v57;
        *v57 = 0x8000000000000000;
        sub_1AF850FDC(0, v161, v175);
        *v57 = v243;

        v176 = v224[0];
        v52 = v186;
        v186[6] = v223;
        v52[7] = v176;
        *(v52 + 121) = *(v224 + 9);
        v177 = v220;
        v52[2] = v219;
        v52[3] = v177;
        v178 = v222;
        v52[4] = v221;
        v52[5] = v178;
        v56 = v217;
        v55 = v218;
        goto LABEL_107;
      }

LABEL_115:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_111:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_109:
        sub_1AF441284(v196);
      }
    }

    v93 = 0;
    v193 = v74 & 2;
    LODWORD(v214) = v193 | (v215 >> 2) & 1;
    v94 = v90 + 32;
    v188 = (v213 + 16);
    v189 = v75 + 32;
    v187 = (v213 + 8);
    v191 = v205 & 1;
    v194 = v91;
    v192 = v90 + 32;
    while (1)
    {
      v207 = *(v94 + 16 * v93);
      if (!v207)
      {
        goto LABEL_31;
      }

      v203 = v93;
      if (v75 && v93 < *(v75 + 16))
      {
        v95 = *(v189 + 8 * v93);
        sub_1AF4410A8(v95);
      }

      else
      {
        v95 = 0xA000000000000000;
      }

      if (v214)
      {
        if (v214 != 1)
        {
          sub_1AF441114(v95);
LABEL_44:
          if (!*(*v89 + 16) || (sub_1AF0D3F10(v207), (v98 & 1) == 0))
          {
            if (*(*v57 + 16))
            {
              v99 = v207;
              sub_1AF0D3F10(v207);
              if (v100)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v99 = v207;
            }

            v101 = swift_isUniquelyReferenced_nonNull_native();
            *&v267 = *v57;
            v102 = v267;
            *v57 = 0x8000000000000000;
            v103 = sub_1AF0D3F10(v99);
            v105 = v104;
            v106 = *(v102 + 16) + ((v104 & 1) == 0);
            if (*(v102 + 24) >= v106)
            {
              if (v101)
              {
                goto LABEL_54;
              }

              v109 = v71;
              v110 = v103;
              sub_1AF843F7C();
              v103 = v110;
              v71 = v109;
              v108 = v267;
              if ((v105 & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_55:
              *(v108[7] + v103) = 1;
            }

            else
            {
              sub_1AF82BC4C(v106, v101);
              v103 = sub_1AF0D3F10(v99);
              if ((v105 & 1) != (v107 & 1))
              {
                sub_1AFDFF1A8();
                __break(1u);
LABEL_114:
                sub_1AFDFE518();
                __break(1u);
                goto LABEL_115;
              }

LABEL_54:
              v108 = v267;
              if (v105)
              {
                goto LABEL_55;
              }

LABEL_57:
              v108[(v103 >> 6) + 8] |= 1 << v103;
              *(v108[6] + 8 * v103) = v99;
              *(v108[7] + v103) = 1;
              ++v108[2];
            }

            *v57 = v108;

            v111 = v204;
            if (sub_1AF96CD1C(v99))
            {
              v112 = v190;
              v113 = v195;
              (*v188)(v190, v99 + OBJC_IVAR____TtC3VFX4Node_authoringID, v195);

              v114 = sub_1AF3D88AC(v112, v210);
              (*v187)(v112, v113);
              *&v267 = sub_1AF439808(v78);
              *(&v267 + 1) = v115;
              sub_1AF413434(v209, v208, 1, v215, v205 & 1, v114, &v267);
              if (v71)
              {

                goto LABEL_109;
              }

              v111 = v204;
              if (!v193)
              {
LABEL_61:
                (*(*v99 + 152))(v266, v116);
                v117 = v266[0];
                v200 = v266[2];
                v201 = v266[1];
                v198 = v266[4];
                v199 = v266[3];
                v197 = v266[5];
                goto LABEL_64;
              }
            }

            else
            {

              if (!v193)
              {
                goto LABEL_61;
              }
            }

            v117 = 0;
            v200 = 0;
            v201 = 0;
            v198 = 0;
            v199 = 0;
            v197 = 0;
LABEL_64:
            v118 = *(v99 + 16);
            v119 = *(v118 + 16);
            v213 = v117;
            if (!v119)
            {
              v121 = v78;
              v130 = *(v78 + 16);
              if (v130)
              {
                goto LABEL_72;
              }

              goto LABEL_89;
            }

            v202 = v71;
            *&v267 = v78;

            sub_1AFC05E2C(0, v119, 0);
            v120 = 0;
            v121 = v267;
            v122 = *(v267 + 16);
            v216 = 16 * v122;
            do
            {
              v123 = v118;
              v124 = v118 + v120;
              v125 = *(v118 + v120 + 32);
              v126 = *(v124 + 40);
              *&v267 = v121;
              v127 = *(v121 + 24);
              v128 = v122 + 1;

              if (v122 >= v127 >> 1)
              {
                sub_1AFC05E2C(v127 > 1, v128, 1);
                v121 = v267;
              }

              *(v121 + 16) = v128;
              v129 = v121 + v216 + v120;
              *(v129 + 32) = v125;
              *(v129 + 40) = v126;
              v120 += 16;
              ++v122;
              --v119;
              v118 = v123;
            }

            while (v119);

            v111 = v204;
            v71 = v202;
            v117 = v213;
            v130 = *(v121 + 16);
            if (!v130)
            {
LABEL_89:

              sub_1AF441284(v117);
              sub_1AF448148();
              type metadata accessor for Node();
              if (swift_dynamicCastMetatype())
              {
                v137 = v207;

                v139 = v211;
                v140 = sub_1AF3D72E8(v138, v211);
                v202 = v71;

                *(v137 + 16) = v140;
                v111 = v204;

                v141 = v210;
              }

              else
              {
                type metadata accessor for AuthoringNode();
                v141 = v210;
                v139 = v211;
                v202 = v71;
                v137 = v207;
              }

              v142 = swift_allocObject();
              v144 = v208;
              v143 = v209;
              *(v142 + 16) = v209;
              *(v142 + 24) = v144;

              v145 = v215;
              sub_1AF4410E4(v215, sub_1AF4410A8);

              v146 = v111;
              v147 = swift_allocObject();
              *(v147 + 16) = 1;
              *(v147 + 24) = v145;
              *(v147 + 32) = v191;
              *(v147 + 40) = v212;
              *(v147 + 48) = v146;
              *(v147 + 56) = v141;
              *(v147 + 64) = v143;
              *(v147 + 72) = v144;
              *(v147 + 80) = v139;
              v148 = v206;
              *(v147 + 88) = v206;
              v149 = swift_allocObject();
              *(v149 + 16) = sub_1AF449D8C;
              *(v149 + 24) = v147;
              *&v252 = v146;
              *(&v252 + 1) = v137;
              v253 = v141;
              v254 = sub_1AF449D50;
              v255 = v149;
              v256 = v148;
              swift_bridgeObjectRetain_n();

              v71 = v202;
              sub_1AF449CCC(&v252);
              if (v71)
              {
                goto LABEL_111;
              }

              swift_isEscapingClosureAtFileLocation();

              swift_isEscapingClosureAtFileLocation();

              *&v251[96] = v273;
              *&v251[112] = v274[0];
              *&v251[121] = *(v274 + 9);
              *&v251[32] = v269;
              *&v251[48] = v270;
              *&v251[64] = v271;
              *&v251[80] = v272;
              *v251 = v267;
              *&v251[16] = v268;
              sub_1AF4495B8(v251, &v257, sub_1AF448148);
              sub_1AF4495B8(v251, &v257, sub_1AF448148);
              v233 = *v251;
              v234 = *&v251[8];
              v235 = *&v251[24];
              v236 = *&v251[40];
              v237 = *&v251[56];
              v238 = *&v251[72];
              v239 = *&v251[88];
              v240 = *&v251[104];
              v241 = *&v251[120];
              v242 = v251[136];
              v150 = v212;
              sub_1AF633BB4(&v233, v137, &v243);
              v263 = v249;
              v264[0] = v250[0];
              *(v264 + 9) = *(v250 + 9);
              v259 = v245;
              v260 = v246;
              v262 = v248;
              v261 = v247;
              v258 = v244;
              v257 = v243;
              if (sub_1AF448314(&v257) == 1)
              {
                v231 = v249;
                v232[0] = v250[0];
                *(v232 + 9) = *(v250 + 9);
                v227 = v245;
                v228 = v246;
                v229 = v247;
                v230 = v248;
                v225 = v243;
                v226 = v244;
                sub_1AF44832C(&v225, &qword_1EB638CB0, sub_1AF448148);
                v151 = *(v150 + 8);
                v152 = swift_isUniquelyReferenced_nonNull_native();
                *(v150 + 8) = v151;
                v153 = MEMORY[0x1E69E7CC0];
                if (v152)
                {
                  v154 = v150;
                }

                else
                {
                  v151 = sub_1AF422330(0, *(v151 + 2) + 1, 1, v151, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                  v154 = v150;
                  *(v150 + 8) = v151;
                }

                v155 = v153;
                v157 = *(v151 + 2);
                v156 = *(v151 + 3);
                if (v157 >= v156 >> 1)
                {
                  *(v154 + 8) = sub_1AF422330(v156 > 1, v157 + 1, 1, v151, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                }

                sub_1AF44943C(v251, sub_1AF448148);
                v158 = *(v154 + 8);
                *(v158 + 16) = v157 + 1;
                *(v158 + 8 * v157 + 32) = v137;
                v92 = v204;
                v71 = 0;
                v91 = v194;
                v159 = v137;
              }

              else
              {
                v154 = v150;
                sub_1AF44943C(v251, sub_1AF448148);
                v231 = v249;
                v232[0] = v250[0];
                *(v232 + 9) = *(v250 + 9);
                v227 = v245;
                v228 = v246;
                v229 = v247;
                v230 = v248;
                v225 = v243;
                v226 = v244;
                sub_1AF44832C(&v225, &qword_1EB638CB0, sub_1AF448148);
                v92 = v204;
                v155 = MEMORY[0x1E69E7CC0];
                v159 = v137;
                v91 = v194;
              }

              v57 = v211;
              v160 = swift_isUniquelyReferenced_nonNull_native();
              *&v243 = *v57;
              *v57 = 0x8000000000000000;
              sub_1AF850FDC(0, v159, v160);
              *v57 = v243;

              v249 = v273;
              v250[0] = v274[0];
              *(v250 + 9) = *(v274 + 9);
              v245 = v269;
              v246 = v270;
              v247 = v271;
              v248 = v272;
              v243 = v267;
              v244 = v268;
              sub_1AF44943C(&v243, sub_1AF448148);

              v93 = v203;
              v94 = v192;
              v78 = v155;
              v89 = v154;
              v75 = v196;
              goto LABEL_31;
            }

LABEL_72:
            v131 = 0;
            v216 = v117 + 32;
            v132 = 32;
            while (2)
            {
              v133 = *(v121 + v132);
              if (v133)
              {
                if (v117 && v131 < *(v117 + 16))
                {
                  v134 = *(v216 + 8 * v131);
                  sub_1AF4410A8(v134);
                }

                else
                {
                  v134 = 0xA000000000000000;
                }

                if (v214)
                {
                  if (v214 != 1)
                  {
                    sub_1AF441114(v134);
                    goto LABEL_87;
                  }

                  v135 = sub_1AF9C5694(v134, v215 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v134);
                  if (!v135)
                  {
LABEL_87:
                    sub_1AF3DEAB4(v133, 1, v215, v205 & 1, v210, v209, v208, v211, &v267, v212, v206);
                    if (v71)
                    {

                      sub_1AF441284(v213);
                      goto LABEL_109;
                    }

                    v263 = v273;
                    v264[0] = v274[0];
                    *(v264 + 9) = *(v274 + 9);
                    v259 = v269;
                    v260 = v270;
                    v262 = v272;
                    v261 = v271;
                    v258 = v268;
                    v257 = v267;
                    sub_1AF44943C(&v257, sub_1AF448148);
                  }
                }

                else
                {
                  v136 = sub_1AF9C5694(v134, v215);
                  sub_1AF441114(v134);
                  if (v136)
                  {
                    goto LABEL_87;
                  }
                }

                v117 = v213;
              }

              ++v131;
              v132 += 16;
              if (v130 == v131)
              {
                goto LABEL_89;
              }

              continue;
            }
          }

          goto LABEL_30;
        }

        v96 = sub_1AF9C5694(v95, v215 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v95);
        if (!v96)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v97 = sub_1AF9C5694(v95, v215);
        sub_1AF441114(v95);
        if (v97)
        {
          goto LABEL_44;
        }
      }

LABEL_30:

      v93 = v203;
      v92 = v204;
LABEL_31:
      if (++v93 == v91)
      {
        goto LABEL_102;
      }
    }
  }

  v27 = sub_1AF0D3F10(a1);
  if (v28)
  {
    v29 = (*(v26 + 56) + 144 * v27);
    v267 = *v29;
    v30 = v29[3];
    v31 = v29[4];
    v32 = v29[2];
    v268 = v29[1];
    v269 = v32;
    v270 = v30;
    v271 = v31;
    v33 = v29[5];
    v34 = v29[6];
    v35 = v29[7];
    *(v274 + 9) = *(v29 + 121);
    v273 = v34;
    v274[0] = v35;
    v272 = v33;
    v36 = v29[7];
    a9[6] = v29[6];
    a9[7] = v36;
    *(a9 + 121) = *(v29 + 121);
    v37 = v29[3];
    a9[2] = v29[2];
    a9[3] = v37;
    v38 = v29[5];
    a9[4] = v29[4];
    a9[5] = v38;
    v39 = v29[1];
    *a9 = *v29;
    a9[1] = v39;
    return sub_1AF4495B8(&v267, &v257, sub_1AF448148);
  }

  v186 = a9;
  v41 = *(v26 + 16);

  if (!v41)
  {
    goto LABEL_9;
  }

  v42 = sub_1AF0D3F10(a1);
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

  v44 = (*(v26 + 56) + 144 * v42);
  v267 = *v44;
  v45 = v44[3];
  v46 = v44[4];
  v47 = v44[2];
  v268 = v44[1];
  v269 = v47;
  v270 = v45;
  v271 = v46;
  v48 = v44[5];
  v49 = v44[6];
  v50 = v44[7];
  *(v274 + 9) = *(v44 + 121);
  v273 = v49;
  v274[0] = v50;
  v272 = v48;
  sub_1AF4495B8(&v267, &v257, sub_1AF448148);

  v51 = v274[0];
  v52 = v186;
  v186[6] = v273;
  v52[7] = v51;
  *(v52 + 121) = *(v274 + 9);
  v53 = v270;
  v52[2] = v269;
  v52[3] = v53;
  v54 = v272;
  v52[4] = v271;
  v52[5] = v54;
  v56 = v267;
  v55 = v268;
LABEL_107:
  *v52 = v56;
  v52[1] = v55;
  return result;
}

uint64_t sub_1AF405D48(uint64_t a1, char a2, unint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v196 = a8;
  v190 = a6;
  v191 = a4;
  v201 = a3;
  v181 = sub_1AFDFC318();
  v177 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v15);
  v180 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v179 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v162 - v26;
  if ((a2 & 1) == 0)
  {
    goto LABEL_122;
  }

  v28 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_8:
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v34)
      {
        goto LABEL_122;
      }
    }

    v195 = a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v210 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    v36 = a10;
    *a10 = v210;

    v37 = sub_1AF96CD1C(a1);
    if (v37)
    {
      v200 = v37;
      v38 = a7;
      v39 = *(v177 + 16);
      v40 = v181;
      v39(v27, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v181);
      v39(v23, v27, v40);

      v41 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1AF4276E0(0, v38[2] + 1, 1, v38, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v41, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v44 = v177;
      v45 = v27;
      v46 = v181;
      (*(v177 + 8))(v45, v181);
      v41[2] = v43 + 1;
      (*(v44 + 32))(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43, v23, v46);
      v210 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
      v211 = v47;
      v48 = 0;
      sub_1AF41388C(v196, v195, 1, v201, v191 & 1, v41, &v210);

      a7 = v38;
    }

    else
    {

      v48 = 0;
    }

    v50 = v201 >> 59;
    if (((v201 >> 59) & 2) != 0)
    {
      v178 = 0;
      v167 = 0;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
    }

    else
    {
      (*(*a1 + 152))(v209, v49);
      v178 = v209[0];
      v167 = v209[1];
      v166 = v209[2];
      v165 = v209[3];
      v164 = v209[4];
      v163 = v209[5];
    }

    v168 = a1;
    v51 = *(a1 + 16);
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    v198 = a5;
    v193 = a10;
    v194 = a7;
    if (v52)
    {
      v200 = v50;
      v188 = 0;
      v210 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, v52, 0);
      v54 = 0;
      v55 = v210;
      v56 = *(v210 + 16);
      v57 = 16 * v56;
      do
      {
        v58 = *(v51 + v54 + 32);
        v59 = *(v51 + v54 + 40);
        v210 = v55;
        v60 = *(v55 + 24);
        v61 = v56 + 1;

        if (v56 >= v60 >> 1)
        {
          sub_1AFC05E2C(v60 > 1, v61, 1);
          v55 = v210;
        }

        *(v55 + 16) = v61;
        v62 = v55 + v57 + v54;
        *(v62 + 32) = v58;
        *(v62 + 40) = v59;
        v54 += 16;
        ++v56;
        --v52;
      }

      while (v52);

      v53 = v55;
      a5 = v198;
      v36 = v193;
      v48 = v188;
      LOBYTE(v50) = v200;
    }

    v63 = v36;
    v192 = a11;
    v64 = *(v53 + 16);
    v65 = v178;
    if (!v64)
    {
LABEL_103:

      sub_1AF441284(v65);
      sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v140 = v168;

        v142 = sub_1AF3D72E8(v141, v63);

        *(v140 + 16) = v142;
      }

      else
      {
        type metadata accessor for AuthoringNode();
        v140 = v168;
      }

      v143 = swift_allocObject();
      v144 = v196;
      v145 = v195;
      *(v143 + 16) = v196;
      *(v143 + 24) = v145;
      v146 = v190;

      v147 = v201;
      sub_1AF4410E4(v201, sub_1AF4410A8);

      v148 = swift_allocObject();
      *(v148 + 16) = 1;
      *(v148 + 24) = v147;
      *(v148 + 32) = v191 & 1;
      *(v148 + 40) = a5;
      *(v148 + 48) = v146;
      v149 = v194;
      *(v148 + 56) = v194;
      *(v148 + 64) = v144;
      v150 = v193;
      *(v148 + 72) = v145;
      *(v148 + 80) = v150;
      v151 = v192;
      *(v148 + 88) = v192;
      v152 = swift_allocObject();
      *(v152 + 16) = sub_1AF449D94;
      *(v152 + 24) = v148;
      *&v202 = v146;
      *(&v202 + 1) = v140;
      v203 = v149;
      v204 = sub_1AF449D98;
      v205 = v152;
      v206 = v151;

      sub_1AF449E08(&v202, &v207);
      if (!v48)
      {

        v31 = v207;
        v153 = v208;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF633DE0(v31, v153, v140);
        v154 = v193;
        if ((v155 & 0x100) != 0)
        {
          v156 = a5[1];
          v157 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v156;
          if ((v157 & 1) == 0)
          {
            v156 = sub_1AF422330(0, *(v156 + 2) + 1, 1, v156, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v156;
          }

          v159 = *(v156 + 2);
          v158 = *(v156 + 3);
          if (v159 >= v158 >> 1)
          {
            v156 = sub_1AF422330(v158 > 1, v159 + 1, 1, v156, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v156;
          }

          *(v156 + 2) = v159 + 1;
          *&v156[8 * v159 + 32] = v140;
        }

        v160 = swift_isUniquelyReferenced_nonNull_native();
        *&v202 = *v154;
        *v154 = 0x8000000000000000;
        sub_1AF850FDC(0, v140, v160);
        *v154 = v202;

        goto LABEL_114;
      }

LABEL_123:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_119:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_117:
        sub_1AF441284(v178);
      }
    }

    v66 = 0;
    v175 = v50 & 2;
    LODWORD(v200) = v175 | (v201 >> 2) & 1;
    v67 = v53 + 32;
    v172 = v178 + 32;
    v171 = (v177 + 16);
    v170 = v177 + 8;
    v169 = v177 + 32;
    v173 = v191 & 1;
    v189 = v53;
    v176 = v64;
    v174 = v53 + 32;
    while (1)
    {
      v197 = *(v67 + 16 * v66);
      if (!v197)
      {
        goto LABEL_30;
      }

      if (v65 && v66 < *(v65 + 16))
      {
        v69 = *(v172 + 8 * v66);
        sub_1AF4410A8(v69);
      }

      else
      {
        v69 = 0xA000000000000000;
      }

      if (v200)
      {
        if (v200 == 1)
        {
          v70 = sub_1AF9C5694(v69, v201 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v69);
          if (v70)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1AF441114(v69);
        }
      }

      else
      {
        v71 = sub_1AF9C5694(v69, v201);
        sub_1AF441114(v69);
        if (!v71)
        {
          goto LABEL_28;
        }
      }

      if (!*(*a5 + 16) || (sub_1AF0D3F10(v197), (v72 & 1) == 0))
      {
        v73 = v63;
        if (*(*v63 + 16))
        {
          v74 = v197;
          sub_1AF0D3F10(v197);
          v75 = MEMORY[0x1E69E7CC0];
          if (v76)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v75 = MEMORY[0x1E69E7CC0];
          v74 = v197;
        }

        v77 = swift_isUniquelyReferenced_nonNull_native();
        *&v202 = *v73;
        v78 = v202;
        *v73 = 0x8000000000000000;
        v79 = sub_1AF0D3F10(v74);
        v81 = v80;
        v82 = *(v78 + 16) + ((v80 & 1) == 0);
        if (*(v78 + 24) >= v82)
        {
          if (v77)
          {
            goto LABEL_53;
          }

          v85 = v48;
          v86 = v79;
          sub_1AF843F7C();
          v79 = v86;
          v48 = v85;
          v84 = v202;
          if ((v81 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_54:
          *(v84[7] + v79) = 1;
        }

        else
        {
          sub_1AF82BC4C(v82, v77);
          v79 = sub_1AF0D3F10(v74);
          if ((v81 & 1) != (v83 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_122:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_123;
          }

LABEL_53:
          v84 = v202;
          if (v81)
          {
            goto LABEL_54;
          }

LABEL_56:
          v84[(v79 >> 6) + 8] |= 1 << v79;
          *(v84[6] + 8 * v79) = v74;
          *(v84[7] + v79) = 1;
          ++v84[2];
        }

        *v73 = v84;

        v87 = sub_1AF96CD1C(v74);
        v187 = v66;
        if (v87)
        {
          v88 = *v171;
          v89 = v179;
          v90 = v181;
          (*v171)(v179, v74 + OBJC_IVAR____TtC3VFX4Node_authoringID, v181);
          v88(v180, v89, v90);
          v91 = v194;

          v92 = v91;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_1AF4276E0(0, v91[2] + 1, 1, v91, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v94 = v92[2];
          v93 = v92[3];
          if (v94 >= v93 >> 1)
          {
            v92 = sub_1AF4276E0(v93 > 1, v94 + 1, 1, v92, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v95 = v177;
          v96 = v181;
          (*(v177 + 8))(v179, v181);
          v92[2] = v94 + 1;
          (*(v95 + 32))(v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, v180, v96);
          *&v202 = sub_1AF439B40(v75);
          *(&v202 + 1) = v97;
          sub_1AF41388C(v196, v195, 1, v201, v191 & 1, v92, &v202);
          if (v48)
          {

            goto LABEL_117;
          }

          v74 = v197;
        }

        else
        {
        }

        v188 = v48;
        if (v175)
        {
          v99 = 0;
          v186 = 0;
          v185 = 0;
          v184 = 0;
          v183 = 0;
          v182 = 0;
        }

        else
        {
          (*(*v74 + 152))(&v210, v98);
          v99 = v210;
          v186 = v211;
          v185 = v212;
          v184 = v213;
          v183 = v214;
          v182 = v215;
        }

        v100 = *(v74 + 16);
        v101 = *(v100 + 16);
        v199 = v99;
        if (v101)
        {
          *&v202 = v75;

          sub_1AFC05E2C(0, v101, 0);
          v102 = 0;
          v103 = v202;
          v104 = *(v202 + 16);
          v105 = 16 * v104;
          do
          {
            v107 = *(v100 + v102 + 32);
            v106 = *(v100 + v102 + 40);
            *&v202 = v103;
            v108 = *(v103 + 24);
            v109 = v104 + 1;

            if (v104 >= v108 >> 1)
            {
              sub_1AFC05E2C(v108 > 1, v109, 1);
              v103 = v202;
            }

            *(v103 + 16) = v109;
            v110 = v103 + v105 + v102;
            *(v110 + 32) = v107;
            *(v110 + 40) = v106;
            v102 += 16;
            ++v104;
            --v101;
          }

          while (v101);

          v99 = v199;
        }

        else
        {
          v103 = v75;
        }

        v111 = *(v103 + 16);
        v48 = v188;
        if (v111)
        {
          v112 = 0;
          v113 = v99 + 32;
          v114 = 32;
          while (2)
          {
            v115 = *(v103 + v114);
            if (!v115)
            {
              goto LABEL_80;
            }

            if (v99 && v112 < *(v99 + 16))
            {
              v116 = *(v113 + 8 * v112);
              sub_1AF4410A8(v116);
            }

            else
            {
              v116 = 0xA000000000000000;
            }

            if (v200)
            {
              if (v200 == 1)
              {
                v117 = sub_1AF9C5694(v116, v201 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v116);
                if (v117)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                sub_1AF441114(v116);
              }

LABEL_78:
              sub_1AF3DFFC4(v115, 1, v201, v191 & 1, v194, v196, v195, v193, v198, v192);
              if (v48)
              {

                sub_1AF441284(v199);
                goto LABEL_117;
              }
            }

            else
            {
              v118 = sub_1AF9C5694(v116, v201);
              sub_1AF441114(v116);
              if (v118)
              {
                goto LABEL_78;
              }
            }

LABEL_79:
            v99 = v199;

LABEL_80:
            ++v112;
            v114 += 16;
            if (v111 == v112)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v99);
        sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
        type metadata accessor for Node();
        if (swift_dynamicCastMetatype())
        {
          v119 = v197;

          v121 = v193;
          v122 = sub_1AF3D72E8(v120, v193);

          *(v119 + 16) = v122;

          v123 = v194;
        }

        else
        {
          type metadata accessor for AuthoringNode();
          v121 = v193;
          v123 = v194;
          v119 = v197;
        }

        v124 = swift_allocObject();
        v125 = v196;
        v126 = v195;
        *(v124 + 16) = v196;
        *(v124 + 24) = v126;
        v127 = v190;

        v128 = v201;
        sub_1AF4410E4(v201, sub_1AF4410A8);

        v129 = swift_allocObject();
        *(v129 + 16) = 1;
        *(v129 + 24) = v128;
        *(v129 + 32) = v173;
        *(v129 + 40) = v198;
        *(v129 + 48) = v127;
        *(v129 + 56) = v123;
        *(v129 + 64) = v125;
        *(v129 + 72) = v126;
        *(v129 + 80) = v121;
        v63 = v121;
        v130 = v192;
        *(v129 + 88) = v192;
        v131 = swift_allocObject();
        *(v131 + 16) = sub_1AF449D94;
        *(v131 + 24) = v129;
        *&v202 = v127;
        *(&v202 + 1) = v119;
        v203 = v123;
        v204 = sub_1AF449D98;
        v205 = v131;
        v206 = v130;
        swift_bridgeObjectRetain_n();

        sub_1AF449E08(&v202, &v207);
        if (v48)
        {
          goto LABEL_119;
        }

        v132 = v207;
        v133 = v208;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v68 = v198;
        sub_1AF633DE0(v132, v133, v119);
        v64 = v176;
        v66 = v187;
        v67 = v174;
        if ((v134 & 0x100) != 0)
        {
          v135 = v68[1];
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v68[1] = v135;
          if ((v136 & 1) == 0)
          {
            v135 = sub_1AF422330(0, *(v135 + 2) + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v68[1] = v135;
          }

          v138 = *(v135 + 2);
          v137 = *(v135 + 3);
          if (v138 >= v137 >> 1)
          {
            v135 = sub_1AF422330(v137 > 1, v138 + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v68[1] = v135;
          }

          *(v135 + 2) = v138 + 1;
          v119 = v197;
          *&v135[8 * v138 + 32] = v197;
        }

        v139 = swift_isUniquelyReferenced_nonNull_native();
        *&v202 = *v63;
        *v63 = 0x8000000000000000;
        sub_1AF850FDC(0, v119, v139);
        *v63 = v202;

        v65 = v178;
        goto LABEL_29;
      }

LABEL_28:
      v68 = a5;
LABEL_29:

      a5 = v68;
LABEL_30:
      if (++v66 == v64)
      {
        goto LABEL_103;
      }
    }
  }

  v29 = sub_1AF0D3F10(a1);
  if ((v30 & 1) == 0)
  {

    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      v31 = *(*(v28 + 56) + 12 * v32);
LABEL_114:

      return v31;
    }

    goto LABEL_8;
  }

  return *(*(v28 + 56) + 12 * v29);
}

uint64_t sub_1AF407598(__objc2_class **a1, char a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v209 = a8;
  v212 = a6;
  v207 = a4;
  v214 = a3;
  v186 = sub_1AFDFC318();
  v15 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v16);
  v184 = v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v172 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v172 - v24;
  if ((a2 & 1) == 0)
  {
    goto LABEL_132;
  }

  v202 = a5;
  v26 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v33 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v34)
      {
        goto LABEL_132;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v222 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v222;

    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v37 = v36;
    v199 = type metadata accessor for Node();
    v38 = v207 & (v37 == v199);
    v39 = swift_allocObject();
    v179 = v39;
    *(v39 + 16) = a1;
    v178 = (v39 + 16);

    v180 = a1;
    v187 = v38;
    if (v38 == 1)
    {
      v40 = sub_1AF96FB80(1);
      v41 = v178;
      *v178 = v40;

      a1 = *v41;
    }

    v208 = a9;
    v42 = sub_1AF96CD1C(a1);
    v210 = a10;
    v197 = v37;
    v203 = v15;
    if (v42)
    {
      v43 = *(v15 + 16);
      v44 = a1 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v45 = v186;
      v43(v25, v44, v186);
      v43(v21, v25, v45);

      v46 = a7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1AF4276E0(0, a7[2] + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v48 = v46[2];
      v47 = v46[3];
      if (v48 >= v47 >> 1)
      {
        v46 = sub_1AF4276E0(v47 > 1, v48 + 1, 1, v46, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v49 = v186;
      (*(v15 + 8))(v25, v186);
      v46[2] = v48 + 1;
      (*(v15 + 32))(v46 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v48, v21, v49);
      v50 = 0;
      v51 = sub_1AF3FBEE4(v209, v208, 1, v214, v207 & 1, v46);
      v53 = v52;

      if (v197 == v199)
      {
        v55 = *(v53 + 16);
        if (v55)
        {
          v204 = 0;
          v221[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v56 = 32;
          v213 = xmmword_1AFE21110;
          do
          {
            v57 = v213;
            if (*(v51 + 16))
            {
              v58 = sub_1AF0D3F10(*(v53 + v56));
              v57 = v213;
              if (v59)
              {
                v211 = *(*(v51 + 56) + 16 * v58);

                v57 = v211;
              }
            }

            v222 = v57;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v56 += 8;
            --v55;
          }

          while (v55);

          v60 = v221[0];
          v33 = v210;
          v50 = v204;
        }

        else
        {

          v60 = MEMORY[0x1E69E7CC0];
        }

        v61 = *v178;
        type metadata accessor for Graph();
        v62 = swift_allocObject();
        *(v62 + 16) = v60;
        *(v61 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v62;
      }

      else
      {
      }

      v54 = v180;
      v37 = v197;
    }

    else
    {
      v50 = 0;
      v54 = v180;
    }

    v63 = v214 >> 59;
    if (((v214 >> 59) & 2) != 0)
    {
      v64 = 0;
      v177 = 0;
      v176 = 0;
      v175 = 0;
      v174 = 0;
      v173 = 0;
    }

    else
    {
      ((*v54)[3].info)(v221);
      v64 = v221[0];
      v177 = v221[1];
      v176 = v221[2];
      v175 = v221[3];
      v174 = v221[4];
      v173 = v221[5];
    }

    v65 = v54[2];
    cache = v65->cache;
    v67 = MEMORY[0x1E69E7CC0];
    v189 = v64;
    v205 = a7;
    if (cache)
    {
      *&v213 = v63;
      v204 = v50;
      *&v222 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v68 = 0;
      v69 = v222;
      v70 = *(v222 + 16);
      v71 = 16 * v70;
      do
      {
        v73 = *(&v65->info + v68);
        v72 = *(&v65[1].isa + v68);
        *&v222 = v69;
        v74 = *(v69 + 24);
        v75 = v70 + 1;

        if (v70 >= v74 >> 1)
        {
          sub_1AFC05E2C(v74 > 1, v75, 1);
          v69 = v222;
        }

        *(v69 + 16) = v75;
        v76 = v69 + v71 + v68;
        *(v76 + 32) = v73;
        *(v76 + 40) = v72;
        v68 += 16;
        ++v70;
        --cache;
      }

      while (cache);

      v33 = v210;
      a7 = v205;
      v37 = v197;
      v50 = v204;
      v67 = v69;
      v64 = v189;
      LOBYTE(v63) = v213;
    }

    v206 = a11;
    v77 = v202;
    v201 = *(v67 + 16);
    v172[1] = v67;
    if (!v201)
    {
      v204 = v50;
      v190 = v207 & 1;
LABEL_119:

      sub_1AF441284(v64);
      v157 = v179;
      sub_1AF3FC898(v179, v33, v77);
      v158 = swift_allocObject();
      v159 = v209;
      v160 = v208;
      *(v158 + 16) = v209;
      *(v158 + 24) = v160;
      v161 = v212;

      v162 = v214;
      sub_1AF4410E4(v214, sub_1AF4410A8);

      v163 = swift_allocObject();
      *(v163 + 16) = 1;
      *(v163 + 24) = v162;
      *(v163 + 32) = v190;
      *(v163 + 40) = v77;
      *(v163 + 48) = v161;
      *(v163 + 56) = a7;
      *(v163 + 64) = v159;
      *(v163 + 72) = v160;
      *(v163 + 80) = v33;
      v164 = v206;
      *(v163 + 88) = v206;
      v165 = swift_allocObject();
      *(v165 + 16) = sub_1AF449D84;
      *(v165 + 24) = v163;
      v166 = *(v157 + 16);
      *&v215 = v161;
      *(&v215 + 1) = v166;
      v216 = a7;
      v217 = sub_1AF449D88;
      v218 = v165;
      v219 = v164;

      v167 = v204;
      sub_1AF449DF0(&v215, &v220);
      if (!v167)
      {

        v168 = *(&v220 + 1);
        v29 = v220;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v169 = v180;
        sub_1AF3D8DAC(v29, v168, v180);
        if (v197 == v199)
        {
          v215 = __PAIR128__(v168, v29);

          swift_dynamicCast();
        }

        v170 = swift_isUniquelyReferenced_nonNull_native();
        *&v215 = *v33;
        *v33 = 0x8000000000000000;
        sub_1AF850FDC(0, v169, v170);
        *v33 = v215;

        goto LABEL_123;
      }

LABEL_133:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_129:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_126:

LABEL_127:
        sub_1AF441284(v189);
      }
    }

    v78 = v37;
    v79 = 0;
    v185 = v63 & 2;
    LODWORD(v213) = v185 | (v214 >> 2) & 1;
    v200 = v67 + 32;
    v183 = v64 + 32;
    v182 = (v203 + 16);
    v181 = (v203 + 8);
    v190 = v207 & 1;
    while (1)
    {
      *&v211 = *(v200 + 16 * v79);
      if (!v211)
      {
        goto LABEL_43;
      }

      v203 = v79;
      if (v64 && v79 < *(v64 + 16))
      {
        v80 = *(v183 + 8 * v79);
        sub_1AF4410A8(v80);
      }

      else
      {
        v80 = 0xA000000000000000;
      }

      if (v213)
      {
        if (v213 == 1)
        {
          v81 = sub_1AF9C5694(v80, v214 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v80);
          if (v81)
          {
            goto LABEL_42;
          }
        }

        else
        {
          sub_1AF441114(v80);
        }
      }

      else
      {
        v82 = sub_1AF9C5694(v80, v214);
        sub_1AF441114(v80);
        if (!v82)
        {
          goto LABEL_42;
        }
      }

      if (!*(*v77 + 16) || (sub_1AF0D3F10(v211), (v83 & 1) == 0))
      {
        if (*(*v33 + 16))
        {
          v84 = v211;
          sub_1AF0D3F10(v211);
          if (v85)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v84 = v211;
        }

        v86 = swift_isUniquelyReferenced_nonNull_native();
        *&v215 = *v33;
        v87 = v215;
        *v33 = 0x8000000000000000;
        v88 = sub_1AF0D3F10(v84);
        v90 = v89;
        v91 = *(v87 + 16) + ((v89 & 1) == 0);
        if (*(v87 + 24) >= v91)
        {
          if ((v86 & 1) == 0)
          {
            v154 = v50;
            v155 = v88;
            sub_1AF843F7C();
            v88 = v155;
            v50 = v154;
          }
        }

        else
        {
          sub_1AF82BC4C(v91, v86);
          v88 = sub_1AF0D3F10(v84);
          if ((v90 & 1) != (v92 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_132:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_133;
          }
        }

        v93 = v215;
        if (v90)
        {
          *(*(v215 + 56) + v88) = 1;
        }

        else
        {
          *(v215 + 8 * (v88 >> 6) + 64) |= 1 << v88;
          *(v93[6] + 8 * v88) = v84;
          *(v93[7] + v88) = 1;
          ++v93[2];
        }

        *v33 = v93;

        v94 = swift_allocObject();
        v198 = v94;
        *(v94 + 16) = v84;
        v95 = (v94 + 16);

        v96 = v84;
        if (v187)
        {
          *v95 = sub_1AF96FB80(1);

          v96 = *v95;
        }

        v191 = v95;
        v97 = sub_1AF96CD1C(v96);
        v98 = MEMORY[0x1E69E7CC0];
        if (v97)
        {
          v99 = v184;
          v100 = v186;
          (*v182)(v184, v96 + OBJC_IVAR____TtC3VFX4Node_authoringID, v186);
          v101 = sub_1AF3D88AC(v99, a7);
          (*v181)(v99, v100);
          v102 = sub_1AF3FBEE4(v209, v208, 1, v214, v207 & 1, v101);
          if (v50)
          {

            goto LABEL_127;
          }

          v104 = v102;
          v105 = v103;

          if (v78 == v199)
          {
            v106 = sub_1AF3D83F4(v104, v105);

            v107 = *v191;
            type metadata accessor for Graph();
            v108 = swift_allocObject();
            *(v108 + 16) = v106;
            *(v107 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v108;
          }

          else
          {
          }

          v77 = v202;
        }

        v204 = v50;
        if (v185)
        {
          v109 = 0;
          v196 = 0;
          v195 = 0;
          v194 = 0;
          v193 = 0;
          v192 = 0;
        }

        else
        {
          ((*v84)[3].info)(&v222);
          v196 = *(&v222 + 1);
          v109 = v222;
          v195 = v223;
          v194 = v224;
          v193 = v225;
          v192 = v226;
        }

        v110 = v84[2];
        v111 = v110->cache;
        if (!v111)
        {
          v113 = v98;
          v50 = v204;
          v121 = *(v98 + 16);
          if (v121)
          {
            goto LABEL_89;
          }

          goto LABEL_106;
        }

        v188 = v109;
        *&v215 = v98;

        sub_1AFC05E2C(0, v111, 0);
        v112 = 0;
        v113 = v215;
        v114 = *(v215 + 16);
        v115 = 16 * v114;
        do
        {
          v116 = *(&v110->info + v112);
          v117 = *(&v110[1].isa + v112);
          *&v215 = v113;
          v118 = *(v113 + 24);
          v119 = v114 + 1;

          if (v114 >= v118 >> 1)
          {
            sub_1AFC05E2C(v118 > 1, v119, 1);
            v113 = v215;
          }

          *(v113 + 16) = v119;
          v120 = v113 + v115 + v112;
          *(v120 + 32) = v116;
          *(v120 + 40) = v117;
          v112 += 16;
          ++v114;
          --v111;
        }

        while (v111);

        v77 = v202;
        v50 = v204;
        v109 = v188;
        v121 = *(v113 + 16);
        if (!v121)
        {
LABEL_106:

          sub_1AF441284(v109);
          v128 = v198;
          v129 = v210;
          sub_1AF3FC898(v198, v210, v77);
          v130 = swift_allocObject();
          v131 = v209;
          v132 = v208;
          *(v130 + 16) = v209;
          *(v130 + 24) = v132;
          v133 = v77;
          v134 = v212;

          v135 = v214;
          sub_1AF4410E4(v214, sub_1AF4410A8);

          v136 = swift_allocObject();
          *(v136 + 16) = 1;
          *(v136 + 24) = v135;
          *(v136 + 32) = v190;
          *(v136 + 40) = v133;
          *(v136 + 48) = v134;
          a7 = v205;
          *(v136 + 56) = v205;
          *(v136 + 64) = v131;
          *(v136 + 72) = v132;
          *(v136 + 80) = v129;
          v137 = v206;
          *(v136 + 88) = v206;
          v138 = swift_allocObject();
          *(v138 + 16) = sub_1AF449D84;
          *(v138 + 24) = v136;
          v139 = *(v128 + 16);
          *&v215 = v134;
          *(&v215 + 1) = v139;
          v216 = a7;
          v217 = sub_1AF449D88;
          v218 = v138;
          v219 = v137;
          swift_bridgeObjectRetain_n();

          sub_1AF449DF0(&v215, &v220);
          v140 = v202;
          if (v50)
          {
            goto LABEL_129;
          }

          v141 = v220;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          swift_bridgeObjectRetain_n();
          v142 = sub_1AF633F0C(v141, *(&v141 + 1), v211);
          if (v143 == 1)
          {
            v144 = v140[1];
            v145 = swift_isUniquelyReferenced_nonNull_native();
            v140[1] = v144;
            v146 = v197;
            if ((v145 & 1) == 0)
            {
              v144 = sub_1AF422330(0, *(v144 + 2) + 1, 1, v144, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v202[1] = v144;
            }

            v148 = *(v144 + 2);
            v147 = *(v144 + 3);
            v33 = v210;
            if (v148 >= v147 >> 1)
            {
              v156 = sub_1AF422330(v147 > 1, v148 + 1, 1, v144, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v202[1] = v156;
            }

            v149 = v202[1];
            *(v149 + 16) = v148 + 1;
            *(v149 + 8 * v148 + 32) = v211;
            v150 = v199;
            v50 = 0;
          }

          else
          {
            v151 = v142;
            v152 = v143;

            sub_1AF447EB0(v151, v152);
            v146 = v197;
            v150 = v199;
            v33 = v210;
          }

          v78 = v146;
          v64 = v189;
          if (v146 == v150)
          {
            v215 = v141;

            swift_dynamicCast();
          }

          v153 = swift_isUniquelyReferenced_nonNull_native();
          *&v215 = *v33;
          *v33 = 0x8000000000000000;
          sub_1AF850FDC(0, v211, v153);
          *v33 = v215;

          v77 = v202;
          goto LABEL_42;
        }

LABEL_89:
        v122 = 0;
        v204 = v109 + 32;
        v123 = 32;
        while (2)
        {
          v124 = *(v113 + v123);
          if (v124)
          {
            if (v109 && v122 < *(v109 + 16))
            {
              v125 = *(v204 + 8 * v122);
              sub_1AF4410A8(v125);
            }

            else
            {
              v125 = 0xA000000000000000;
            }

            if (v213)
            {
              if (v213 != 1)
              {
                sub_1AF441114(v125);
                goto LABEL_104;
              }

              v126 = sub_1AF9C5694(v125, v214 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v125);
              if (!v126)
              {
LABEL_104:
                sub_1AF3E1430(v124, 1, v214, v207 & 1, v205, v209, v208, v210, v77, v206);
                if (v50)
                {

                  sub_1AF441284(v109);
                  goto LABEL_126;
                }

                goto LABEL_91;
              }
            }

            else
            {
              v127 = sub_1AF9C5694(v125, v214);
              sub_1AF441114(v125);
              if (v127)
              {
                goto LABEL_104;
              }
            }
          }

LABEL_91:
          ++v122;
          v123 += 16;
          if (v121 == v122)
          {
            goto LABEL_106;
          }

          continue;
        }
      }

LABEL_42:

      v79 = v203;
LABEL_43:
      if (++v79 == v201)
      {
        v204 = v50;
        goto LABEL_119;
      }
    }
  }

  v27 = sub_1AF0D3F10(a1);
  if ((v28 & 1) == 0)
  {
    v30 = *(v26 + 16);

    if (v30)
    {
      v31 = sub_1AF0D3F10(a1);
      if (v32)
      {
        v29 = *(*(v26 + 56) + 16 * v31);

LABEL_123:

        return v29;
      }
    }

    goto LABEL_9;
  }

  v29 = *(*(v26 + 56) + 16 * v27);

  return v29;
}

uint64_t sub_1AF408FA0(__objc2_class **a1, char a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v161 = a8;
  v156 = a4;
  v166 = a3;
  v149 = sub_1AFDFC318();
  v16 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v17);
  v143 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v133 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v133 - v25;
  if ((a2 & 1) == 0)
  {
    goto LABEL_95;
  }

  v27 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v158 = a10;
    if (!*(*a10 + 16))
    {
      v35 = v158;
      goto LABEL_13;
    }

    sub_1AF0D3F10(a1);
    if ((v34 & 1) == 0)
    {
      v35 = v158;
LABEL_13:
      v159 = a9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = *v35;
      *v35 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *v35 = v174;

      v37 = sub_1AF96D010(a1);
      v164 = a5;
      v160 = a7;
      v139 = a1;
      v163 = v16;
      if (v37)
      {
        v38 = a6;
        v39 = a1;
        v40 = *(v16 + 16);
        v41 = v149;
        v40(v26, v39 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v149);
        v40(v22, v26, v41);
        v42 = v160;

        v43 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AF4276E0(0, v42[2] + 1, 1, v42, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1AF4276E0(v44 > 1, v45 + 1, 1, v43, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        a6 = v38;
        v46 = v26;
        v47 = v149;
        (*(v16 + 8))(v46, v149);
        v43[2] = v45 + 1;
        (*(v16 + 32))(v43 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v45, v22, v47);
        v174 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
        v175 = v48;
        sub_1AF41420C(v161, v159, 1, v166, v156 & 1, v43, &v174);

        a1 = v139;
        a5 = v164;
      }

      else
      {
      }

      v50 = a5;
      v51 = v166 >> 59;
      if (((v166 >> 59) & 2) != 0)
      {
        v52 = 0;
        v138 = 0;
        v137 = 0;
        v136 = 0;
        v135 = 0;
        v134 = 0;
      }

      else
      {
        ((*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v173, v49);
        v52 = v173[0];
        v138 = v173[1];
        v137 = v173[2];
        v136 = v173[3];
        v135 = v173[4];
        v134 = v173[5];
      }

      v157 = a11;
      v53 = sub_1AF97228C();
      v54 = *(v53 + 16);
      v162 = a6;
      v133[1] = v53;
      if (!v54)
      {
        v57 = v158;
LABEL_88:
        v115 = v160;

        sub_1AF441284(v52);
        sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
        type metadata accessor for Node();
        type metadata accessor for AuthoringNode();
        if (swift_dynamicCastMetatype())
        {
          v116 = v162;
          v117 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v118 = v139;

          v120 = sub_1AF3D6B1C(v119, v57, v50, sub_1AF3FDCB4);

          *(v118 + v117) = v120;
        }

        else
        {
          v116 = v162;
          v118 = v139;
        }

        v121 = swift_allocObject();
        v122 = v161;
        v123 = v159;
        *(v121 + 16) = v161;
        *(v121 + 24) = v123;

        v124 = v166;
        sub_1AF4410E4(v166, sub_1AF4410A8);

        v125 = swift_allocObject();
        *(v125 + 16) = 1;
        *(v125 + 24) = v124;
        *(v125 + 32) = v156 & 1;
        *(v125 + 40) = v50;
        *(v125 + 48) = v116;
        *(v125 + 56) = v115;
        *(v125 + 64) = v122;
        *(v125 + 72) = v123;
        v126 = v116;
        v127 = v158;
        v128 = v157;
        *(v125 + 80) = v158;
        *(v125 + 88) = v128;
        v129 = swift_allocObject();
        *(v129 + 16) = sub_1AF449DA0;
        *(v129 + 24) = v125;
        *&v167 = v126;
        *(&v167 + 1) = v118;
        v168 = v115;
        v169 = sub_1AF449D48;
        v170 = v129;
        v171 = v128;

        sub_1AF449DC0(&v167, &v172);

        v30 = v172;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF3D9030(v130, v118, sub_1AF634138, sub_1AF449DA4, sub_1AF6B761C, sub_1AF849C40);
        v131 = swift_isUniquelyReferenced_nonNull_native();
        *&v167 = *v127;
        *v127 = 0x8000000000000000;
        sub_1AF850FDC(0, v118, v131);
        *v127 = v167;

        goto LABEL_92;
      }

      v55 = 0;
      v146 = v51 & 2;
      v165 = v146 | (v166 >> 2) & 1;
      v56 = v53 + 32;
      v142 = v52 + 32;
      v141 = (v163 + 16);
      v140 = (v163 + 8);
      v144 = v156 & 1;
      v57 = v158;
      v145 = v53 + 32;
      v148 = v52;
      v147 = v54;
      while (1)
      {
        v163 = *(v56 + 16 * v55);
        if (!v163)
        {
          goto LABEL_26;
        }

        if (v52 && v55 < *(v52 + 16))
        {
          v58 = *(v142 + 8 * v55);
          sub_1AF4410A8(v58);
        }

        else
        {
          v58 = 0xA000000000000000;
        }

        if (v165)
        {
          if (v165 == 1)
          {
            v59 = sub_1AF9C5694(v58, v166 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v58);
            if (v59)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_1AF441114(v58);
          }
        }

        else
        {
          v60 = sub_1AF9C5694(v58, v166);
          sub_1AF441114(v58);
          if (!v60)
          {
            goto LABEL_25;
          }
        }

        if (!*(*v50 + 16) || (sub_1AF0D3F10(v163), (v61 & 1) == 0))
        {
          if (*(*v57 + 16))
          {
            v62 = v163;
            sub_1AF0D3F10(v163);
            if (v63)
            {
              break;
            }
          }

          else
          {
            v62 = v163;
          }

          v64 = swift_isUniquelyReferenced_nonNull_native();
          *&v167 = *v57;
          v65 = v167;
          *v57 = 0x8000000000000000;
          v66 = sub_1AF0D3F10(v62);
          v68 = v67;
          v69 = *(v65 + 16) + ((v67 & 1) == 0);
          if (*(v65 + 24) >= v69)
          {
            if (v64)
            {
              goto LABEL_49;
            }

            v72 = v66;
            sub_1AF843F7C();
            v66 = v72;
            v71 = v167;
            if ((v68 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_50:
            *(v71[7] + v66) = 1;
          }

          else
          {
            sub_1AF82BC4C(v69, v64);
            v66 = sub_1AF0D3F10(v62);
            if ((v68 & 1) != (v70 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }

LABEL_49:
            v71 = v167;
            if (v68)
            {
              goto LABEL_50;
            }

LABEL_52:
            v71[(v66 >> 6) + 8] |= 1 << v66;
            *(v71[6] + 8 * v66) = v62;
            *(v71[7] + v66) = 1;
            ++v71[2];
          }

          *v57 = v71;

          if (sub_1AF96D010(v62))
          {
            v73 = v143;
            v74 = v149;
            (*v141)(v143, v62 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v149);

            v75 = sub_1AF3D88AC(v73, v160);
            (*v140)(v73, v74);
            *&v167 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
            *(&v167 + 1) = v76;
            sub_1AF41420C(v161, v159, 1, v166, v156 & 1, v75, &v167);
          }

          else
          {
          }

          if (v146)
          {
            v79 = 0;
            v154 = 0;
            v153 = 0;
            v152 = 0;
            v151 = 0;
            v150 = 0;
          }

          else
          {
            info = (*(v62 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info;

            (info)(&v174, v78);
            v79 = v174;
            v154 = v175;
            v153 = v176;
            v152 = v177;
            v151 = v178;
            v150 = v179;
          }

          v80 = sub_1AF97228C();
          v81 = *(v80 + 16);
          if (v81)
          {
            v82 = 0;
            v155 = v79 + 32;
            v83 = 32;
            while (2)
            {
              v84 = *(v80 + v83);
              if (!v84)
              {
                goto LABEL_62;
              }

              if (v79 && v82 < *(v79 + 16))
              {
                v85 = *(v155 + 8 * v82);
                sub_1AF4410A8(v85);
              }

              else
              {
                v85 = 0xA000000000000000;
              }

              if (v165)
              {
                if (v165 != 1)
                {
                  sub_1AF441114(v85);
                  goto LABEL_75;
                }

                v86 = sub_1AF9C5694(v85, v166 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v85);
                if (!v86)
                {
LABEL_75:
                  sub_1AF3E2468(v84, 1, v166, v156 & 1, v160, v161, v159, v158, v164, v157);
                }
              }

              else
              {
                v87 = sub_1AF9C5694(v85, v166);
                sub_1AF441114(v85);
                if (v87)
                {
                  goto LABEL_75;
                }
              }

LABEL_62:
              ++v82;
              v83 += 16;
              if (v81 == v82)
              {
                break;
              }

              continue;
            }
          }

          v155 = v55;

          sub_1AF441284(v79);
          sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
          type metadata accessor for Node();
          type metadata accessor for AuthoringNode();
          if (swift_dynamicCastMetatype())
          {
            v88 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
            v89 = v163;

            v91 = v158;
            v92 = sub_1AF3D6B1C(v90, v158, v164, sub_1AF3FDCB4);

            *(v89 + v88) = v92;

            v93 = v162;
            v94 = v160;
          }

          else
          {
            v93 = v162;
            v91 = v158;
            v94 = v160;
            v89 = v163;
          }

          v95 = swift_allocObject();
          v96 = v161;
          v97 = v159;
          *(v95 + 16) = v161;
          *(v95 + 24) = v97;

          v98 = v166;
          sub_1AF4410E4(v166, sub_1AF4410A8);

          v99 = swift_allocObject();
          *(v99 + 16) = 1;
          *(v99 + 24) = v98;
          *(v99 + 32) = v144;
          *(v99 + 40) = v164;
          *(v99 + 48) = v93;
          *(v99 + 56) = v94;
          *(v99 + 64) = v96;
          *(v99 + 72) = v97;
          *(v99 + 80) = v91;
          v57 = v91;
          v100 = v157;
          *(v99 + 88) = v157;
          v101 = swift_allocObject();
          *(v101 + 16) = sub_1AF449DA0;
          *(v101 + 24) = v99;
          *&v167 = v93;
          *(&v167 + 1) = v89;
          v168 = v94;
          v169 = sub_1AF449D48;
          v170 = v101;
          v171 = v100;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v167, &v172);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v102 = swift_retain_n();
          v103 = v164;
          v104 = sub_1AF634138(v102, v89);
          v105 = v103;
          if (v104 == 1)
          {
            v106 = *(v103 + 8);
            v107 = swift_isUniquelyReferenced_nonNull_native();
            v50 = v105;
            *(v105 + 8) = v106;
            v52 = v148;
            v54 = v147;
            if ((v107 & 1) == 0)
            {
              v106 = sub_1AF422330(0, *(v106 + 2) + 1, 1, v106, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              *(v105 + 8) = v106;
            }

            v109 = *(v106 + 2);
            v108 = *(v106 + 3);
            if (v109 >= v108 >> 1)
            {
              *(v105 + 8) = sub_1AF422330(v108 > 1, v109 + 1, 1, v106, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            }

            v110 = *(v105 + 8);
            *(v110 + 16) = v109 + 1;
            v111 = v110 + 8 * v109;
            v112 = v163;
            *(v111 + 32) = v163;
            v56 = v145;
          }

          else
          {
            v50 = v103;
            v113 = v104;

            sub_1AF0DB74C(v113);
            v52 = v148;
            v54 = v147;
            v56 = v145;
            v112 = v163;
          }

          v114 = swift_isUniquelyReferenced_nonNull_native();
          *&v167 = *v91;
          *v91 = 0x8000000000000000;
          sub_1AF850FDC(0, v112, v114);
          *v91 = v167;

          v55 = v155;
        }

LABEL_25:

LABEL_26:
        if (++v55 == v54)
        {
          goto LABEL_88;
        }
      }
    }

LABEL_95:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v148);
    }
  }

  v28 = sub_1AF0D3F10(a1);
  if ((v29 & 1) == 0)
  {
    v31 = *(v27 + 16);

    if (v31)
    {
      v32 = sub_1AF0D3F10(a1);
      if (v33)
      {
        v30 = *(*(v27 + 56) + 8 * v32);

LABEL_92:

        return v30;
      }
    }

    goto LABEL_9;
  }

  v30 = *(*(v27 + 56) + 8 * v28);

  return v30;
}

uint64_t sub_1AF40A514(__objc2_class **a1, char a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v198 = a8;
  v190 = a6;
  v199 = a4;
  v203 = a3;
  v179 = sub_1AFDFC318();
  v201 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v15);
  v176 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v165 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v165 - v23;
  if ((a2 & 1) == 0)
  {
    goto LABEL_131;
  }

  v25 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v32 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v33)
      {
        goto LABEL_131;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v211[0] = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v211[0];

    v35 = a1;
    if (v199)
    {
      v35 = sub_1AF96FB80(1);
    }

    v197 = a9;
    v36 = sub_1AF96CD1C(v35);
    v200 = a5;
    v195 = a10;
    v196 = a7;
    v172 = v35;
    if (v36)
    {
      v37 = a1;
      v38 = v201;
      v39 = *(v201 + 16);
      v40 = v35 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v41 = v179;
      v39(v24, v40, v179);
      v39(v20, v24, v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a7 = sub_1AF4276E0(0, v196[2] + 1, 1, v196, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v43 = a7[2];
      v42 = a7[3];
      if (v43 >= v42 >> 1)
      {
        a7 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v44 = v24;
      v45 = v179;
      (*(v38 + 8))(v44, v179);
      a7[2] = v43 + 1;
      (*(v38 + 32))(a7 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, v20, v45);
      v46 = sub_1AF3FC1C0(v198, v197, 1, v203, v199 & 1, a7);
      v48 = v47;

      v49 = *(v48 + 16);
      if (v49)
      {
        v211[0] = MEMORY[0x1E69E7CC0];
        sub_1AFDFE368();
        v50 = 32;
        do
        {
          if (*(v46 + 16))
          {
            sub_1AF0D3F10(*(v48 + v50));
            if (v51)
            {
            }
          }

          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v50 += 8;
          --v49;
        }

        while (v49);

        v52 = v211[0];
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for Graph();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v172 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v53;

      a1 = v37;
      a5 = v200;
      v32 = v195;
    }

    v54 = v203 >> 59;
    v193 = 0;
    if (((v203 >> 59) & 2) != 0)
    {
      v55 = 0;
      v170 = 0;
      v169 = 0;
      v168 = 0;
      v167 = 0;
      v166 = 0;
    }

    else
    {
      ((*a1)[3].info)(v210);
      v55 = v210[0];
      v170 = v210[1];
      v169 = v210[2];
      v168 = v210[3];
      v167 = v210[4];
      v166 = v210[5];
    }

    v171 = a1;
    v56 = a1[2];
    cache = v56->cache;
    v58 = MEMORY[0x1E69E7CC0];
    v181 = v55;
    if (cache)
    {
      v202 = v54;
      v211[0] = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v59 = 0;
      v54 = v211[0];
      v60 = *(v211[0] + 16);
      v61 = 16 * v60;
      do
      {
        v62 = *(&v56->info + v59);
        v63 = *(&v56[1].isa + v59);
        v211[0] = v54;
        v64 = *(v54 + 24);
        v65 = v60 + 1;

        if (v60 >= v64 >> 1)
        {
          sub_1AFC05E2C(v64 > 1, v65, 1);
          v54 = v211[0];
        }

        *(v54 + 16) = v65;
        v66 = v54 + v61 + v59;
        *(v66 + 32) = v62;
        *(v66 + 40) = v63;
        v59 += 16;
        ++v60;
        --cache;
      }

      while (cache);

      v58 = v54;
      a5 = v200;
      v32 = v195;
      v55 = v181;
      v67 = v193;
      LOBYTE(v54) = v202;
    }

    else
    {
      v67 = v193;
    }

    v194 = a11;
    v68 = *(v58 + 16);
    if (!v68)
    {
      v180 = v199 & 1;
LABEL_121:

      sub_1AF441284(v55);
      v149 = v172;

      v151 = sub_1AF3D76CC(v150, v32, a5);

      v149[2] = v151;

      v152 = swift_allocObject();
      v153 = v198;
      v154 = v197;
      *(v152 + 16) = v198;
      *(v152 + 24) = v154;
      v155 = v190;

      v156 = v203;
      sub_1AF4410E4(v203, sub_1AF4410A8);

      v157 = swift_allocObject();
      *(v157 + 16) = 1;
      *(v157 + 24) = v156;
      *(v157 + 32) = v180;
      *(v157 + 40) = a5;
      *(v157 + 48) = v155;
      v158 = v196;
      *(v157 + 56) = v196;
      *(v157 + 64) = v153;
      *(v157 + 72) = v154;
      *(v157 + 80) = v32;
      v159 = v194;
      *(v157 + 88) = v194;
      v160 = swift_allocObject();
      *(v160 + 16) = sub_1AF449D80;
      *(v160 + 24) = v157;
      *&v204 = v155;
      *(&v204 + 1) = v149;
      v205 = v158;
      v206 = sub_1AF449D48;
      v207 = v160;
      v208 = v159;

      sub_1AF449DC0(&v204, &v209);
      if (!v67)
      {

        v28 = v209;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v162 = v171;
        sub_1AF3D8F00(v161, v171, sub_1AF634178, sub_1AF6B761C, sub_1AF849498);

        v163 = swift_isUniquelyReferenced_nonNull_native();
        *&v204 = *v32;
        *v32 = 0x8000000000000000;
        sub_1AF850FDC(0, v162, v163);
        *v32 = v204;

        goto LABEL_123;
      }

LABEL_132:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_128:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_126:
        sub_1AF441284(v181);
      }
    }

    v193 = v67;
    v69 = 0;
    v177 = v54 & 2;
    LODWORD(v202) = v177 | (v203 >> 2) & 1;
    v191 = v58 + 32;
    v175 = v55 + 32;
    v174 = (v201 + 16);
    v173 = (v201 + 8);
    v188 = v58;
    v180 = v199 & 1;
    v178 = v68;
    while (1)
    {
      v71 = *(v191 + 16 * v69);
      if (!v71)
      {
        goto LABEL_43;
      }

      if (v55 && v69 < *(v55 + 16))
      {
        v72 = *(v175 + 8 * v69);
        sub_1AF4410A8(v72);
      }

      else
      {
        v72 = 0xA000000000000000;
      }

      if (v202)
      {
        if (v202 == 1)
        {
          v73 = sub_1AF9C5694(v72, v203 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v72);
          if (v73)
          {
            goto LABEL_42;
          }
        }

        else
        {
          sub_1AF441114(v72);
        }
      }

      else
      {
        v74 = sub_1AF9C5694(v72, v203);
        sub_1AF441114(v72);
        if (!v74)
        {
          goto LABEL_42;
        }
      }

      if (!*(*a5 + 16) || (sub_1AF0D3F10(v71), (v75 & 1) == 0))
      {
        if (*(*v32 + 16))
        {
          sub_1AF0D3F10(v71);
          v76 = v193;
          if (v77)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v76 = v193;
        }

        v78 = swift_isUniquelyReferenced_nonNull_native();
        *&v204 = *v32;
        v79 = v204;
        *v32 = 0x8000000000000000;
        v80 = sub_1AF0D3F10(v71);
        v82 = v81;
        v83 = *(v79 + 16) + ((v81 & 1) == 0);
        if (*(v79 + 24) >= v83)
        {
          if (v78)
          {
            goto LABEL_66;
          }

          v86 = v76;
          v87 = v80;
          sub_1AF843F7C();
          v80 = v87;
          v76 = v86;
          v85 = v204;
          if ((v82 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_67:
          *(v85[7] + v80) = 1;
        }

        else
        {
          sub_1AF82BC4C(v83, v78);
          v80 = sub_1AF0D3F10(v71);
          if ((v82 & 1) != (v84 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_131:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_132;
          }

LABEL_66:
          v85 = v204;
          if (v82)
          {
            goto LABEL_67;
          }

LABEL_69:
          v85[(v80 >> 6) + 8] |= 1 << v80;
          *(v85[6] + 8 * v80) = v71;
          *(v85[7] + v80) = 1;
          ++v85[2];
        }

        *v32 = v85;

        v88 = v71;
        if (v199)
        {
          v88 = sub_1AF96FB80(1);
        }

        v89 = sub_1AF96CD1C(v88);
        v189 = v71;
        v192 = v88;
        v187 = v69;
        if (v89)
        {
          v90 = v176;
          v91 = v179;
          (*v174)(v176, v88 + OBJC_IVAR____TtC3VFX4Node_authoringID, v179);
          v92 = sub_1AF3D88AC(v90, v196);
          (*v173)(v90, v91);
          v93 = sub_1AF3FC1C0(v198, v197, 1, v203, v199 & 1, v92);
          if (v76)
          {

            goto LABEL_126;
          }

          v95 = v93;
          v96 = v94;

          v97 = *(v96 + 16);
          v98 = MEMORY[0x1E69E7CC0];
          if (v97)
          {
            *&v204 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v99 = (v96 + 32);
            do
            {
              if (*(v95 + 16))
              {
                sub_1AF0D3F10(*v99);
                if (v100)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              ++v99;
              --v97;
            }

            while (v97);

            v101 = v204;
          }

          else
          {

            v101 = v98;
          }

          type metadata accessor for Graph();
          v102 = swift_allocObject();
          *(v102 + 16) = v101;
          *(v192 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v102;

          v71 = v189;
        }

        else
        {
          v98 = MEMORY[0x1E69E7CC0];
        }

        v103 = v190;
        v193 = v76;
        if (v177)
        {
          v104 = 0;
          v186 = 0;
          v185 = 0;
          v184 = 0;
          v183 = 0;
          v182 = 0;
        }

        else
        {
          ((*v71)[3].info)(v211);
          v104 = v211[0];
          v186 = v211[1];
          v185 = v211[2];
          v184 = v211[3];
          v183 = v211[4];
          v182 = v211[5];
        }

        v105 = v71[2];
        v106 = v105->cache;
        v201 = v104;
        if (v106)
        {
          *&v204 = v98;

          sub_1AFC05E2C(0, v106, 0);
          v107 = 0;
          v108 = v204;
          v109 = *(v204 + 16);
          v110 = 16 * v109;
          do
          {
            v112 = *(&v105->info + v107);
            v111 = *(&v105[1].isa + v107);
            *&v204 = v108;
            v113 = *(v108 + 24);
            v114 = v109 + 1;

            if (v109 >= v113 >> 1)
            {
              sub_1AFC05E2C(v113 > 1, v114, 1);
              v108 = v204;
            }

            *(v108 + 16) = v114;
            v115 = v108 + v110 + v107;
            *(v115 + 32) = v112;
            *(v115 + 40) = v111;
            v107 += 16;
            ++v109;
            --v106;
          }

          while (v106);

          v103 = v190;
          v104 = v201;
        }

        else
        {
          v108 = v98;
        }

        v116 = *(v108 + 16);
        v117 = v193;
        if (v116)
        {
          v118 = 0;
          v119 = v104 + 32;
          v120 = 32;
          while (2)
          {
            v121 = *(v108 + v120);
            if (!v121)
            {
              goto LABEL_97;
            }

            if (v104 && v118 < *(v104 + 16))
            {
              v122 = *(v119 + 8 * v118);
              sub_1AF4410A8(v122);
            }

            else
            {
              v122 = 0xA000000000000000;
            }

            if (v202)
            {
              if (v202 != 1)
              {
                sub_1AF441114(v122);
                goto LABEL_110;
              }

              v123 = sub_1AF9C5694(v122, v203 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v122);
              if (!v123)
              {
LABEL_110:
                sub_1AF3E3638(v121, 1, v203, v199 & 1, v196, v198, v197, v195, v200, v194);
                if (v117)
                {

                  sub_1AF441284(v201);
                  goto LABEL_126;
                }
              }
            }

            else
            {
              v124 = sub_1AF9C5694(v122, v203);
              sub_1AF441114(v122);
              if (v124)
              {
                goto LABEL_110;
              }
            }

            v104 = v201;
LABEL_97:
            ++v118;
            v120 += 16;
            if (v116 == v118)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v104);
        v125 = v103;
        v126 = v192;

        v128 = v195;
        v129 = v200;
        v130 = sub_1AF3D76CC(v127, v195, v200);

        v126[2] = v130;

        v131 = swift_allocObject();
        v132 = v198;
        v133 = v197;
        *(v131 + 16) = v198;
        *(v131 + 24) = v133;

        v134 = v203;
        sub_1AF4410E4(v203, sub_1AF4410A8);

        v135 = swift_allocObject();
        *(v135 + 16) = 1;
        *(v135 + 24) = v134;
        *(v135 + 32) = v180;
        *(v135 + 40) = v129;
        *(v135 + 48) = v125;
        v136 = v196;
        *(v135 + 56) = v196;
        *(v135 + 64) = v132;
        *(v135 + 72) = v133;
        *(v135 + 80) = v128;
        v137 = v128;
        v138 = v194;
        *(v135 + 88) = v194;
        v139 = swift_allocObject();
        *(v139 + 16) = sub_1AF449D80;
        *(v139 + 24) = v135;
        *&v204 = v125;
        *(&v204 + 1) = v126;
        v205 = v136;
        v206 = sub_1AF449D48;
        v207 = v139;
        v208 = v138;
        swift_bridgeObjectRetain_n();

        sub_1AF449DC0(&v204, &v209);
        v193 = v117;
        if (v117)
        {
          goto LABEL_128;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v140 = swift_retain_n();
        v141 = v189;
        a5 = v200;
        v142 = sub_1AF634178(v140, v189);
        v55 = v181;
        if (v142)
        {

          v68 = v178;
          v69 = v187;
          v32 = v137;
        }

        else
        {
          v143 = a5[1];
          v144 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v143;
          v68 = v178;
          v69 = v187;
          v32 = v137;
          if ((v144 & 1) == 0)
          {
            v143 = sub_1AF422330(0, *(v143 + 2) + 1, 1, v143, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v143;
          }

          v146 = *(v143 + 2);
          v145 = *(v143 + 3);
          if (v146 >= v145 >> 1)
          {
            a5[1] = sub_1AF422330(v145 > 1, v146 + 1, 1, v143, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          v147 = a5[1];
          *(v147 + 16) = v146 + 1;
          v148 = v147 + 8 * v146;
          v141 = v189;
          *(v148 + 32) = v189;
          v55 = v181;
        }

        v70 = swift_isUniquelyReferenced_nonNull_native();
        *&v204 = *v32;
        *v32 = 0x8000000000000000;
        sub_1AF850FDC(0, v141, v70);
        *v32 = v204;
      }

LABEL_42:

LABEL_43:
      if (++v69 == v68)
      {
        v67 = v193;
        goto LABEL_121;
      }
    }
  }

  v26 = sub_1AF0D3F10(a1);
  if ((v27 & 1) == 0)
  {
    v29 = *(v25 + 16);

    if (v29)
    {
      v30 = sub_1AF0D3F10(a1);
      if (v31)
      {
        v28 = *(*(v25 + 56) + 8 * v30);

LABEL_123:

        return v28;
      }
    }

    goto LABEL_9;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  return v28;
}

uint64_t sub_1AF40BD28(uint64_t a1, char a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char *a11)
{
  v173 = a8;
  v170 = a4;
  v179 = a3;
  v157 = sub_1AFDFC318();
  v16 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v17);
  v152 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v142 - v25;
  if ((a2 & 1) == 0)
  {
    goto LABEL_112;
  }

  v168 = a5;
  v27 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v34 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v35)
      {
        goto LABEL_112;
      }
    }

    v172 = a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v187;

    v37 = sub_1AF96CD1C(a1);
    v153 = a6;
    if (v37)
    {
      v38 = *(v16 + 16);
      v39 = v157;
      v38(v26, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v157);
      v38(v22, v26, v39);

      v40 = a7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AF4276E0(0, a7[2] + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AF4276E0(v41 > 1, v42 + 1, 1, v40, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v43 = v26;
      v44 = v157;
      (*(v16 + 8))(v43, v157);
      v40[2] = v42 + 1;
      (*(v16 + 32))(v40 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42, v22, v44);
      v187 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      v188 = v45;
      v46 = 0;
      sub_1AF414A20(v173, v172, 1, v179, v170 & 1, v40, &v187);

      a6 = v153;
    }

    else
    {

      v46 = 0;
    }

    v178 = v179 >> 59;
    if (((v179 >> 59) & 2) != 0)
    {
      v158 = 0;
      v147 = 0;
      v146 = 0;
      v145 = 0;
      v144 = 0;
      v143 = 0;
    }

    else
    {
      (*(*a1 + 152))(v186, v47);
      v158 = v186[0];
      v147 = v186[1];
      v146 = v186[2];
      v145 = v186[3];
      v144 = v186[4];
      v143 = v186[5];
    }

    v177 = v16;
    v148 = a1;
    v48 = *(a1 + 16);
    v49 = *(v48 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    v175 = a10;
    v174 = a7;
    if (v49)
    {
      v165 = 0;
      v187 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, v49, 0);
      v51 = 0;
      v52 = v187;
      v53 = *(v187 + 16);
      v54 = 16 * v53;
      do
      {
        v55 = *(v48 + v51 + 32);
        v56 = *(v48 + v51 + 40);
        v187 = v52;
        v57 = *(v52 + 24);
        v58 = v53 + 1;

        if (v53 >= v57 >> 1)
        {
          sub_1AFC05E2C(v57 > 1, v58, 1);
          v52 = v187;
        }

        *(v52 + 16) = v58;
        v59 = v52 + v54 + v51;
        *(v59 + 32) = v55;
        *(v59 + 40) = v56;
        v51 += 16;
        ++v53;
        --v49;
      }

      while (v49);

      a6 = v153;
      v50 = v52;
      v34 = v175;
      a7 = v174;
      v46 = v165;
    }

    v60 = a7;
    v171 = a11;
    v61 = *(v50 + 16);
    v62 = v158;
    v142 = v50;
    if (!v61)
    {
LABEL_98:

      sub_1AF441284(v62);
      sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v127 = v148;

        v129 = v168;
        v130 = sub_1AF3D72E8(v128, v34);
        v165 = v46;

        *(v127 + 16) = v130;
      }

      else
      {
        type metadata accessor for AuthoringNode();
        v129 = v168;
        v165 = v46;
        v127 = v148;
      }

      v131 = swift_allocObject();
      v132 = v173;
      v133 = v172;
      *(v131 + 16) = v173;
      *(v131 + 24) = v133;

      v134 = v179;
      sub_1AF4410E4(v179, sub_1AF4410A8);

      v135 = swift_allocObject();
      *(v135 + 16) = 1;
      *(v135 + 24) = v134;
      *(v135 + 32) = v170 & 1;
      *(v135 + 40) = v129;
      *(v135 + 48) = a6;
      *(v135 + 56) = v60;
      *(v135 + 64) = v132;
      *(v135 + 72) = v133;
      *(v135 + 80) = v34;
      v136 = v171;
      *(v135 + 88) = v171;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_1AF449D74;
      *(v137 + 24) = v135;
      *&v180 = a6;
      *(&v180 + 1) = v127;
      v181 = v60;
      v182 = sub_1AF449D48;
      v183 = v137;
      v184 = v136;

      v138 = v165;
      sub_1AF449DC0(&v180, &v185);
      if (!v138)
      {

        v30 = v185;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF3D9030(v139, v127, sub_1AF6342E4, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84CDCC);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        *&v180 = *v34;
        *v34 = 0x8000000000000000;
        sub_1AF850FDC(0, v127, v140);
        *v34 = v180;

        goto LABEL_103;
      }

LABEL_113:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_109:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_106:

LABEL_107:
        sub_1AF441284(v158);
      }
    }

    v63 = 0;
    v155 = v178 & 2;
    LODWORD(v178) = v155 | (v179 >> 2) & 1;
    v167 = v50 + 32;
    v151 = v158 + 32;
    v150 = (v177 + 16);
    v149 = (v177 + 8);
    v154 = v170 & 1;
    v156 = v61;
    while (1)
    {
      v176 = *(v167 + 16 * v63);
      if (!v176)
      {
        goto LABEL_30;
      }

      if (v62 && v63 < *(v62 + 16))
      {
        v64 = *(v151 + 8 * v63);
        sub_1AF4410A8(v64);
      }

      else
      {
        v64 = 0xA000000000000000;
      }

      if (v178)
      {
        if (v178 == 1)
        {
          v65 = sub_1AF9C5694(v64, v179 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v64);
          if (v65)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1AF441114(v64);
        }
      }

      else
      {
        v66 = sub_1AF9C5694(v64, v179);
        sub_1AF441114(v64);
        if (!v66)
        {
          goto LABEL_29;
        }
      }

      if (!*(*v168 + 16) || (sub_1AF0D3F10(v176), (v67 & 1) == 0))
      {
        v164 = v63;
        if (*(*v34 + 16))
        {
          v68 = v176;
          sub_1AF0D3F10(v176);
          v69 = MEMORY[0x1E69E7CC0];
          if (v70)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v69 = MEMORY[0x1E69E7CC0];
          v68 = v176;
        }

        v71 = swift_isUniquelyReferenced_nonNull_native();
        *&v180 = *v34;
        v72 = v180;
        *v34 = 0x8000000000000000;
        v73 = sub_1AF0D3F10(v68);
        v75 = v74;
        v76 = *(v72 + 16) + ((v74 & 1) == 0);
        if (*(v72 + 24) >= v76)
        {
          if (v71)
          {
            goto LABEL_53;
          }

          v79 = v46;
          v80 = v73;
          sub_1AF843F7C();
          v73 = v80;
          v46 = v79;
          v78 = v180;
          if ((v75 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_54:
          *(v78[7] + v73) = 1;
        }

        else
        {
          sub_1AF82BC4C(v76, v71);
          v73 = sub_1AF0D3F10(v68);
          if ((v75 & 1) != (v77 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_112:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_113;
          }

LABEL_53:
          v78 = v180;
          if (v75)
          {
            goto LABEL_54;
          }

LABEL_56:
          v78[(v73 >> 6) + 8] |= 1 << v73;
          *(v78[6] + 8 * v73) = v68;
          *(v78[7] + v73) = 1;
          ++v78[2];
        }

        *v34 = v78;

        v166 = swift_allocObject();
        *(v166 + 16) = v68;
        if (sub_1AF96CD1C(v68))
        {
          v81 = v152;
          v82 = v157;
          (*v150)(v152, v68 + OBJC_IVAR____TtC3VFX4Node_authoringID, v157);

          v83 = sub_1AF3D88AC(v81, v60);
          (*v149)(v81, v82);
          *&v180 = sub_1AF4415B4(v69);
          *(&v180 + 1) = v84;
          sub_1AF414A20(v173, v172, 1, v179, v170 & 1, v83, &v180);
          if (v46)
          {

            goto LABEL_107;
          }
        }

        else
        {
        }

        v86 = v168;
        v165 = v46;
        if (v155)
        {
          v87 = 0;
          v163 = 0;
          v162 = 0;
          v161 = 0;
          v160 = 0;
          v159 = 0;
        }

        else
        {
          (*(*v68 + 152))(&v187, v85);
          v87 = v187;
          v163 = v188;
          v162 = v189;
          v161 = v190;
          v160 = v191;
          v159 = v192;
        }

        v88 = *(v68 + 16);
        v89 = *(v88 + 16);
        v177 = v87;
        if (v89)
        {
          *&v180 = v69;

          sub_1AFC05E2C(0, v89, 0);
          v90 = 0;
          v91 = v180;
          v92 = *(v180 + 16);
          v93 = 16 * v92;
          do
          {
            v95 = *(v88 + v90 + 32);
            v94 = *(v88 + v90 + 40);
            *&v180 = v91;
            v96 = *(v91 + 24);
            v97 = v92 + 1;

            if (v92 >= v96 >> 1)
            {
              sub_1AFC05E2C(v96 > 1, v97, 1);
              v91 = v180;
            }

            *(v91 + 16) = v97;
            v98 = v91 + v93 + v90;
            *(v98 + 32) = v95;
            *(v98 + 40) = v94;
            v90 += 16;
            ++v92;
            --v89;
          }

          while (v89);

          a6 = v153;
          v86 = v168;
          v87 = v177;
        }

        else
        {
          v91 = v69;
        }

        v99 = *(v91 + 16);
        v46 = v165;
        if (v99)
        {
          v100 = 0;
          v169 = v87 + 32;
          v101 = 32;
          while (2)
          {
            v102 = *(v91 + v101);
            if (!v102)
            {
              goto LABEL_74;
            }

            if (v87 && v100 < *(v87 + 16))
            {
              v103 = *(v169 + 8 * v100);
              sub_1AF4410A8(v103);
            }

            else
            {
              v103 = 0xA000000000000000;
            }

            if (v178)
            {
              if (v178 != 1)
              {
                sub_1AF441114(v103);
                goto LABEL_87;
              }

              v104 = sub_1AF9C5694(v103, v179 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v103);
              if (!v104)
              {
LABEL_87:
                sub_1AF3E4408(v102, 1, v179, v170 & 1, v174, v173, v172, v175, v86, v171);
                if (v46)
                {

                  sub_1AF441284(v177);
                  goto LABEL_106;
                }
              }
            }

            else
            {
              v105 = sub_1AF9C5694(v103, v179);
              sub_1AF441114(v103);
              if (v105)
              {
                goto LABEL_87;
              }
            }

            v87 = v177;
LABEL_74:
            ++v100;
            v101 += 16;
            if (v99 == v100)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v87);
        v106 = v175;
        sub_1AF3FC9A0(v166, v175);
        v107 = swift_allocObject();
        v108 = v173;
        v109 = v172;
        *(v107 + 16) = v173;
        *(v107 + 24) = v109;

        v110 = v179;
        sub_1AF4410E4(v179, sub_1AF4410A8);

        v111 = swift_allocObject();
        *(v111 + 16) = 1;
        *(v111 + 24) = v110;
        *(v111 + 32) = v154;
        *(v111 + 40) = v86;
        *(v111 + 48) = a6;
        v112 = v174;
        *(v111 + 56) = v174;
        *(v111 + 64) = v108;
        *(v111 + 72) = v109;
        *(v111 + 80) = v106;
        v113 = v171;
        *(v111 + 88) = v171;
        v114 = swift_allocObject();
        *(v114 + 16) = sub_1AF449D74;
        *(v114 + 24) = v111;
        v115 = v176;
        *&v180 = a6;
        *(&v180 + 1) = v176;
        v181 = v112;
        v182 = sub_1AF449D48;
        v183 = v114;
        v184 = v113;
        swift_bridgeObjectRetain_n();

        sub_1AF449DC0(&v180, &v185);
        if (v46)
        {
          goto LABEL_109;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v116 = swift_retain_n();
        v117 = sub_1AF6342E4(v116, v115);
        if (v117 == 1)
        {
          v118 = v86[1];
          v119 = swift_isUniquelyReferenced_nonNull_native();
          v86[1] = v118;
          if ((v119 & 1) == 0)
          {
            v118 = sub_1AF422330(0, *(v118 + 2) + 1, 1, v118, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v168[1] = v118;
          }

          v60 = v174;
          v121 = *(v118 + 2);
          v120 = *(v118 + 3);
          v34 = v175;
          if (v121 >= v120 >> 1)
          {
            v126 = sub_1AF422330(v120 > 1, v121 + 1, 1, v118, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v168[1] = v126;
          }

          v122 = v168[1];
          *(v122 + 16) = v121 + 1;
          v123 = v176;
          *(v122 + 8 * v121 + 32) = v176;
          v46 = 0;
          v62 = v158;
        }

        else
        {
          v124 = v117;

          sub_1AF0DB74C(v124);
          v62 = v158;
          v123 = v176;
          v60 = v174;
          v34 = v175;
        }

        v125 = swift_isUniquelyReferenced_nonNull_native();
        *&v180 = *v34;
        *v34 = 0x8000000000000000;
        sub_1AF850FDC(0, v123, v125);
        *v34 = v180;

        v61 = v156;
        v63 = v164;
      }

LABEL_29:

LABEL_30:
      if (++v63 == v61)
      {
        goto LABEL_98;
      }
    }
  }

  v28 = sub_1AF0D3F10(a1);
  if ((v29 & 1) == 0)
  {
    v31 = *(v27 + 16);

    if (v31)
    {
      v32 = sub_1AF0D3F10(a1);
      if (v33)
      {
        v30 = *(*(v27 + 56) + 8 * v32);

LABEL_103:

        return v30;
      }
    }

    goto LABEL_9;
  }

  v30 = *(*(v27 + 56) + 8 * v28);

  return v30;
}

uint64_t sub_1AF40D3A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v204 = a8;
  v205 = a7;
  v200 = a6;
  v201 = a4;
  v210 = a3;
  v189 = sub_1AFDFC318();
  v16 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v17);
  v185 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v174 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v174 - v25;
  if ((a2 & 1) == 0)
  {
    goto LABEL_114;
  }

  v207 = a5;
  v27 = *a5;
  if (!*(*a5 + 16))
  {
    v181 = a9;

LABEL_9:
    v206 = a11;
    if (*(*a11 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v59)
      {
        goto LABEL_114;
      }

      v60 = v206;
    }

    else
    {
      v60 = v206;
    }

    v203 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v251 = *v60;
    *v60 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *v60 = v251;

    v211 = sub_1AF96CD1C(a1);
    v208 = v16;
    if (v211)
    {
      v62 = *(v16 + 16);
      v63 = v189;
      v62(v26, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v189);
      v62(v22, v26, v63);

      v64 = v205;

      v65 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1AF4276E0(0, v64[2] + 1, 1, v64, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v67 = v65[2];
      v66 = v65[3];
      if (v67 >= v66 >> 1)
      {
        v65 = sub_1AF4276E0(v66 > 1, v67 + 1, 1, v65, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v68 = v208;
      v69 = v26;
      v70 = v189;
      (*(v208 + 8))(v69, v189);
      v65[2] = v67 + 1;
      (*(v68 + 32))(v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67, v22, v70);
      *&v251 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
      *(&v251 + 1) = v71;
      v72 = 0;
      sub_1AF416014(v204, v203, 1, v210, v201 & 1, v65, &v251);
    }

    else
    {

      v72 = 0;
    }

    v74 = v210 >> 59;
    if (((v210 >> 59) & 2) != 0)
    {
      v75 = 0;
      v178 = 0;
      v179 = 0;
      v176 = 0;
      v177 = 0;
      v175 = 0;
    }

    else
    {
      (*(*a1 + 152))(v241, v73);
      v75 = v241[0];
      v178 = v241[2];
      v179 = v241[1];
      v176 = v241[4];
      v177 = v241[3];
      v175 = v241[5];
    }

    v180 = a1;
    v76 = *(a1 + 16);
    v77 = *(v76 + 16);
    v78 = MEMORY[0x1E69E7CC0];
    v190 = v75;
    if (v77)
    {
      v209 = v74;
      v197 = 0;
      *&v251 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, v77, 0);
      v79 = 0;
      v78 = v251;
      v80 = *(v251 + 16);
      v211 = 16 * v80;
      do
      {
        v81 = v76;
        v83 = *(v76 + v79 + 32);
        v82 = *(v76 + v79 + 40);
        *&v251 = v78;
        v84 = *(v78 + 24);
        v85 = v80 + 1;

        if (v80 >= v84 >> 1)
        {
          sub_1AFC05E2C(v84 > 1, v85, 1);
          v78 = v251;
        }

        *(v78 + 16) = v85;
        v86 = v78 + v211 + v79;
        *(v86 + 32) = v83;
        *(v86 + 40) = v82;
        v79 += 16;
        ++v80;
        --v77;
        v76 = v81;
      }

      while (v77);

      v72 = v197;
      v75 = v190;
      LOBYTE(v74) = v209;
    }

    v202 = a12;
    v87 = *(v78 + 16);
    v88 = v206;
    v174 = v78;
    if (!v87)
    {
LABEL_102:

      sub_1AF441284(v75);
      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v157 = v180;

        v159 = sub_1AF3D72E8(v158, v88);

        *(v157 + 16) = v159;
      }

      else
      {
        type metadata accessor for AuthoringNode();
        v157 = v180;
      }

      v160 = swift_allocObject();
      v162 = v203;
      v161 = v204;
      *(v160 + 16) = v204;
      *(v160 + 24) = v162;
      v163 = v200;

      v164 = v210;
      sub_1AF4410E4(v210, sub_1AF4410A8);

      v165 = swift_allocObject();
      *(v165 + 16) = 1;
      *(v165 + 24) = v164;
      *(v165 + 32) = v201 & 1;
      v166 = v206;
      *(v165 + 40) = v207;
      *(v165 + 48) = v163;
      v167 = v205;
      *(v165 + 56) = v205;
      *(v165 + 64) = v161;
      *(v165 + 72) = v162;
      *(v165 + 80) = v166;
      v168 = v202;
      *(v165 + 88) = v202;
      v169 = swift_allocObject();
      *(v169 + 16) = sub_1AF449D70;
      *(v169 + 24) = v165;
      *&v228 = v163;
      *(&v228 + 1) = v157;
      v229 = v167;
      v230 = sub_1AF449D50;
      v231 = v169;
      v232 = v168;

      sub_1AF449CCC(&v228);
      if (!v72)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v237 = v216;
        v238 = v217;
        v239 = v218;
        v240 = v219;
        v233 = v212;
        v234 = v213;
        v235 = v214;
        v236 = v215;
        v243 = v212;
        v244 = v213;
        v245 = v214;
        v246 = v215;
        v247 = v216;
        v248 = v217;
        v249 = v218;
        v250 = v219;
        sub_1AF0D8094(&v233, &v220, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        sub_1AF3D9194(&v243, v157);
        v170 = v206;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        *&v220 = *v170;
        *v170 = 0x8000000000000000;
        sub_1AF850FDC(0, v157, v171);
        *v170 = v220;

        v172 = v217;
        v55 = v181;
        *(v181 + 64) = v216;
        *(v55 + 80) = v172;
        *(v55 + 96) = v218;
        *(v55 + 112) = v219;
        v173 = v213;
        *v55 = v212;
        *(v55 + 16) = v173;
        v57 = v214;
        v58 = v215;
        goto LABEL_107;
      }

LABEL_115:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_111:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_109:
        sub_1AF441284(v190);
      }
    }

    v89 = 0;
    v187 = v74 & 2;
    LODWORD(v209) = v187 | (v210 >> 2) & 1;
    v198 = v78 + 32;
    v183 = (v208 + 16);
    v184 = v75 + 32;
    v182 = (v208 + 8);
    v186 = v201 & 1;
    v188 = v87;
    while (1)
    {
      v90 = *(v198 + 16 * v89);
      if (!v90)
      {
        goto LABEL_32;
      }

      if (v75)
      {
        v91 = v75;
        if (v89 < *(v75 + 16))
        {
          v92 = *(v184 + 8 * v89);
          sub_1AF4410A8(v92);
          goto LABEL_39;
        }
      }

      else
      {
        v91 = 0;
      }

      v92 = 0xA000000000000000;
LABEL_39:

      if (v209)
      {
        if (v209 == 1)
        {
          v93 = sub_1AF9C5694(v92, v210 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v92);
          if (v93)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1AF441114(v92);
        }
      }

      else
      {
        v94 = sub_1AF9C5694(v92, v210);
        sub_1AF441114(v92);
        if (!v94)
        {
          goto LABEL_31;
        }
      }

      if (*(*v207 + 16))
      {
        sub_1AF0D3F10(v90);
        if (v95)
        {
LABEL_31:

          v75 = v91;
          goto LABEL_32;
        }
      }

      if (*(*v88 + 16))
      {
        sub_1AF0D3F10(v90);
        v96 = v205;
        if (v97)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v96 = v205;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      *&v243 = *v88;
      v99 = v243;
      *v88 = 0x8000000000000000;
      v100 = sub_1AF0D3F10(v90);
      v102 = v101;
      v103 = *(v99 + 16) + ((v101 & 1) == 0);
      if (*(v99 + 24) < v103)
      {
        sub_1AF82BC4C(v103, v98);
        v100 = sub_1AF0D3F10(v90);
        if ((v102 & 1) != (v104 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);
LABEL_114:
          sub_1AFDFE518();
          __break(1u);
          goto LABEL_115;
        }

LABEL_56:
        v105 = v243;
        if (v102)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      if (v98)
      {
        goto LABEL_56;
      }

      v106 = v72;
      v107 = v100;
      sub_1AF843F7C();
      v100 = v107;
      v72 = v106;
      v105 = v243;
      if (v102)
      {
LABEL_57:
        *(v105[7] + v100) = 1;
        goto LABEL_60;
      }

LABEL_59:
      v105[(v100 >> 6) + 8] |= 1 << v100;
      *(v105[6] + 8 * v100) = v90;
      *(v105[7] + v100) = 1;
      ++v105[2];
LABEL_60:
      *v88 = v105;

      v108 = v200;
      if (sub_1AF96CD1C(v90))
      {
        v109 = v185;
        v110 = v189;
        (*v183)(v185, v90 + OBJC_IVAR____TtC3VFX4Node_authoringID, v189);

        v111 = sub_1AF3D88AC(v109, v96);
        (*v182)(v109, v110);
        v112 = MEMORY[0x1E69E7CC0];
        *&v243 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
        *(&v243 + 1) = v113;
        sub_1AF416014(v204, v203, 1, v210, v201 & 1, v111, &v243);
        if (v72)
        {

          goto LABEL_109;
        }

        v108 = v200;
        if (v187)
        {
LABEL_65:
          v115 = 0;
          v194 = 0;
          v195 = 0;
          v192 = 0;
          v193 = 0;
          v191 = 0;
          goto LABEL_66;
        }
      }

      else
      {

        v112 = MEMORY[0x1E69E7CC0];
        if (v187)
        {
          goto LABEL_65;
        }
      }

      (*(*v90 + 152))(v242, v114);
      v115 = v242[0];
      v194 = v242[2];
      v195 = v242[1];
      v192 = v242[4];
      v193 = v242[3];
      v191 = v242[5];
LABEL_66:
      v196 = v89;
      v199 = v90;
      v116 = *(v90 + 16);
      v117 = *(v116 + 16);
      v208 = v115;
      if (v117)
      {
        v197 = v72;
        *&v243 = v112;

        sub_1AFC05E2C(0, v117, 0);
        v118 = 0;
        v112 = v243;
        v119 = *(v243 + 16);
        v211 = 16 * v119;
        do
        {
          v120 = v116;
          v122 = *(v116 + v118 + 32);
          v121 = *(v116 + v118 + 40);
          *&v243 = v112;
          v123 = *(v112 + 24);
          v124 = v119 + 1;

          if (v119 >= v123 >> 1)
          {
            sub_1AFC05E2C(v123 > 1, v124, 1);
            v112 = v243;
          }

          *(v112 + 16) = v124;
          v125 = v112 + v211 + v118;
          *(v125 + 32) = v122;
          *(v125 + 40) = v121;
          v118 += 16;
          ++v119;
          --v117;
          v116 = v120;
        }

        while (v117);

        v108 = v200;
        v72 = v197;
        v115 = v208;
      }

      v126 = *(v112 + 16);
      if (v126)
      {
        v127 = 0;
        v211 = v115 + 32;
        v128 = 32;
        while (2)
        {
          v129 = *(v112 + v128);
          if (!v129)
          {
            goto LABEL_75;
          }

          if (v115 && v127 < *(v115 + 16))
          {
            v130 = *(v211 + 8 * v127);
            sub_1AF4410A8(v130);
          }

          else
          {
            v130 = 0xA000000000000000;
          }

          if (v209)
          {
            if (v209 != 1)
            {
              sub_1AF441114(v130);
              goto LABEL_88;
            }

            v131 = sub_1AF9C5694(v130, v210 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v130);
            if (!v131)
            {
LABEL_88:
              sub_1AF3E50BC(v129, 1, v210, v201 & 1, v205, v204, v203, v206, &v243, v207, v202);
              if (v72)
              {

                sub_1AF441284(v208);
                goto LABEL_109;
              }

              v237 = v247;
              v238 = v248;
              v239 = v249;
              v240 = v250;
              v233 = v243;
              v234 = v244;
              v235 = v245;
              v236 = v246;
              sub_1AF444058(&v233, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
            }
          }

          else
          {
            v132 = sub_1AF9C5694(v130, v210);
            sub_1AF441114(v130);
            if (v132)
            {
              goto LABEL_88;
            }
          }

          v115 = v208;
LABEL_75:
          ++v127;
          v128 += 16;
          if (v126 == v127)
          {
            break;
          }

          continue;
        }
      }

      sub_1AF441284(v115);
      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {
        v133 = v199;

        v135 = v206;
        v136 = sub_1AF3D72E8(v134, v206);
        v197 = v72;

        *(v133 + 16) = v136;
        v108 = v200;

        v137 = v205;
      }

      else
      {
        type metadata accessor for AuthoringNode();
        v137 = v205;
        v135 = v206;
        v197 = v72;
      }

      v138 = swift_allocObject();
      v139 = v203;
      v140 = v204;
      *(v138 + 16) = v204;
      *(v138 + 24) = v139;

      v141 = v210;
      sub_1AF4410E4(v210, sub_1AF4410A8);

      v142 = v108;
      v143 = swift_allocObject();
      *(v143 + 16) = 1;
      *(v143 + 24) = v141;
      *(v143 + 32) = v186;
      *(v143 + 40) = v207;
      *(v143 + 48) = v142;
      *(v143 + 56) = v137;
      *(v143 + 64) = v140;
      *(v143 + 72) = v139;
      *(v143 + 80) = v135;
      v144 = v202;
      *(v143 + 88) = v202;
      v145 = swift_allocObject();
      *(v145 + 16) = sub_1AF449D70;
      *(v145 + 24) = v143;
      *&v228 = v142;
      v146 = v199;
      *(&v228 + 1) = v199;
      v229 = v137;
      v230 = sub_1AF449D50;
      v231 = v145;
      v232 = v144;
      swift_bridgeObjectRetain_n();

      v72 = v197;
      sub_1AF449CCC(&v228);
      if (v72)
      {
        goto LABEL_111;
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v255 = v247;
      v256 = v248;
      v257 = v249;
      v258 = v250;
      v251 = v243;
      v252 = v244;
      v253 = v245;
      v254 = v246;
      v147 = MEMORY[0x1E69E6720];
      sub_1AF0D8094(&v251, &v220, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      sub_1AF0D8094(&v251, &v220, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v147, sub_1AF449B08);
      v148 = v146;
      v149 = v207;
      sub_1AF634450(&v251, v148, &v233);
      v89 = v196;
      if (v233 == 1)
      {
        v225 = v238;
        v226 = v239;
        v220 = v233;
        v221 = v234;
        v222 = v235;
        v227 = v240;
        v223 = v236;
        v224 = v237;
        sub_1AF44943C(&v220, sub_1AF443FDC);
        v150 = v149[1];
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v149[1] = v150;
        if ((v151 & 1) == 0)
        {
          v150 = sub_1AF422330(0, *(v150 + 2) + 1, 1, v150, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v149[1] = v150;
        }

        v153 = *(v150 + 2);
        v152 = *(v150 + 3);
        if (v153 >= v152 >> 1)
        {
          v149[1] = sub_1AF422330(v152 > 1, v153 + 1, 1, v150, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        sub_1AF444058(&v251, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v154 = v149[1];
        *(v154 + 16) = v153 + 1;
        v155 = v199;
        *(v154 + 8 * v153 + 32) = v199;
      }

      else
      {
        sub_1AF444058(&v251, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v225 = v238;
        v226 = v239;
        v220 = v233;
        v221 = v234;
        v222 = v235;
        v227 = v240;
        v223 = v236;
        v224 = v237;
        sub_1AF44943C(&v220, sub_1AF443FDC);
        v155 = v199;
      }

      v88 = v206;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      *&v233 = *v88;
      *v88 = 0x8000000000000000;
      sub_1AF850FDC(0, v155, v156);
      *v88 = v233;

      v237 = v247;
      v238 = v248;
      v239 = v249;
      v240 = v250;
      v233 = v243;
      v234 = v244;
      v235 = v245;
      v236 = v246;
      sub_1AF444058(&v233, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

      v87 = v188;
      v75 = v190;
LABEL_32:
      if (++v89 == v87)
      {
        goto LABEL_102;
      }
    }
  }

  v28 = sub_1AF0D3F10(a1);
  if (v29)
  {
    v30 = *(v27 + 56) + 120 * v28;
    v32 = *(v30 + 32);
    v31 = *(v30 + 48);
    v33 = *(v30 + 16);
    v251 = *v30;
    v252 = v33;
    v253 = v32;
    v254 = v31;
    v34 = *(v30 + 64);
    v35 = *(v30 + 80);
    v36 = *(v30 + 96);
    v258 = *(v30 + 112);
    v256 = v35;
    v257 = v36;
    v255 = v34;
    v37 = *v30;
    v38 = *(v30 + 16);
    v39 = *(v30 + 48);
    *(a9 + 32) = *(v30 + 32);
    *(a9 + 48) = v39;
    *a9 = v37;
    *(a9 + 16) = v38;
    v40 = *(v30 + 64);
    v41 = *(v30 + 80);
    v42 = *(v30 + 96);
    *(a9 + 112) = *(v30 + 112);
    *(a9 + 80) = v41;
    *(a9 + 96) = v42;
    *(a9 + 64) = v40;
    return sub_1AF0D8094(&v251, &v243, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  }

  v181 = a9;
  v44 = *(v27 + 16);

  if (!v44)
  {
    goto LABEL_9;
  }

  v45 = sub_1AF0D3F10(a1);
  if ((v46 & 1) == 0)
  {
    goto LABEL_9;
  }

  v47 = *(v27 + 56) + 120 * v45;
  v49 = *(v47 + 32);
  v48 = *(v47 + 48);
  v50 = *(v47 + 16);
  v251 = *v47;
  v252 = v50;
  v253 = v49;
  v254 = v48;
  v51 = *(v47 + 64);
  v52 = *(v47 + 80);
  v53 = *(v47 + 96);
  v258 = *(v47 + 112);
  v256 = v52;
  v257 = v53;
  v255 = v51;
  sub_1AF0D8094(&v251, &v243, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

  v54 = v256;
  v55 = v181;
  *(v181 + 64) = v255;
  *(v55 + 80) = v54;
  *(v55 + 96) = v257;
  *(v55 + 112) = v258;
  v56 = v252;
  *v55 = v251;
  *(v55 + 16) = v56;
  v57 = v253;
  v58 = v254;
LABEL_107:
  *(v55 + 32) = v57;
  *(v55 + 48) = v58;
  return result;
}

uint64_t sub_1AF40EBE4(uint64_t a1, char a2, unint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v211 = a8;
  v212 = a7;
  v214 = a6;
  v208 = a4;
  v216 = a3;
  v195 = sub_1AFDFC318();
  v191 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v14);
  v194 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v173 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v173 - v26;
  if ((a2 & 1) == 0)
  {
    goto LABEL_136;
  }

  v28 = *a5;
  if (!*(*a5 + 16))
  {

    goto LABEL_8;
  }

  v29 = sub_1AF0D3F10(a1);
  if ((v30 & 1) == 0)
  {

    v32 = sub_1AF0D3F10(a1);
    if (v33)
    {
      v31 = *(*(v28 + 56) + 8 * v32);
LABEL_132:

      return v31;
    }

LABEL_8:
    v34 = a10;
    if (!*(*a10 + 16) || (sub_1AF0D3F10(a1), (v35 & 1) == 0))
    {
      v186 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v225[0] = *a10;
      *a10 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a10 = v225[0];

      v201 = type metadata accessor for AuthoringNode();
      v37 = v208 & (v201 == MEMORY[0x1E69E6530]);
      v38 = swift_allocObject();
      v181 = v38;
      *(v38 + 16) = a1;
      v39 = (v38 + 16);
      v190 = v37;
      v180 = (v38 + 16);
      if (v37 == 1)
      {
        v40 = *(*a1 + 296);

        *v39 = v40(1);

        v41 = *v39;
      }

      else
      {

        v41 = a1;
      }

      v210 = a9;
      v42 = sub_1AF96D010(v41);
      v209 = a5;
      v213 = a10;
      if (v42)
      {
        v43 = v42;
        v44 = *(v191 + 16);
        v45 = v41 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v46 = v195;
        v44(v27, v45, v195);
        v44(v23, v27, v46);
        v47 = v212;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1AF4276E0(0, v212[2] + 1, 1, v212, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v49 = v47[2];
        v48 = v47[3];
        if (v49 >= v48 >> 1)
        {
          v47 = sub_1AF4276E0(v48 > 1, v49 + 1, 1, v47, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v50 = v191;
        v51 = v27;
        v52 = v195;
        (*(v191 + 8))(v51, v195);
        v47[2] = v49 + 1;
        (*(v50 + 32))(v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v23, v52);
        v53 = sub_1AF3FC510(v211, v210, 1, v216, v208 & 1, v47, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
        v55 = v54;

        if (v201 == MEMORY[0x1E69E6530])
        {
          v56 = *(v55 + 16);
          v57 = MEMORY[0x1E69E7CC0];
          if (v56)
          {
            v215 = v43;
            v225[0] = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v58 = 32;
            do
            {
              v59 = *(v53 + 16);
              if (v59)
              {
                v60 = sub_1AF0D3F10(*(v55 + v58));
                if (v61)
                {
                  v59 = *(*(v53 + 56) + 8 * v60);
                }

                else
                {
                  v59 = 0;
                }
              }

              *&v218 = v59;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v58 += 8;
              --v56;
              a5 = v209;
            }

            while (v56);

            v62 = v225[0];
            v57 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v62 = MEMORY[0x1E69E7CC0];
          }

          v63 = *v180;
          type metadata accessor for AuthoringGraph();
          v64 = swift_allocObject();
          v64[2] = 0;
          v64[3] = v57;
          v64[4] = 0;
          v64[5] = 0;

          v64[6] = sub_1AF42B820(v57, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v64[3] = v62;

          *(v63 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v64;
        }

        else
        {
        }

        v34 = v213;
      }

      v65 = v216 >> 59;
      if (((v216 >> 59) & 2) != 0)
      {
        v66 = 0;
        v178 = 0;
        v177 = 0;
        v176 = 0;
        v175 = 0;
        v174 = 0;
      }

      else
      {
        (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v224);
        v66 = v224[0];
        v178 = v224[1];
        v177 = v224[2];
        v176 = v224[3];
        v175 = v224[4];
        v174 = v224[5];
      }

      v207 = a11;
      v67 = sub_1AF97228C();
      v204 = *(v67 + 16);
      v179 = a1;
      if (!v204)
      {
        v192 = v208 & 1;
LABEL_123:

        sub_1AF441284(v66);
        v152 = v181;
        sub_1AF3FCAB4(v181, v34, a5);
        v153 = swift_allocObject();
        v154 = v211;
        v155 = v210;
        *(v153 + 16) = v211;
        *(v153 + 24) = v155;
        v156 = v34;
        v157 = v214;

        v158 = v216;
        sub_1AF4410E4(v216, sub_1AF4410A8);

        v159 = swift_allocObject();
        *(v159 + 16) = 1;
        *(v159 + 24) = v158;
        *(v159 + 32) = v192;
        *(v159 + 40) = a5;
        *(v159 + 48) = v157;
        v160 = v212;
        *(v159 + 56) = v212;
        *(v159 + 64) = v154;
        *(v159 + 72) = v155;
        *(v159 + 80) = v156;
        v161 = v207;
        *(v159 + 88) = v207;
        v162 = swift_allocObject();
        *(v162 + 16) = sub_1AF449D44;
        *(v162 + 24) = v159;
        v163 = *(v152 + 16);
        *&v218 = v157;
        *(&v218 + 1) = v163;
        v219 = v160;
        v220 = sub_1AF449D48;
        v221 = v162;
        v222 = v161;

        sub_1AF449DC0(&v218, &v223);

        v31 = v223;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v164 = v179;
        sub_1AF6345D0(v31, v179);
        v165 = v213;
        if (v166)
        {
          v167 = a5[1];
          v168 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v167;
          if ((v168 & 1) == 0)
          {
            v167 = sub_1AF422330(0, *(v167 + 2) + 1, 1, v167, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v167;
          }

          v170 = *(v167 + 2);
          v169 = *(v167 + 3);
          if (v170 >= v169 >> 1)
          {
            v167 = sub_1AF422330(v169 > 1, v170 + 1, 1, v167, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v167;
          }

          *(v167 + 2) = v170 + 1;
          *&v167[8 * v170 + 32] = v164;
        }

        if (v201 == MEMORY[0x1E69E6530])
        {
          *&v218 = v31;

          swift_dynamicCast();
        }

        v171 = swift_isUniquelyReferenced_nonNull_native();
        *&v218 = *v165;
        *v165 = 0x8000000000000000;
        sub_1AF850FDC(0, v164, v171);
        *v165 = v218;

        goto LABEL_132;
      }

      v68 = 0;
      v187 = v65 & 2;
      LODWORD(v215) = v187 | (v216 >> 2) & 1;
      v203 = v67 + 32;
      v185 = v66 + 32;
      v184 = (v191 + 16);
      v183 = v191 + 8;
      v182 = v191 + 32;
      v189 = v66;
      v188 = v67;
      v192 = v208 & 1;
      while (1)
      {
        v69 = *(v203 + 16 * v68);
        if (!v69)
        {
          goto LABEL_40;
        }

        v205 = v68;
        if (v66 && v68 < *(v66 + 16))
        {
          v70 = *(v185 + 8 * v68);
          sub_1AF4410A8(v70);
        }

        else
        {
          v70 = 0xA000000000000000;
        }

        if (v215)
        {
          if (v215 == 1)
          {
            v71 = sub_1AF9C5694(v70, v216 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v70);
            if (v71)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_1AF441114(v70);
          }
        }

        else
        {
          v72 = sub_1AF9C5694(v70, v216);
          sub_1AF441114(v70);
          if (!v72)
          {
            goto LABEL_39;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v69), (v73 & 1) == 0))
        {
          if (*(*v34 + 16))
          {
            sub_1AF0D3F10(v69);
            v74 = MEMORY[0x1E69E6530];
            if (v75)
            {
              break;
            }
          }

          else
          {
            v74 = MEMORY[0x1E69E6530];
          }

          v76 = swift_isUniquelyReferenced_nonNull_native();
          *&v218 = *v34;
          v77 = v218;
          *v34 = 0x8000000000000000;
          v78 = sub_1AF0D3F10(v69);
          v80 = v79;
          v81 = *(v77 + 16) + ((v79 & 1) == 0);
          if (*(v77 + 24) >= v81)
          {
            if (v76)
            {
              goto LABEL_63;
            }

            v84 = v78;
            sub_1AF843F7C();
            v78 = v84;
            v83 = v218;
            if ((v80 & 1) == 0)
            {
              goto LABEL_66;
            }

LABEL_64:
            *(v83[7] + v78) = 1;
          }

          else
          {
            sub_1AF82BC4C(v81, v76);
            v78 = sub_1AF0D3F10(v69);
            if ((v80 & 1) != (v82 & 1))
            {
              goto LABEL_135;
            }

LABEL_63:
            v83 = v218;
            if (v80)
            {
              goto LABEL_64;
            }

LABEL_66:
            v83[(v78 >> 6) + 8] |= 1 << v78;
            *(v83[6] + 8 * v78) = v69;
            *(v83[7] + v78) = 1;
            ++v83[2];
          }

          *v34 = v83;

          v85 = swift_allocObject();
          v202 = v85;
          *(v85 + 16) = v69;
          v86 = (v85 + 16);
          if (v190)
          {
            v87 = *(*v69 + 296);

            *v86 = v87(1);

            v88 = *v86;
          }

          else
          {

            v88 = v69;
          }

          v89 = sub_1AF96D010(v88);
          v206 = v69;
          if (v89)
          {
            v200 = v89;
            v90 = *v184;
            v91 = v88 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
            v92 = v186;
            v93 = v195;
            (*v184)(v186, v91, v195);
            v90(v194, v92, v93);
            v94 = v212;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1AF4276E0(0, v212[2] + 1, 1, v212, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v96 = v94[2];
            v95 = v94[3];
            v97 = v86;
            if (v96 >= v95 >> 1)
            {
              v94 = sub_1AF4276E0(v95 > 1, v96 + 1, 1, v94, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v98 = v191;
            v99 = v92;
            v100 = v195;
            (*(v191 + 8))(v99, v195);
            v94[2] = v96 + 1;
            (*(v98 + 32))(v94 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v96, v194, v100);
            v101 = sub_1AF3FC510(v211, v210, 1, v216, v208 & 1, v94, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
            v103 = v102;

            if (v201 == v74)
            {
              v104 = *(v103 + 16);
              if (v104)
              {
                *&v218 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                v105 = 32;
                do
                {
                  v106 = *(v101 + 16);
                  if (v106)
                  {
                    v107 = sub_1AF0D3F10(*(v103 + v105));
                    if (v108)
                    {
                      v106 = *(*(v101 + 56) + 8 * v107);
                    }

                    else
                    {
                      v106 = 0;
                    }
                  }

                  v217 = v106;
                  swift_dynamicCast();
                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v105 += 8;
                  --v104;
                  v69 = v206;
                }

                while (v104);

                v109 = v218;
                v110 = MEMORY[0x1E69E7CC0];
              }

              else
              {

                v110 = MEMORY[0x1E69E7CC0];
                v109 = MEMORY[0x1E69E7CC0];
              }

              v86 = v97;
              v111 = *v97;
              type metadata accessor for AuthoringGraph();
              v112 = swift_allocObject();
              v112->cache = 0;
              v112->vtable = v110;
              v112->info = 0;
              v112[1].isa = 0;

              v112[1].superclass = sub_1AF42B820(v110, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
              sub_1AFDFC308();

              v112->vtable = v109;

              *(v111 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v112;
            }

            else
            {

              v86 = v97;
            }
          }

          if (v187)
          {
            v115 = 0;
            v200 = 0;
            v199 = 0;
            v198 = 0;
            v197 = 0;
            v196 = 0;
          }

          else
          {
            v113 = *(**(v69 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

            v113(v225, v114);
            v115 = v225[0];
            v200 = v225[1];
            v199 = v225[2];
            v198 = v225[3];
            v197 = v225[4];
            v196 = v225[5];
          }

          v116 = sub_1AF97228C();
          v117 = *(v116 + 16);
          v193 = v86;
          if (v117)
          {
            v118 = 0;
            v119 = 32;
            while (2)
            {
              v120 = *(v116 + v119);
              if (!v120)
              {
                goto LABEL_95;
              }

              if (v115 && v118 < *(v115 + 16))
              {
                v121 = *(v115 + 32 + 8 * v118);
                sub_1AF4410A8(v121);
              }

              else
              {
                v121 = 0xA000000000000000;
              }

              if (v215)
              {
                if (v215 == 1)
                {
                  v122 = sub_1AF9C5694(v121, v216 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v121);
                  if (v122)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  sub_1AF441114(v121);
                }
              }

              else
              {
                v123 = sub_1AF9C5694(v121, v216);
                sub_1AF441114(v121);
                if (!v123)
                {
LABEL_94:

LABEL_95:
                  ++v118;
                  v119 += 16;
                  if (v117 == v118)
                  {
                    goto LABEL_107;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3E5F1C(v120, 1, v216, v208 & 1, v212, v211, v210, v213, v209, v207);
            goto LABEL_94;
          }

LABEL_107:

          sub_1AF441284(v115);
          v124 = v202;
          v125 = v213;
          a5 = v209;
          sub_1AF3FCAB4(v202, v213, v209);
          v126 = swift_allocObject();
          v127 = v211;
          v128 = v210;
          *(v126 + 16) = v211;
          *(v126 + 24) = v128;
          v129 = v214;

          v130 = v216;
          sub_1AF4410E4(v216, sub_1AF4410A8);

          v131 = swift_allocObject();
          *(v131 + 16) = 1;
          *(v131 + 24) = v130;
          *(v131 + 32) = v192;
          *(v131 + 40) = a5;
          *(v131 + 48) = v129;
          v132 = v212;
          *(v131 + 56) = v212;
          *(v131 + 64) = v127;
          *(v131 + 72) = v128;
          *(v131 + 80) = v125;
          v133 = v207;
          *(v131 + 88) = v207;
          v134 = swift_allocObject();
          *(v134 + 16) = sub_1AF449D44;
          *(v134 + 24) = v131;
          v135 = *(v124 + 16);
          *&v218 = v129;
          *(&v218 + 1) = v135;
          v219 = v132;
          v220 = sub_1AF449D48;
          v221 = v134;
          v222 = v133;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v218, &v223);

          v136 = v223;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v137 = v206;
          sub_1AF6345D0(v136, v206);
          if (v138)
          {
            v139 = a5[1];
            v140 = swift_isUniquelyReferenced_nonNull_native();
            a5[1] = v139;
            if ((v140 & 1) == 0)
            {
              v139 = sub_1AF422330(0, *(v139 + 2) + 1, 1, v139, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v139;
            }

            v142 = *(v139 + 2);
            v141 = *(v139 + 3);
            if (v142 >= v141 >> 1)
            {
              v139 = sub_1AF422330(v141 > 1, v142 + 1, 1, v139, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v139;
            }

            *(v139 + 2) = v142 + 1;
            *&v139[8 * v142 + 32] = v137;
          }

          if (v201 == MEMORY[0x1E69E6530])
          {
            *&v218 = v136;

            swift_dynamicCast();
          }

          v34 = v213;
          v143 = swift_isUniquelyReferenced_nonNull_native();
          *&v218 = *v34;
          v144 = v218;
          *v34 = 0x8000000000000000;
          v145 = sub_1AF0D3F10(v137);
          v147 = v146;
          v148 = *(v144 + 16) + ((v146 & 1) == 0);
          if (*(v144 + 24) >= v148)
          {
            if ((v143 & 1) == 0)
            {
              v151 = v145;
              sub_1AF843F7C();
              v145 = v151;
            }
          }

          else
          {
            sub_1AF82BC4C(v148, v143);
            v145 = sub_1AF0D3F10(v137);
            if ((v147 & 1) != (v149 & 1))
            {
LABEL_135:
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }
          }

          v66 = v189;
          v150 = v218;
          if (v147)
          {
            *(*(v218 + 56) + v145) = 0;
          }

          else
          {
            *(v218 + 8 * (v145 >> 6) + 64) |= 1 << v145;
            *(v150[6] + 8 * v145) = v137;
            *(v150[7] + v145) = 0;
            ++v150[2];
          }

          *v34 = v150;
        }

LABEL_39:

        v68 = v205;
LABEL_40:
        if (++v68 == v204)
        {
          goto LABEL_123;
        }
      }
    }

LABEL_136:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v189);
    }
  }

  return *(*(v28 + 56) + 8 * v29);
}